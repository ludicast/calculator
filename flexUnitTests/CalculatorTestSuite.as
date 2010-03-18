package flexUnitTests
{
	import flexUnitTests.gui.GuiSuite;

	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class CalculatorTestSuite
	{
		public var calcLogic:CalculatorLogicTester;
		public var memoizer:MemoizerTest;
		public var guiSuite:GuiSuite;
		
	}
}