//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25tvc/ST25TVCRegisterArea2Protection.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/TagHelper.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25tvc/ST25TVCRegisterArea2Protection.h"
#include "com/st/st25sdk/type5/st25tvc/ST25TVCTag.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection ()

- (jint)getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)readWriteProtection;

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getAreaSecurityStatusWithInt:(jint)value;

@end

__attribute__((unused)) static jint ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *self, ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection);

__attribute__((unused)) static ComStSt25sdkTagHelper_ReadWriteProtection *ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getAreaSecurityStatusWithInt_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *self, jint value);

@interface ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 : JavaUtilArrayList

- (instancetype)initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection:(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *)outer$;

- (ComStSt25sdkSTRegister_STRegisterField *)getWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)removeWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)setWithInt:(jint)arg0
                                                withId:(ComStSt25sdkSTRegister_STRegisterField *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1)

__attribute__((unused)) static void ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 *self, ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *outer$);

__attribute__((unused)) static ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 *new_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 *create_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *outer$);

@implementation ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection

+ (ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand {
  return ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(iso15693CustomCommand);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerFeatureId
                                                         withInt:(jint)registerParameterId
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerFeatureId, registerParameterId, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getArea2ReadWriteProtection {
  ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection;
  jint fieldValue = [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"RW_PROTECTION_A2"])) getValue];
  readWriteProtection = ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getAreaSecurityStatusWithInt_(self, fieldValue);
  return readWriteProtection;
}

- (void)setArea2ReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)area2ReadWriteProtection {
  jint fieldValue = ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(self, area2ReadWriteProtection);
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"RW_PROTECTION_A2"])) setValueWithInt:fieldValue];
}

- (jint)getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection:(ComStSt25sdkTagHelper_ReadWriteProtection *)readWriteProtection {
  return ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(self, readWriteProtection);
}

- (ComStSt25sdkTagHelper_ReadWriteProtection *)getAreaSecurityStatusWithInt:(jint)value {
  return ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getAreaSecurityStatusWithInt_(self, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "I", 0x2, 6, 5, 3, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x2, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(getArea2ReadWriteProtection);
  methods[3].selector = @selector(setArea2ReadWriteProtectionWithComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[4].selector = @selector(getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[5].selector = @selector(getAreaSecurityStatusWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;", "LComStSt25sdkCommandIso15693CustomCommand;IILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "LComStSt25sdkSTException;", "setArea2ReadWriteProtection", "LComStSt25sdkTagHelper_ReadWriteProtection;", "getRawValue", "getAreaSecurityStatus", "I" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection = { "ST25TVCRegisterArea2Protection", "com.st.st25sdk.type5.st25tvc", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection;
}

@end

ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand) {
  ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_initialize();
  NSString *registerName = @"Area2Protection";
  NSString *registerContentDescription = @"Bits [7:2] : RFU\nBits [1:0] : Area 2 access rights\n";
  return new_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25tvcST25TVCTag_ST25TVC_FID_REGISTER_RW_PROTECTION_A2, ComStSt25sdkType5St25tvcST25TVCTag_ST25TVC_PID_REGISTER_RW_PROTECTION_A2_CONFIGURATION, registerName, registerContentDescription, JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerFeatureId, jint registerParameterId, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerFeatureId, registerParameterId, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  [self createFieldHashWithJavaUtilList:new_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(self)];
}

ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *new_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerFeatureId, jint registerParameterId, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerFeatureId, registerParameterId, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *create_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerFeatureId, jint registerParameterId, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerFeatureId, registerParameterId, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

jint ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getRawValueWithComStSt25sdkTagHelper_ReadWriteProtection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *self, ComStSt25sdkTagHelper_ReadWriteProtection *readWriteProtection) {
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

ComStSt25sdkTagHelper_ReadWriteProtection *ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_getAreaSecurityStatusWithInt_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *self, jint value) {
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

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection)

@implementation ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1

- (instancetype)initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection:(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *)outer$ {
  ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(self, outer$);
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
  methods[0].selector = @selector(initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection;", "initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:", "Ljava/util/ArrayList<Lcom/st/st25sdk/STRegister$STRegisterField;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 = { "", "com.st.st25sdk.type5.st25tvc", ptrTable, methods, NULL, 7, 0x8010, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1;
}

@end

void ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 *self, ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *outer$) {
  JavaUtilArrayList_init(self);
  {
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"RW_PROTECTION_A2", @"Area 2 access rights\n", 0b00000011)];
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"RFU", @"Reserved for Future Use", 0b11111100)];
  }
}

ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 *new_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *outer$) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1, initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_, outer$)
}

ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1 *create_ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection *outer$) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_1, initWithComStSt25sdkType5St25tvcST25TVCRegisterArea2Protection_, outer$)
}
