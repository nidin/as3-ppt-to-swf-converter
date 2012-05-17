package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SlidePersistAtom 
	{
			/**
			 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
			 */
			public var rh:RecordHeader;
			
			/**
			 * persistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of the SlideContainer record for a presentation slide.
			 */
			
			public var persistIdRef
			
			/**
			 * A - reserved1 (1 bit): MUST be zero and MUST be ignored.
			 */
			public var reserved1:int;
			
			/**
			 * B - fShouldCollapse (1 bit): A bit that specifies whether the corresponding slide is collapsed.
			 */
			
			public var fShouldCollapse:int;
			
			/**
			 * C - fNonOutlineData (1 bit): A bit that specifies whether the corresponding slide contains data other than text in a placeholder shape.
			 */
			
			public var fNonOutlineData:int;
			
			/**
			 * reserved2 (29 bits): MUST be zero and MUST be ignored
			 */
			 
			 
			public var reserved2:int;
			
			/**
			 * cTexts (4 bytes): A signed integer that specifies the number of text placeholder shapes on the corresponding slide. It MUST be greater than or equal to 0x00000000. It SHOULD be less than or equal to 0x00000005 and MUST be less than or equal to 0x00000008
			 */
			 
			public var cTexts:int;
			
			/**
			 * slideId (4 bytes): A SlideId that specifies the identifier for the corresponding slide.
			 */
			
			public  var slideId
			
			/**
			 * reserved3 (4 bytes): MUST be zero and MUST be ignored.
			 */
			punlic var reserved3  
			
			
			
		public function SlidePersistAtom() 
		{
		
		}
		
	}

}