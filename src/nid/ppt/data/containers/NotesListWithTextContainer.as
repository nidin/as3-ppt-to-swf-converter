package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.NotesPersistAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class NotesListWithTextContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * rgNotesPersistAtom (variable): An array of NotesPersistAtom records that specifies references to notes slides. The length, in bytes, of the array is specified by rh.recLen.
		 */
		 
		 
		public var rgNotesPersistAtom:NotesPersistAtom 
		 
		public function NotesListWithTextContainer() 
		{
			
		}
		
	}

}