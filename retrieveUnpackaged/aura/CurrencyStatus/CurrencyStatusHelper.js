({
	getStatusData : function(component) {
        var action = component.get("c.getStatus");
        var baseCurrency = component.get("v.strBaseCurr");
        //alert(baseCurrency);
        action.setParams({"baseCurr":baseCurrency});
        action.setCallback(this, function(data) {
            
        
        component.set("v.inrStatus", data.getReturnValue());
        });
        // action.setParams("baseCurr":baseCurrency);
        $A.enqueueAction(action);
	}
})