//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dv/ST25DVRegisterRfAiSS.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/STLog.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/TagHelper.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVRegisterRfAiSS.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVTag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ComStSt25sdkType5St25dvST25DVRegisterRfAiSS () {
 @public
  jint mAreaId_;
}

- (jint)computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl:(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)pwdControl;

- (jint)computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)rwProtection;

- (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)getSSPWDControlWithInt:(jint)fieldValue;

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getSSRWProtectionWithInt:(jint)fieldValue;

@end

__attribute__((unused)) static jint ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *pwdControl);

__attribute__((unused)) static jint ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, ComStSt25sdkTagHelper_ReadWriteProtection *rwProtection);

__attribute__((unused)) static ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSPWDControlWithInt_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, jint fieldValue);

__attribute__((unused)) static ComStSt25sdkTagHelper_ReadWriteProtection *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSRWProtectionWithInt_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, jint fieldValue);

__attribute__((unused)) static void ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType5St25dvST25DVRegisterRfAiSS

+ (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                                                 withInt:(jint)index {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(iso15693CustomCommand, index);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)areaId
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, areaId, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)getSSPWDControl {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *pwdControl;
  jint fieldValue = [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:JreStrcat("$I", @"PWD_CTRL_A", mAreaId_)])) getValue];
  pwdControl = ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSPWDControlWithInt_(self, fieldValue);
  return pwdControl;
}

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getSSRWProtection {
  ComStSt25sdkTagHelper_ReadWriteProtection *rwProtection;
  jint fieldValue = [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:JreStrcat("$I", @"RW_PROTECTION_A", mAreaId_)])) getValue];
  rwProtection = ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSRWProtectionWithInt_(self, fieldValue);
  return rwProtection;
}

- (void)setSSPWDControlWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl:(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)pwdControl {
  jint fieldValue = ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_(self, pwdControl);
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:JreStrcat("$I", @"PWD_CTRL_A", mAreaId_)])) setValueWithInt:fieldValue];
}

- (void)setSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)rwProtection {
  jint fieldValue = ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection_(self, rwProtection);
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:JreStrcat("$I", @"RW_PROTECTION_A", mAreaId_)])) setValueWithInt:fieldValue];
}

- (jint)computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl:(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)pwdControl {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_(self, pwdControl);
}

- (jint)computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)rwProtection {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection_(self, rwProtection);
}

- (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)getSSPWDControlWithInt:(jint)fieldValue {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSPWDControlWithInt_(self, fieldValue);
}

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getSSRWProtectionWithInt:(jint)fieldValue {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSRWProtectionWithInt_(self, fieldValue);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 3, -1, -1, -1 },
    { NULL, "I", 0x2, 8, 5, 3, -1, -1, -1 },
    { NULL, "I", 0x2, 9, 7, 3, -1, -1, -1 },
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", 0x2, 10, 11, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x2, 12, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:withInt:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(getSSPWDControl);
  methods[3].selector = @selector(getSSRWProtection);
  methods[4].selector = @selector(setSSPWDControlWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl:);
  methods[5].selector = @selector(setSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[6].selector = @selector(computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl:);
  methods[7].selector = @selector(computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[8].selector = @selector(getSSPWDControlWithInt:);
  methods[9].selector = @selector(getSSRWProtectionWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mAreaId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;I", "LComStSt25sdkCommandIso15693CustomCommand;IILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "LComStSt25sdkSTException;", "setSSPWDControl", "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", "setSSReadWriteProtection", "LComStSt25sdkTagHelper_ReadWriteProtection;", "computeSSPWDControlValue", "computeSSReadWriteProtection", "getSSPWDControl", "I", "getSSRWProtection" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterRfAiSS = { "ST25DVRegisterRfAiSS", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x1, 10, 1, -1, 5, -1, -1, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS;
}

@end

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint index) {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_initialize();
  NSString *registerName = JreStrcat("$I$", @"RFA", index, @"SS");
  NSString *registerContentDescription = JreStrcat("$I$", @"Area ", index, @" Security Status for RF access protection");
  jint registerAddress = ComStSt25sdkType5St25dvST25DVTag_REGISTER_RFA1SS_ADDRESS;
  switch (index) {
    case 1:
    registerAddress = ComStSt25sdkType5St25dvST25DVTag_REGISTER_RFA1SS_ADDRESS;
    break;
    case 2:
    registerAddress = ComStSt25sdkType5St25dvST25DVTag_REGISTER_RFA2SS_ADDRESS;
    break;
    case 3:
    registerAddress = ComStSt25sdkType5St25dvST25DVTag_REGISTER_RFA3SS_ADDRESS;
    break;
    case 4:
    registerAddress = ComStSt25sdkType5St25dvST25DVTag_REGISTER_RFA4SS_ADDRESS;
    break;
    default:
    ComStSt25sdkSTLog_eWithNSString_(@"Wrong register index - Available index [1-4]");
  }
  return new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, index, registerAddress, registerName, registerContentDescription, JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint areaId, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  self->mAreaId_ = areaId;
  NSString *area = NSString_java_valueOfInt_(areaId);
  id<JavaUtilList> registerFields = new_JavaUtilArrayList_init();
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(self, JreStrcat("$$", @"PWD_CTRL_A", area), JreStrcat("$$$", @"Area ", area, @" RF user security session\n00: Security session can't be opened by password\n01: Security session opened by RF_PWD_1\n10: Security session opened by RF_PWD_2\n11: Security session opened by RF_PWD_3"), 0b11)];
  if (self->mAreaId_ == 1) {
    [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(self, JreStrcat("$$", @"RW_PROTECTION_A", area), JreStrcat("$$$", @"Area ", area, @" RF access\n00: Read always allowed / Write always allowed\n01: Read always allowed / Write allowed if RF user security session is open\n10: Read always allowed / Write allowed if RF user security session is open\n11: Read always allowed / Write always forbidden"), 0b1100)];
  }
  else {
    [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(self, JreStrcat("$$", @"RW_PROTECTION_A", area), JreStrcat("$$$", @"Area ", area, @" RF access\n00: Read always allowed / Write always allowed\n01: Read always allowed / Write allowed if RF user security session is open\n10: Read allowed if RF user security session is open / Write allowed if RF user security session is open\n11: Read allowed if RF user security session is open / Write always forbidden"), 0b1100)];
  }
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(self, @"RFU", @"RFU", 0b11110000)];
  [self createFieldHashWithJavaUtilList:registerFields];
}

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint areaId, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, areaId, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *create_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint areaId, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, areaId, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

jint ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSPWDControlValueWithComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *pwdControl) {
  jint fieldValue;
  switch ([pwdControl ordinal]) {
    default:
    case ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_Enum_NO_PWD_SELECTED:
    fieldValue = (jint) 0x00;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_Enum_PROTECTED_BY_PWD1:
    fieldValue = (jint) 0x01;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_Enum_PROTECTED_BY_PWD2:
    fieldValue = (jint) 0x02;
    break;
    case ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_Enum_PROTECTED_BY_PWD3:
    fieldValue = (jint) 0x03;
    break;
  }
  return fieldValue;
}

jint ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_computeSSReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, ComStSt25sdkTagHelper_ReadWriteProtection *rwProtection) {
  jint fieldValue = (jint) 0x00;
  if (self->mAreaId_ == 1) {
    switch ([rwProtection ordinal]) {
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITABLE:
      break;
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITE_PROTECTED_BY_PWD:
      fieldValue = (jbyte) (jint) 0x01;
      break;
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITE_IMPOSSIBLE:
      fieldValue = (jbyte) (jint) 0x03;
      break;
      default:
      @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
    }
  }
  else {
    switch ([rwProtection ordinal]) {
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITABLE:
      break;
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITE_PROTECTED_BY_PWD:
      fieldValue = (jbyte) (jint) 0x01;
      break;
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READ_AND_WRITE_PROTECTED_BY_PWD:
      fieldValue = (jbyte) (jint) 0x02;
      break;
      case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READ_PROTECTED_BY_PWD_AND_WRITE_IMPOSSIBLE:
      fieldValue = (jbyte) (jint) 0x03;
      break;
      default:
      @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
    }
  }
  return fieldValue;
}

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSPWDControlWithInt_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, jint fieldValue) {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *pwdControl;
  switch (fieldValue) {
    default:
    case (jint) 0x00:
    pwdControl = JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, NO_PWD_SELECTED);
    break;
    case (jint) 0x01:
    pwdControl = JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD1);
    break;
    case (jint) 0x02:
    pwdControl = JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD2);
    break;
    case (jint) 0x03:
    pwdControl = JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD3);
    break;
  }
  return pwdControl;
}

ComStSt25sdkTagHelper_ReadWriteProtection *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_getSSRWProtectionWithInt_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS *self, jint fieldValue) {
  ComStSt25sdkTagHelper_ReadWriteProtection *rwProtection;
  if (self->mAreaId_ == 1) {
    switch (fieldValue) {
      default:
      case (jint) 0x00:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITABLE);
      break;
      case (jint) 0x01:
      case (jint) 0x02:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITE_PROTECTED_BY_PWD);
      break;
      case (jint) 0x03:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITE_IMPOSSIBLE);
      break;
    }
  }
  else {
    switch (fieldValue) {
      default:
      case (jint) 0x00:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITABLE);
      break;
      case (jint) 0x01:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITE_PROTECTED_BY_PWD);
      break;
      case (jint) 0x02:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READ_AND_WRITE_PROTECTED_BY_PWD);
      break;
      case (jint) 0x03:
      rwProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READ_PROTECTED_BY_PWD_AND_WRITE_IMPOSSIBLE);
      break;
    }
  }
  return rwProtection;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl)

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_values_[4];

@implementation ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl

+ (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)NO_PWD_SELECTED {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, NO_PWD_SELECTED);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)PROTECTED_BY_PWD1 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD1);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)PROTECTED_BY_PWD2 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD2);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)PROTECTED_BY_PWD3 {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD3);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_values();
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_valueOfWithNSString_(name);
}

- (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_Enum)toNSEnum {
  return (ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_PWD_SELECTED", "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "PROTECTED_BY_PWD1", "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "PROTECTED_BY_PWD2", "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "PROTECTED_BY_PWD3", "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, NO_PWD_SELECTED), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD1), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD2), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD3), "LComStSt25sdkType5St25dvST25DVRegisterRfAiSS;", "Ljava/lang/Enum<Lcom/st/st25sdk/type5/st25dv/ST25DVRegisterRfAiSS$ST25DVSecurityStatusPWDControl;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl = { "ST25DVSecurityStatusPWDControl", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x4019, 2, 4, 6, -1, -1, 7, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl class]) {
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, NO_PWD_SELECTED) = new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_class_(), 0), 0);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD1) = new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_class_(), 1), 1);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD2) = new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_class_(), 2), 2);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, PROTECTED_BY_PWD3) = new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_class_(), 3), 3);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl)
  }
}

@end

void ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *new_ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_values() {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_values_ count:4 type:ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_class_()];
}

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initialize();
  for (int i = 0; i < 4; i++) {
    ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *e = ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl *ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterRfAiSS_ST25DVSecurityStatusPWDControl)
