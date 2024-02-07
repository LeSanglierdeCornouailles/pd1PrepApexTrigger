/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-07-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ExampleTrigger on Contact (after insert, after delete) 
{
    if (Trigger.isInsert) {
        Integer recordCount = Trigger.new.size();
        // Call a utility method from another class
        EmailManager.sendMail('add your eamil here', 'Trailhead Trigger Tutorial', recordCount + ' contact(s) were inserted.');}
    else if (Trigger.isDelete) {
        // Process after delete
    }
}