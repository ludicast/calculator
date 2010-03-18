package flexUnitTests.gui
{
	import com.ludicast.view.CalculatorPanel;
	
	import mx.controls.Button;
	import mx.controls.Label;
	
	import org.flexunit.assertThat;
	import org.hamcrest.core.isA;
	import org.hamcrest.object.equalTo;
	
	public class GuiLayoutTest extends GuiSetup
	{
		
		[Test]
		public function shouldHaveOutputPanel():void {
			assertThat(panel.output, isA(Label));
		}
		
		[Test]
		public function shouldHaveNumericButtons():void {
			for (var i:Number = 0; i <= 9; i++) {
				var button:Button = panel.getButton(i);
				assertThat(button.label, equalTo(i.toString()));
			}
		}
		[Test]
		public function numbersShouldMapToSameObject():void {
			for (var i:Number = 0; i <= 9; i++) {
				var button:Button = panel.getButton(i);
				var button2:Button = panel.getButton(i);
				assertThat(button, equalTo(button2));
			}
		}
	
	}
}