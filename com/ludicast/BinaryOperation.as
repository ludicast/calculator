package com.ludicast
{
	public class BinaryOperation
	{
		public var opName:String;
		public var param1:Number;
		public var param2:Number;
		public var result:Number;
		
		public function BinaryOperation(opName:String, param1:Number, param2:Number, result:Number) {
			this.opName = opName;
			this.param1 = param1;
			this.param2 = param2;
			this.result = result;
		}
		
	}
}