//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type2/StaticLockType2.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Type2Command.h"
#include "com/st/st25sdk/type2/StaticLockType2.h"

@implementation ComStSt25sdkType2StaticLockType2

- (instancetype)initWithComStSt25sdkCommandType2Command:(ComStSt25sdkCommandType2Command *)type2Command {
  ComStSt25sdkType2StaticLockType2_initWithComStSt25sdkCommandType2Command_(self, type2Command);
  return self;
}

- (IOSByteArray *)readStaticLockBytes {
  return [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Command_)) readBytesWithInt:(jint) 0x0A withInt:(jint) 0x02];
}

- (void)lockStaticArea {
  if ([self isStaticAreaLocked]) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NFC_TYPE2_STATIC_LOCK_LOCKED));
  }
  IOSByteArray *staticLockBytesValues = [IOSByteArray newArrayWithBytes:(jbyte[]){ (jbyte) (jint) 0xFF, (jbyte) (jint) 0xFF } count:2];
  [((ComStSt25sdkCommandType2Command *) nil_chk(mType2Command_)) writeBytesWithInt:(jint) 0x0A withByteArray:staticLockBytesValues];
}

- (jboolean)isStaticAreaLocked {
  IOSByteArray *staticLockBytes = [self readStaticLockBytes];
  if (IOSByteArray_Get(nil_chk(staticLockBytes), 0) == (jint) 0x00 && IOSByteArray_Get(staticLockBytes, 1) == (jint) 0x00) {
    return false;
  }
  else if (IOSByteArray_Get(staticLockBytes, 0) == (jint) 0xFF && IOSByteArray_Get(staticLockBytes, 1) == (jint) 0xFF) {
    return true;
  }
  else {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_withByteArray_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NFC_TYPE2_STATIC_LOCK_INVALID_VALUES), staticLockBytes);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkCommandType2Command:);
  methods[1].selector = @selector(readStaticLockBytes);
  methods[2].selector = @selector(lockStaticArea);
  methods[3].selector = @selector(isStaticAreaLocked);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mType2Command_", "LComStSt25sdkCommandType2Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkCommandType2Command;", "LComStSt25sdkSTException;" };
  static const J2ObjcClassInfo _ComStSt25sdkType2StaticLockType2 = { "StaticLockType2", "com.st.st25sdk.type2", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType2StaticLockType2;
}

@end

void ComStSt25sdkType2StaticLockType2_initWithComStSt25sdkCommandType2Command_(ComStSt25sdkType2StaticLockType2 *self, ComStSt25sdkCommandType2Command *type2Command) {
  NSObject_init(self);
  self->mType2Command_ = type2Command;
}

ComStSt25sdkType2StaticLockType2 *new_ComStSt25sdkType2StaticLockType2_initWithComStSt25sdkCommandType2Command_(ComStSt25sdkCommandType2Command *type2Command) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType2StaticLockType2, initWithComStSt25sdkCommandType2Command_, type2Command)
}

ComStSt25sdkType2StaticLockType2 *create_ComStSt25sdkType2StaticLockType2_initWithComStSt25sdkCommandType2Command_(ComStSt25sdkCommandType2Command *type2Command) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType2StaticLockType2, initWithComStSt25sdkCommandType2Command_, type2Command)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType2StaticLockType2)
