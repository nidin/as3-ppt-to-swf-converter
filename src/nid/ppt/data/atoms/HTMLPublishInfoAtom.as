package nid.ppt.data.atoms 
{
	import adobe.utils.CustomActions;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class HTMLPublishInfoAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x001.
           rh.recType
           MUST be RT_CString.
           rh.recLen
           MUST be an even number. It MUST be less than or equal to 62. 
		 */
		 public var rh:RecordHeader;
		 /**
		  *startSlide (4 bytes): A signed integer that specifies the first slide in the range of slides to publish. It MUST be greater than or equal to zero.
		  */
		  public var startSlide:int;
		 /**
		  * endSlide (4 bytes): A signed integer that specifies the last slide in the range of slides to publish. It MUST be greater than or equal to zero.
		  */
		 public var endSlide:int;
		 /**
		  * outputType (1 byte): A WebOutputEnum enumeration that specifies the Web browser support that this publication should be optimized for.
		  */
		 public var outputType
		 /**
		  * A - fUseSlideRangeX (1 bit): A bit that specifies whether to publish the range of slides defined by startSlide and endSlide.
		  */
		 public var fUseSlideRangeX:int;
		 /**
		  * B - fUseNamedShowX (1 bit): A bit that specifies whether to publish the slides defined by the namedShowAtom field of the HTMLPublishInfo9Container record that contains this HTMLPublishInfoAtom record.
		  */
		 public var fUseNamedShowX:int;
		 /**
		  * C - fLoadInBrowserX (1 bit): A bit that specifies whether to automatically display the Web page in the Web browser.
		  */
		 public var fLoadInBrowserX:int;
		 /**
		  * D - fShowSpeakerNote (1 bit): A bit that specifies whether to display the notes pane when viewing the Web page in a Web browser.
		  */
		 public var ShowSpeakerNote:int;
		 /**
		  * E - reserved (4 bits): MUST be zero and MUST be ignored.
		  */
		 public var reserved:int;
		 /**
		  * unused (2 bytes): Undefined and MUST be ignored.
		  */
		 public var:int;
		 
		public function HTMLPublishInfoAtom() 
		{
			
		}
		
	}

}