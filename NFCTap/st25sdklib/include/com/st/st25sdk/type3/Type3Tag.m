//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type3/Type3Tag.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/Helper.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/TagCache.h"
#include "com/st/st25sdk/command/NdefType3Command.h"
#include "com/st/st25sdk/command/Type3Command.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "com/st/st25sdk/type3/Type3Tag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"

__attribute__((unused)) static void ComStSt25sdkType3Type3Tag_Type3FileType_initWithNSString_withInt_(ComStSt25sdkType3Type3Tag_Type3FileType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType3Type3Tag_Type3FileType *new_ComStSt25sdkType3Type3Tag_Type3FileType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType3Type3Tag

+ (jint)T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS;
}

+ (jint)T3T_ATTRIBUTE_INFO_VER_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_VER_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_NBR_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_NBR_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_NBW_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_NBW_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_NMAXB_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_NMAXB_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_WRITEFLAG_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_RWFLAG_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_RWFLAG_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_LN_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_LN_ADDRESS_IN_BYTE;
}

+ (jint)T3T_ATTRIBUTE_INFO_CHECKSUM_ADDRESS_IN_BYTE {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_CHECKSUM_ADDRESS_IN_BYTE;
}

+ (jbyte)T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_FINISHED {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_FINISHED;
}

+ (jbyte)T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_NOT_FINISHED {
  return ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_NOT_FINISHED;
}

+ (jint)T3T_NDEF_FIRST_BYTE_ADDRESS {
  return ComStSt25sdkType3Type3Tag_T3T_NDEF_FIRST_BYTE_ADDRESS;
}

+ (jint)T3T_NDEF_FIRST_BLOCK_NUMBER {
  return ComStSt25sdkType3Type3Tag_T3T_NDEF_FIRST_BLOCK_NUMBER;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface {
  ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  return self;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)manufactureId {
  ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, manufactureId);
  return self;
}

- (ComStSt25sdkCommandType3Command *)getType3Command {
  return mType3Cmd_;
}

- (jboolean)refreshAttributeInformationBlock {
  jint calculatedChecksum = 0;
  jint readChecksum = 0;
  IOSByteArray *response = [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) readBlockWithByteArray:mUid_ withInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS];
  if (response == nil || response->size_ != 16) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
  readChecksum = ((JreLShift32(IOSByteArray_Get(response, 14), 8)) & (jint) 0xFF00) + (IOSByteArray_Get(response, 15) & (jint) 0xFF);
  for (jint i = 0; i < 14; i++) {
    calculatedChecksum += (IOSByteArray_Get(response, i) & (jint) 0xFF);
  }
  if (readChecksum == calculatedChecksum) {
    mVer_ = IOSByteArray_Get(response, 0);
    mNbr_ = IOSByteArray_Get(response, 1);
    mNbw_ = IOSByteArray_Get(response, 2);
    mNMaxB_ = ((JreLShift32(IOSByteArray_Get(response, 3), 8)) & (jint) 0xFF00) + (IOSByteArray_Get(response, 4) & (jint) 0xFF);
    mWriteFlag_ = IOSByteArray_Get(response, 9);
    mRWFlag_ = IOSByteArray_Get(response, 10);
    mLn_ = ((JreLShift32(IOSByteArray_Get(response, 11), 16)) & (jint) 0xFF0000) + ((JreLShift32(IOSByteArray_Get(response, 12), 8)) & (jint) 0xFF00) + (IOSByteArray_Get(response, 13) & (jint) 0xFF);
    mChecksum_ = readChecksum;
    return true;
  }
  else {
    return false;
  }
}

- (jboolean)updateAttributeInformationBlockWithInt:(jint)address
                                     withByteArray:(IOSByteArray *)data {
  IOSByteArray *attributeInfoBuffer = [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) readBlockWithByteArray:mUid_ withInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS];
  if (attributeInfoBuffer == nil || attributeInfoBuffer->size_ != 16) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, ((IOSByteArray *) nil_chk(data))->size_, attributeInfoBuffer, address, data->size_);
  IOSByteArray *checksum = [self calculateChecksumWithByteArray:JavaUtilArrays_copyOfWithByteArray_withInt_(attributeInfoBuffer, 14)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(checksum, 0, attributeInfoBuffer, ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_CHECKSUM_ADDRESS_IN_BYTE, ((IOSByteArray *) nil_chk(checksum))->size_);
  (void) [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) writeBlockWithByteArray:mUid_ withInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS withByteArray:attributeInfoBuffer];
  return [self refreshAttributeInformationBlock];
}

- (IOSByteArray *)calculateChecksumWithByteArray:(IOSByteArray *)data {
  if (data == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_DATA_PARAM));
  }
  jint calculatedChecksum = 0;
  for (jint i = 0; i < data->size_; i++) {
    calculatedChecksum += (IOSByteArray_Get(data, i) & (jint) 0xFF);
  }
  return ComStSt25sdkHelper_convertIntTo2BytesHexaFormatWithInt_(calculatedChecksum);
}

- (jbyte)getNdefMappingVersion {
  return mVer_;
}

- (jbyte)getNumberOfBlocksForOneCheckCommand {
  return mNbr_;
}

- (jbyte)getNumberOfBlocksForOneUpdateCommand {
  return mNbw_;
}

- (jint)getNumberOfBlocksForNdefData {
  return mNMaxB_;
}

- (jbyte)getWriteFlag {
  return mWriteFlag_;
}

- (void)setWriteFlagWithByte:(jbyte)writeFlag {
  IOSByteArray *data = [IOSByteArray newArrayWithLength:1];
  *IOSByteArray_GetRef(data, 0) = writeFlag;
  [self updateAttributeInformationBlockWithInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_ADDRESS_IN_BYTE withByteArray:data];
}

- (jbyte)getRWFlag {
  return mRWFlag_;
}

- (void)setRWFlagWithByte:(jbyte)rwFlag {
  IOSByteArray *data = [IOSByteArray newArrayWithLength:1];
  *IOSByteArray_GetRef(data, 0) = rwFlag;
  [self updateAttributeInformationBlockWithInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_RWFLAG_ADDRESS_IN_BYTE withByteArray:data];
}

- (jint)getLn {
  return mLn_;
}

- (void)setLnWithInt:(jint)ln {
  IOSByteArray *data = ComStSt25sdkHelper_convertIntTo3BytesHexaFormatWithInt_(ln);
  [self updateAttributeInformationBlockWithInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_LN_ADDRESS_IN_BYTE withByteArray:data];
}

- (jint)getChecksum {
  return mChecksum_;
}

- (void)setChecksumWithInt:(jint)checksum {
  IOSByteArray *data = ComStSt25sdkHelper_convertIntTo2BytesHexaFormatWithInt_(checksum);
  [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) writeBytesWithByteArray:mUid_ withInt:ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_CHECKSUM_ADDRESS_IN_BYTE withByteArray:data];
}

- (jint)getBlockSizeInBytes {
  return [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) getBlockSize];
}

- (jboolean)isType3TagPresent {
  return JavaUtilArrays_equalsWithByteArray_withByteArray_([((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) checkType3TagPresence], mUid_);
}

- (jint)getMemSizeInBytes {
  return (mNMaxB_ * ComStSt25sdkCommandType3Command_T3T_DEFAULT_NBR_OF_BYTES_PER_BLOCK);
}

- (IOSByteArray *)readBlocksWithInt:(jint)firstBlockAddress
                            withInt:(jint)sizeInBlocks {
  return [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) readBlocksWithByteArray:mManufacturerId_ withInt:firstBlockAddress withInt:sizeInBlocks];
}

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)data {
  [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) writeBlocksWithByteArray:mManufacturerId_ withInt:firstBlockAddress withByteArray:data];
}

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes {
  return [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) readBytesWithByteArray:mManufacturerId_ withInt:byteAddress withInt:sizeInBytes];
}

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data {
  [((ComStSt25sdkCommandType3Command *) nil_chk(mType3Cmd_)) writeBytesWithByteArray:mManufacturerId_ withInt:byteAddress withByteArray:data];
}

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  if (msg == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_DATA_PARAM));
  }
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) removeWithId:mNdefMsg_];
  [((ComStSt25sdkCommandNdefType3Command *) nil_chk(mNdefCmd_)) writeNdefMessageWithByteArray:mUid_ withComStSt25sdkNdefNDEFMsg:msg];
  mNdefMsg_ = [msg copy__];
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:mNdefMsg_];
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage {
  if ([((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheActivated] && [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheValidWithId:mNdefMsg_]) {
    return [((ComStSt25sdkNdefNDEFMsg *) nil_chk(mNdefMsg_)) copy__];
  }
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) removeWithId:mNdefMsg_];
  mNdefMsg_ = [((ComStSt25sdkCommandNdefType3Command *) nil_chk(mNdefCmd_)) readNdefMessageWithByteArray:mUid_];
  if (mNdefMsg_ != nil) {
    [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:mNdefMsg_];
    return mNdefMsg_;
  }
  return nil;
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

- (jboolean)isCacheValid {
  return [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheValid];
}

- (jboolean)isCacheActivated {
  return [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheActivated];
}

- (void)updateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) updateCache];
}

- (IOSByteArray *)readCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)writeCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)writeCCFileWithByteArray:(IOSByteArray *)buffer {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)initEmptyCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jint)getCCFileLength {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jbyte)getCCMagicNumber {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jbyte)getCCMappingVersion {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jint)getCCMemorySize {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jbyte)getCCReadAccess {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jbyte)getCCWriteAccess {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (IOSByteArray *)readSysFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jint)getSysFileLength {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkCommandType3Command;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 8, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 11, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 13, 14, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 4, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 16, 14, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 19, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 6, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:);
  methods[1].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[2].selector = @selector(getType3Command);
  methods[3].selector = @selector(refreshAttributeInformationBlock);
  methods[4].selector = @selector(updateAttributeInformationBlockWithInt:withByteArray:);
  methods[5].selector = @selector(calculateChecksumWithByteArray:);
  methods[6].selector = @selector(getNdefMappingVersion);
  methods[7].selector = @selector(getNumberOfBlocksForOneCheckCommand);
  methods[8].selector = @selector(getNumberOfBlocksForOneUpdateCommand);
  methods[9].selector = @selector(getNumberOfBlocksForNdefData);
  methods[10].selector = @selector(getWriteFlag);
  methods[11].selector = @selector(setWriteFlagWithByte:);
  methods[12].selector = @selector(getRWFlag);
  methods[13].selector = @selector(setRWFlagWithByte:);
  methods[14].selector = @selector(getLn);
  methods[15].selector = @selector(setLnWithInt:);
  methods[16].selector = @selector(getChecksum);
  methods[17].selector = @selector(setChecksumWithInt:);
  methods[18].selector = @selector(getBlockSizeInBytes);
  methods[19].selector = @selector(isType3TagPresent);
  methods[20].selector = @selector(getMemSizeInBytes);
  methods[21].selector = @selector(readBlocksWithInt:withInt:);
  methods[22].selector = @selector(writeBlocksWithInt:withByteArray:);
  methods[23].selector = @selector(readBytesWithInt:withInt:);
  methods[24].selector = @selector(writeBytesWithInt:withByteArray:);
  methods[25].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  methods[26].selector = @selector(readNdefMessage);
  methods[27].selector = @selector(invalidateCache);
  methods[28].selector = @selector(validateCache);
  methods[29].selector = @selector(activateCache);
  methods[30].selector = @selector(deactivateCache);
  methods[31].selector = @selector(isCacheValid);
  methods[32].selector = @selector(isCacheActivated);
  methods[33].selector = @selector(updateCache);
  methods[34].selector = @selector(readCCFile);
  methods[35].selector = @selector(writeCCFile);
  methods[36].selector = @selector(writeCCFileWithByteArray:);
  methods[37].selector = @selector(initEmptyCCFile);
  methods[38].selector = @selector(getCCFileLength);
  methods[39].selector = @selector(getCCMagicNumber);
  methods[40].selector = @selector(getCCMappingVersion);
  methods[41].selector = @selector(getCCMemorySize);
  methods[42].selector = @selector(getCCReadAccess);
  methods[43].selector = @selector(getCCWriteAccess);
  methods[44].selector = @selector(readSysFile);
  methods[45].selector = @selector(getSysFileLength);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mType3Cmd_", "LComStSt25sdkCommandType3Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNdefCmd_", "LComStSt25sdkCommandNdefType3Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCache_", "LComStSt25sdkTagCache;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mManufacturerId_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mVer_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNbr_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNbw_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNMaxB_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mWriteFlag_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mRWFlag_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mLn_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mChecksum_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_BLOCK_ADDRESS, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_VER_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_VER_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_NBR_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_NBR_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_NBW_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_NBW_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_NMAXB_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_NMAXB_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_WRITEFLAG_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_RWFLAG_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_RWFLAG_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_LN_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_LN_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_CHECKSUM_ADDRESS_IN_BYTE", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_CHECKSUM_ADDRESS_IN_BYTE, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_FINISHED", "B", .constantValue.asChar = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_FINISHED, 0x19, -1, -1, -1, -1 },
    { "T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_NOT_FINISHED", "B", .constantValue.asChar = ComStSt25sdkType3Type3Tag_T3T_ATTRIBUTE_INFO_WRITEFLAG_PROCEDURE_NOT_FINISHED, 0x19, -1, -1, -1, -1 },
    { "T3T_NDEF_FIRST_BYTE_ADDRESS", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_NDEF_FIRST_BYTE_ADDRESS, 0x19, -1, -1, -1, -1 },
    { "T3T_NDEF_FIRST_BLOCK_NUMBER", "I", .constantValue.asInt = ComStSt25sdkType3Type3Tag_T3T_NDEF_FIRST_BLOCK_NUMBER, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;", "LComStSt25sdkSTException;", "LComStSt25sdkRFReaderInterface;[B", "updateAttributeInformationBlock", "I[B", "calculateChecksum", "[B", "setWriteFlag", "B", "setRWFlag", "setLn", "I", "setChecksum", "readBlocks", "II", "writeBlocks", "readBytes", "writeBytes", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;", "writeCCFile", "LComStSt25sdkType3Type3Tag_Type3FileType;" };
  static const J2ObjcClassInfo _ComStSt25sdkType3Type3Tag = { "Type3Tag", "com.st.st25sdk.type3", ptrTable, methods, fields, 7, 0x1, 46, 25, -1, 21, -1, -1, -1 };
  return &_ComStSt25sdkType3Type3Tag;
}

@end

void ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_(ComStSt25sdkType3Type3Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface) {
  ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, nil);
}

ComStSt25sdkType3Type3Tag *new_ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType3Type3Tag, initWithComStSt25sdkRFReaderInterface_, readerInterface)
}

ComStSt25sdkType3Type3Tag *create_ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType3Type3Tag, initWithComStSt25sdkRFReaderInterface_, readerInterface)
}

void ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType3Type3Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) {
  ComStSt25sdkNFCTag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  self->mVer_ = (jint) 0x00;
  self->mNbr_ = (jint) 0x00;
  self->mNbw_ = (jint) 0x00;
  self->mNMaxB_ = 0;
  self->mWriteFlag_ = (jint) 0x00;
  self->mRWFlag_ = (jint) 0x00;
  self->mLn_ = 0;
  self->mChecksum_ = 0;
  self->mName_ = @"NFC type3 tag";
  self->mDescription_ = @"NFC type3 - ISO/IEC 18092";
  self->mType3Cmd_ = new_ComStSt25sdkCommandType3Command_initWithComStSt25sdkRFReaderInterface_(readerInterface);
  self->mUid_ = JavaUtilArrays_copyOfWithByteArray_withInt_(manufactureId, ((IOSByteArray *) nil_chk(manufactureId))->size_);
  self->mManufacturerId_ = JavaUtilArrays_copyOfWithByteArray_withInt_(manufactureId, manufactureId->size_);
  [self refreshAttributeInformationBlock];
  self->mNdefCmd_ = new_ComStSt25sdkCommandNdefType3Command_initWithComStSt25sdkRFReaderInterface_(readerInterface);
  self->mCache_ = new_ComStSt25sdkTagCache_init();
}

ComStSt25sdkType3Type3Tag *new_ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType3Type3Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, manufactureId)
}

ComStSt25sdkType3Type3Tag *create_ComStSt25sdkType3Type3Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType3Type3Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, manufactureId)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType3Type3Tag)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType3Type3Tag_Type3FileType)

ComStSt25sdkType3Type3Tag_Type3FileType *ComStSt25sdkType3Type3Tag_Type3FileType_values_[1];

@implementation ComStSt25sdkType3Type3Tag_Type3FileType

+ (ComStSt25sdkType3Type3Tag_Type3FileType *)NDEF_FILE {
  return JreEnum(ComStSt25sdkType3Type3Tag_Type3FileType, NDEF_FILE);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType3Type3Tag_Type3FileType_values();
}

+ (ComStSt25sdkType3Type3Tag_Type3FileType *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType3Type3Tag_Type3FileType_valueOfWithNSString_(name);
}

- (ComStSt25sdkType3Type3Tag_Type3FileType_Enum)toNSEnum {
  return (ComStSt25sdkType3Type3Tag_Type3FileType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType3Type3Tag_Type3FileType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType3Type3Tag_Type3FileType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NDEF_FILE", "LComStSt25sdkType3Type3Tag_Type3FileType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType3Type3Tag_Type3FileType, NDEF_FILE), "LComStSt25sdkType3Type3Tag;", "Ljava/lang/Enum<Lcom/st/st25sdk/type3/Type3Tag$Type3FileType;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType3Type3Tag_Type3FileType = { "Type3FileType", "com.st.st25sdk.type3", ptrTable, methods, fields, 7, 0x4019, 2, 1, 3, -1, -1, 4, -1 };
  return &_ComStSt25sdkType3Type3Tag_Type3FileType;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType3Type3Tag_Type3FileType class]) {
    JreEnum(ComStSt25sdkType3Type3Tag_Type3FileType, NDEF_FILE) = new_ComStSt25sdkType3Type3Tag_Type3FileType_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType3Type3Tag_Type3FileType_class_(), 0), 0);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType3Type3Tag_Type3FileType)
  }
}

@end

void ComStSt25sdkType3Type3Tag_Type3FileType_initWithNSString_withInt_(ComStSt25sdkType3Type3Tag_Type3FileType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType3Type3Tag_Type3FileType *new_ComStSt25sdkType3Type3Tag_Type3FileType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType3Type3Tag_Type3FileType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType3Type3Tag_Type3FileType_values() {
  ComStSt25sdkType3Type3Tag_Type3FileType_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType3Type3Tag_Type3FileType_values_ count:1 type:ComStSt25sdkType3Type3Tag_Type3FileType_class_()];
}

ComStSt25sdkType3Type3Tag_Type3FileType *ComStSt25sdkType3Type3Tag_Type3FileType_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType3Type3Tag_Type3FileType_initialize();
  for (int i = 0; i < 1; i++) {
    ComStSt25sdkType3Type3Tag_Type3FileType *e = ComStSt25sdkType3Type3Tag_Type3FileType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType3Type3Tag_Type3FileType *ComStSt25sdkType3Type3Tag_Type3FileType_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType3Type3Tag_Type3FileType_initialize();
  if (ordinal >= 1) {
    return nil;
  }
  return ComStSt25sdkType3Type3Tag_Type3FileType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType3Type3Tag_Type3FileType)
