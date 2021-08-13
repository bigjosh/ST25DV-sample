//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type2/Type2Tag.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/ControlTlv.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/TagCache.h"
#include "com/st/st25sdk/command/NdefType2Command.h"
#include "com/st/st25sdk/command/Type2Command.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "com/st/st25sdk/type2/CCFileType2.h"
#include "com/st/st25sdk/type2/DynamicLockType2Configuration.h"
#include "com/st/st25sdk/type2/ReservedAreaType2Configuration.h"
#include "com/st/st25sdk/type2/Type2Tag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"

inline jint ComStSt25sdkType2Type2Tag_get_T2T_MEMORY_HEADER_NUMBER_OF_BYTE(void);
#define ComStSt25sdkType2Type2Tag_T2T_MEMORY_HEADER_NUMBER_OF_BYTE 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType2Type2Tag, T2T_MEMORY_HEADER_NUMBER_OF_BYTE, jint)

__attribute__((unused)) static void ComStSt25sdkType2Type2Tag_Type2FileType_initWithNSString_withInt_(ComStSt25sdkType2Type2Tag_Type2FileType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType2Type2Tag_Type2FileType *new_ComStSt25sdkType2Type2Tag_Type2FileType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static void ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(ComStSt25sdkType2Type2Tag_AccessStatus *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType2Type2Tag_AccessStatus *new_ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType2Type2Tag

+ (jbyte)T2T_AREA_FIRST_BYTE_ADDRESS {
  return ComStSt25sdkType2Type2Tag_T2T_AREA_FIRST_BYTE_ADDRESS;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface {
  ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  return self;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (ComStSt25sdkCommandType2Command *)getType2Command {
  return mType2Cmd_;
}

- (jint)getBlockSizeInBytes {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) getBlockSize];
}

- (jint)getReadDataSizeInBytes {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) getReadDataSize];
}

- (jint)getWriteDataSizeInBytes {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) getWriteDataSize];
}

- (IOSByteArray *)readCCFile {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) read];
}

- (void)writeCCFile {
  [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) write];
}

- (void)writeCCFileWithByteArray:(IOSByteArray *)buffer {
  [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) writeWithByteArray:buffer];
}

- (void)initEmptyCCFile {
  jint memSize = [self getMemSizeInBytes];
  [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) initEmptyCCFileWithInt:memSize];
}

- (jint)getCCFileLength {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) getCCLength];
}

- (jbyte)getCCMagicNumber {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) getMagicNumber];
}

- (jbyte)getCCMappingVersion {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) getCCMappingVersion];
}

- (jint)getMemSizeInBytes {
  return ([self getCCMemorySize] + ComStSt25sdkType2Type2Tag_T2T_MEMORY_HEADER_NUMBER_OF_BYTE);
}

- (jint)getCCMemorySize {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) getT2TareaSize];
}

- (jbyte)getCCReadAccess {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) getCCReadAccess];
}

- (jbyte)getCCWriteAccess {
  return [((ComStSt25sdkType2CCFileType2 *) nil_chk(mCCFile_)) getCCWriteAccess];
}

- (IOSByteArray *)readWithByte:(jbyte)blockNumber {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) readWithByte:blockNumber];
}

- (IOSByteArray *)writeWithByte:(jbyte)blockNumber
                  withByteArray:(IOSByteArray *)data {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) writeWithByte:blockNumber withByteArray:data];
}

- (IOSByteArray *)sectorSelectCmdPacket1 {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) sectorSelectCmdPacket1];
}

- (IOSByteArray *)sectorSelectCmdPacket2WithByte:(jbyte)sectorNumber {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) sectorSelectCmdPacket2WithByte:sectorNumber];
}

- (IOSByteArray *)sectorSelectWithByte:(jbyte)sectorNumber {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) sectorSelectWithByte:sectorNumber];
}

- (void)invalidateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) invalidateCache];
}

- (void)validateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) validateCache];
}

- (void)activateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) activateCache];
}

- (void)deactivateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) deactivateCache];
}

- (void)updateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) updateCache];
}

- (jboolean)isCacheValid {
  return [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheValid];
}

- (jboolean)isCacheActivated {
  return [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheActivated];
}

- (IOSByteArray *)readBlocksWithInt:(jint)firstBlockAddress
                            withInt:(jint)sizeInBlocks {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) readBlocksWithInt:firstBlockAddress withInt:sizeInBlocks];
}

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)data {
  [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) writeBlocksWithInt:firstBlockAddress withByteArray:data];
}

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) readBytesWithInt:byteAddress withInt:sizeInBytes];
}

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data {
  [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Cmd_)) writeBytesWithInt:byteAddress withByteArray:data];
}

- (IOSByteArray *)readSysFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jint)getSysFileLength {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  if (msg == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_DATA_PARAM));
  }
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) removeWithId:mNdefMsg_];
  mTlvList_ = [self parseMemoryForTlv];
  jint ndefStartAddress = [self findNdefMsgStartAddressWithJavaUtilList:mTlvList_];
  id<JavaUtilList> tlvListToJump = [self computeLockControlAndReservedAreaWithJavaUtilList:mTlvList_];
  if (tlvListToJump == nil) {
    [((ComStSt25sdkCommandNdefType2Command *) nil_chk(mNdefCmd_)) writeNdefMessageWithInt:ndefStartAddress withComStSt25sdkNdefNDEFMsg:msg];
  }
  else {
    [((ComStSt25sdkCommandNdefType2Command *) nil_chk(mNdefCmd_)) writeNdefMessageWithInt:ndefStartAddress withComStSt25sdkNdefNDEFMsg:msg withJavaUtilList:tlvListToJump];
  }
  mNdefMsg_ = [msg copy__];
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:mNdefMsg_];
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage {
  if ([((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheActivated] && [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheValidWithId:mNdefMsg_]) {
    return [((ComStSt25sdkNdefNDEFMsg *) nil_chk(mNdefMsg_)) copy__];
  }
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) removeWithId:mNdefMsg_];
  mTlvList_ = [self parseMemoryForTlv];
  jint ndefStartAddress = [self findNdefMsgStartAddressWithJavaUtilList:mTlvList_];
  id<JavaUtilList> tlvListToJump = [self computeLockControlAndReservedAreaWithJavaUtilList:mTlvList_];
  if ([((id<JavaUtilList>) nil_chk(tlvListToJump)) isEmpty]) {
    mNdefMsg_ = [((ComStSt25sdkCommandNdefType2Command *) nil_chk(mNdefCmd_)) readNdefMessageWithInt:ndefStartAddress];
  }
  else {
    mNdefMsg_ = [((ComStSt25sdkCommandNdefType2Command *) nil_chk(mNdefCmd_)) readNdefMessageWithInt:ndefStartAddress withJavaUtilList:tlvListToJump];
  }
  if (mNdefMsg_ != nil) {
    [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:mNdefMsg_];
    return mNdefMsg_;
  }
  return nil;
}

- (id<JavaUtilList>)computeLockControlAndReservedAreaWithJavaUtilList:(id<JavaUtilList>)listOfTlv {
  id<JavaUtilList> myList = new_JavaUtilArrayList_init();
  for (jint index = 0; index < [((id<JavaUtilList>) nil_chk(listOfTlv)) size]; index++) {
    if ([((ComStSt25sdkControlTlv *) nil_chk([listOfTlv getWithInt:index])) getType] == ComStSt25sdkControlTlv_LOCK_CONTROL_TLV) {
      ComStSt25sdkType2DynamicLockType2Configuration *tlv = new_ComStSt25sdkType2DynamicLockType2Configuration_initWithComStSt25sdkControlTlv_([listOfTlv getWithInt:index]);
      IOSIntArray *dynamicLockConfig = [IOSIntArray newArrayWithLength:2];
      *IOSIntArray_GetRef(dynamicLockConfig, 0) = [tlv getDlaFirstByteAddress];
      *IOSIntArray_GetRef(dynamicLockConfig, 1) = [tlv getDlaNbrBytes];
      jint i = 0;
      while (i < [myList size] && IOSIntArray_Get(dynamicLockConfig, 0) > IOSIntArray_Get(nil_chk([myList getWithInt:i]), 0)) {
        i++;
      }
      [myList addWithInt:i withId:dynamicLockConfig];
    }
    else if ([((ComStSt25sdkControlTlv *) nil_chk([listOfTlv getWithInt:index])) getType] == ComStSt25sdkControlTlv_MEMORY_CONTROL_TLV) {
      ComStSt25sdkType2ReservedAreaType2Configuration *tlv = new_ComStSt25sdkType2ReservedAreaType2Configuration_initWithComStSt25sdkControlTlv_([listOfTlv getWithInt:index]);
      IOSIntArray *reservedAreaConfig = [IOSIntArray newArrayWithLength:2];
      *IOSIntArray_GetRef(reservedAreaConfig, 0) = [tlv getRaFirstByteAddress];
      *IOSIntArray_GetRef(reservedAreaConfig, 1) = [tlv getRaSize];
      jint i = 0;
      while (i < [myList size] && IOSIntArray_Get(reservedAreaConfig, 0) > IOSIntArray_Get(nil_chk([myList getWithInt:i]), 0)) {
        i++;
      }
      [myList addWithInt:i withId:reservedAreaConfig];
    }
  }
  return myList;
}

- (jint)findNdefMsgStartAddress {
  jint address = ComStSt25sdkType2Type2Tag_T2T_AREA_FIRST_BYTE_ADDRESS;
  jint tlvSize;
  ComStSt25sdkControlTlv *tlv;
  do {
    tlv = [self decodeTlvFromTagWithInt:address];
    tlvSize = [((ComStSt25sdkControlTlv *) nil_chk(tlv)) getTlvSize];
    if (tlvSize > 0) {
      if ([tlv getType] == ComStSt25sdkControlTlv_NULL_TLV && ((address == ComStSt25sdkType2Type2Tag_T2T_AREA_FIRST_BYTE_ADDRESS) || (address % ComStSt25sdkCommandType2Command_DEFAULT_NBR_OF_BYTES_PER_BLOCK == 0))) {
        return address;
      }
      else if (IOSByteArray_Get(nil_chk([self readBytesWithInt:address withInt:1]), 0) == ComStSt25sdkControlTlv_NDEF_MESSAGE_TLV) {
        return address;
      }
    }
    address += tlvSize;
  }
  while (tlvSize > 0);
  return address;
}

- (jint)findNdefMsgStartAddressWithJavaUtilList:(id<JavaUtilList>)listOfTlv {
  jint address = ComStSt25sdkType2Type2Tag_T2T_AREA_FIRST_BYTE_ADDRESS;
  jint index = 0;
  jint tlvSize = 0;
  if ([((id<JavaUtilList>) nil_chk(listOfTlv)) isEmpty]) {
    return address;
  }
  do {
    tlvSize = [((ComStSt25sdkControlTlv *) nil_chk([listOfTlv getWithInt:index])) getTlvSize];
    if (tlvSize > 0 && IOSByteArray_Get(nil_chk([self readBytesWithInt:address withInt:1]), 0) == ComStSt25sdkControlTlv_NDEF_MESSAGE_TLV) {
      return address;
    }
    index++;
    address += tlvSize;
  }
  while (index < [listOfTlv size] && tlvSize > 0);
  return address;
}

- (ComStSt25sdkControlTlv *)decodeTlvFromTagWithInt:(jint)byteAddress {
  IOSByteArray *buffer = [self readBytesWithInt:byteAddress withInt:5];
  return new_ComStSt25sdkControlTlv_initWithByteArray_(buffer);
}

- (jint)computeTlvSizeWithInt:(jint)byteAddress {
  IOSByteArray *buffer = [self readBytesWithInt:byteAddress withInt:5];
  ComStSt25sdkControlTlv *discoveredTlv = new_ComStSt25sdkControlTlv_initWithByteArray_(buffer);
  return [discoveredTlv getTlvSize];
}

- (id<JavaUtilList>)parseBufferForTlvListWithByteArray:(IOSByteArray *)buffer {
  return [self parseBufferForTlvListWithByteArray:buffer withInt:(jint) 0x00];
}

- (id<JavaUtilList>)parseBufferForTlvListWithByteArray:(IOSByteArray *)buffer
                                               withInt:(jint)offsetAddress {
  jint offset = offsetAddress;
  id<JavaUtilList> tlvList = new_JavaUtilArrayList_init();
  while (((IOSByteArray *) nil_chk(buffer))->size_ > offset) {
    ComStSt25sdkControlTlv *discoveredTlv = new_ComStSt25sdkControlTlv_initWithByteArray_withInt_(buffer, offset);
    jint tlvSize = [discoveredTlv getTlvSize];
    if (tlvSize == 0) {
      return tlvList;
    }
    [tlvList addWithId:discoveredTlv];
    offset += tlvSize;
  }
  return tlvList;
}

- (id<JavaUtilList>)parseMemoryForTlv {
  jint offsetAddress = ComStSt25sdkType2Type2Tag_T2T_AREA_FIRST_BYTE_ADDRESS;
  jint tlvSize = 0;
  id<JavaUtilList> tlvList = new_JavaUtilArrayList_init();
  do {
    ComStSt25sdkControlTlv *discoveredTlv = [self decodeTlvFromTagWithInt:offsetAddress];
    tlvSize = [((ComStSt25sdkControlTlv *) nil_chk(discoveredTlv)) getTlvSize];
    if (tlvSize > 0) {
      if ([discoveredTlv getType] == ComStSt25sdkControlTlv_NULL_TLV && [tlvList isEmpty]) {
        return tlvList;
      }
      else if ([discoveredTlv getType] == ComStSt25sdkControlTlv_NULL_TLV && (offsetAddress % ComStSt25sdkCommandType2Command_DEFAULT_NBR_OF_BYTES_PER_BLOCK == 0)) {
        return tlvList;
      }
      else {
        [tlvList addWithId:discoveredTlv];
      }
    }
    offsetAddress += tlvSize;
  }
  while (tlvSize > 0);
  return tlvList;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkCommandType2Command;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 9, 6, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 10, 6, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 11, 12, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 15, 12, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 14, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 19, 20, 1, 21, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 22, 20, 1, 23, -1, -1 },
    { NULL, "LComStSt25sdkControlTlv;", 0x1, 24, 25, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 26, 25, 1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 27, 4, 1, 28, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 27, 29, 1, 30, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, 1, 31, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:);
  methods[1].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[2].selector = @selector(getType2Command);
  methods[3].selector = @selector(getBlockSizeInBytes);
  methods[4].selector = @selector(getReadDataSizeInBytes);
  methods[5].selector = @selector(getWriteDataSizeInBytes);
  methods[6].selector = @selector(readCCFile);
  methods[7].selector = @selector(writeCCFile);
  methods[8].selector = @selector(writeCCFileWithByteArray:);
  methods[9].selector = @selector(initEmptyCCFile);
  methods[10].selector = @selector(getCCFileLength);
  methods[11].selector = @selector(getCCMagicNumber);
  methods[12].selector = @selector(getCCMappingVersion);
  methods[13].selector = @selector(getMemSizeInBytes);
  methods[14].selector = @selector(getCCMemorySize);
  methods[15].selector = @selector(getCCReadAccess);
  methods[16].selector = @selector(getCCWriteAccess);
  methods[17].selector = @selector(readWithByte:);
  methods[18].selector = @selector(writeWithByte:withByteArray:);
  methods[19].selector = @selector(sectorSelectCmdPacket1);
  methods[20].selector = @selector(sectorSelectCmdPacket2WithByte:);
  methods[21].selector = @selector(sectorSelectWithByte:);
  methods[22].selector = @selector(invalidateCache);
  methods[23].selector = @selector(validateCache);
  methods[24].selector = @selector(activateCache);
  methods[25].selector = @selector(deactivateCache);
  methods[26].selector = @selector(updateCache);
  methods[27].selector = @selector(isCacheValid);
  methods[28].selector = @selector(isCacheActivated);
  methods[29].selector = @selector(readBlocksWithInt:withInt:);
  methods[30].selector = @selector(writeBlocksWithInt:withByteArray:);
  methods[31].selector = @selector(readBytesWithInt:withInt:);
  methods[32].selector = @selector(writeBytesWithInt:withByteArray:);
  methods[33].selector = @selector(readSysFile);
  methods[34].selector = @selector(getSysFileLength);
  methods[35].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  methods[36].selector = @selector(readNdefMessage);
  methods[37].selector = @selector(computeLockControlAndReservedAreaWithJavaUtilList:);
  methods[38].selector = @selector(findNdefMsgStartAddress);
  methods[39].selector = @selector(findNdefMsgStartAddressWithJavaUtilList:);
  methods[40].selector = @selector(decodeTlvFromTagWithInt:);
  methods[41].selector = @selector(computeTlvSizeWithInt:);
  methods[42].selector = @selector(parseBufferForTlvListWithByteArray:);
  methods[43].selector = @selector(parseBufferForTlvListWithByteArray:withInt:);
  methods[44].selector = @selector(parseMemoryForTlv);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mType2Cmd_", "LComStSt25sdkCommandType2Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCCFile_", "LComStSt25sdkType2CCFileType2;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCache_", "LComStSt25sdkTagCache;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNdefCmd_", "LComStSt25sdkCommandNdefType2Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mTlvList_", "LJavaUtilList;", .constantValue.asLong = 0, 0x4, -1, -1, 32, -1 },
    { "T2T_MEMORY_HEADER_NUMBER_OF_BYTE", "I", .constantValue.asInt = ComStSt25sdkType2Type2Tag_T2T_MEMORY_HEADER_NUMBER_OF_BYTE, 0x1a, -1, -1, -1, -1 },
    { "T2T_AREA_FIRST_BYTE_ADDRESS", "B", .constantValue.asChar = ComStSt25sdkType2Type2Tag_T2T_AREA_FIRST_BYTE_ADDRESS, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;", "LComStSt25sdkSTException;", "LComStSt25sdkRFReaderInterface;[B", "writeCCFile", "[B", "read", "B", "write", "B[B", "sectorSelectCmdPacket2", "sectorSelect", "readBlocks", "II", "writeBlocks", "I[B", "readBytes", "writeBytes", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;", "computeLockControlAndReservedArea", "LJavaUtilList;", "(Ljava/util/List<Lcom/st/st25sdk/ControlTlv;>;)Ljava/util/List<[I>;", "findNdefMsgStartAddress", "(Ljava/util/List<Lcom/st/st25sdk/ControlTlv;>;)I", "decodeTlvFromTag", "I", "computeTlvSize", "parseBufferForTlvList", "([B)Ljava/util/List<Lcom/st/st25sdk/ControlTlv;>;", "[BI", "([BI)Ljava/util/List<Lcom/st/st25sdk/ControlTlv;>;", "()Ljava/util/List<Lcom/st/st25sdk/ControlTlv;>;", "Ljava/util/List<Lcom/st/st25sdk/ControlTlv;>;", "LComStSt25sdkType2Type2Tag_Type2FileType;LComStSt25sdkType2Type2Tag_AccessStatus;" };
  static const J2ObjcClassInfo _ComStSt25sdkType2Type2Tag = { "Type2Tag", "com.st.st25sdk.type2", ptrTable, methods, fields, 7, 0x1, 45, 7, -1, 33, -1, -1, -1 };
  return &_ComStSt25sdkType2Type2Tag;
}

@end

void ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_(ComStSt25sdkType2Type2Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface) {
  ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, nil);
  self->mName_ = @"NFC type2 tag";
  self->mDescription_ = @"NFC type2 - ISO/IEC 14443A";
}

ComStSt25sdkType2Type2Tag *new_ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType2Type2Tag, initWithComStSt25sdkRFReaderInterface_, readerInterface)
}

ComStSt25sdkType2Type2Tag *create_ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType2Type2Tag, initWithComStSt25sdkRFReaderInterface_, readerInterface)
}

void ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType2Type2Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkNFCTag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  self->mName_ = @"NFC type2 tag";
  self->mDescription_ = @"NFC type2 - ISO/IEC 14443A";
  self->mType2Cmd_ = new_ComStSt25sdkCommandType2Command_initWithComStSt25sdkRFReaderInterface_(readerInterface);
  self->mUid_ = JavaUtilArrays_copyOfWithByteArray_withInt_(uid, ((IOSByteArray *) nil_chk(uid))->size_);
  self->mCCFile_ = new_ComStSt25sdkType2CCFileType2_initWithComStSt25sdkCommandType2Command_(self->mType2Cmd_);
  [self->mCCFile_ getT2TareaSize];
  self->mCache_ = new_ComStSt25sdkTagCache_init();
  [self->mCache_ addWithId:self->mCCFile_];
  self->mNdefCmd_ = new_ComStSt25sdkCommandNdefType2Command_initWithComStSt25sdkRFReaderInterface_(readerInterface);
}

ComStSt25sdkType2Type2Tag *new_ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType2Type2Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType2Type2Tag *create_ComStSt25sdkType2Type2Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType2Type2Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType2Type2Tag)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType2Type2Tag_Type2FileType)

ComStSt25sdkType2Type2Tag_Type2FileType *ComStSt25sdkType2Type2Tag_Type2FileType_values_[1];

@implementation ComStSt25sdkType2Type2Tag_Type2FileType

+ (ComStSt25sdkType2Type2Tag_Type2FileType *)NDEF_FILE {
  return JreEnum(ComStSt25sdkType2Type2Tag_Type2FileType, NDEF_FILE);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType2Type2Tag_Type2FileType_values();
}

+ (ComStSt25sdkType2Type2Tag_Type2FileType *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType2Type2Tag_Type2FileType_valueOfWithNSString_(name);
}

- (ComStSt25sdkType2Type2Tag_Type2FileType_Enum)toNSEnum {
  return (ComStSt25sdkType2Type2Tag_Type2FileType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType2Type2Tag_Type2FileType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType2Type2Tag_Type2FileType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NDEF_FILE", "LComStSt25sdkType2Type2Tag_Type2FileType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType2Type2Tag_Type2FileType, NDEF_FILE), "LComStSt25sdkType2Type2Tag;", "Ljava/lang/Enum<Lcom/st/st25sdk/type2/Type2Tag$Type2FileType;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType2Type2Tag_Type2FileType = { "Type2FileType", "com.st.st25sdk.type2", ptrTable, methods, fields, 7, 0x4019, 2, 1, 3, -1, -1, 4, -1 };
  return &_ComStSt25sdkType2Type2Tag_Type2FileType;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType2Type2Tag_Type2FileType class]) {
    JreEnum(ComStSt25sdkType2Type2Tag_Type2FileType, NDEF_FILE) = new_ComStSt25sdkType2Type2Tag_Type2FileType_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType2Type2Tag_Type2FileType_class_(), 0), 0);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType2Type2Tag_Type2FileType)
  }
}

@end

void ComStSt25sdkType2Type2Tag_Type2FileType_initWithNSString_withInt_(ComStSt25sdkType2Type2Tag_Type2FileType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType2Type2Tag_Type2FileType *new_ComStSt25sdkType2Type2Tag_Type2FileType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType2Type2Tag_Type2FileType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType2Type2Tag_Type2FileType_values() {
  ComStSt25sdkType2Type2Tag_Type2FileType_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType2Type2Tag_Type2FileType_values_ count:1 type:ComStSt25sdkType2Type2Tag_Type2FileType_class_()];
}

ComStSt25sdkType2Type2Tag_Type2FileType *ComStSt25sdkType2Type2Tag_Type2FileType_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType2Type2Tag_Type2FileType_initialize();
  for (int i = 0; i < 1; i++) {
    ComStSt25sdkType2Type2Tag_Type2FileType *e = ComStSt25sdkType2Type2Tag_Type2FileType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType2Type2Tag_Type2FileType *ComStSt25sdkType2Type2Tag_Type2FileType_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType2Type2Tag_Type2FileType_initialize();
  if (ordinal >= 1) {
    return nil;
  }
  return ComStSt25sdkType2Type2Tag_Type2FileType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType2Type2Tag_Type2FileType)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType2Type2Tag_AccessStatus)

ComStSt25sdkType2Type2Tag_AccessStatus *ComStSt25sdkType2Type2Tag_AccessStatus_values_[4];

@implementation ComStSt25sdkType2Type2Tag_AccessStatus

+ (ComStSt25sdkType2Type2Tag_AccessStatus *)NOT_LOCKED {
  return JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, NOT_LOCKED);
}

+ (ComStSt25sdkType2Type2Tag_AccessStatus *)LOCKED_BY_PASSWORD {
  return JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, LOCKED_BY_PASSWORD);
}

+ (ComStSt25sdkType2Type2Tag_AccessStatus *)NOT_AUTHORIZED {
  return JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, NOT_AUTHORIZED);
}

+ (ComStSt25sdkType2Type2Tag_AccessStatus *)STATUS_UNKNOWN {
  return JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, STATUS_UNKNOWN);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType2Type2Tag_AccessStatus_values();
}

+ (ComStSt25sdkType2Type2Tag_AccessStatus *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType2Type2Tag_AccessStatus_valueOfWithNSString_(name);
}

- (ComStSt25sdkType2Type2Tag_AccessStatus_Enum)toNSEnum {
  return (ComStSt25sdkType2Type2Tag_AccessStatus_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType2Type2Tag_AccessStatus;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType2Type2Tag_AccessStatus;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NOT_LOCKED", "LComStSt25sdkType2Type2Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "LOCKED_BY_PASSWORD", "LComStSt25sdkType2Type2Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "NOT_AUTHORIZED", "LComStSt25sdkType2Type2Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "STATUS_UNKNOWN", "LComStSt25sdkType2Type2Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, NOT_LOCKED), &JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, LOCKED_BY_PASSWORD), &JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, NOT_AUTHORIZED), &JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, STATUS_UNKNOWN), "LComStSt25sdkType2Type2Tag;", "Ljava/lang/Enum<Lcom/st/st25sdk/type2/Type2Tag$AccessStatus;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType2Type2Tag_AccessStatus = { "AccessStatus", "com.st.st25sdk.type2", ptrTable, methods, fields, 7, 0x4019, 2, 4, 6, -1, -1, 7, -1 };
  return &_ComStSt25sdkType2Type2Tag_AccessStatus;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType2Type2Tag_AccessStatus class]) {
    JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, NOT_LOCKED) = new_ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType2Type2Tag_AccessStatus_class_(), 0), 0);
    JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, LOCKED_BY_PASSWORD) = new_ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType2Type2Tag_AccessStatus_class_(), 1), 1);
    JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, NOT_AUTHORIZED) = new_ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType2Type2Tag_AccessStatus_class_(), 2), 2);
    JreEnum(ComStSt25sdkType2Type2Tag_AccessStatus, STATUS_UNKNOWN) = new_ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType2Type2Tag_AccessStatus_class_(), 3), 3);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType2Type2Tag_AccessStatus)
  }
}

@end

void ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(ComStSt25sdkType2Type2Tag_AccessStatus *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType2Type2Tag_AccessStatus *new_ComStSt25sdkType2Type2Tag_AccessStatus_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType2Type2Tag_AccessStatus, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType2Type2Tag_AccessStatus_values() {
  ComStSt25sdkType2Type2Tag_AccessStatus_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType2Type2Tag_AccessStatus_values_ count:4 type:ComStSt25sdkType2Type2Tag_AccessStatus_class_()];
}

ComStSt25sdkType2Type2Tag_AccessStatus *ComStSt25sdkType2Type2Tag_AccessStatus_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType2Type2Tag_AccessStatus_initialize();
  for (int i = 0; i < 4; i++) {
    ComStSt25sdkType2Type2Tag_AccessStatus *e = ComStSt25sdkType2Type2Tag_AccessStatus_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType2Type2Tag_AccessStatus *ComStSt25sdkType2Type2Tag_AccessStatus_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType2Type2Tag_AccessStatus_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return ComStSt25sdkType2Type2Tag_AccessStatus_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType2Type2Tag_AccessStatus)
