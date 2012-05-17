package nid.ppt.data.atoms 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DiffTree10Container 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0xF.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_DiffTree10.
		 */
		   public var rh:RecordHeader;
		   /**
		    * reviewerNameAtom (variable): A ReviewerNameAtom record that specifies the name of the reviewer who made the changes to the corresponding reviewer document.
		    */
		   public var reviewerNameAtom:ReviewerNameAtom;
		   /**
		    * docDiff (variable): A DocDiff10Container record that specifies how to display the changes made by the reviewer to the corresponding reviewer document.
		    */
		   
		public function DiffTree10Container() 
		{
			
		}
		
	}

}