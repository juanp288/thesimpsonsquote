component persistent="true"	table="urls"
							entityname="SaveUrls"
							output="false"
{
	/* Table Columns - Start */
	property name="id"			ormtype="integer"	notnull="true"	fieldType="id"	generator="identity" ;
	property name="url"			ormtype="string"	notnull="true"	isUUID="true";	//this is CF uuid, NOT mssql

}