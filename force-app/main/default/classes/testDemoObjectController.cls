@isTest
public class testDemoObjectController {

    @isTest
    public static void testGetURL() {
    
        Demo_Object__c obj = new Demo_Object__c(Name='Test');
        obj.External_URL__c = 'https://{!Environment.EXTERNAL_URL}';
        String output = DemoObjectController.getExternalURL(obj);
        System.assertEquals(output,'https://{!Environment.EXTERNAL_URL}');
    
    }

}