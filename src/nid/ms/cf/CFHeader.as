package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author ...
	 */
	public class CFHeader 
	{
		public var minorVersion:uint;
		public var majorVersion:uint;
		public var byteOrder:uint;
		public var sectorShift:uint;
		public var sectorSize:uint;
		public var miniSectorShift:uint;
		public var numberOfDirectorySectors:uint;
		public var numberOfFATSectors:uint;
		public var firstDirectorySectorLocation:uint;
		public var transactionSignatureNumber:uint;
		public var miniStreamCutOffSize:uint;
		public var firstMiniFATSectorLocation:uint;
		public var numberOfMiniFATSectors:uint;
		public var firstDiFATSectorLocation:uint;
		public var numberOfDiFATSectors:uint;
		public var DiFAT:DIFAT;
		public var firstFatSectorLocation:uint;
		
		public function CFHeader(bytes:BinaryData) 
		{
			var signatureByte:uint;
			if ((signatureByte = bytes.readUI8()) != 0xD0) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0xCF) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0x11) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0xE0) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0xA1) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0xB1) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0x1A) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			if ((signatureByte = bytes.readUI8()) != 0xE1) throw(new Error("Not a CFB. signature byte is 0x" + signatureByte.toString(16) + " (expected: 0xD0)"));
			
			bytes.position += 16;
			
			minorVersion 					= bytes.readUI16();
			majorVersion 					= bytes.readUI16();
			byteOrder 						= bytes.readUI16();
			sectorShift 					= bytes.readUI16();
			sectorSize 						= majorVersion == 3?512:4096;
			miniSectorShift 				= bytes.readUI16();
			
			bytes.position += 6;
			
			numberOfDirectorySectors 		= bytes.readUI32();
			numberOfFATSectors 				= bytes.readUI32();
			firstDirectorySectorLocation 	= bytes.readUI32();
			transactionSignatureNumber 		= bytes.readUI32();
			miniStreamCutOffSize 			= bytes.readUI32();
			firstMiniFATSectorLocation 		= bytes.readUI32();
			numberOfMiniFATSectors 			= bytes.readUI32();
			firstDiFATSectorLocation 		= bytes.readUI32();
			numberOfDiFATSectors 			= bytes.readUI32();
			
			DiFAT = new DIFAT(bytes);
			
			firstFatSectorLocation = DiFAT.sectors[0].value;
		}
		public function toString():String
		{
			return  '[CFHeader]\n' +
					'\tminorVersion:' + minorVersion +'\n' +
					'\tmajorVersion:' + majorVersion +'\n' +
					'\tbyteOrder:' + byteOrder +'\n' +
					'\tsectorShift:' + sectorShift +'\n' +
					'\tsectorSize:' + sectorSize +'\n' +
					'\tminiSectorShift:' + miniSectorShift +'\n' +
					'\tnumberOfDirectorySectors:' + numberOfDirectorySectors +'\n' +
					'\tnumberOfFATSectors:' + numberOfFATSectors +'\n' +
					'\tfirstDirectorySectorLocation:' + firstDirectorySectorLocation +'\n' +
					'\ttransactionSignatureNumber:' + transactionSignatureNumber +'\n' +
					'\tminiStreamCutOffSize:' + miniStreamCutOffSize +'\n' +
					'\tfirstMiniFATSectorLocation:' + firstMiniFATSectorLocation +'\n' +
					'\tnumberOfMiniFATSectors:' + numberOfMiniFATSectors +'\n' +
					'\tfirstDiFATSectorLocation:' + firstDiFATSectorLocation +'\n' +
					'\tnumberOfDiFATSectors:' + numberOfDiFATSectors +'\n' +
					'\t[DIFAT]\n\t ' + DiFAT.toString();
		}
	}

}