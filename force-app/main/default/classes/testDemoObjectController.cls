@isTest
public class testDemoObjectController {
    // made a change in DEV2

    @isTest
    public static void testGetURL() {
    
        Demo_Object__c obj = new Demo_Object__c(Name='Test');
        obj.External_URL__c = 'https://{!Environment.EXTERNAL_URL}';
        obj.Description__c = 'Some dummy description';
        String output = DemoObjectController.getExternalURL(obj);
        System.assertEquals(output,'https://{!Environment.EXTERNAL_URL}');
        // Need to add code to test the getDescription method
        // 
        // // made a change in DEV1
    
    }

}