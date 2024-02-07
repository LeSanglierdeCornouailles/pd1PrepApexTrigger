/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-07-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ValidateLeadData {
    public void method1(List<Lead> leadList){ //Getting list of lead records from trigger.new.
        for(Lead obj:leadList){ //Iterating over lead list.
            if(obj.status=='Closed - Converted' && obj.LeadSource=='Web'){ // checking conditions.
                obj.addError('Lead status can be updated to "Closed - Converted" status only if LEAD SOURCE is "Web" ');  // Throw error if the conditions are satisfied.
            }  
        } 
    }
}