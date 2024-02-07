/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-07-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger Book_Del_Trigger on Book__c (before delete) 
{
    for (Book__C book : trigger.old)
    {
        if( book.id != null && book.price__c != null )
        {
            book.addError('Cannot delete book');
        }
    }
}