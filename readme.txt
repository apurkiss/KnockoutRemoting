Knockout Remoting

A Force.com integration of Knockout.js and Apex via JavaScript Remoting.
Knockout Remoting demonstrates a real-time integration from DOM to
SObject. Knockout.js keeps the View and ViewModel in sync and JavaScript 
Remoting syncs the server onkeyup.

Notepad.page:
  Visualforce page that includes all components

NotepadController.cls:
  Controller for Notepad.page
  
NotepadJS.component:
  JavaScript that handles MVVM operations
  
Knockout.component:
  Knockout.js library
  
Notepad__c.object:
  Metadata for the required custom object Notepad__c. 
  Required Fields:
    Note__c Text(10)