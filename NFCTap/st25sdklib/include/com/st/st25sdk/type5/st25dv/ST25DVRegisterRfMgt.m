//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dv/ST25DVRegisterRfMgt.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVRegisterRfMgt.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVTag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

__attribute__((unused)) static void ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType5St25dvST25DVRegisterRfMgt

+ (jbyte)RF_DISABLE_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RF_DISABLE_BIT_MASK;
}

+ (jbyte)RF_SLEEP_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RF_SLEEP_BIT_MASK;
}

+ (jbyte)RFU_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RFU_BIT_MASK;
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfMgt *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand {
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(iso15693CustomCommand);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25dvST25DVRegisterRfMgt_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (jboolean)isRFMngtFieldEnabledWithComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl:(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *)fieldVal {
  jboolean status;
  ComStSt25sdkSTRegister_STRegisterField *rfMngtField = [self getRegisterFieldWithNSString:[((ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *) nil_chk(fieldVal)) description]];
  status = ([((ComStSt25sdkSTRegister_STRegisterField *) nil_chk(rfMngtField)) getValue] != 0);
  return status;
}

- (void)setRFMngtWithComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl:(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *)fieldVal
                                                                                withBoolean:(jboolean)enable {
  ComStSt25sdkSTRegister_STRegisterField *registerField = [self getRegisterFieldWithNSString:[((ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *) nil_chk(fieldVal)) description]];
  jint val = enable ? 1 : 0;
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk(registerField)) setValueWithInt:val];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterRfMgt;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(isRFMngtFieldEnabledWithComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl:);
  methods[3].selector = @selector(setRFMngtWithComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "RF_DISABLE_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RF_DISABLE_BIT_MASK, 0x19, -1, -1, -1, -1 },
    { "RF_SLEEP_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RF_SLEEP_BIT_MASK, 0x19, -1, -1, -1, -1 },
    { "RFU_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RFU_BIT_MASK, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;", "LComStSt25sdkCommandIso15693CustomCommand;ILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "isRFMngtFieldEnabled", "LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;", "LComStSt25sdkSTException;", "setRFMngt", "LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;Z" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterRfMgt = { "ST25DVRegisterRfMgt", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x1, 4, 3, -1, 4, -1, -1, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterRfMgt;
}

@end

ComStSt25sdkType5St25dvST25DVRegisterRfMgt *ComStSt25sdkType5St25dvST25DVRegisterRfMgt_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand) {
  ComStSt25sdkType5St25dvST25DVRegisterRfMgt_initialize();
  return new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25dvST25DVTag_REGISTER_RF_MNGT_ADDRESS, @"RF_MNGT", @"RF interface state after power on", JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25dvST25DVRegisterRfMgt_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvST25DVRegisterRfMgt *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  id<JavaUtilList> registerFields = new_JavaUtilArrayList_init();
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, [((ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *) nil_chk(JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_DISABLE))) description], @"0: RF commands executed\n1: RF commands no executed (error 0Fh returned)\n", ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RF_DISABLE_BIT_MASK)];
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, [((ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *) nil_chk(JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_SLEEP))) description], @"0: RF communication enabled\n1: RF communication disabled (ST25DV remains silent)\n", ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RF_SLEEP_BIT_MASK)];
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, [((ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *) nil_chk(JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RFU))) description], @"RFU\n", ComStSt25sdkType5St25dvST25DVRegisterRfMgt_RFU_BIT_MASK)];
  [self createFieldHashWithJavaUtilList:registerFields];
}

ComStSt25sdkType5St25dvST25DVRegisterRfMgt *new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterRfMgt, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25dvST25DVRegisterRfMgt *create_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvST25DVRegisterRfMgt, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterRfMgt)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl)

ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_values_[3];

@implementation ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl

+ (ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *)RF_DISABLE {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_DISABLE);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *)RF_SLEEP {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_SLEEP);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *)RFU {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RFU);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_values();
}

+ (ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_valueOfWithNSString_(name);
}

- (ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_Enum)toNSEnum {
  return (ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "RF_DISABLE", "LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "RF_SLEEP", "LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "RFU", "LComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_DISABLE), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_SLEEP), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RFU), "LComStSt25sdkType5St25dvST25DVRegisterRfMgt;", "Ljava/lang/Enum<Lcom/st/st25sdk/type5/st25dv/ST25DVRegisterRfMgt$ST25DVRegisterRFMngtControl;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl = { "ST25DVRegisterRFMngtControl", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x4019, 2, 3, 5, -1, -1, 6, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl class]) {
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_DISABLE) = new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_class_(), 0), 0);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RF_SLEEP) = new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_class_(), 1), 1);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, RFU) = new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_class_(), 2), 2);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl)
  }
}

@end

void ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *new_ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_values() {
  ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_values_ count:3 type:ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_class_()];
}

ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initialize();
  for (int i = 0; i < 3; i++) {
    ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *e = ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl *ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterRfMgt_ST25DVRegisterRFMngtControl)