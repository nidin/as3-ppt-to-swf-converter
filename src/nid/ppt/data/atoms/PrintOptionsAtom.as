package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PrintOptionsAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;
		
		 
		 /**
		  * printWhat (1 byte): A PrintWhatEnum enumeration that specifies what is printed.
		  */
		 
		 public var printWhat
		 
		 /**
		  * colorMode (1 byte): A ColorModeEnum enumeration that specifies how colors are printed.
		  */
		 
		 public var colorMode
		 
		 /**
		  * colorMode (1 byte): A ColorModeEnum enumeration that specifies how colors are printed.
		  */
		 
		 public var fPrintHidden:Boolean;
		 
		 /**
		  *fScaleToFitPaper (1 byte): A bool1 that specifies whether the slide is scaled as large as possible to fit the printable area of the page and maintain its aspect ratio.
		  */
		 
		 public var fScaleToFitPaper :Boolean;
		 
		 /**
		  * fFrameSlides (1 byte): A bool1 that specifies whether a border is drawn around each slide.
		  */
		 
		 public var fFrameSlides:Boolean;
		 
		 
		 
		public function PrintOptionsAtom() 
		{
			
		}
		
	}

}