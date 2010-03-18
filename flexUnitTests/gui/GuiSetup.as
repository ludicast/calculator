package flexUnitTests.gui
{
	import com.ludicast.view.CalculatorPanel;
	
	import mx.events.FlexEvent;
	
	import org.flexunit.async.Async;
	import org.fluint.uiImpersonation.UIImpersonator;

	public class GuiSetup
	{
		protected var panel:CalculatorPanel		
		
		[Before(async,ui)]
		public function setUp():void {
			panel = new CalculatorPanel();
			Async.proceedOnEvent( this, panel, FlexEvent.CREATION_COMPLETE, 200 );
			UIImpersonator.addChild( panel );
		}
		
	}
}