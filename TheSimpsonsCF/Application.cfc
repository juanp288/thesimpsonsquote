<cfcomponent output="true">
<cfprocessingdirective pageencoding = "UTF-8">
	<cfscript>
		this.datetimeconfigured				= now();
		this.applicationTimeout 			= CreateTimeSpan(7,0,0,0);	//7 days
		this.enablerobustexception			= true;
		this.name 							= 'thesimpsonscf';

		/*	orm related */
		this.datasource						= "dataPhrases";
		this.ormenabled 					= "true";
		this.ormSettings.cfclocation		= ["orms"];				//no need to specify subdirectories
		this.ormSettings.useDBForMapping	= false;
		this.ormSettings.dialect			= "MySQLwithInnoDB";

		boolean function onRequestStart( required string targetPage ) {
			var response = getpagecontext().getresponse();
			response.setHeader( 'Access-Control-Allow-Origin', "*");
			response.setHeader( 'Access-Control-Allow-Headers', "Origin, X-Requested-With, Content-Type, Accept");
			response.setHeader( 'Access-Control-Allow-Methods', "GET, POST, PUT, DELETE, OPTIONS");
			
			return true;
		}

	</cfscript>
</cfcomponent>