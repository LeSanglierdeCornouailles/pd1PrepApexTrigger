/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-09-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class CallOutWeatherForecast {

    public static void makeCallout() {
        
            Http http = new Http(); 
            HttpRequest req = new HttpRequest();
            req.setEndpoint('http://metwdb-openaccess.ichec.ie/metno-wdb2ts/locationforecast?lat=53.3470942;long=-6.2339471;from=;to=');
            req.setMethod('GET'); 
            HttpResponse res = http.send(req);
    
            if (res.getStatusCode() ==200) 
            {
                System.debug('Made a callout to external  System' +res.getBody());
            }
        }
    }