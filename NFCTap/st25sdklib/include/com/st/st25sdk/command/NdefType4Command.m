//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/NdefType4Command.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/NdefType4Command.h"
#include "com/st/st25sdk/command/Type4Command.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "java/lang/Exception.h"
#include "java/util/List.h"

@interface ComStSt25sdkCommandNdefType4Command () {
 @public
  ComStSt25sdkCommandType4Command *mType4Command_;
}

@end

J2OBJC_FIELD_SETTER(ComStSt25sdkCommandNdefType4Command, mType4Command_, ComStSt25sdkCommandType4Command *)

@implementation ComStSt25sdkCommandNdefType4Command

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                              withInt:(jint)maxRApduSize
                                              withInt:(jint)maxCApduSize {
  ComStSt25sdkCommandNdefType4Command_initWithComStSt25sdkRFReaderInterface_withInt_withInt_(self, readerInterface, maxRApduSize, maxCApduSize);
  return self;
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage {
  ComStSt25sdkNdefNDEFMsg *ndefMsg;
  IOSByteArray *buffer;
  jint sizeInBytes;
  @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
    buffer = [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) readBinaryWithByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x02];
    sizeInBytes = ((jint) 0xFF00 & (JreLShift32(IOSByteArray_Get(nil_chk(buffer), 0), 8))) + ((jint) 0xFF & IOSByteArray_Get(buffer, 1));
    buffer = [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) readDataWithInt:(jint) 0x02 withInt:sizeInBytes];
    @try {
      ndefMsg = new_ComStSt25sdkNdefNDEFMsg_initWithByteArray_(buffer);
    }
    @catch (JavaLangException *e) {
      [e printStackTrace];
      @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_NDEF_DATA));
    }
  }
  return ndefMsg;
}

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  IOSByteArray *buffer;
  IOSByteArray *length;
  if ([((id<JavaUtilList>) nil_chk([((ComStSt25sdkNdefNDEFMsg *) nil_chk(msg)) getNDEFRecords])) size] > 0) {
    @try {
      buffer = [msg serialize];
    }
    @catch (JavaLangException *e) {
      [e printStackTrace];
      @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_NDEF_DATA));
    }
    length = [IOSByteArray newArrayWithBytes:(jbyte[]){ (jbyte) (JreRShift32(((jint) 0xFF00 & ((IOSByteArray *) nil_chk(buffer))->size_), 8)), (jbyte) ((jint) 0xFF & buffer->size_) } count:2];
  }
  else {
    buffer = [IOSByteArray newArrayWithLength:0];
    length = [IOSByteArray newArrayWithBytes:(jbyte[]){ (jint) 0x00, (jint) 0x00 } count:2];
  }
  @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
    (void) [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) updateBinaryWithByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x00 withByteArray:[IOSByteArray newArrayWithBytes:(jbyte[]){ (jint) 0x00, (jint) 0x00 } count:2]];
    [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) writeDataWithInt:(jint) 0x02 withByteArray:buffer];
    (void) [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) updateBinaryWithByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x00 withByteArray:length];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withInt:withInt:);
  methods[1].selector = @selector(readNdefMessage);
  methods[2].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mType4Command_", "LComStSt25sdkCommandType4Command;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;II", "LComStSt25sdkSTException;", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;" };
  static const J2ObjcClassInfo _ComStSt25sdkCommandNdefType4Command = { "NdefType4Command", "com.st.st25sdk.command", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkCommandNdefType4Command;
}

@end

void ComStSt25sdkCommandNdefType4Command_initWithComStSt25sdkRFReaderInterface_withInt_withInt_(ComStSt25sdkCommandNdefType4Command *self, id<ComStSt25sdkRFReaderInterface> readerInterface, jint maxRApduSize, jint maxCApduSize) {
  NSObject_init(self);
  self->mType4Command_ = new_ComStSt25sdkCommandType4Command_initWithComStSt25sdkRFReaderInterface_withInt_withInt_(readerInterface, maxRApduSize, maxCApduSize);
}

ComStSt25sdkCommandNdefType4Command *new_ComStSt25sdkCommandNdefType4Command_initWithComStSt25sdkRFReaderInterface_withInt_withInt_(id<ComStSt25sdkRFReaderInterface> readerInterface, jint maxRApduSize, jint maxCApduSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandNdefType4Command, initWithComStSt25sdkRFReaderInterface_withInt_withInt_, readerInterface, maxRApduSize, maxCApduSize)
}

ComStSt25sdkCommandNdefType4Command *create_ComStSt25sdkCommandNdefType4Command_initWithComStSt25sdkRFReaderInterface_withInt_withInt_(id<ComStSt25sdkRFReaderInterface> readerInterface, jint maxRApduSize, jint maxCApduSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkCommandNdefType4Command, initWithComStSt25sdkRFReaderInterface_withInt_withInt_, readerInterface, maxRApduSize, maxCApduSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandNdefType4Command)
