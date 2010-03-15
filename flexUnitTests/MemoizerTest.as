package flexUnitTests
{
	import com.ludicast.Memoizer;
	
	import flexunit.framework.Assert;
	
	import org.flexunit.assertThat;
	import org.hamcrest.object.equalTo;
	
	public class MemoizerTest
	{
		private var _memoizer:Memoizer;
		
		[Before]
		public function createMemoizer():void {
			_memoizer = Memoizer.getInstance();	
			_memoizer.clean();
		}
		
		[Test]
		public function testStoreResult():void {
			var expectedResult:Number = 33;
			_memoizer.addBinaryOperationResult("foo", 1, 2, expectedResult);
			var result:Number = _memoizer.getBinaryOperationResult("foo", 1, 2);
			
			assertThat(result, equalTo(expectedResult));
		}
		
		[Test(expected="com.ludicast.MemoizerException")]
		public function throwsExceptionIfNotFound():void {
			var result:Number = _memoizer.getBinaryOperationResult("foo", 1, 2);
		}

		[Test(expected="com.ludicast.MemoizerException")]
		public function cleanEmptiesResults():void {
			_memoizer.addBinaryOperationResult("foo", 1, 2, 33);				
			_memoizer.clean();
				
			_memoizer.getBinaryOperationResult("foo", 1, 2);			
		}		
		
		
	}
}