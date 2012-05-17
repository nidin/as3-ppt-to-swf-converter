package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PhotoAlbumInfo10Atom 
	{
		
		
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * fUseBlackWhite (1 byte): A bool1 that specifies a user preference for whether to display all pictures in grayscale graphics.
		 */
		
		public var fUseBlackWhite
		
		/**
		 * fHasCaption (1 byte): A bool1 that specifies a user preference for whether a text caption exists beneath each picture in the album.
		 */
		
		public var fHasCaption
		/**
		 * layout (1 byte): A PhotoAlbumLayoutEnum enumeration that specifies a user preference for the layout of the photos in this presentation.
		 */
		 
		public var layout
		
		/**
		 * unused (1 byte): Undefined and MUST be ignored.
		 */
		 
		public var unused
		/**
		 * frameShape (2 bytes): A PhotoAlbumFrameShapeEnum enumeration that specifies a user preference for the shape of the frame around each photo.
		 */
		 
		public var frameShape
		
		public function PhotoAlbumInfo10Atom() 
		{
			
		}
		
	}

}