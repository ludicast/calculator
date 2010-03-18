package com.ludicast.model
{
	[Bindable]
	public class CalculatorModel
	{
		
		private static var instance:CalculatorModel;
		
		public static function getInstance():CalculatorModel {
			if (instance == null) {
				instance = new CalculatorModel();
			}
			return instance;
		}
		
		public function initialize():void {
			screenValue = "";
			resultValue = 0;
		}
		
		public var screenValue:String = "";
		public var resultValue:Number = 0;
	}
}