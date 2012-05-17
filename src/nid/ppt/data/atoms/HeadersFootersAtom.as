package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class HeadersFootersAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * formatId (2 bytes): A signed integer that specifies the format identifier to be used to style the date and time. It MUST be greater than or equal to 0x0000 and less than or equal to 0x000D. It SHOULD<12> be less than or equal to 0x000C. This value is converted into a string as specified by the index field of the DateTimeMCAtom record. It MUST be ignored unless fHasTodayDate is TRUE.
		 */
		
		public formatId:int;
		
		/**
		 * A - fHasDate (1 bit): A bit that specifies whether the date is displayed in the footer.
		 */
		
		public var fHasDate:int;
		
		/**
		 * A - fHasDate (1 bit): A bit that specifies whether the date is displayed in the footer.
		 */
		
		public var fHasDate:int;
		
		
		/**
		 * B - fHasTodayDate (1 bit): A bit that specifies whether the current datetime is used for displaying the datetime.
		 */
		
		 public var fHasTodayDate:int;
		 
		 /**
		  * C - fHasUserDate (1 bit): A bit that specifies whether the date specified in UserDateAtom record is used for displaying the datetime.
		  */
		 
		  public var fHasUserDate:int;
		  
		  /**
		   * D - fHasSlideNumber (1 bit): A bit that specifies whether the slide number is displayed in the footer.
		   */
		  
		   public var fHasSlideNumber:int;
		   
		   /**
		    * E - fHasHeader (1 bit): A bit that specifies whether the header text specified by HeaderAtom record is displayed.
		    */
		  
		    public var fHasHeader:int;
			
			/**
			 * F - fHasFooter (1 bit): A bit that specifies whether the footer text specified by FooterAtom record is displayed.
			 */
			
			public var fHasFooter:int;
			
			/**
			 * reserved (10 bits): MUST be zero and MUST be ignored.
			 */
			 
			public var reserved:int; 
			
		public function HeadersFootersAtom() 
		{
			
		}
		
	}

}