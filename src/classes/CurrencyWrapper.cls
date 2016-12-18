public class CurrencyWrapper{
    public String base{get;set;}	//USD
	public String sdate{get;set;}	//2016-12-15
	public rate rates{get;set;}
	public class rate {
		public Double AUD;	//1.3542
		public Double BGN;	//1.8771
		public Double BRL;	//3.3878
		public Double CAD;	//1.3343
		public Double CHF;	//1.0301
		public Double CNY;	//6.9356
		public Double CZK;	//25.934
		public Double DKK;	//7.136
		public Double GBP;	//0.80236
		public Double HKD;	//7.76
		public Double HRK;	//7.238
		public Double HUF;	//300.58
		//public Integer IDR;	//13425
		public Double ILS;	//3.8451
		public Double INR;	//67.802
		public Double JPY;	//118.08
		public Double KRW;	//1186.1
		public Double MXN;	//20.655
		public Double MYR;	//4.4722
		public Double NOK;	//8.6374
		public Double NZD;	//1.4159
		public Double PHP;	//49.935
		public Double PLN;	//4.2662
		public Double RON;	//4.3404
		public Double RUB;	//61.806
		public Double SEK;	//9.3759
		public Double SGD;	//1.4404
		public Double THB;	//35.79
		//public Double TRY;	//3.5358
		public Double ZAR;	//14.04
		public Double EUR;	//0.95979
	}
	public static CurrencyWrapper parse(String json){
        system.debug('=='+json);
		return (CurrencyWrapper) System.JSON.deserialize(json, CurrencyWrapper.class);
	}


}