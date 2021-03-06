//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/m24srtahighdensity/SysFileM24SR.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/Helper.h"
#include "com/st/st25sdk/command/Type4Command.h"
#include "com/st/st25sdk/type4a/m24srtahighdensity/SysFileM24SR.h"
#include "com/st/st25sdk/type4a/m24srtahighdensity/SysFileM24SRTAHighDensity.h"
#include "java/nio/ByteBuffer.h"

@implementation ComStSt25sdkType4aM24srtahighdensitySysFileM24SR

+ (jbyte)I2C_PROTECTED_OFFSET {
  return ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_PROTECTED_OFFSET;
}

+ (jbyte)I2C_WATCHDOG_OFFSET {
  return ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_WATCHDOG_OFFSET;
}

+ (jbyte)I2C_GPO_OFFSET {
  return ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_GPO_OFFSET;
}

+ (jbyte)I2C_RF_ENABLE_OFFSET {
  return ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_RF_ENABLE_OFFSET;
}

- (instancetype)initWithComStSt25sdkCommandType4Command:(ComStSt25sdkCommandType4Command *)type4Command {
  ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_initWithComStSt25sdkCommandType4Command_(self, type4Command);
  return self;
}

- (jbyte)getI2CProtected {
  [self checkCache];
  return mI2CProtected_;
}

- (jbyte)getI2CWatchdog {
  [self checkCache];
  return mI2CWatchdog_;
}

- (jbyte)getRfEnabled {
  [self checkCache];
  return mRFEnabled_;
}

- (jbyte)getGpo {
  [self checkCache];
  return mGpo_;
}

- (jint)getNDEFFileNumber {
  [self checkCache];
  return mNDEFFileNumber_;
}

- (void)parseSysFileWithByteArray:(IOSByteArray *)buffer {
  JavaNioByteBuffer *byteBuffer = JavaNioByteBuffer_wrapWithByteArray_(buffer);
  mLength_ = (JreLShift32(ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_([((JavaNioByteBuffer *) nil_chk(byteBuffer)) get]), 8));
  mLength_ += ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_([byteBuffer get]);
  mI2CProtected_ = [byteBuffer get];
  mI2CWatchdog_ = [byteBuffer get];
  mGpo_ = [byteBuffer get];
  mReservedSysByte_ = [byteBuffer get];
  mRFEnabled_ = [byteBuffer get];
  mNDEFFileNumber_ = ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_([byteBuffer get]);
  (void) [byteBuffer getWithByteArray:mUid_ withInt:0 withInt:7];
  mMemorySizeInBytes_ = (JreLShift32(ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_([byteBuffer get]), 8));
  mMemorySizeInBytes_ += ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_([byteBuffer get]) + 1;
  mICRef_ = [byteBuffer get];
  mBuffer_ = [byteBuffer array];
  mLength_ = ((IOSByteArray *) nil_chk(mBuffer_))->size_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkCommandType4Command:);
  methods[1].selector = @selector(getI2CProtected);
  methods[2].selector = @selector(getI2CWatchdog);
  methods[3].selector = @selector(getRfEnabled);
  methods[4].selector = @selector(getGpo);
  methods[5].selector = @selector(getNDEFFileNumber);
  methods[6].selector = @selector(parseSysFileWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mI2CProtected_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mI2CWatchdog_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mReservedSysByte_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mGpo_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mRFEnabled_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "I2C_PROTECTED_OFFSET", "B", .constantValue.asChar = ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_PROTECTED_OFFSET, 0x19, -1, -1, -1, -1 },
    { "I2C_WATCHDOG_OFFSET", "B", .constantValue.asChar = ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_WATCHDOG_OFFSET, 0x19, -1, -1, -1, -1 },
    { "I2C_GPO_OFFSET", "B", .constantValue.asChar = ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_GPO_OFFSET, 0x19, -1, -1, -1, -1 },
    { "I2C_RF_ENABLE_OFFSET", "B", .constantValue.asChar = ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_I2C_RF_ENABLE_OFFSET, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkCommandType4Command;", "LComStSt25sdkSTException;", "parseSysFile", "[B" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aM24srtahighdensitySysFileM24SR = { "SysFileM24SR", "com.st.st25sdk.type4a.m24srtahighdensity", ptrTable, methods, fields, 7, 0x1, 7, 9, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType4aM24srtahighdensitySysFileM24SR;
}

@end

void ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_initWithComStSt25sdkCommandType4Command_(ComStSt25sdkType4aM24srtahighdensitySysFileM24SR *self, ComStSt25sdkCommandType4Command *type4Command) {
  ComStSt25sdkType4aM24srtahighdensitySysFileM24SRTAHighDensity_initWithComStSt25sdkCommandType4Command_(self, type4Command);
}

ComStSt25sdkType4aM24srtahighdensitySysFileM24SR *new_ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_initWithComStSt25sdkCommandType4Command_(ComStSt25sdkCommandType4Command *type4Command) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aM24srtahighdensitySysFileM24SR, initWithComStSt25sdkCommandType4Command_, type4Command)
}

ComStSt25sdkType4aM24srtahighdensitySysFileM24SR *create_ComStSt25sdkType4aM24srtahighdensitySysFileM24SR_initWithComStSt25sdkCommandType4Command_(ComStSt25sdkCommandType4Command *type4Command) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType4aM24srtahighdensitySysFileM24SR, initWithComStSt25sdkCommandType4Command_, type4Command)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aM24srtahighdensitySysFileM24SR)
