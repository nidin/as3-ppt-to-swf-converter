package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DocToolbarStates10Atom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 * Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_DocToolbarStates10Atom.
           rh.recLen
           MUST be 0x00000001.
		 * 
		 * 
		 * 
		 */
		   public var rh:RecordHeader;
		   /**
		    * A - fShowReviewingToolbar (1 bit): A bit that specifies whether to display the reviewing toolbar.
		    */
		   public var fShowReviewingToolbar:int;
		   /**
		    * B - fShowReviewingGallery (1 bit): A bit that specifies whether to display the reviewing gallery.
		    */
		   public var fShowReviewingGallery:int;
		   /**
		    * reserved (6 bits): MUST be zero and MUST be ignored.
		    */
		  
		public function DocToolbarStates10Atom() 
		{
			
		}
		
	}

}