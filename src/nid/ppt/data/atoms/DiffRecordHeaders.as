package nid.ppt.data.atoms 
{
	import flash.accessibility.AccessibilityImplementation;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DiffRecordHeaders 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0xF.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_Diff10.
		 */
		   public var rh:RecordHeader;
		   /**
		    * rhAtom (8 bytes): A RecordHeader structure that specifies a header for the atom record that specifies how the changes made by the reviewer are displayed. Sub-fields are further specified in the following table. Field Meaning
              rhAtom.recVer
              MUST be 0x0.
              rhAtom.recInstance
              MUST be 0x000.
              rhAtom.recType
              MUST be RT_Diff10Atom.
              rhAtom.recLen
              MUST be 0x0000000C.
		    */
			  public var rh:RecordHeader;
			  /**
			   * fIndex (1 byte): A bool1 that specifies instance data. Interpretation of the value is dependent on gmiTag.
			   */
			  public var fIndex:int;
			  /**
			   * unused1 (1 byte): Undefined and MUST be ignored
			   */
			  public var unused1:int;
			  /**
			   * unused2 (1 byte): Undefined and MUST be ignored.
			   */
			  public var unused2:int;
			  /**
			   * unused3 (1 byte): Undefined and MUST be ignored.
			   */
			  public var unused3:int;
			  /**
			   * gmiTag (4 bytes): A DiffTypeEnum enumeration that identifies the type of changes made by the reviewer.
			   */
			  public var gmiTag 
		public function DiffRecordHeaders() 
		{
			
		}
		
	}

}