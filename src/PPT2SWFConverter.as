package  
{
	import flash.display.Sprite;
	import nid.ppt.PPT;
	
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PPT2SWFConverter extends Sprite 
	{
		[Embed(source="../bin/samples/sample_df.ppt", mimeType="application/octet-stream")]
		private var ppt_data:Class;
		
		public function PPT2SWFConverter() 
		{
			var ppt:PPT = new PPT(new ppt_data());
			//trace(ppt);
		}
		
	}

}