//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/iso14443sr/STIso14443SRTag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Iso14443SRCustomCommand.h"
#include "com/st/st25sdk/iso14443sr/STIso14443SRTag.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "java/util/Arrays.h"

@implementation ComStSt25sdkIso14443srSTIso14443SRTag

+ (jint)DEFAULT_NBR_OF_BYTES_PER_BLOCK {
  return ComStSt25sdkIso14443srSTIso14443SRTag_DEFAULT_NBR_OF_BYTES_PER_BLOCK;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkIso14443srSTIso14443SRTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (jbyte)getChipID {
  return mChipID_;
}

- (jbyte)selectTag {
  [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) resetToInventory];
  jbyte chipID = [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) initiate];
  mChipID_ = chipID;
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) selectWithByte:chipID];
}

- (IOSByteArray *)anticollisionIso14443SR {
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) anticollisionIso14443SR];
}

- (IOSByteArray *)decrementCounterWithByte:(jbyte)counterAddress
                                   withInt:(jint)decrementValue {
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) decrementCounterWithByte:counterAddress withInt:decrementValue];
}

- (IOSByteArray *)decrementReloadCounterWithInt:(jint)decrementValue {
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) decrementReloadCounterWithInt:decrementValue];
}

- (IOSByteArray *)readBlocksWithByte:(jbyte)firstBlockAddress
                            withByte:(jbyte)sizeInBlocks {
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) readBlocksWithByte:firstBlockAddress withByte:sizeInBlocks];
}

- (void)writeBlocksWithByte:(jbyte)BlockAddress
              withByteArray:(IOSByteArray *)data {
  [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) writeBlocksWithByte:BlockAddress withByteArray:data];
}

- (jbyte)select {
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) selectWithByte:mChipID_];
}

- (void)completion {
  [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) completion];
}

- (IOSByteArray *)readUid {
  return [((ComStSt25sdkCommandIso14443SRCustomCommand *) nil_chk(mIso14443BSTCmd_)) getUid];
}

- (jbyte)getICRef {
  if (((IOSByteArray *) nil_chk(mUid_))->size_ >= 2) return IOSByteArray_Get(mUid_, 2);
  else return (jint) 0x00;
}

- (jint)getBlockSizeInBytes {
  return 4;
}

- (jint)getCCFileLength {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jbyte)getCCMagicNumber {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jbyte)getCCMappingVersion {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jbyte)getCCReadAccess {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jbyte)getCCWriteAccess {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jint)getCCMemorySize {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (IOSByteArray *)readCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)writeCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)writeCCFileWithByteArray:(IOSByteArray *)buffer {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)selectCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)initEmptyCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jint)getSysFileLength {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jint)getMemSizeInBytes {
  return mMemSize_;
}

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (IOSByteArray *)readSysFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 6, 7, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 14, 15, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(getChipID);
  methods[2].selector = @selector(selectTag);
  methods[3].selector = @selector(anticollisionIso14443SR);
  methods[4].selector = @selector(decrementCounterWithByte:withInt:);
  methods[5].selector = @selector(decrementReloadCounterWithInt:);
  methods[6].selector = @selector(readBlocksWithByte:withByte:);
  methods[7].selector = @selector(writeBlocksWithByte:withByteArray:);
  methods[8].selector = @selector(select);
  methods[9].selector = @selector(completion);
  methods[10].selector = @selector(readUid);
  methods[11].selector = @selector(getICRef);
  methods[12].selector = @selector(getBlockSizeInBytes);
  methods[13].selector = @selector(getCCFileLength);
  methods[14].selector = @selector(getCCMagicNumber);
  methods[15].selector = @selector(getCCMappingVersion);
  methods[16].selector = @selector(getCCReadAccess);
  methods[17].selector = @selector(getCCWriteAccess);
  methods[18].selector = @selector(getCCMemorySize);
  methods[19].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  methods[20].selector = @selector(readNdefMessage);
  methods[21].selector = @selector(readCCFile);
  methods[22].selector = @selector(writeCCFile);
  methods[23].selector = @selector(writeCCFileWithByteArray:);
  methods[24].selector = @selector(selectCCFile);
  methods[25].selector = @selector(initEmptyCCFile);
  methods[26].selector = @selector(getSysFileLength);
  methods[27].selector = @selector(getMemSizeInBytes);
  methods[28].selector = @selector(readBytesWithInt:withInt:);
  methods[29].selector = @selector(writeBytesWithInt:withByteArray:);
  methods[30].selector = @selector(readSysFile);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mIso14443BSTCmd_", "LComStSt25sdkCommandIso14443SRCustomCommand;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "DEFAULT_NBR_OF_BYTES_PER_BLOCK", "I", .constantValue.asInt = ComStSt25sdkIso14443srSTIso14443SRTag_DEFAULT_NBR_OF_BYTES_PER_BLOCK, 0x19, -1, -1, -1, -1 },
    { "mChipID_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "LComStSt25sdkSTException;", "decrementCounter", "BI", "decrementReloadCounter", "I", "readBlocks", "BB", "writeBlocks", "B[B", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;", "writeCCFile", "[B", "readBytes", "II", "writeBytes", "I[B" };
  static const J2ObjcClassInfo _ComStSt25sdkIso14443srSTIso14443SRTag = { "STIso14443SRTag", "com.st.st25sdk.iso14443sr", ptrTable, methods, fields, 7, 0x1, 31, 3, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkIso14443srSTIso14443SRTag;
}

@end

void ComStSt25sdkIso14443srSTIso14443SRTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkIso14443srSTIso14443SRTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkNFCTag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  self->mName_ = @"ISO14443B-SR tag";
  self->mDescription_ = @"ST Tag based on ISO/IEC 14443-B";
  self->mUid_ = JavaUtilArrays_copyOfWithByteArray_withInt_(uid, ((IOSByteArray *) nil_chk(uid))->size_);
  self->mIso14443BSTCmd_ = new_ComStSt25sdkCommandIso14443SRCustomCommand_initWithComStSt25sdkRFReaderInterface_(readerInterface);
}

ComStSt25sdkIso14443srSTIso14443SRTag *new_ComStSt25sdkIso14443srSTIso14443SRTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkIso14443srSTIso14443SRTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkIso14443srSTIso14443SRTag *create_ComStSt25sdkIso14443srSTIso14443SRTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkIso14443srSTIso14443SRTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkIso14443srSTIso14443SRTag)
