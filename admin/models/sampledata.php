<?php
/**
 * @version 3.0.4
 * @package JEM
 * @copyright (C) 2013-2014 joomlaeventmanager.net
 * @copyright (C) 2005-2009 Christoph Lukes
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined('_JEXEC') or die;


/**
 * Model: Sampledata
 */
class JemModelSampledata extends JModelLegacy
{

	/**
	 * Sample data directory
	 *
	 * @var string
	 */
	private $sampleDataDir = null;

	/**
	 * Files data array
	 *
	 * @var array
	 */
	private $filelist = array();

	/**
	 * Constructor
	 */
	public function __construct()
	{
		parent::__construct();

		if ($this->checkForJemData()) {
			return false;
		}

		$this->sampleDataDir = JPATH_COMPONENT_ADMINISTRATOR . '/assets/';
		$this->filelist = $this->unpack();
	}

	/**
	 * Process sampledata
	 *
	 * @return boolean True on success
	 */
	public function loadData()
	{
		if ($this->checkForJemData()) {
			JError::raiseWarning(100, JText::_('COM_JEM_SAMPLEDATA_DATA_ALREADY_INSTALLED'));
			return false;
		}

		$scriptfile = $this->sampleDataDir . 'sampledata.sql';

		// load sql file
		if (!($buffer = file_get_contents($scriptfile))) {
			return false;
		}

		// extract queries out of sql file
		$queries = $this->splitSql($buffer);

		// Process queries
		foreach ($queries as $query) {
			$query = trim($query);
			if ($query != '' && $query{0} != '#') {
				$this->_db->setQuery($query);
				$this->_db->execute();
			}
		}

		// assign admin userid to created_events
		$this->assignAdminId();

		
		# check for required folders
		$this->checkFolders();
		
		// move images in proper directory
		$this->moveImages();

		// delete temporary extraction folder
		if (!$this->deleteTmpFolder()) {
			JError::raiseWarning('SOME ERROR CODE', JText::_('COM_JEM_SAMPLEDATA_UNABLE_TO_DELETE_TMP_FOLDER'));
		}

		return true;
	}

	/**
	 * Unpack archive and build array of files
	 *
	 * @return boolean Ambigous mixed>
	 */
	private function unpack()
	{
		jimport('joomla.filesystem.archive');

		$archive = $this->sampleDataDir . 'sampledata.zip';

		// Temporary folder to extract the archive into
		$tmpdir = uniqid('sample_');

		// Clean the paths to use for archive extraction
		$extractdir = JPath::clean(JPATH_ROOT . '/tmp/' . $tmpdir);
		$archive = JPath::clean($archive);

		// extract archive
		$result = JArchive::extract($archive, $extractdir);

		if ($result === false) {
			JError::raiseWarning('SOME ERROR CODE', JText::_('COM_JEM_SAMPLEDATA_UNABLE_TO_EXTRACT_ARCHIVE'));
			return false;
		}

		// return the files found in the extract folder and also folder name
		$files = array();

		if ($handle = opendir($extractdir)) {
			while (false !== ($file = readdir($handle))) {
				if ($file != "." && $file != "..") {
					$files[] = $file;
					continue;
				}
			}
			closedir($handle);
		}
		$filelist['files'] = $files;
		$filelist['folder'] = $extractdir;

		return $filelist;
	}

	/**
	 * Split sql to single queries
	 *
	 * @return array
	 */
	private function splitSql($sql)
	{
		$sql = trim($sql);
		$sql = preg_replace("/\n\#[^\n]*/", '', "\n" . $sql);
		$buffer = array();
		$ret = array();
		$in_string = false;

		for ($i = 0; $i < strlen($sql) - 1; $i++) {
			if ($sql[$i] == ";" && !$in_string) {
				$ret[] = substr($sql, 0, $i);
				$sql = substr($sql, $i + 1);
				$i = 0;
			}

			if ($in_string && ($sql[$i] == $in_string) && $buffer[1] != "\\") {
				$in_string = false;
			}
			elseif (!$in_string && ($sql[$i] == '"' || $sql[$i] == "'") && (!isset($buffer[0]) || $buffer[0] != "\\")) {
				$in_string = $sql[$i];
			}
			if (isset($buffer[1])) {
				$buffer[0] = $buffer[1];
			}
			$buffer[1] = $sql[$i];
		}

		if (!empty($sql)) {
			$ret[] = $sql;
		}
		return ($ret);
	}

	/**
	 * Copy images into the venues/events folder
	 *
	 * @return boolean True on success
	 */
	private function moveImages()
	{
		$imagebase = JPATH_ROOT . '/images/jem';

		foreach ($this->filelist['files'] as $file) {
			$subDirectory = "/";
			if (strpos($file, "event") !== false) {
				$subDirectory .= "events/";
			}
			elseif (strpos($file, "venue") !== false) {
				$subDirectory .= "venues/";
			}
			elseif (strpos($file, "category") !== false) {
				$subDirectory .= "categories/";
			}
			else {
				// Nothing matched. Skip this file
				continue;
			}
			if (strpos($file, "thumb") !== false) {
				$subDirectory .= "small/";
			}

			JFile::copy($this->filelist['folder'] . '/' . $file, $imagebase . $subDirectory . $file);
		}
		return true;
	}

	/**
	 * Delete temporary folder
	 *
	 * @return boolean True on success
	 */
	private function deleteTmpFolder()
	{
		if ($this->filelist['folder']) {
			if (!JFolder::delete($this->filelist['folder'])) {
				return false;
			}
			return true;
		}
		return false;
	}

	/**
	 * Checks if JEM data already exists
	 *
	 * @return boolean True if data exists
	 */
	private function checkForJemData()
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);

		$query->select("id");
		$query->from('#__jem_categories');
		$query->where('alias NOT LIKE "root"');
		$db->setQuery($query);
		$result = $db->loadResult();

		if ($result == null) {
			return false;
		}
		return true;
	}
	
	
	/**
	 * check for folders
	 */
	private function checkFolders() {
	
		$folder = array();
		$folder[] = JPATH_SITE.'/images/jem/events';
		$folder[] = JPATH_SITE.'/images/jem/categories';
		$folder[] = JPATH_SITE.'/images/jem/venues';
		
		foreach ($folder AS $item) {
			if (!JFolder::exists($item)) {
				JFolder::create($item);
			}
		}
	}


	/**
	 * Assign admin-id to created events
	 *
	 * @return boolean True if data exists
	 */
	private function assignAdminId()
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);

		$query->select("id");
		$query->from('#__users');
		$query->where('name LIKE "Super User"');
		$db->setQuery($query);
		$result = $db->loadResult();

		if ($result == null) {
			return false;
		}

		$query = $db->getQuery(true);
		$query->update('#__jem_events');
		$query->set('created_by = '.$db->quote((int)$result));
		$query->where(array('created_by = 62'));
		$db->setQuery($query);
		$db->execute();
		
		$query = $db->getQuery(true);
		$query->update('#__jem_venues');
		$query->set('created_by = '.$db->quote((int)$result));
		$query->where(array('created_by = 62'));
		$db->setQuery($query);
		$db->execute();
		
		return true;
	}
}
?>