<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcedashboard_projects_issues extends Datasource{
		
		public $dsParamROOTELEMENT = 'dashboard-projects-issues';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '999';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = 'system:id';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		
		public $dsParamFILTERS = array(
				'39' => '{$ds-dashboard-projects}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'date',
				'author',
				'priority',
				'category',
				'assignee',
				'milestone',
				'status',
				'project'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-dashboard-projects');
		}
		
		public function about(){
			return array(
					 'name' => 'Dashboard Projects Issues',
					 'author' => array(
							'name' => 'Nils Werner',
							'website' => 'http://trac.obsessive-media.de.localhost',
							'email' => 'nils.werner@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-02-08T15:29:17+00:00');	
		}
		
		public function getSource(){
			return '12';
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

