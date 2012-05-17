package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class CommentIndex10Container 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0xF.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_CommentIndex10.
		 */
		   
		   public var rh:RecordHeader;
		   
		 /**
		  * authorNameAtom (variable): An optional AuthorNameAtom record that specifies the name of the author.
		  */
		 
		 public var authorNameAtom:AuthorNameAtom;
		 /**
		  * authorIndexAtom (16 bytes): An optional CommentIndex10Atom record that specifies an index for deriving a color for the author’s presentation comments and an index for the last presentation comment created by the author.
		  */
		 public var authorIndexAtom:CommentIndex10Atom; 
		  
		 public function CommentIndex10Container() 
		{
			
		}
		
	}

}