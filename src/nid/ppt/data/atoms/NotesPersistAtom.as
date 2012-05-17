package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class NotesPersistAtom 
	{
		
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * persistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of the NotesContainer record for a notes slide
		 */
		 
		public var persistIdRef
		
		/**
		 * A - reserved1 (2 bits): MUST be zero and MUST be ignored
		 */
		 
		public var reserved1:int;
		
		/**
		 * B - fNonOutlineData (1 bit): A bit that specifies whether the notes slide specified by the persistIdRef field contains data other than text in a placeholder shape
		 */
		 
		public var fNonOutlineData:int; 
		 /**
		  * reserved2 (29 bits): MUST be zero and MUST be ignored.
		  */
		 public var reserved2 :int;
		 
		 /**
		  * 
		  * reserved3 (4 bytes): MUST be zero and MUST be ignored.
		  */
		  
		 public var reserved3:int;
		 
		 /**
		  * notesId (4 bytes): A NotesId that specifies the identifier for the notes slide specified by the persistIdRef field.
		  */
		 public notesId
		 
		 /**
		  * reserved4 (4 bytes): MUST be zero and MUST be ignored
		  */
		  
		 public var reserved4:int;
		 
		 public function NotesPersistAtom() 
		{
			
		}
		
	}

}