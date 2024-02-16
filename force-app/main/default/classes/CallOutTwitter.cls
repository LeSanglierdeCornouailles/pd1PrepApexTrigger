/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-13-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CallOutTwitter {

    public static void makeCalloutToTwitter() {
        
        Http http = new Http(); //
        HttpRequest req = new HttpRequest(); //
        req.setEndpoint('https://api.twitter.com/2/oauth2/token');//

        string mybody='{"client_id":"eFVrNHhNRE1JQW5tUnQ0N2ZINGo6MTpjaQ","client_secret":"rwm_0-dvU1K1ZQlG8swq7N0oP8s127lYbpa8KPXORkH_DimXbH","grant_type":"client_credentials"}';

        req.setMethod('GET'); //
        req.setHeader('Authorization', 'Bearer');
        req.setHeader('Content-Type','application/json');
        req.setBody(mybody);

        HttpResponse res = http.send(req);//


        // Parse the JSON response
        if (res.getStatusCode() != 201) 
        {
            System.debug('The status code returned was not expected: ' + res.getStatusCode() + ' ' + res.getStatus());
        } 
        else {
            System.debug(res.getBody());
        }
    }
}