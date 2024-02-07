/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-07-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger leadTriggerEventBeforeUpdate on Lead (before update) {  // Specifying the event.
    ValidateLeadData obj = new ValidateLeadData(); // Declaring the instance of the class.
    if (trigger.isbefore && trigger.isUpdate) //Using context variables.
     {
     obj.method1 (trigger.new); //Calling apex class method.
     }   
}