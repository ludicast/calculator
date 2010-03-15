package com.ludicast
{
	import mx.collections.ArrayCollection;

	public class Memoizer
	{
		private static var _inst:Memoizer;
		
		public static function getInstance():Memoizer {
			if (_inst == null) {
				_inst = new Memoizer();
			}
			return _inst;
		}
		
		public function Memoizer() {
			if (_inst != null) {
				throw new MemoizerException("singleton error");
			}
			clean();
		}
		
		
		public function clean():void {
			results = new ArrayCollection();		
		}
		
		public function addBinaryOperationResult(opName:String, param1:Number, param2:Number, result:Number):void {
			results.addItem(
				new BinaryOperation(opName,param1,param2, result)
			);
		}
		public function getBinaryOperationResult(opName:String, param1:Number, param2:Number):Number {
			for (var i:Number = 0; i < results.length; i++) {
				var operation:BinaryOperation = results.getItemAt(i) as BinaryOperation;
				if (operation.opName == opName && operation.param1 == param1 && operation.param2 == param2) {
					return operation.result;
				}
			}
			throw new MemoizerException("operation not found!");
			
			return -1;
		}
		
		private var results:ArrayCollection = new ArrayCollection();
		
	}
}