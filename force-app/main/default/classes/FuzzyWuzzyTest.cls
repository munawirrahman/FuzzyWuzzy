@isTest
public class FuzzyWuzzyTest {
    public static testMethod void DoSimpleRatio(){
        Test.startTest();
        Integer SimpleRatioResult1 = FuzzyWuzzy.SimpleRatio('mysmilarstring', 'mymostsimilarstsdsdring');
        Integer SimpleRatioResult2 = FuzzyWuzzy.SimpleRatio('mysmilarstring', 'myawfullysimilarstirng');
        Integer SimpleRatioResult3 = FuzzyWuzzy.SimpleRatio('mysmilarstring', 'mysimilarstring');
        Integer SimpleRatioResult4 = FuzzyWuzzy.SimpleRatio('csr', 'c s r');
        Integer SimpleRatioResult5 = FuzzyWuzzy.SimpleRatio('abcdefghijklmnopqrstuvwxyzabcd', 'abcdefghijklmnopqrstuvwxyzabcd');
        System.assertEquals(76, SimpleRatioResult1);
        System.assertEquals(72, SimpleRatioResult2);
        System.assertEquals(97, SimpleRatioResult3);
        System.assertEquals(75, SimpleRatioResult4);
        System.assertEquals(100, SimpleRatioResult5);
        Test.stopTest();
    }
    
    public static testMethod void DoPartialRatio(){
        Test.startTest();
        Integer PartialRatioResult1 = FuzzyWuzzy.PartialRatio('similar', 'somewhresimlrbetweenthisstring');
        Integer PartialRatioResult2 = FuzzyWuzzy.PartialRatio('similar', 'notinheresim');
        Integer PartialRatioResult3 = FuzzyWuzzy.PartialRatio('pros holdings, inc.', 'settlement facility dow corning trust');
        Integer PartialRatioResult4 = FuzzyWuzzy.PartialRatio('Opposite ways go alike', 'Should be the same');
        Integer PartialRatioResult5 = FuzzyWuzzy.PartialRatio('Should be the same', 'Opposite ways go alike');
        Integer PartialRatioResult6 = FuzzyWuzzy.PartialRatio('HA HA HA HA', 'HA HA HA HA');
        System.assertEquals(71, PartialRatioResult1);
        System.assertEquals(43, PartialRatioResult2);
        System.assertEquals(38, PartialRatioResult3);
        System.assertEquals(33, PartialRatioResult4);
        System.assertEquals(33, PartialRatioResult5);
        System.assertEquals(100, PartialRatioResult6);
        Test.stopTest();
    }
    public static testMethod void DoInvocable(){
        Test.startTest();
        List<FuzzyWuzzy.Request> listRequest =new List<FuzzyWuzzy.Request>();
    	FuzzyWuzzy.Request req = new FuzzyWuzzy.Request();
        req.String01 = 'ASFASF';
        req.String02 = 'advfdfsF';
        req.FuzzyWuzzy_logic = 'PartialRatio';
    	listRequest.add(req);
        List<FuzzyWuzzy.Response> listResult = FuzzyWuzzy.execute(listRequest);
        Test.stopTest();
    }
}