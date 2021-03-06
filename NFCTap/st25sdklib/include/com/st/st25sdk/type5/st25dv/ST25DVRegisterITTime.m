//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dv/ST25DVRegisterITTime.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVRegisterITTime.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVTag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ComStSt25sdkType5St25dvST25DVRegisterITTime ()

- (jint)computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)iTTimeControl;

- (jboolean)isEnabledWithInt:(jint)fieldValue
withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)iTTimeControl;

@end

__attribute__((unused)) static jint ComStSt25sdkType5St25dvST25DVRegisterITTime_computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(ComStSt25sdkType5St25dvST25DVRegisterITTime *self, ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *iTTimeControl);

__attribute__((unused)) static jboolean ComStSt25sdkType5St25dvST25DVRegisterITTime_isEnabledWithInt_withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(ComStSt25sdkType5St25dvST25DVRegisterITTime *self, jint fieldValue, ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *iTTimeControl);

__attribute__((unused)) static void ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType5St25dvST25DVRegisterITTime

+ (jbyte)IT_TIME_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_IT_TIME_BIT_MASK;
}

+ (jbyte)RFU_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_RFU_BIT_MASK;
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(iso15693CustomCommand);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25dvST25DVRegisterITTime_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (jboolean)isITTimeControlFieldEnabledWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)iTTimeControl {
  jboolean iTimeEnable;
  jint fieldValue = [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"IT_TIME"])) getValue];
  iTimeEnable = ComStSt25sdkType5St25dvST25DVRegisterITTime_isEnabledWithInt_withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(self, fieldValue, iTTimeControl);
  return iTimeEnable;
}

- (void)setITTimeControlWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)iTTimeControl {
  jint fieldValue = ComStSt25sdkType5St25dvST25DVRegisterITTime_computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(self, iTTimeControl);
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"IT_TIME"])) setValueWithInt:fieldValue];
}

- (jint)computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)iTTimeControl {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(self, iTTimeControl);
}

- (jboolean)isEnabledWithInt:(jint)fieldValue
withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)iTTimeControl {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_isEnabledWithInt_withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(self, fieldValue, iTTimeControl);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterITTime;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 4, 5, -1, -1, -1 },
    { NULL, "I", 0x2, 7, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(isITTimeControlFieldEnabledWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:);
  methods[3].selector = @selector(setITTimeControlWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:);
  methods[4].selector = @selector(computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:);
  methods[5].selector = @selector(isEnabledWithInt:withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "IT_TIME_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterITTime_IT_TIME_BIT_MASK, 0x19, -1, -1, -1, -1 },
    { "RFU_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterITTime_RFU_BIT_MASK, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;", "LComStSt25sdkCommandIso15693CustomCommand;ILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "isITTimeControlFieldEnabled", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", "LComStSt25sdkSTException;", "setITTimeControl", "computeRawValue", "isEnabled", "ILComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterITTime = { "ST25DVRegisterITTime", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, 4, -1, -1, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterITTime;
}

@end

ComStSt25sdkType5St25dvST25DVRegisterITTime *ComStSt25sdkType5St25dvST25DVRegisterITTime_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand) {
  ComStSt25sdkType5St25dvST25DVRegisterITTime_initialize();
  return new_ComStSt25sdkType5St25dvST25DVRegisterITTime_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25dvST25DVTag_REGISTER_IT_TIME_ADDRESS, @"IT_Time", @"Interrupt pulse duration", JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25dvST25DVRegisterITTime_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvST25DVRegisterITTime *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  id<JavaUtilList> registerFields = new_JavaUtilArrayList_init();
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, @"IT_TIME", @"Pulse duration = 301us - IT_TIME x 37.65us +/- 2us\n000: Typical 301.18us duration\n001: Typical 263.53us duration\n010: Typical 225.88us duration\n011: Typical 188.24us duration\n100: Typical 150.59us duration\n101: Typical 112.94us duration\n110: Typical 75.25us duration\n111: Typical 37.65us duration\n", ComStSt25sdkType5St25dvST25DVRegisterITTime_IT_TIME_BIT_MASK)];
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, @"RFU", @"RFU", ComStSt25sdkType5St25dvST25DVRegisterITTime_RFU_BIT_MASK)];
  [self createFieldHashWithJavaUtilList:registerFields];
}

ComStSt25sdkType5St25dvST25DVRegisterITTime *new_ComStSt25sdkType5St25dvST25DVRegisterITTime_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterITTime, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25dvST25DVRegisterITTime *create_ComStSt25sdkType5St25dvST25DVRegisterITTime_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvST25DVRegisterITTime, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

jint ComStSt25sdkType5St25dvST25DVRegisterITTime_computeRawValueWithComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(ComStSt25sdkType5St25dvST25DVRegisterITTime *self, ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *iTTimeControl) {
  jint computeRaw;
  switch ([iTTimeControl ordinal]) {
    default:
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_000:
    computeRaw = 0;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_001:
    computeRaw = 1;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_010:
    computeRaw = 2;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_011:
    computeRaw = 3;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_100:
    computeRaw = 4;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_101:
    computeRaw = 5;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_110:
    computeRaw = 6;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_111:
    computeRaw = 7;
    break;
  }
  return computeRaw;
}

jboolean ComStSt25sdkType5St25dvST25DVRegisterITTime_isEnabledWithInt_withComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_(ComStSt25sdkType5St25dvST25DVRegisterITTime *self, jint fieldValue, ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *iTTimeControl) {
  jboolean ret;
  switch ([iTTimeControl ordinal]) {
    default:
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_000:
    ret = (fieldValue == 0);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_001:
    ret = (fieldValue == 1);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_010:
    ret = (fieldValue == 2);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_011:
    ret = (fieldValue == 3);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_100:
    ret = (fieldValue == 4);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_101:
    ret = (fieldValue == 5);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_110:
    ret = (fieldValue == 6);
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum_ITIME_111:
    ret = (fieldValue == 7);
    break;
  }
  return ret;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterITTime)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl)

ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_values_[8];

@implementation ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_000 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_000);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_001 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_001);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_010 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_010);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_011 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_011);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_100 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_100);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_101 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_101);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_110 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_110);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)ITIME_111 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_111);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_values();
}

+ (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_valueOfWithNSString_(name);
}

- (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum)toNSEnum {
  return (ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ITIME_000", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "ITIME_001", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "ITIME_010", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "ITIME_011", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "ITIME_100", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "ITIME_101", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "ITIME_110", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "ITIME_111", "LComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_000), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_001), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_010), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_011), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_100), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_101), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_110), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_111), "LComStSt25sdkType5St25dvST25DVRegisterITTime;", "Ljava/lang/Enum<Lcom/st/st25sdk/type5/st25dv/ST25DVRegisterITTime$ST25DVITTimeControl;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl = { "ST25DVITTimeControl", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x4019, 2, 8, 10, -1, -1, 11, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl class]) {
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_000) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 0), 0);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_001) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 1), 1);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_010) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 2), 2);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_011) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 3), 3);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_100) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 4), 4);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_101) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 5), 5);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_110) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 6), 6);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, ITIME_111) = new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_(), 7), 7);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl)
  }
}

@end

void ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *new_ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_values() {
  ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_values_ count:8 type:ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_class_()];
}

ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initialize();
  for (int i = 0; i < 8; i++) {
    ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *e = ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl *ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_initialize();
  if (ordinal >= 8) {
    return nil;
  }
  return ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterITTime_ST25DVITTimeControl)
