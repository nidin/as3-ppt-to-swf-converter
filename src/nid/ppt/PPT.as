package nid.ppt 
{
	import flash.utils.ByteArray;
	import nid.ms.CompoundFile;
	import nid.ppt.PPTData;
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PPT extends CompoundFile
	{
		private var cf:CompoundFile;
		public var version:int;
		public var fileLength:uint;
		
		protected var pptBytes:PPTData;
		
		protected static const FILE_LENGTH_POS:uint = 4;
		protected static const COMPRESSION_START_POS:uint = 8;
		
		public function PPT(ba:ByteArray = null) 
		{
			pptBytes = new PPTData();
			super(ba);
			if (ba != null)
			{
				parse();
			}
		}
		override public function loadBytes(ba:ByteArray):void 
		{
			super.loadBytes(ba);
			parse();
		}
		private function parse():void 
		{
			super.getDirectoryByName('PowerPoint Document').data.readBytes(pptBytes);
			trace(pptBytes);
		}
		
		protected function parseHeader():void {
			
		}
		override public function toString():String
		{
			return  '[PPT]\n' +super.toString();
		}
	}

}