//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Iso14443aCommand.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Iso14443aCommand.h"
#include "java/lang/Enum.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"

@interface ComStSt25sdkCommandIso14443aCommand ()

- (jbyte)selectCmdBccCalculationWithByteArray:(IOSByteArray *)data;

@end

__attribute__((unused)) static jbyte ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(ComStSt25sdkCommandIso14443aCommand *self, IOSByteArray *data);

__attribute__((unused)) static void ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *new_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkCommandIso14443aCommand

+ (jbyte)ISO14443A_CMD_REQA {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_REQA;
}

+ (jbyte)ISO14443A_CMD_WUPA {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_WUPA;
}

+ (jbyte)ISO14443A_CMD_HLTA {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_HLTA;
}

+ (jbyte)ISO14443A_CMD_ANTICOLLISION1 {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION1;
}

+ (jbyte)ISO14443A_CMD_ANTICOLLISION2 {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION2;
}

+ (jbyte)ISO14443A_CMD_ANTICOLLISION3 {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION3;
}

+ (jbyte)ISO14443A_CMD_SELECT1 {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT1;
}

+ (jbyte)ISO14443A_CMD_SELECT2 {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT2;
}

+ (jbyte)ISO14443A_CMD_SELECT3 {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT3;
}

+ (jbyte)ISO14443A_CMD_RATS {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_RATS;
}

+ (jbyte)ISO14443A_CMD_PPS {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_PPS;
}

+ (jbyte)ISO14443A_CMD_DESELECT {
  return ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_DESELECT;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)reader {
  ComStSt25sdkCommandIso14443aCommand_initWithComStSt25sdkRFReaderInterface_(self, reader);
  return self;
}

- (IOSByteArray *)reqA {
  NSString *commandName = @"reqa";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:1];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_REQA;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_7BIT_SHORT_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)wupA {
  NSString *commandName = @"wupa";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:1];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_WUPA;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_7BIT_SHORT_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (void)hltA {
  NSString *commandName = @"hlta";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:2];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_HLTA;
  *IOSByteArray_GetRef(frame, 1) = (jint) 0x00;
  @try {
    (void) [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)ratsWithByte:(jbyte)fsdi
                      withByte:(jbyte)cid {
  NSString *commandName = @"rats";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:2];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_RATS;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) ((JreLShift32((fsdi & (jint) 0x0F), 4)) | (cid & (jint) 0x0F));
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)ratsWithByte:(jbyte)param {
  NSString *commandName = @"rats";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:2];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_RATS;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (param & (jint) 0xFF);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)ppsWithByte:(jbyte)cid
                withByteArray:(IOSByteArray *)ppsParams {
  NSString *commandName = @"pps";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:1 + ((IOSByteArray *) nil_chk(ppsParams))->size_];
  *IOSByteArray_GetRef(frame, 0) = (jbyte) (ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_PPS | (cid & (jint) 0x0F));
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(ppsParams, 0, frame, 1, ppsParams->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)anticollision1 {
  NSString *commandName = @"anticol1";
  IOSByteArray *frame = nil;
  frame = [IOSByteArray newArrayWithLength:2];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION1;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x20;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_NOCRC_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)anticollision2 {
  NSString *commandName = @"anticol2";
  IOSByteArray *frame = nil;
  frame = [IOSByteArray newArrayWithLength:2];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION2;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x20;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_NOCRC_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)anticollision3 {
  NSString *commandName = @"anticol3";
  IOSByteArray *frame = nil;
  frame = [IOSByteArray newArrayWithLength:2];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION3;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x20;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_NOCRC_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)select1WithByteArray:(IOSByteArray *)data {
  NSString *commandName = @"select1";
  IOSByteArray *frame = nil;
  frame = [IOSByteArray newArrayWithLength:2 + ((IOSByteArray *) nil_chk(data))->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT1;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x70;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, 0, frame, 2, data->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)select2WithByteArray:(IOSByteArray *)data {
  NSString *commandName = @"select2";
  IOSByteArray *frame = nil;
  frame = [IOSByteArray newArrayWithLength:2 + ((IOSByteArray *) nil_chk(data))->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT2;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x70;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, 0, frame, 2, data->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)select3WithByteArray:(IOSByteArray *)data {
  NSString *commandName = @"select3";
  IOSByteArray *frame = nil;
  frame = [IOSByteArray newArrayWithLength:2 + ((IOSByteArray *) nil_chk(data))->size_];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT3;
  *IOSByteArray_GetRef(frame, 1) = (jbyte) (jint) 0x70;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, 0, frame, 2, data->size_);
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)deselect {
  NSString *commandName = @"deselectA";
  IOSByteArray *frame;
  frame = [IOSByteArray newArrayWithLength:1];
  *IOSByteArray_GetRef(frame, 0) = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_DESELECT;
  @try {
    return [((id<ComStSt25sdkRFReaderInterface>) nil_chk(mReaderInterface_)) transceiveWithId:JreLoadEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) withNSString:commandName withByteArray:frame];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
  }
}

- (IOSByteArray *)iso14443aSelectTagWithByteArray:(IOSByteArray *)uid {
  IOSByteArray *selectData = [IOSByteArray newArrayWithLength:5];
  IOSByteArray *tmpData = [IOSByteArray newArrayWithLength:4];
  IOSByteArray *response;
  jbyte cascadeByte = (jbyte) (jint) 0x88;
  @try {
    (void) [self wupA];
  }
  @catch (ComStSt25sdkSTException *e) {
  }
  if (((IOSByteArray *) nil_chk(uid))->size_ == 4) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uid, 0, tmpData, 0, 4);
  }
  else {
    *IOSByteArray_GetRef(tmpData, 0) = cascadeByte;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uid, 0, tmpData, 1, 3);
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tmpData, 0, selectData, 0, 4);
  *IOSByteArray_GetRef(selectData, 4) = ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(self, tmpData);
  response = [self select1WithByteArray:selectData];
  if (uid->size_ == 7) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uid, 3, tmpData, 0, 4);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tmpData, 0, selectData, 0, 4);
    *IOSByteArray_GetRef(selectData, 4) = ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(self, tmpData);
    response = [self select2WithByteArray:selectData];
  }
  else if (uid->size_ == 10) {
    *IOSByteArray_GetRef(tmpData, 0) = cascadeByte;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uid, 3, tmpData, 1, 3);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tmpData, 0, selectData, 0, 4);
    *IOSByteArray_GetRef(selectData, 4) = ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(self, tmpData);
    (void) [self select2WithByteArray:selectData];
  }
  if (uid->size_ == 10) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(uid, 6, tmpData, 0, 4);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tmpData, 0, selectData, 0, 4);
    *IOSByteArray_GetRef(selectData, 4) = ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(self, tmpData);
    response = [self select3WithByteArray:selectData];
  }
  return response;
}

- (IOSByteArray *)iso14443aSelectTagWithByteArray:(IOSByteArray *)uid
                                         withByte:(jbyte)ratsParam {
  (void) [self iso14443aSelectTagWithByteArray:uid];
  return [self ratsWithByte:ratsParam];
}

- (IOSByteArray *)iso14443aSelectTagWithByteArray:(IOSByteArray *)uid
                                         withByte:(jbyte)ratsParam
                                         withByte:(jbyte)cidPpsParam
                                    withByteArray:(IOSByteArray *)ppsParams {
  IOSByteArray *ratsResponse;
  IOSByteArray *ppsResponse;
  ratsResponse = [self iso14443aSelectTagWithByteArray:uid withByte:ratsParam];
  ppsResponse = [self ppsWithByte:cidPpsParam withByteArray:ppsParams];
  IOSByteArray *response = [IOSByteArray newArrayWithLength:((IOSByteArray *) nil_chk(ratsResponse))->size_ + ((IOSByteArray *) nil_chk(ppsResponse))->size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(ratsResponse, 0, response, 0, ratsResponse->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(ppsResponse, 0, response, ratsResponse->size_, ppsResponse->size_);
  return response;
}

- (jbyte)selectCmdBccCalculationWithByteArray:(IOSByteArray *)data {
  return ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(self, data);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 4, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 9, 8, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 10, 8, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 11, 8, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 11, 12, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 11, 13, 1, -1, -1, -1 },
    { NULL, "B", 0x2, 14, 8, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:);
  methods[1].selector = @selector(reqA);
  methods[2].selector = @selector(wupA);
  methods[3].selector = @selector(hltA);
  methods[4].selector = @selector(ratsWithByte:withByte:);
  methods[5].selector = @selector(ratsWithByte:);
  methods[6].selector = @selector(ppsWithByte:withByteArray:);
  methods[7].selector = @selector(anticollision1);
  methods[8].selector = @selector(anticollision2);
  methods[9].selector = @selector(anticollision3);
  methods[10].selector = @selector(select1WithByteArray:);
  methods[11].selector = @selector(select2WithByteArray:);
  methods[12].selector = @selector(select3WithByteArray:);
  methods[13].selector = @selector(deselect);
  methods[14].selector = @selector(iso14443aSelectTagWithByteArray:);
  methods[15].selector = @selector(iso14443aSelectTagWithByteArray:withByte:);
  methods[16].selector = @selector(iso14443aSelectTagWithByteArray:withByte:withByte:withByteArray:);
  methods[17].selector = @selector(selectCmdBccCalculationWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mReaderInterface_", "LComStSt25sdkRFReaderInterface;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mFrameMode_", "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "ISO14443A_CMD_REQA", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_REQA, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_WUPA", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_WUPA, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_HLTA", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_HLTA, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_ANTICOLLISION1", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION1, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_ANTICOLLISION2", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION2, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_ANTICOLLISION3", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_ANTICOLLISION3, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_SELECT1", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT1, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_SELECT2", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT2, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_SELECT3", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_SELECT3, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_RATS", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_RATS, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_PPS", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_PPS, 0x19, -1, -1, -1, -1 },
    { "ISO14443A_CMD_DESELECT", "B", .constantValue.asChar = ComStSt25sdkCommandIso14443aCommand_ISO14443A_CMD_DESELECT, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;", "LComStSt25sdkSTException;", "rats", "BB", "B", "pps", "B[B", "select1", "[B", "select2", "select3", "iso14443aSelectTag", "[BB", "[BBB[B", "selectCmdBccCalculation", "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;" };
  static const J2ObjcClassInfo _ComStSt25sdkCommandIso14443aCommand = { "Iso14443aCommand", "com.st.st25sdk.command", ptrTable, methods, fields, 7, 0x1, 18, 14, -1, 15, -1, -1, -1 };
  return &_ComStSt25sdkCommandIso14443aCommand;
}

@end

void ComStSt25sdkCommandIso14443aCommand_initWithComStSt25sdkRFReaderInterface_(ComStSt25sdkCommandIso14443aCommand *self, id<ComStSt25sdkRFReaderInterface> reader) {
  NSObject_init(self);
  self->mReaderInterface_ = reader;
}

ComStSt25sdkCommandIso14443aCommand *new_ComStSt25sdkCommandIso14443aCommand_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> reader) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandIso14443aCommand, initWithComStSt25sdkRFReaderInterface_, reader)
}

ComStSt25sdkCommandIso14443aCommand *create_ComStSt25sdkCommandIso14443aCommand_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> reader) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkCommandIso14443aCommand, initWithComStSt25sdkRFReaderInterface_, reader)
}

jbyte ComStSt25sdkCommandIso14443aCommand_selectCmdBccCalculationWithByteArray_(ComStSt25sdkCommandIso14443aCommand *self, IOSByteArray *data) {
  jbyte bcc = 0;
  if (data == nil) @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  for (jint i = 0; i < data->size_; i++) {
    bcc ^= IOSByteArray_Get(data, i);
  }
  return bcc;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandIso14443aCommand)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode)

ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_values_[4];

@implementation ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode

+ (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *)ISO14443A_TYPE4A_STANDARD_FRAME {
  return JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_TYPE4A_STANDARD_FRAME);
}

+ (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *)ISO14443A_STANDARD_FRAME {
  return JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME);
}

+ (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *)ISO14443A_7BIT_SHORT_FRAME {
  return JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_7BIT_SHORT_FRAME);
}

+ (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *)ISO14443A_NOCRC_FRAME {
  return JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_NOCRC_FRAME);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_values();
}

+ (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_valueOfWithNSString_(name);
}

- (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_Enum)toNSEnum {
  return (ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ISO14443A_TYPE4A_STANDARD_FRAME", "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "ISO14443A_STANDARD_FRAME", "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "ISO14443A_7BIT_SHORT_FRAME", "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "ISO14443A_NOCRC_FRAME", "LComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_TYPE4A_STANDARD_FRAME), &JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME), &JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_7BIT_SHORT_FRAME), &JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_NOCRC_FRAME), "LComStSt25sdkCommandIso14443aCommand;", "Ljava/lang/Enum<Lcom/st/st25sdk/command/Iso14443aCommand$iso14443aFrameMode;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode = { "iso14443aFrameMode", "com.st.st25sdk.command", ptrTable, methods, fields, 7, 0x4019, 2, 4, 6, -1, -1, 7, -1 };
  return &_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode;
}

+ (void)initialize {
  if (self == [ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode class]) {
    JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_TYPE4A_STANDARD_FRAME) = new_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_class_(), 0), 0);
    JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_STANDARD_FRAME) = new_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_class_(), 1), 1);
    JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_7BIT_SHORT_FRAME) = new_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_class_(), 2), 2);
    JreEnum(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, ISO14443A_NOCRC_FRAME) = new_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_class_(), 3), 3);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode)
  }
}

@end

void ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *new_ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_values() {
  ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_values_ count:4 type:ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_class_()];
}

ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initialize();
  for (int i = 0; i < 4; i++) {
    ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *e = ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode *ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandIso14443aCommand_iso14443aFrameMode)
