<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcezzz_param_pool extends Datasource{
		
		public $dsParamROOTELEMENT = 'param-pool';

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Param Pool to XML',
					 'author' => array(
							'name' => 'Nick Dunn',
							'website' => 'http://airlock.com'),
					 'version' => '1.0',
					 'release-date' => '2009-09-23');	
		}
			
		public function allowEditorToParse(){
			return false;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
			
			foreach ($this->_env as $key => $value) {
				
				switch ($key) {
					case 'param':
						//$group = new XMLElement('params');
						foreach ($this->_env[$key] as $key => $value) {
							$param = new XMLElement($key, General::sanitize($value));
							$result->appendChild($param);
						}
						//$result->appendChild($group);
					break;
					
					case 'env':
						//$group = new XMLElement('pool');
						foreach ($this->_env[$key]['pool'] as $key => $value) {
							$param = new XMLElement($key);
							if (is_array($value)) {
								$param->setAttribute('count', count($value));
								foreach ($value as $key => $value) {
									$item = new XMLElement('item', General::sanitize($value));
									$item->setAttribute('handle', Lang::createHandle($value));
									$param->appendChild($item);
								}
							} else {
								$param->setValue(General::sanitize($value));
							}
							$result->appendChild($param);
						}
						//$result->appendChild($group);
					break;
				}
				
			}
			
			return $result;
		}
	}