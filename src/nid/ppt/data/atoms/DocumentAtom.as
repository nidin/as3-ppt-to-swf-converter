package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DocumentAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 *slideSize (8 bytes): A PointStruct structure that specifies the dimensions of the presentation slides in master units. Sub-fields are further specified in the following table. 
		 */
		public var slideSize
		
		/**
		 * notesSize (8 bytes): A PointStruct structure that specifies the dimensions of the notes slides and handout slides in master units. Sub-fields are further specified in the following table.
		 */
		
		public var notesSize
		/**
		 * serverZoom (8 bytes): A RatioStruct structure that specifies a zoom level for visual representations of the document in OLE scenarios. The ratio specified by this field MUST be greater than zero.
		 */
		public var serverZoom
		
		/**
		 * notesMasterPersistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of a NotesContainer record that specifies the notes master slide.
		 */
		
		public var notesMasterPersistIdRef
		
		/**
		 *handoutMasterPersistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of a HandoutContainer record that specifies the handout master slide. 
		 */
		
		public var handoutMasterPersistIdRef
		
		/**
		 * firstSlideNumber (2 bytes): An unsigned integer that specifies the starting number for numbering slides. It MUST be less than 10000.
		 */
 		
		public var firstSlideNumber:uint;
		/**
		 * slideSizeType (2 bytes): A SlideSizeEnum enumeration that specifies the type of a presentation slide size.
		 */
		
		public var slideSizeType
		
		/**
		 *fSaveWithFonts (1 byte): A bool1 that specifies whether fonts are embedded in the document. 
		 */
		public var fSaveWithFonts
		
		/**
		 * fOmitTitlePlace (1 byte): A bool1 that specifies whether placeholder shapes on the title slide are not displayed.
		 */
		
		public var fOmitTitlePlace 
		
		/**
		 * fRightToLeft (1 byte): A bool1 that specifies whether the user interface displays the document optimized for right-to-left languages.
		 */
		public var fRightToLeft 
		/**
		 * fShowComments (1 byte): A bool1 that specifies whether presentation comments are displayed.
		 */
		
		
		public function DocumentAtom() 
		{
			
		}
		
	}

}