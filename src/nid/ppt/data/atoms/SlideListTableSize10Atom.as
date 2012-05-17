package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SlideListTableSize10Atom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_SlideListTableSize10Atom.
           rh.recLen
           MUST be 0x00000004.
		 */
		   public var rh:RecordHeader;
		   /**
		    * count (4 bytes): A signed integer that specifies the count of the rgSlideListEntryAtom field of the SlideListTable10Container record that contains this SlideListTableSize10Atom record. It MUST be greater than or equal to 0x00000000 and MUST be less than or equal to 0x000F4240.
		    */
		   public var count:int;
		   /**
		    * slideIdRef (4 bytes): A SlideIdRef that specifies the presentation slide. Its creation time is specified by the dwHighDateTime and dwLowDateTime fields of this SlideListEntry10Atom record.
		    */
		   public var slideIdRef
		   /**
		    * dwHighDateTime (4 bytes): An unsigned integer that specifies the high-order part of the file time as specified in [MS-DTYP] section 2.3.1.
		    */
		   public var dwHighDateTime:uint;
		   /**
		    * dwLowDateTime (4 bytes): An unsigned integer that specifies the low-order part of the file time as specified in [MS-DTYP] section 2.3.1.
		    */
		   public var dwLowDateTime:uint; 
		   
		public function SlideListTableSize10Atom() 
		{
			
		}
		
	}

}