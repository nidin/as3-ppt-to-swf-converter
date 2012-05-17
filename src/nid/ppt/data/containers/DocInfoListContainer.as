package nid.ppt.data.containers 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DocInfoListContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
	    public var rh:RecordHeader;
		
		/**
		 * rgChildRec (variable): An array of DocInfoListSubContainerOrAtom records that specifies information about the document or how the document is displayed. The size, in bytes, of the array is specified by rh.recLen. The rh.recType of the DocInfoListSubcontainerOrAtom items MUST be one of the following record types: RT_ProgTags, RT_NormalViewSetInfo9, RT_NotesTextViewInfo9, RT_OutlineViewInfo, RT_SlideViewInfo, RT_SorterViewInfo, or RT_VbaInfo. Each record type MUST NOT occur more than once, except for the RT_SlideViewInfo record type, which MUST NOT occur more than twice. If the RT_SlideViewInfo record type occurs twice, one occurrence MUST refer to a SlideViewInfoContainer record and the other occurrence MUST refer to a NotesViewInfoContainer record.
		 */
		 
		public var rgChildRec:DocInfoListSubContainerOrAtom; 		 
		 
		 
		 
		public function DocInfoListContainer() 
		{
			
		}
		
	}

}