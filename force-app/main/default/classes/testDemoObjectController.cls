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

        String newDescription = 'A new description';
        obj = DemoObjectController.setDescription(obj,newDescription);
        String d = DemoObjectController.getDescription(obj);
        System.assertEquals(d,'Some dummy description');
        
    
    }

}