package nid.ppt 
{
	import flash.utils.ByteArray;
	import nid.ppt.PPTData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PPT 
	{
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
			parseHeader();
			parseTags(data, version);
		}
		
		protected function parseHeader():void {
			compressed = false;
			bytes.position = 0;
			var signatureByte:uint = bytes.readUI8();
			if (signatureByte == 0x43) {
				compressed = true;
			} else if (signatureByte != 0x46) {
				throw(new Error("Not a SWF. First signature byte is 0x" + signatureByte.toString(16) + " (expected: 0x43 or 0x46)"));
			}
			signatureByte = bytes.readUI8();
			if (signatureByte != 0x57) {
				throw(new Error("Not a SWF. Second signature byte is 0x" + signatureByte.toString(16) + " (expected: 0x57)"));
			}
			signatureByte = bytes.readUI8();
			if (signatureByte != 0x53) {
				throw(new Error("Not a SWF. Third signature byte is 0x" + signatureByte.toString(16) + " (expected: 0x53)"));
			}
			version = bytes.readUI8();
			fileLength = bytes.readUI32();
			fileLengthCompressed = bytes.length;
			if (compressed) {
				// The following data (up to end of file) is compressed, if header has CWS signature
				bytes.swfUncompress();
			}
			frameSize = bytes.readRECT();
			frameRate = bytes.readFIXED8();
			frameCount = bytes.readUI16();
		}
		
	}

}