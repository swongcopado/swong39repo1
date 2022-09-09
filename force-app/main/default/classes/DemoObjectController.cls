public class DemoObjectController {
	// made a change in DEV2
    static public String getExternalURL(Demo_Object__c obj) {
    
        String url = obj.External_URL__c;
        
        return url;
    
    }
    
    static public String getDescription(Demo_Object__c obj) {
    
        String d = obj.Description__c;
        
        return d;
    	// made a change in DEV2
    }

}