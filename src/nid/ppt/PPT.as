package nid.ppt 
{
	import flash.utils.ByteArray;
	import nid.ms.CompoundFile;
	import nid.ppt.PPTData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PPT 
	{
		private var cf:CompoundFile;
		public var version:int;
		public var fileLength:uint;
		
		protected var bytes:PPTData;
		
		protected static const FILE_LENGTH_POS:uint = 4;
		protected static const COMPRESSION_START_POS:uint = 8;
		
		public function PPT(ba:ByteArray = null) {
			bytes = new PPTData();
			if (ba != null) {
				loadBytes(ba);
			} else {
				version = 10;
				fileLength = 0;
			}
		}
		
		private function loadBytes(ba:ByteArray):void 
		{
			bytes.length = 0;
			ba.position = 0;
			ba.readBytes(bytes);
			parse(bytes);
		}
		
		private function parse(data:PPTData):void 
		{
			bytes = data;
			cf = new CompoundFile(bytes);
			//parseHeader();
			//parseTags(data, version);
		}
		
		protected function parseHeader():void {
			trace(bytes.readUB(4).toString(16));
		}
		public function toString():String
		{
			return  '[PPT]\n' +cf.toString();
		}
	}

}