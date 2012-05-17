package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PresAdvisorFlags9Atom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * A - fDisableCaseStyleTitleRule (1 bit): A bit that specifies not to warn the user when the letter casing of text in a title placeholder shape does not follow a certain rule.
		 */
		
		public var fDisableCaseStyleTitleRule:int;
		
		/**
		 * B - fDisableCaseStyleBodyRule (1 bit): A bit that specifies not to warn the user when the letter casing of text in a body placeholder shape does not follow a certain rule.
		 */
		public var fDisableCaseStyleBodyRule:int;
		
		/**
		 * C - fDisableEndPunctuationTitleRule (1 bit): A bit that specifies not to warn the user when the ending punctuation of text in a title placeholder shape does not follow a certain rule.
		 */
		
		 public var fDisableEndPunctuationTitleRule:int;
		 
		 
		 /**
		  * D - fDisableEndPunctuationBodyRule (1 bit): A bit that specifies not to warn the user when the ending punctuation of text in a body placeholder shape does not follow a certain rule.
		  */
		 
		 public var fDisableEndPunctuationBodyRule:int;
		 
		 /**
		  * F - fDisableFontSizeTitleRule (1 bit): A bit that specifies not to warn the user when the font size in a title placeholder shape exceeds a certain size.
		  */
		 
		 public var fDisableFontSizeTitleRule:int;
		 
		 /**
		  * G - fDisableFontSizeBodyRule (1 bit): A bit that specifies not to warn the user when the font size in a body placeholder shape exceeds a certain size.
		  */
		 
		 public var fDisableFontSizeBodyRule:int; 
		 
		 /**
		  * H - fDisableNumberOfLinesTitleRule (1 bit): A bit that specifies not to warn the user when the number of lines of text in a title placeholder shape exceeds a certain quantity
		  */
		 public var fDisableNumberOfLinesTitleRule:int; 
		 
		 /**
		  * I - fDisableNumberOfLinesBodyRule (1 bit): A bit that specifies not to warn the user when the number of lines of a paragraph in a body placeholder shape exceeds a certain quantity.
		  */
		 
		 public var fDisableNumberOfLinesBodyRule:int; 
		 /**
		  * J - fDisableTooManyFontsRule (1 bit): A bit that specifies not to warn the user when the number of different fonts used exceeds a certain quantity.
		  */
		 
		 public var fDisableTooManyFontsRule:int; 
		 
		 /**
		  * K - fDisablePrintTip (1 bit): A bit that specifies not to advise the user about printing when they first print the document.
		  */
		 
		 public var fDisablePrintTip:int; 
		 /**
		  * reserved (21 bits): MUST be zero and MUST be ignored.
		  */
		 public var reserved:int;
		 
		  
		public function PresAdvisorFlags9Atom() 
		{
			
		}
		
	}

}