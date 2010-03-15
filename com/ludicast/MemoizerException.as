package com.ludicast
{
	public class MemoizerException extends Error
	{
		public function MemoizerException(message:*="", id:*=0)
		{
			super("Memoizer exception");
		}
	}
}