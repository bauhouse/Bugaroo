<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceindex_assignee extends Datasource{
		
		public $dsParamROOTELEMENT = 'index-assignee';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '999';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'none';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		public $dsParamINCLUDEDELEMENTS = array(
				'username',
				'role',
				'name',
				'company',
				'email',
				'none',
				'detailed',
				'hide',
				'suscriptions'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Index Assignee',
					 'author' => array(
							'name' => 'Nils Werner',
							'website' => 'http://trac.obsessive-media.de.localhost',
							'email' => 'nils.werner@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-02-16T14:49:41+00:00');	
		}
		
		public function getSource(){
			return '7';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}			
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

