package flexUnitTests
{
	import com.ludicast.CalculatorLogicHelper;
	
	import flexunit.framework.Assert;
	
	import org.flexunit.assertThat;
	import org.hamcrest.object.equalTo;
	
	public class CalculatorLogicTester
	{
		// Reference declaration for class to test
		private var helper:CalculatorLogicHelper;
		
		
		[Before]
		public function setupCalculator():void {
			helper  = new CalculatorLogicHelper();
		}
		
		
		[Test]
		public function testAdd():void
		{
			var result:Number = helper.add(5,5); 
			assertThat(result,equalTo(10));
		}
		
		[Test]
		public function testDivide():void
		{
			var result:Number = helper.divide(6,2); 
			assertThat(result,equalTo(3));
		}
		
		[Test]
		public function testMultiply():void
		{
			var result:Number = helper.multiply(5,5); 
			assertThat(result,equalTo(25));
		}
		
		[Test]
		public function testSubtract():void
		{
			var result:Number = helper.subtract(5,2); 
			assertThat(result,equalTo(3));
		}
	}
}