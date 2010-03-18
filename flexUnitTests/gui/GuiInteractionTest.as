package flexUnitTests.gui
{
	import flash.events.MouseEvent;
	
	import mx.controls.Button;
	
	import org.flexunit.assertThat;
	import org.hamcrest.object.equalTo;

	public class GuiInteractionTest extends GuiSetup
	{
		[Test]
		public function buttonsShouldAddInfoToScreen():void {
			for (var i:Number = 0; i <= 9; i++) {
				var button:Button = panel.getButton(i);
				button.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
			}
			assertThat(panel.output.text, equalTo("0123456789"));
			
		}
		
	}
}