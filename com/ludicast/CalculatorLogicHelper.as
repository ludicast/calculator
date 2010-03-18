package com.ludicast
{
	import com.ludicast.model.CalculatorModel;

	public class CalculatorLogicHelper
	{	
		protected var model:CalculatorModel = CalculatorModel.getInstance();
		
		
		public function add():void {
			model.resultValue = model.resultValue + Number(model.screenValue);
			model.screenValue = "";
		}

		public function subtract():void {
			model.resultValue =  model.resultValue - Number(model.screenValue);
			model.screenValue = "";
		}	

		public function multiply():void {
			model.resultValue = model.resultValue * Number(model.screenValue);	
			model.screenValue = "";
		}	
		
		
	}
}