@isTest
public class CurrencyTest {
	static testMethod void testParse() {
		String json=		'{'+
		'  "base": "USD",'+
		'  "date": "2016-12-15",'+
		'  "rates": {'+
		'    "AUD": 1.3542,'+
		'    "BGN": 1.8771,'+
		'    "BRL": 3.3878,'+
		'    "CAD": 1.3343,'+
		'    "CHF": 1.0301,'+
		'    "CNY": 6.9356,'+
		'    "CZK": 25.934,'+
		'    "DKK": 7.136,'+
		'    "GBP": 0.80236,'+
		'    "HKD": 7.76,'+
		'    "HRK": 7.238,'+
		'    "HUF": 300.58,'+
		//'    "IDR": 13425.0,'+
		'    "ILS": 3.8451,'+
		'    "INR": 67.802,'+
		'    "JPY": 118.08,'+
		'    "KRW": 1186.1,'+
		'    "MXN": 20.655,'+
		'    "MYR": 4.4722,'+
		'    "NOK": 8.6374,'+
		'    "NZD": 1.4159,'+
		'    "PHP": 49.935,'+
		'    "PLN": 4.2662,'+
		'    "RON": 4.3404,'+
		'    "RUB": 61.806,'+
		'    "SEK": 9.3759,'+
		'    "SGD": 1.4404,'+
		'    "THB": 35.79,'+
		'    "TRY": 3.5358,'+
		'    "ZAR": 14.04,'+
		'    "EUR": 0.95979'+
		'  }'+
		'}';
        CurrencyWrapper obj= new CurrencyWrapper();
		obj=CurrencyWrapper.parse(json);
		System.assert(obj != null);
	}
}