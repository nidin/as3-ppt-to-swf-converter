package nid.ppt 
{
	import flash.system.System;
	import flash.utils.ByteArray;
	import nid.ms.CompoundFile;
	import nid.ppt.data.atoms.CurrentUserAtom;
	import nid.ppt.data.headers.RecordHeader;
	import nid.ppt.PPTData;
	import nid.utils.BinaryData;
	import nid.utils.HexUtils;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PPT extends CompoundFile
	{
		private var currentUserAtom:CurrentUserAtom;
		private var eof:Boolean;
		
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
			//System.setClipboard(HexUtils.dumpByteArray(pptBytes));
			//parseHeader();
		}
		
		protected function parseHeader():void 
		{
			var pos:uint = pptBytes.position;
			eof = (pos > pptBytes.length);
			if(eof) {
				trace("WARNING: end of file encountered, no end tag.");
				return;
			}
			var recHeader:RecordHeader = pptBytes.readHeader();
			trace(recHeader);
			//currentUserAtom = new CurrentUserAtom(pptBytes);
		}
		override public function toString():String
		{
			return  '[PPT]\n' +super.toString();
		}
	}

}