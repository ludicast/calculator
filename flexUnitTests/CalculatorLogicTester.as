package flexUnitTests
{
	import com.ludicast.CalculatorLogicHelper;
	import com.ludicast.model.CalculatorModel;
	
	import org.flexunit.assertThat;
	import org.hamcrest.object.equalTo;
	
	public class CalculatorLogicTester
	{
		// Reference declaration for class to test
		private var helper:CalculatorLogicHelper;
		private var model:CalculatorModel = CalculatorModel.getInstance();
		
		[Before]
		public function setupCalculator():void {
			helper  = new CalculatorLogicHelper();
		}
		
		
		[Test]
		public function testAdd():void
		{
			model.screenValue = "5"
			model.resultValue = 5;
			helper.add();
			assertThat(model.resultValue,equalTo(10));
		}
		
		[Test]
		public function testMultiply():void
		{
			model.screenValue = "5";
			model.resultValue = 5;
			helper.multiply();
			assertThat(model.resultValue,equalTo(25));
		}
		
		[Test]
		public function testSubtract():void
		{
			model.screenValue = "2";
			model.resultValue = 5;
			helper.subtract(); 
			assertThat(model.resultValue,equalTo(3));
		}
	}
}