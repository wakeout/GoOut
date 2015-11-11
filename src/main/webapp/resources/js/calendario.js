	window.onload = function(){
		new JsDatePick({
			useMode:2,
			target:"inputField",
			dateFormat:"%d-%M-%Y"
		});
		
		new JsDatePick({
			useMode:2,
			target:"inputField2",
			dateFormat:"%d-%M-%Y"
		});
	};