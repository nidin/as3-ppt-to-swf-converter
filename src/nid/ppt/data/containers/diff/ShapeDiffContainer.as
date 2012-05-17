package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class ShapeDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_ShapeDiff
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * A - addShape (1 bit): A bit that specifies whether the addition of the corresponding shape made by the reviewer in the corresponding slide or corresponding main master slide is not displayed.
		    */
		   public var addShape:int;
		   /**
		    * B - deleteShape (1 bit): A bit that specifies whether the deletion of the corresponding shape made by the reviewer in the corresponding slide or corresponding main master slide is not displayed.
		    */
		   public var deleteShape:int;
		   /**
		    * C - child (1 bit): A bit that specifies whether the change made by the reviewer to the set of child shapes of the corresponding shape is not displayed.
		    */
		   public var child:int;
		   /**
		    * D - position (1 bit): A bit that specifies whether the change made by the reviewer to the position of the corresponding shape in the OfficeArtDgContainer record ([MS-ODRAW] section 2.2.13 ) is not displayed.
		    */
		   public var position:int;
		   /**
		    * E - recolorInfo (1 bit): A bit that specifies whether the changes made by the reviewer to the RecolorInfoAtom record contained within the corresponding shape are not displayed.
		    */
		   public var recolorInfo:int;
		   /**
		    * F - externalObject (1 bit): A bit that specifies whether the changes made by the reviewer to the corresponding external object referenced from within the corresponding shape is not displayed.
              Let the corresponding external object be an external object that is specified by either the ExMediaAtom record or the ExOleObjAtom record whose exObjId field equals the exObjIdRef field of ExObjRefAtom record contained within the corresponding shape.
		    */
		   public var externalObject:int;
			 /**
			  *G - interactiveInfoOnOver (1 bit): A bit that specifies whether the changes made by the reviewer to the MouseOverInteractiveInfoContainer record contained within the corresponding shape are not displayed.
			  */
		   public var interactiveInfoOnOver:int;
			  /**
			   * H - interactiveInfoOnClick (1 bit): A bit that specifies whether the changes made by the reviewer to the MouseClickInteractiveInfoContainer record contained within the corresponding shape are not displayed.
			   */
			  
		   public var interactiveInfoOnClick:int;
			  /**
			   * I - reserved1 (1 bit): MUST be zero and MUST be ignored.
			   */
		   public var  reserved1:int;
			  /**
			   * J - msopsid3DSettings (1 bit): A bit that specifies whether the changes made by the reviewer to the 3D object ([MS-ODRAW] section 2.3.15), 3D Style ([MS-ODRAW] section 2.3.16), and perspective style ([MS-ODRAW] section 2.3.14) properties of the corresponding shape are not displayed.
			   */
		   public var msopsid3DSettings:int;
			  /**
			   * K - msopsidBWSettings (1 bit): A bit that specifies whether the changes made by the reviewer to the bWMode ([MS-ODRAW] section 2.3.2.3), bWModePureBW ([MS-ODRAW] section 2.3.2.4), and bWModeBW ([MS-ODRAW] section 2.3.2.5) properties of the corresponding shape are not displayed.
			   */
		   public var  msopsidBWSettings:int;
		   
		   /**
		    * L - msopsidAutoShape (1 bit): A bit that specifies whether the changes made by the reviewer to the shape type in the OfficeArtFSP record ([MS-ODRAW] section 2.2.40) and the callout ([MS-ODRAW] section 2.3.3) properties of the corresponding shape are not displayed.
		    */
		   public var msopsidAutoShape:int;
		   /**
		    * M - msopsidLineStyle (1 bit): A bit that specifies whether the changes made by the reviewer to the line style properties ([MS-ODRAW] section 2.3.8) of the corresponding shape are not displayed.
		    */
		   public var msopsidLineStyle:int;
		   /**
		    * N - msopsidFillStyle (1 bit): A bit that specifies whether the changes made by the reviewer to the fill style properties ([MS-ODRAW] section 2.3.7) of the corresponding shape are not displayed.
		    */
		   public var msopsidFillStyle:int;
		   /**
		    * O - msopsidShadowStyle (1 bit): A bit that specifies whether the changes made by the reviewer to the shadow style properties ([MS-ODRAW] section 2.3.13) of the corresponding shape are not displayed.
		    */
		   public var msopsidShadowStyle:int;
		   /**
		    * P - msopsidWordArt (1 bit): A bit that specifies whether the changes made by the reviewer to the geometry text properties ([MS-ODRAW] section 2.3.22) of the corresponding shape are not displayed.
		    */
		   public var msopsidWordArt:int;
		   /**
		    * Q - msopsidPicture (1 bit): A bit that specifies whether the changes made by the reviewer to the blip properties ([MS-ODRAW] section 2.3.23) of the corresponding shape are not displayed.
		    */
		   public var msopsidPicture:int;
		   /**
		    * R - msopsidOrientation (1 bit): A bit that specifies whether the changes made by the reviewer to the transform properties ([MS-ODRAW] section 2.3.18 and [MS-ODRAW] section 2.3.19) of the corresponding shape are not displayed.
		    */
		   public var msopsidOrientation:int;
		   /**
		    * S - msopsidTextSetting (1 bit): A bit that specifies whether the changes made by the reviewer to the text properties ([MS-ODRAW] section 2.3.21) of the corresponding shape are not displayed.
		    */
		   public var msopsidTextSetting:int;
		   /**
		    * T - reserved2 (1 bit): MUST be zero and MUST be ignored.
		    */
		   public var reserved2:int;
		   /**
		    * U - msopsidSize (1 bit): A bit that specifies whether the changes made by the reviewer to the OfficeArtClientAnchor record contained within the corresponding shape are not displayed.
		    */
		   public var msopsidSize:int;
		   /**
		    * V - reserved3 (1 bit): MUST be zero and MUST be ignored.
            
		    */
		   public var reserved3:int;
			  /**
			   * W - ruler (1 bit): A bit that specifies whether the changes made by the reviewer to the TextRulerAtom record of the OfficeArtClientTextbox record contained within the corresponding shape are not displayed.
			   */
		   public var ruler:int;
			  /**
			   * reserved4 (9 bits): MUST be zero and MUST be ignored.
			   */
		   public var reserved4:int;
			  /**
			   *textDiff (28 bytes): An optional TextDiffContainer record that specifies how to display the changes made by the reviewer to the OfficeArtClientTextbox record contained within the corresponding shape.
			   */
		   public var textDiff:TextDiffContainer;
			  /**
			   * recolorInfoDiff (28 bytes): An optional RecolorInfoDiffContainer record that specifies how to display the changes made by the reviewer to the RecolorInfoAtom record contained within the corresponding shape.
			   */
		   public var recolorInfoDiff:RecolorInfoDiffContainer;
			  /**
			   * recolorInfoDiff (28 bytes): An optional RecolorInfoDiffContainer record that specifies how to display the changes made by the reviewer to the RecolorInfoAtom record contained within the corresponding shape.
			   */
			  
		   public var recolorInfoDiff:RecolorInfoDiffContainer;
		   /**
		    * externalObjDiff (28 bytes): An optional ExternalObjectDiffContainer record that specifies how to display the changes made by the reviewer to the external object referenced from within the corresponding shape.
		    */
		   public var externalObjDiff:ExternalObjectDiffContainer;
		   /**
		    * clickInteractiveInfoDiff (28 bytes): An optional InteractiveInfoDiffContainer record that specifies how to display the changes made by the reviewer to the MouseClickInteractiveInfoContainer record contained within the corresponding shape.
		    */
		   public var clickInteractiveInfoDiff:InteractiveInfoDiffContainer;
		   /**
		    * overInteractiveInfoDiff (28 bytes): An optional InteractiveInfoDiffContainer record that specifies how to display the changes made by the reviewer to the MouseOverInteractiveInfoContainer record contained within the corresponding shape.
		    */
		   public var overInteractiveInfoDiff:InteractiveInfoDiffContainer;
		   /**
		    * 
		    */
			  
		   public function ShapeDiffContainer() 
		{
			
		}
		
	}

}