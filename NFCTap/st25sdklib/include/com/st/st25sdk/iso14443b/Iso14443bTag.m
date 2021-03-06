//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/iso14443b/Iso14443bTag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Iso14443bCommand.h"
#include "com/st/st25sdk/iso14443b/Iso14443bTag.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"

@implementation ComStSt25sdkIso14443bIso14443bTag

+ (jint)DEFAULT_NBR_OF_BYTES_PER_BLOCK {
  return ComStSt25sdkIso14443bIso14443bTag_DEFAULT_NBR_OF_BYTES_PER_BLOCK;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)pupi {
  ComStSt25sdkIso14443bIso14443bTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, pupi);
  return self;
}

- (IOSByteArray *)reqBWithByte:(jbyte)afi
                      withByte:(jbyte)param {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) reqBWithByte:afi withByte:param];
}

- (IOSByteArray *)wupBWithByte:(jbyte)afi
                      withByte:(jbyte)param {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) wupBWithByte:afi withByte:param];
}

- (void)hltBWithByteArray:(IOSByteArray *)identifier {
  [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) hltBWithByteArray:identifier];
}

- (IOSByteArray *)slotMarkerWithByte:(jbyte)slotNumber {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) slotMarkerWithByte:slotNumber];
}

- (IOSByteArray *)attriBWithByteArray:(IOSByteArray *)param {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) attriBWithByteArray:param];
}

- (id<JavaUtilList>)anticollisionIso14443b {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) anticollision_iso14443b];
}

- (IOSByteArray *)iso14443bSelectTagWithByteArray:(IOSByteArray *)pupi {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) iso14443bSelectTagWithByteArray:pupi];
}

- (IOSByteArray *)iso14443bDeselectTag {
  return [((ComStSt25sdkCommandIso14443bCommand *) nil_chk(mIso14443BCmd_)) deselect];
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
    { NULL, "[B", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 4, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 9, 6, 1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, 1, 10, -1, -1 },
    { NULL, "[B", 0x1, 11, 6, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 6, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 15, 16, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(reqBWithByte:withByte:);
  methods[2].selector = @selector(wupBWithByte:withByte:);
  methods[3].selector = @selector(hltBWithByteArray:);
  methods[4].selector = @selector(slotMarkerWithByte:);
  methods[5].selector = @selector(attriBWithByteArray:);
  methods[6].selector = @selector(anticollisionIso14443b);
  methods[7].selector = @selector(iso14443bSelectTagWithByteArray:);
  methods[8].selector = @selector(iso14443bDeselectTag);
  methods[9].selector = @selector(getBlockSizeInBytes);
  methods[10].selector = @selector(getCCFileLength);
  methods[11].selector = @selector(getCCMagicNumber);
  methods[12].selector = @selector(getCCMappingVersion);
  methods[13].selector = @selector(getCCReadAccess);
  methods[14].selector = @selector(getCCWriteAccess);
  methods[15].selector = @selector(getCCMemorySize);
  methods[16].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  methods[17].selector = @selector(readNdefMessage);
  methods[18].selector = @selector(readCCFile);
  methods[19].selector = @selector(writeCCFile);
  methods[20].selector = @selector(writeCCFileWithByteArray:);
  methods[21].selector = @selector(selectCCFile);
  methods[22].selector = @selector(initEmptyCCFile);
  methods[23].selector = @selector(getSysFileLength);
  methods[24].selector = @selector(getMemSizeInBytes);
  methods[25].selector = @selector(readBytesWithInt:withInt:);
  methods[26].selector = @selector(writeBytesWithInt:withByteArray:);
  methods[27].selector = @selector(readSysFile);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mIso14443BCmd_", "LComStSt25sdkCommandIso14443bCommand;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "DEFAULT_NBR_OF_BYTES_PER_BLOCK", "I", .constantValue.asInt = ComStSt25sdkIso14443bIso14443bTag_DEFAULT_NBR_OF_BYTES_PER_BLOCK, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "LComStSt25sdkSTException;", "reqB", "BB", "wupB", "hltB", "[B", "slotMarker", "B", "attriB", "()Ljava/util/List<Ljava/lang/String;>;", "iso14443bSelectTag", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;", "writeCCFile", "readBytes", "II", "writeBytes", "I[B" };
  static const J2ObjcClassInfo _ComStSt25sdkIso14443bIso14443bTag = { "Iso14443bTag", "com.st.st25sdk.iso14443b", ptrTable, methods, fields, 7, 0x1, 28, 2, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkIso14443bIso14443bTag;
}

@end

void ComStSt25sdkIso14443bIso14443bTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkIso14443bIso14443bTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *pupi) {
  ComStSt25sdkNFCTag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  self->mName_ = @"ISO14443B tag";
  self->mDescription_ = @"Tag based on ISO/IEC 14443-B";
  self->mUid_ = JavaUtilArrays_copyOfWithByteArray_withInt_(pupi, ((IOSByteArray *) nil_chk(pupi))->size_);
  self->mIso14443BCmd_ = new_ComStSt25sdkCommandIso14443bCommand_initWithComStSt25sdkRFReaderInterface_(readerInterface);
}

ComStSt25sdkIso14443bIso14443bTag *new_ComStSt25sdkIso14443bIso14443bTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *pupi) {
  J2OBJC_NEW_IMPL(ComStSt25sdkIso14443bIso14443bTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, pupi)
}

ComStSt25sdkIso14443bIso14443bTag *create_ComStSt25sdkIso14443bIso14443bTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *pupi) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkIso14443bIso14443bTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, pupi)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkIso14443bIso14443bTag)
