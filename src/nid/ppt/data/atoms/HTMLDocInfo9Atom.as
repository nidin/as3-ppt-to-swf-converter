package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class HTMLDocInfo9Atom 
	
	{ 
	   /**
	   * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
       rh.recVer
       MUST be 0x0.
       rh.recInstance
       MUST be 0x000.
       rh.recType
       MUST be RT_HTMLDocInfo9Atom.
       rh.recLen
       MUST be 0x00000010.
	   * 
	   * 
	   */
	   public var rh:RecordHeader;
	   
	   /**
	    * unused1 (4 bytes): Undefined and MUST be ignored.
	    */
	   public var unused1
	   /**
	    * encoding (4 bytes): An unsigned integer that specifies the code page for character encoding used by the Web page. See [MSDN-CP] for a list of possible code pages.
	    */
	   public var encoding:uint;
	   /**
	    * frameColorType (2 bytes): A WebFrameColorsEnum enumeration that specifies color options for displaying the text and background for the Web page notes pane and outline pane.
	    */
	   public var frameColorType
	   /**
	    * screenSize (1 byte): A WebScreenSizeEnum as specified in [MS-OSHARED] section 2.2.1.4 that specifies the document window size for the monitor on which the Web page is displayed
	    */
	   public var screenSize
	   /**
	    * unused2 (1 byte): Undefined and MUST be ignored.
	    */
	   public var unused2 
	   /**
	    * outputType (1 byte): A WebOutputEnum enumeration that specifies the Web browser support that this publication should be optimized for.
	    */
	   public var outputType
	   /**
	    * A - fShowFrame (1 bit): A bit that specifies whether to include the notes pane and outline pane representation in the Web page.
	    */
	   public var fShowFrame:int;
	   /**
	    * B - fResizeGraphics (1 bit): A bit that specifies whether the graphics in the Web page are resizable.
	    */
	   public var fResizeGraphics:int;
	   /**
	    * C - fOrganizeInFolder (1 bit): A bit that specifies whether any additional files created to represent Web page content in a Web browser are stored in a separate folder.
	    */
	   public var fOrganizeInFolder:int;
	   /**
	    * D - fUseLongFileNames (1 bit): A bit that specifies whether a file name longer than eight characters is valid.
	    */
	   public var fUseLongFileNames:int;
	   /**
	    *E - fRelyOnVML (1 bit): A bit that specifies whether the Web page requires Vector Markup Language (VML) to display in a Web browser. 
	    */
	   public var fRelyOnVML:int;
	   /**
	    * F - fAllowPNG (1 bit): A bit that specifies whether to save pictures supporting the Web page using Portable Network Graphics (PNG) format.
	    */
	   public var fAllowPNG:int;
	   /**
	    * G - fShowSlideAnimation (1 bit): A bit that specifies whether the Web page contains object animation and slide transition effect information.
	    */
	   public var fShowSlideAnimation:int;
	   /**
	    * H - reserved (1 bit): MUST be zero and MUST be ignored.
	    */
	   public var reserved:int;
	   /**
	    * unused3 (2 bytes): Undefined and MUST be ignored.
	    */
	   public var unused3:int;
	   
	   public function HTMLDocInfo9Atom() 
		{
			
		}
		
	}

}