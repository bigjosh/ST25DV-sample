//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dvpwm/ST25DV02KWRegisterPwmCtrlSecurityAttribute.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/TagHelper.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25dvpwm/ST25DV02KWRegisterPwmCtrlSecurityAttribute.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute ()

- (jint)getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)readWriteProtection;

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getPwmCtrlSecurityStatusWithInt:(jint)value;

@end

__attribute__((unused)) static jint ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *self, ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection);

__attribute__((unused)) static ComStSt25sdkTagHelper_ReadWriteProtection *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getPwmCtrlSecurityStatusWithInt_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *self, jint value);

@interface ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 : JavaUtilArrayList

- (instancetype)initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute:(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *)outer$;

- (ComStSt25sdkSTRegister_STRegisterField *)getWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)removeWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)setWithInt:(jint)arg0
                                                withId:(ComStSt25sdkSTRegister_STRegisterField *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1)

__attribute__((unused)) static void ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 *self, ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *outer$);

__attribute__((unused)) static ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 *new_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 *create_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *outer$);

@implementation ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                                                                          withInt:(jint)registerAddress {
  return ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(iso15693CustomCommand, registerAddress);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (void)setPwmCtrlAccessRightsWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)readWriteProtection {
  jint fieldValue = ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(self, readWriteProtection);
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"PwmCtrlSecurityAttribute"])) setValueWithInt:fieldValue];
}

- (jint)getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)readWriteProtection {
  return ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(self, readWriteProtection);
}

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getPwmCtrlAccessRights {
  ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection;
  jint fieldValue = [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"PwmCtrlSecurityAttribute"])) getValue];
  readWriteProtection = ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getPwmCtrlSecurityStatusWithInt_(self, fieldValue);
  return readWriteProtection;
}

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getPwmCtrlSecurityStatusWithInt:(jint)value {
  return ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getPwmCtrlSecurityStatusWithInt_(self, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "I", 0x2, 6, 4, 5, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x1, -1, -1, 5, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x2, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:withInt:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(setPwmCtrlAccessRightsWithComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[3].selector = @selector(getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[4].selector = @selector(getPwmCtrlAccessRights);
  methods[5].selector = @selector(getPwmCtrlSecurityStatusWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;I", "LComStSt25sdkCommandIso15693CustomCommand;ILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "setPwmCtrlAccessRights", "LComStSt25sdkTagHelper_ReadWriteProtection;", "LComStSt25sdkSTException;", "getRawValue", "getPwmCtrlSecurityStatus", "I" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute = { "ST25DV02KWRegisterPwmCtrlSecurityAttribute", "com.st.st25sdk.type5.st25dvpwm", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute;
}

@end

ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress) {
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_initialize();
  NSString *registerName = @"PwmCtrlSecurityAttribute";
  NSString *registerContentDescription = @"Bits [1:0] : PWM Control access rights\nBits [7:2] : RFU";
  return new_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, registerAddress, registerName, registerContentDescription, JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  [self createFieldHashWithJavaUtilList:new_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(self)];
}

ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *new_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *create_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

jint ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *self, ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection) {
  jint value;
  switch ([readWriteProtection ordinal]) {
    case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITABLE:
    value = (jint) 0x00;
    break;
    case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READABLE_AND_WRITE_PROTECTED_BY_PWD:
    value = (jint) 0x01;
    break;
    case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READ_AND_WRITE_PROTECTED_BY_PWD:
    value = (jint) 0x02;
    break;
    case ComStSt25sdkTagHelper_ReadWriteProtection_Enum_READ_PROTECTED_BY_PWD_AND_WRITE_IMPOSSIBLE:
    value = (jint) 0x03;
    break;
    default:
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  return value;
}

ComStSt25sdkTagHelper_ReadWriteProtection *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_getPwmCtrlSecurityStatusWithInt_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *self, jint value) {
  ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITABLE);
  switch (value) {
    case (jint) 0x0:
    readWriteProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITABLE);
    break;
    case (jint) 0x1:
    readWriteProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READABLE_AND_WRITE_PROTECTED_BY_PWD);
    break;
    case (jint) 0x2:
    readWriteProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READ_AND_WRITE_PROTECTED_BY_PWD);
    break;
    case (jint) 0x3:
    readWriteProtection = JreLoadEnum(ComStSt25sdkTagHelper_ReadWriteProtection, READ_PROTECTED_BY_PWD_AND_WRITE_IMPOSSIBLE);
    break;
  }
  return readWriteProtection;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute)

@implementation ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1

- (instancetype)initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute:(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *)outer$ {
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(self, outer$);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute;", "initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:", "Ljava/util/ArrayList<Lcom/st/st25sdk/STRegister$STRegisterField;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 = { "", "com.st.st25sdk.type5.st25dvpwm", ptrTable, methods, NULL, 7, 0x8010, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1;
}

@end

void ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 *self, ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *outer$) {
  JavaUtilArrayList_init(self);
  {
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"PwmCtrlSecurityAttribute", @"Pwm Control access rights:\n00 : Read and Write always allowed\n01 : Read allowed, Write is password-protected\n10 : Read and Write are password-protected\n11 : Read password-protected, Write forbidden\n", 0b00000011)];
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"RFU", @"RFU", 0b11111100)];
  }
}

ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 *new_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *outer$) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1, initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_, outer$)
}

ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1 *create_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1_initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute *outer$) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_1, initWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmCtrlSecurityAttribute_, outer$)
}
