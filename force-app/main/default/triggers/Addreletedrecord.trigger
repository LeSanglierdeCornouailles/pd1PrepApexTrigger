/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-08-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger Addreletedrecord on Account (after update, after insert) {

    List<Opportunity> oppList = new List<Opportunity>();
    
    for(Account a:[SELECT Id,Name from Account where Id IN:Trigger.new AND Id NOT IN(SELECT AccountId from Opportunity)]){
    
        oppList.add(New Opportunity(Name= a.Name+'opportunity',StageName='Prospecting',AccountId=a.Id, CloseDate=System.today().addMonths(1)));
    
        }
    
        If(oppList.Size()>0){
    
            upsert oppList;
    
            }
    
    }