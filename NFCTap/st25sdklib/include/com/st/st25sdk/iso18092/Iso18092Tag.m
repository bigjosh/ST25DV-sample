//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/iso18092/Iso18092Tag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Type3Command.h"
#include "com/st/st25sdk/iso18092/Iso18092Tag.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "java/util/Arrays.h"

@implementation ComStSt25sdkIso18092Iso18092Tag

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface {
  ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  return self;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)manufactureId {
  ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, manufactureId);
  return self;
}

- (ComStSt25sdkCommandType3Command *)getType3Command {
  return mType3Cmd_;
}

- (jint)getMemSizeInBytes {
  return 0;
}

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
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
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 1, -1, -1, -1 },
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
  methods[3].selector = @selector(getMemSizeInBytes);
  methods[4].selector = @selector(readBytesWithInt:withInt:);
  methods[5].selector = @selector(writeBytesWithInt:withByteArray:);
  methods[6].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  methods[7].selector = @selector(readNdefMessage);
  methods[8].selector = @selector(readCCFile);
  methods[9].selector = @selector(writeCCFile);
  methods[10].selector = @selector(writeCCFileWithByteArray:);
  methods[11].selector = @selector(initEmptyCCFile);
  methods[12].selector = @selector(getCCFileLength);
  methods[13].selector = @selector(getCCMagicNumber);
  methods[14].selector = @selector(getCCMappingVersion);
  methods[15].selector = @selector(getCCMemorySize);
  methods[16].selector = @selector(getCCReadAccess);
  methods[17].selector = @selector(getCCWriteAccess);
  methods[18].selector = @selector(readSysFile);
  methods[19].selector = @selector(getSysFileLength);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mType3Cmd_", "LComStSt25sdkCommandType3Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;", "LComStSt25sdkSTException;", "LComStSt25sdkRFReaderInterface;[B", "readBytes", "II", "writeBytes", "I[B", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;", "writeCCFile", "[B" };
  static const J2ObjcClassInfo _ComStSt25sdkIso18092Iso18092Tag = { "Iso18092Tag", "com.st.st25sdk.iso18092", ptrTable, methods, fields, 7, 0x1, 20, 1, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkIso18092Iso18092Tag;
}

@end

void ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(ComStSt25sdkIso18092Iso18092Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface) {
  ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, nil);
}

ComStSt25sdkIso18092Iso18092Tag *new_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) {
  J2OBJC_NEW_IMPL(ComStSt25sdkIso18092Iso18092Tag, initWithComStSt25sdkRFReaderInterface_, readerInterface)
}

ComStSt25sdkIso18092Iso18092Tag *create_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkIso18092Iso18092Tag, initWithComStSt25sdkRFReaderInterface_, readerInterface)
}

void ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkIso18092Iso18092Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) {
  ComStSt25sdkNFCTag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  self->mName_ = @"ISO18092 tag";
  self->mDescription_ = @"ISO/IEC 18092";
  self->mType3Cmd_ = new_ComStSt25sdkCommandType3Command_initWithComStSt25sdkRFReaderInterface_(readerInterface);
  self->mUid_ = JavaUtilArrays_copyOfWithByteArray_withInt_(manufactureId, ((IOSByteArray *) nil_chk(manufactureId))->size_);
}

ComStSt25sdkIso18092Iso18092Tag *new_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) {
  J2OBJC_NEW_IMPL(ComStSt25sdkIso18092Iso18092Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, manufactureId)
}

ComStSt25sdkIso18092Iso18092Tag *create_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkIso18092Iso18092Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, manufactureId)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkIso18092Iso18092Tag)
