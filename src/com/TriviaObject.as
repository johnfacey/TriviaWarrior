package com 
{
	
	/**
	 * ...
	 * @author JohnF
	 */
	public class TriviaObject 
	{
		public var id:Number;
		public var group:String;
		public var question:String;
		public var answerArray:Array;
		
		public function TriviaObject() 
		{
		   this.id = 0;
		   this.group = "";
		   this.question = "";
		   this.answerArray = new Array(4);
		}
		
	}
	
}