package nid.ms.cf 
{
	import flash.utils.ByteArray;
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DirectoryEntry 
	{
		public var name:String;
		public var entryNamelength:uint;
		public var objectType:uint;
		public var colorFlag:uint;
		public var leftSiblingID:uint;
		public var rightSiblingID:uint;
		public var childID:uint;
		public var CLSID:String;
		public var stateBits:uint;
		public var creationTime:String;
		public var modifiedTime:String;
		public var startingSectorLocation:uint;
		public var streamSizeLow:uint;
		public var streamSizeHigh:uint;
		public var data:ByteArray;
		
		public function DirectoryEntry(bytes:BinaryData) 
		{
			name 			= bytes.readMultiByte(64, "utf-16");
			entryNamelength = bytes.readUI16();
			objectType 		= bytes.readUI8();
			colorFlag 		= bytes.readUI8();
			leftSiblingID 	= bytes.readUI32();
			rightSiblingID 	= bytes.readUI32();
			childID 		= bytes.readUI32();
			//CLSID 			= bytes.readMultiByte(16,"");
			bytes.position += 16;
			stateBits		= bytes.readUI32();
			//creationTime	= bytes.readMultiByte(8, "");
			//modifiedTime	= bytes.readMultiByte(8, "");
			bytes.position += 16;
			startingSectorLocation = bytes.readUI32();
			streamSizeLow		= bytes.readUI32();
			streamSizeHigh		= bytes.readUI32();
			//bytes.position += 8;
			data = new ByteArray();
		}
		public function toString():String
		{
			return 	'[DirectoryEntry]\n' +
					'	name:' + name + '\n' +
					'	entryNamelength:' + entryNamelength + '\n' +
					'	objectType:' + objectType + '\n' +
					'	colorFlag:' + colorFlag + '\n' +
					'	leftSiblingID:' + leftSiblingID + '\n' +
					'	rightSiblingID:' + rightSiblingID + '\n' +
					'	childID:' + childID + '\n' +
					'	CLSID:' + CLSID + '\n' +
					'	stateBits:' + stateBits + '\n' +
					'	creationTime:' + creationTime + '\n' +
					'	modifiedTime:' + modifiedTime + '\n' +
					'	startingSectorLocation:' + startingSectorLocation + '\n' +
					'	streamSizeLow:' + streamSizeLow + '\n' +
					'	streamSizeHigh:' + streamSizeHigh;
		}
		
	}

}