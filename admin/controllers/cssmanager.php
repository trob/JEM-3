<?php
/**
 * @version 3.0.1
 * @package JEM
 * @copyright (C) 2013-2014 joomlaeventmanager.net
 * @copyright (C) 2005-2009 Christoph Lukes
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined('_JEXEC') or die();


/**
 * Controller: CSS_manager
 */
class JEMControllerCssmanager extends JControllerAdmin
{
	
	/**
	 * Constructor
	 */
	public function __construct()
	{
		parent::__construct();
	
		// Register Extra task
		$this->registerTask('setlinenumber', 		'linenumber');
		$this->registerTask('disablelinenumber', 	'linenumber');
	}
	
	
	/**
	 * Proxy for getModel.
	 */
	public function getModel($name = 'Cssmanager', $prefix = 'JEMModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array(
				'ignore_request' => true
		));
		return $model;
	}

	/**
	 * Cancel
	 */
	public function cancel()
	{
		$this->setRedirect('index.php?option=com_jem&view=main');
	}
	
	/**
	 * Linenumber
	 */
	public function linenumber()
	{
		$jinput	= JFactory::getApplication()->input;	
		$task 	= $jinput->get('task');
		$model	= $this->getModel();
		
		switch ($task)
		{
			case 'setlinenumber' :
				$model->setStatusLinenumber(1);
				break;
		
			default :
				$model->setStatusLinenumber(0);
				break;
		}
		
		$this->setRedirect('index.php?option=com_jem&view=cssmanager');
		
	}
}