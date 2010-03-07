<?php
	
	class Extension_Parampool_to_XML extends Extension {
		
		public function about() {
			return array(
				'name'			=> 'Data Source: Param Pool to XML',
				'version'		=> '1.0',
				'release-date'	=> '2009-09-23',
				'author'		=> array(
					'name'			=> 'Nick Dunn',
					'website'		=> 'http://airlock.com'
				),
				'description'	=> 'Adds parameter pool ($param) into your Page XML'
			);
		}
	}