//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Type1Command.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Iso14443aCommand.h"
#include "com/st/st25sdk/command/Type1Command.h"
#include "java/lang/Enum.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"

@interface ComStSt25sdkCommandType1Command () {
 @public
  ComStSt25sdkCommandIso14443aCommand *mIso14443aCommand_;
}

@end

J2OBJC_FIELD_SETTER(ComStSt25sdkCommandType1Command, mIso14443aCommand_, ComStSt25sdkCommandIso14443aCommand *)

__attribute__((unused)) static void ComStSt25sdkCommandType1Command_type1FrameMode_initWithNSString_withInt_(ComStSt25sdkCommandType1Command_type1FrameMode *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkCommandType1Command_type1FrameMode *new_ComStSt25sdkCommandType1Command_type1FrameMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkCommandType1Command

+ (jbyte)TYPE1_CMD_REQA {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_REQA;
}

+ (jbyte)TYPE1_CMD_WUPA {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_WUPA;
}

+ (jbyte)TYPE1_CMD_RID {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_RID;
}

+ (jbyte)TYPE1_CMD_RALL {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_RALL;
}

+ (jbyte)TYPE1_CMD_READ {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_READ;
}

+ (jbyte)TYPE1_CMD_WRITE_E {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_E;
}

+ (jbyte)TYPE1_CMD_WRITE_NE {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_NE;
}

+ (jbyte)TYPE1_CMD_RSEG {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_RSEG;
}

+ (jbyte)TYPE1_CMD_READ8 {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_READ8;
}

+ (jbyte)TYPE1_CMD_WRITE_E8 {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_E8;
}

+ (jbyte)TYPE1_CMD_WRITE_NE8 {
  return ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_NE8;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)reader {
  ComStSt25sdkCommandType1Command_initWithComStSt25sdkRFReaderInterface_(self, reader);
  return self;
}

- (IOSByteArray *)reqA {
  return [((ComStSt25sdkCommandIso14443aCommand *) nil_chk(mIso14443aCommand_)) reqA];
}

- (IOSByteArray *)wupA {
  return [((ComStSt25sdkCommandIso14443aCommand *) nil_chk(mIso14443aCommand_)) wupA];
}

- (IOSByteArray *)rid {
  NSString *commandName = @"type1_rid";
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:7];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_RID;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x00;
  *IOSByteArray_GetRef(frame, 2) = (jbyte) (jint) 0x00;
  *IOSByteArray_GetRef(frame, 3) = (jbyte) (jint) 0x00;
  *IOSByteArray_GetRef(frame, 4) = (jbyte) (jint) 0x00;
  *IOSByteArray_GetRef(frame, 5) = (jbyte) (jint) 0x00;
  *IOSByteArray_GetRef(frame, 6) = (jbyte) (jint) 0x00;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)readWithByte:(jbyte)blockAddress
                 withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_read";
  if (uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:3 + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_READ;
  *IOSByteArray_GetRef(frame, 1) = blockAddress;
  *IOSByteArray_GetRef(frame, 2) = (jbyte) (jint) 0x00;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 3, uidLSB->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)rallWithByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_rall";
  if (uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:3 + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_RALL;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x00;
  *IOSByteArray_GetRef(frame, 2) = (jbyte) (jint) 0x00;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 3, uidLSB->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (void)writeEraseWithByte:(jbyte)blockAddress
                  withByte:(jbyte)data
             withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_write_E";
  if (uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:3 + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_E;
  *IOSByteArray_GetRef(frame, 1) = blockAddress;
  *IOSByteArray_GetRef(frame, 2) = data;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 3, uidLSB->size_);
  @try {
    (void) [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (ComStSt25sdkSTException *e) {
    if (([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, RFREADER_NO_RESPONSE)) && ([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, TAG_NOT_IN_THE_FIELD))) {
      @throw (e);
    }
  }
}

- (void)writeNoEraseWithByte:(jbyte)blockAddress
                    withByte:(jbyte)data
               withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_write_NE";
  if (uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:3 + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_NE;
  *IOSByteArray_GetRef(frame, 1) = blockAddress;
  *IOSByteArray_GetRef(frame, 2) = data;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 3, uidLSB->size_);
  @try {
    (void) [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (ComStSt25sdkSTException *e) {
    if (([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, RFREADER_NO_RESPONSE)) && ([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, TAG_NOT_IN_THE_FIELD))) {
      @throw (e);
    }
  }
}

- (IOSByteArray *)rsegWithByte:(jbyte)adds
                 withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_rseg";
  if (uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:10 + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_RSEG;
  *IOSByteArray_GetRef(frame, 1) = adds;
  *IOSByteArray_GetRef(frame, 2) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 3) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 4) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 5) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 6) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 7) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 8) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 9) = (jint) 0x00;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 10, uidLSB->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)read8WithByte:(jbyte)add8
                  withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_read8";
  if (uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:10 + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_READ8;
  *IOSByteArray_GetRef(frame, 1) = add8;
  *IOSByteArray_GetRef(frame, 2) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 3) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 4) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 5) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 6) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 7) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 8) = (jint) 0x00;
  *IOSByteArray_GetRef(frame, 9) = (jint) 0x00;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 10, uidLSB->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (void)writeErase8WithByte:(jbyte)add8
              withByteArray:(IOSByteArray *)data
              withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_write_E8";
  if (data == nil || uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:2 + data->size_ + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_E8;
  *IOSByteArray_GetRef(frame, 1) = add8;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, 0, frame, 2, data->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 2 + data->size_, uidLSB->size_);
  @try {
    (void) [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (ComStSt25sdkSTException *e) {
    if (([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, RFREADER_NO_RESPONSE)) && ([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, TAG_NOT_IN_THE_FIELD))) {
      @throw (e);
    }
  }
}

- (void)writeNoErase8WithByte:(jbyte)add8
                withByteArray:(IOSByteArray *)data
                withByteArray:(IOSByteArray *)uidLSB {
  NSString *commandName = @"type1_write_NE8";
  if (data == nil || uidLSB == nil) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  IOSByteArray *frame = [IOSByteArray newArrayWithLength:2 + data->size_ + uidLSB->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_NE8;
  *IOSByteArray_GetRef(frame, 1) = add8;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, 0, frame, 2, data->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uidLSB, 0, frame, 2 + data->size_, uidLSB->size_);
  @try {
    (void) [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (ComStSt25sdkSTException *e) {
    if (([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, RFREADER_NO_RESPONSE)) && ([e getError] != JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, TAG_NOT_IN_THE_FIELD))) {
      @throw (e);
    }
  }
}

- (IOSByteArray *)getHr0Hr1 {
  IOSByteArray *Hr0Hr1 = [IOSByteArray newArrayWithLength:2];
  (void) [self wupA];
  IOSByteArray *response = [self rid];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(response, 0, Hr0Hr1, 0, 2);
  return Hr0Hr1;
}

- (IOSByteArray *)getUidLSB {
  IOSByteArray *uidLSB = [IOSByteArray newArrayWithLength:4];
  (void) [self wupA];
  IOSByteArray *response = [self rid];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(response, 2, uidLSB, 0, 4);
  return uidLSB;
}

- (IOSByteArray *)selectType1Tag {
  IOSByteArray *uidLSB = [IOSByteArray newArrayWithLength:4];
  IOSByteArray *uid = [IOSByteArray newArrayWithLength:7];
  (void) [self wupA];
  IOSByteArray *response = [self rid];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(response, 2, uidLSB, 0, 4);
  response = [self rallWithByteArray:uidLSB];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(response, 2, uid, 0, 7);
  return uid;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 7, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 9, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 10, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 12, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:);
  methods[1].selector = @selector(reqA);
  methods[2].selector = @selector(wupA);
  methods[3].selector = @selector(rid);
  methods[4].selector = @selector(readWithByte:withByteArray:);
  methods[5].selector = @selector(rallWithByteArray:);
  methods[6].selector = @selector(writeEraseWithByte:withByte:withByteArray:);
  methods[7].selector = @selector(writeNoEraseWithByte:withByte:withByteArray:);
  methods[8].selector = @selector(rsegWithByte:withByteArray:);
  methods[9].selector = @selector(read8WithByte:withByteArray:);
  methods[10].selector = @selector(writeErase8WithByte:withByteArray:withByteArray:);
  methods[11].selector = @selector(writeNoErase8WithByte:withByteArray:withByteArray:);
  methods[12].selector = @selector(getHr0Hr1);
  methods[13].selector = @selector(getUidLSB);
  methods[14].selector = @selector(selectType1Tag);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mReaderInterface_", "LComStSt25sdkRFReaderInterface;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mFrameMode_", "LComStSt25sdkCommandType1Command_type1FrameMode;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mIso14443aCommand_", "LComStSt25sdkCommandIso14443aCommand;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "TYPE1_CMD_REQA", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_REQA, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_WUPA", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_WUPA, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_RID", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_RID, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_RALL", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_RALL, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_READ", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_READ, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_WRITE_E", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_E, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_WRITE_NE", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_NE, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_RSEG", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_RSEG, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_READ8", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_READ8, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_WRITE_E8", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_E8, 0x19, -1, -1, -1, -1 },
    { "TYPE1_CMD_WRITE_NE8", "B", .constantValue.asChar = ComStSt25sdkCommandType1Command_TYPE1_CMD_WRITE_NE8, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;", "LComStSt25sdkSTException;", "read", "B[B", "rall", "[B", "writeErase", "BB[B", "writeNoErase", "rseg", "read8", "writeErase8", "B[B[B", "writeNoErase8", "LComStSt25sdkCommandType1Command_type1FrameMode;" };
  static const J2ObjcClassInfo _ComStSt25sdkCommandType1Command = { "Type1Command", "com.st.st25sdk.command", ptrTable, methods, fields, 7, 0x1, 15, 14, -1, 14, -1, -1, -1 };
  return &_ComStSt25sdkCommandType1Command;
}

@end

void ComStSt25sdkCommandType1Command_initWithComStSt25sdkRFReaderInterface_(ComStSt25sdkCommandType1Command *self, id<ComStSt25sdkRFReaderInterface> reader) {
  NSObject_init(self);
  self->mReaderInterface_ = reader;
  self->mIso14443aCommand_ = new_ComStSt25sdkCommandIso14443aCommand_initWithComStSt25sdkRFReaderInterface_(reader);
}

ComStSt25sdkCommandType1Command *new_ComStSt25sdkCommandType1Command_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> reader) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandType1Command, initWithComStSt25sdkRFReaderInterface_, reader)
}

ComStSt25sdkCommandType1Command *create_ComStSt25sdkCommandType1Command_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> reader) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkCommandType1Command, initWithComStSt25sdkRFReaderInterface_, reader)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandType1Command)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkCommandType1Command_type1FrameMode)

ComStSt25sdkCommandType1Command_type1FrameMode *ComStSt25sdkCommandType1Command_type1FrameMode_values_[2];

@implementation ComStSt25sdkCommandType1Command_type1FrameMode

+ (ComStSt25sdkCommandType1Command_type1FrameMode *)TYPE1_STANDARD_FRAME {
  return JreEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME);
}

+ (ComStSt25sdkCommandType1Command_type1FrameMode *)TYPE1_NOCRC_FRAME {
  return JreEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_NOCRC_FRAME);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkCommandType1Command_type1FrameMode_values();
}

+ (ComStSt25sdkCommandType1Command_type1FrameMode *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkCommandType1Command_type1FrameMode_valueOfWithNSString_(name);
}

- (ComStSt25sdkCommandType1Command_type1FrameMode_Enum)toNSEnum {
  return (ComStSt25sdkCommandType1Command_type1FrameMode_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkCommandType1Command_type1FrameMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkCommandType1Command_type1FrameMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE1_STANDARD_FRAME", "LComStSt25sdkCommandType1Command_type1FrameMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "TYPE1_NOCRC_FRAME", "LComStSt25sdkCommandType1Command_type1FrameMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME), &JreEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_NOCRC_FRAME), "LComStSt25sdkCommandType1Command;", "Ljava/lang/Enum<Lcom/st/st25sdk/command/Type1Command$type1FrameMode;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkCommandType1Command_type1FrameMode = { "type1FrameMode", "com.st.st25sdk.command", ptrTable, methods, fields, 7, 0x4019, 2, 2, 4, -1, -1, 5, -1 };
  return &_ComStSt25sdkCommandType1Command_type1FrameMode;
}

+ (void)initialize {
  if (self == [ComStSt25sdkCommandType1Command_type1FrameMode class]) {
    JreEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_STANDARD_FRAME) = new_ComStSt25sdkCommandType1Command_type1FrameMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkCommandType1Command_type1FrameMode_class_(), 0), 0);
    JreEnum(ComStSt25sdkCommandType1Command_type1FrameMode, TYPE1_NOCRC_FRAME) = new_ComStSt25sdkCommandType1Command_type1FrameMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkCommandType1Command_type1FrameMode_class_(), 1), 1);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkCommandType1Command_type1FrameMode)
  }
}

@end

void ComStSt25sdkCommandType1Command_type1FrameMode_initWithNSString_withInt_(ComStSt25sdkCommandType1Command_type1FrameMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkCommandType1Command_type1FrameMode *new_ComStSt25sdkCommandType1Command_type1FrameMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandType1Command_type1FrameMode, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkCommandType1Command_type1FrameMode_values() {
  ComStSt25sdkCommandType1Command_type1FrameMode_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkCommandType1Command_type1FrameMode_values_ count:2 type:ComStSt25sdkCommandType1Command_type1FrameMode_class_()];
}

ComStSt25sdkCommandType1Command_type1FrameMode *ComStSt25sdkCommandType1Command_type1FrameMode_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkCommandType1Command_type1FrameMode_initialize();
  for (int i = 0; i < 2; i++) {
    ComStSt25sdkCommandType1Command_type1FrameMode *e = ComStSt25sdkCommandType1Command_type1FrameMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkCommandType1Command_type1FrameMode *ComStSt25sdkCommandType1Command_type1FrameMode_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkCommandType1Command_type1FrameMode_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return ComStSt25sdkCommandType1Command_type1FrameMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandType1Command_type1FrameMode)
