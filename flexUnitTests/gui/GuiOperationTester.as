package flexUnitTests.gui
{
	import flash.events.MouseEvent;
	
	import mx.controls.Button;
	
	import org.flexunit.assertThat;
	import org.hamcrest.object.equalTo;

	public class GuiOperationTester extends GuiSetup
	{
		protected function clickButton(id:*):void {
			var button:Button = panel.getButton(id);
			button.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
		}
		
		[Test]
		public function additionWorks():void {			
			clickButton(1);
			clickButton(2);
			clickButton("Plus");
			clickButton(3);
			clickButton(4);
			clickButton("Plus");
			assertThat(panel.resultWindow.text, equalTo("46"));	
		}
		
	}
}