<cfscript> 
	try{
		obj =  entityNew("SaveUrls");
		obj.setUrl(FORM.url);
		entitySave(obj);

		transactionCommit();
	}catch(any e){
		writeDump(e);
	}
</cfscript>	