@isTest
public class testDemoObjectController {
    @isTest
    public static void testGetURL() {
    
        Demo_Object__c obj = new Demo_Object__c(Name='Test');
        obj.External_URL__c = 'https://{!Environment.EXTERNAL_URL}';
        obj.Description__c = 'Some dummy description';
        String output = DemoObjectController.getExternalURL(obj);
        System.assertEquals(output,'https://{!Environment.EXTERNAL_URL}');
        output = DemoObjectController.getDescription(obj);
        System.assertEquals(output,'Some wrong description');
    
    }

}