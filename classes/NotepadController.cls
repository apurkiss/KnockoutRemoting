public with sharing class NotepadController 
{
	public NotepadController(){}

	// If necessary, insert new note on page load
	public void onLoad()
	{
		if([SELECT count() FROM Notepad__c WHERE Name = 'Note' LIMIT 1] == 0)
			insert new Notepad__c(Name = 'Note');
	}

	// Load note
	@RemoteAction
	public static Notepad__c load()
	{
		return [SELECT Id, Note__c FROM Notepad__c WHERE Name = 'Note' LIMIT 1];
	}
	
	// Save note
	@RemoteAction
	public static Notepad__c save(Notepad__c n)
	{
		upsert n;
		return n;
	}
}