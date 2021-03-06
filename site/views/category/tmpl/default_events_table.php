<?php
/**
 * @package JEM
 * @copyright (C) 2013-2015 joomlaeventmanager.net
 * @copyright (C) 2005-2009 Christoph Lukes
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
defined('_JEXEC') or die;
?>
<script type="text/javascript">
	function tableOrdering(order, dir, view)
	{
		var form = document.getElementById("adminForm");

		form.filter_order.value 	= order;
		form.filter_order_Dir.value	= dir;
		form.submit(view);
	}


	jQuery(document).ready(function() {
	    jQuery('#eventfilters').click(function() {
	            jQuery('.eventfilters').slideToggle("fast");
	    });
	});
</script>


<!-- FILTER Block -->

<?php if ($this->settings->get('global_show_filter',1) || $this->settings->get('global_display',1)) : ?>
	<div id="jem_filter" class="clearfix">
		<?php if ($this->settings->get('global_show_filter',1)) : ?>
			<div class="pull-left">
				<?php
					echo $this->lists['filter'].'&nbsp;';
				?>
				<div class="btn-wrapper input-append">
					<input type="text" name="filter_search" id="filter_search" value="<?php echo $this->lists['search'];?>" class="inputbox input-medium" onchange="this.form.submit();" />
					<button type="submit" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
					<button type="button" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.getElementById('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
				</div>
			</div>
		<?php endif; ?>
		<?php if ($this->settings->get('global_display',1)) : ?>
			<div class="pull-right">
				<?php
					echo $this->pagination->getLimitBox();
				?>
			</div>
		<?php endif; ?>
	</div>
<?php endif; ?>

<!-- TABLE -->

<table class="eventtable" style="width:<?php echo $this->jemsettings->tablewidth; ?>;" summary="jem">
	<colgroup>
		<?php if ($this->jemsettings->showeventimage == 1) : ?>
			<col width="<?php echo $this->jemsettings->tableeventimagewidth; ?>" class="jem_col_event_image" />
		<?php endif; ?>
			<col width="<?php echo $this->jemsettings->datewidth; ?>" class="jem_col_date" />
		<?php if ($this->jemsettings->showtitle == 1) : ?>
			<col width="<?php echo $this->jemsettings->titlewidth; ?>" class="jem_col_title" />
		<?php endif; ?>
		<?php if ($this->jemsettings->showlocate == 1) : ?>
			<col width="<?php echo $this->jemsettings->locationwidth; ?>" class="jem_col_venue" />
		<?php endif; ?>
		<?php if ($this->jemsettings->showcity == 1) : ?>
			<col width="<?php echo $this->jemsettings->citywidth; ?>" class="jem_col_city" />
		<?php endif; ?>
		<?php if ($this->jemsettings->showatte == 1) : ?>
			<col width="<?php echo $this->jemsettings->attewidth; ?>" class="jem_col_attendees" />
		<?php endif; ?>
	</colgroup>

	<thead>
		<tr>
			<?php if ($this->jemsettings->showeventimage == 1) : ?>
				<th id="jem_eventimage" class="sectiontableheader"><?php echo JText::_('COM_JEM_TABLE_EVENTIMAGE'); ?></th>
			<?php endif; ?>
				<th id="jem_date" class="sectiontableheader"><?php echo JHtml::_('grid.sort', 'COM_JEM_TABLE_DATE', 'a.dates', $this->lists['order_Dir'], $this->lists['order']); ?></th>
			<?php if ($this->jemsettings->showtitle == 1) : ?>
				<th id="jem_title" class="sectiontableheader"><?php echo JHtml::_('grid.sort', 'COM_JEM_TABLE_TITLE', 'a.title', $this->lists['order_Dir'], $this->lists['order']); ?></th>
			<?php endif; ?>
			<?php if ($this->jemsettings->showlocate == 1) : ?>
				<th id="jem_location" class="sectiontableheader"><?php echo JHtml::_('grid.sort', 'COM_JEM_TABLE_LOCATION', 'l.venue', $this->lists['order_Dir'], $this->lists['order']); ?></th>
			<?php endif; ?>
			<?php if ($this->jemsettings->showcity == 1) : ?>
				<th id="jem_city" class="sectiontableheader"><?php echo JHtml::_('grid.sort', 'COM_JEM_TABLE_CITY', 'l.city', $this->lists['order_Dir'], $this->lists['order']); ?></th>
			<?php endif; ?>
			<?php if ($this->jemsettings->showatte == 1) : ?>
				<th id="jem_attendees" class="sectiontableheader"><?php echo JText::_('COM_JEM_TABLE_ATTENDEES'); ?></th>
			<?php endif; ?>
		</tr>
	</thead>

	<tbody>
		<?php if ($this->noevents == 1) : ?>
			<tr class="noevents"><td colspan="20"><?php echo JText::_('COM_JEM_NO_EVENTS'); ?></td></tr>
		<?php else : ?>
			<?php $this->rows = $this->getRows(); ?>
			<?php foreach ($this->rows as $row) : ?>
				<?php if (!empty($row->featured)) :   ?>
				<tr class="featured featured<?php echo $row->id.$this->params->get('pageclass_sfx'); ?>" itemscope="itemscope" itemtype="http://schema.org/Event" >
				<?php else : ?>
				<tr class="sectiontableentry<?php echo ($row->odd +1) . $this->params->get('pageclass_sfx'); ?>" itemscope="itemscope" itemtype="http://schema.org/Event" >
				<?php endif; ?>

				<?php if ($this->jemsettings->showeventimage == 1) : ?>
					<td class="jem_eventimage">
						<?php if (!empty($row->datimage)) : ?>
							<?php
							$dimage = JemImage::flyercreator($row->datimage, 'event');
							echo JemOutput::flyer($row, $dimage, 'event');
							?>
						<?php endif; ?>
					</td>
				<?php endif; ?>

				<td class="jem_date">
					<?php
						echo JemOutput::formatShortDateTime($row->dates, $row->times,
							$row->enddates, $row->endtimes);
						echo JemOutput::formatSchemaOrgDateTime($row->dates, $row->times,
							$row->enddates, $row->endtimes);
					?>
				</td>
				<?php if (($this->jemsettings->showtitle == 1) && ($this->jemsettings->showdetails == 2)) : ?>
				<?php if ($this->escape($row->introtext) != "" ) { ?>
					<td class="jem_title">
						<a href="<?php echo JRoute::_(JemHelperRoute::getEventRoute($row->slug)); ?>" itemprop="url">
							<span itemprop="name"><?php echo $this->escape($row->title); ?></span>
						</a>
					</td>
				<?php } else { ?>
				<td class="jem_title" itemprop="name">
						<?php echo $this->escape($row->title); ?>
					</td>
				<?php } ?>
				<?php endif; ?>
				<?php if (($this->jemsettings->showtitle == 1) && ($this->jemsettings->showdetails == 1)) : ?>
					<td class="jem_title">
						<a href="<?php echo JRoute::_(JemHelperRoute::getEventRoute($row->slug)); ?>" itemprop="url">
							<span itemprop="name"><?php echo $this->escape($row->title); ?></span>
						</a>
					</td>
				<?php endif; ?>

				<?php if (($this->jemsettings->showtitle == 1) && ($this->jemsettings->showdetails == 0)) : ?>
					<td class="jem_title" itemprop="name">
						<?php echo $this->escape($row->title); ?>
					</td>
				<?php endif; ?>

				<?php if ($this->jemsettings->showlocate == 1) : ?>
					<td class="jem_location">
						<?php if ($this->jemsettings->showlinkvenue == 1) : ?>
							<?php echo !empty($row->locid) ? "<a href='".JRoute::_(JemHelperRoute::getVenueRoute($row->venueslug))."'>".$this->escape($row->venue)."</a>" : '-'; ?>
						<?php else : ?>
							<?php echo !empty($row->locid) ? $this->escape($row->venue) : '-'; ?>
						<?php endif; ?>
					</td>
				<?php endif; ?>

				<?php if ($this->jemsettings->showcity == 1) : ?>
					<td class="jem_city">
						<?php echo !empty($row->city) ? $this->escape($row->city) : '-'; ?>
					</td>
				<?php endif; ?>

				<?php if ($this->jemsettings->showatte == 1) : ?>
					<td class="jem_attendees center">
						<?php echo !empty($row->regCount) ? $this->escape($row->regCount) : '-'; ?>
					</td>
				<?php endif; ?>
				</tr>
			<?php endforeach; ?>
		<?php endif; ?>
	</tbody>
</table>