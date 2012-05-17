package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class CommentIndex10Atom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_CommentIndex10Atom.
           rh.recLen
           MUST be 0x00000008.
		 */
		   public var rh:RecordHeader;
		   /**
		    * colorIndex (4 bytes): A signed integer that specifies a zero-based index into the list of colors defined by the rendering application used for displaying the presentation comments created by the author. It MUST be greater than or equal to 0x00000000.
		    */
		   public var colorIndex:int;
		   /**
		    * commentIndexSeed (4 bytes): A signed integer that specifies a seed for creating a new index for a presentation comment created by the author. It MUST be greater than or equal to 0x00000000 and MUST be greater than or equal to the value of the commentAtom.index field of all Comment10Container records, where the author name specified by the commentAuthorAtom field of the Comment10Container record matches the author name specified by the authorNameAtom field of the CommentIndex10Container record that contains this CommentIndex10Atom record.
		    */
		   public var commentIndexSeed:int;
		   
		public function CommentIndex10Atom() 
		{
			
		}
		
	}

}