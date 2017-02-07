public class CurrencyStatus {
    
    public CurrencyStatus(){}
    
    @auraEnabled
    public static string getStatus(string baseCurr){
        http h = new http();
        HttpRequest req= new HttpRequest();
        HttpResponse resp= new HttpResponse();
        if(baseCurr==null)
        	req.setEndpoint('http://api.fixer.io/latest?base=USD');
        else
        	req.setEndpoint('http://api.fixer.io/latest?base='+baseCurr);
        req.setMethod('GET');
        resp = h.send(req);
       string strData=(resp.getBody()).replace('date','sdate');
        CurrencyWrapper rates= CurrencyWrapper.parse(strData);
        system.debug('==='+rates.rates.INR );
       
        return string.valueOf(rates.rates.INR) ;
    }
}