//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25tv/ST25TVRegisterLockConfiguration.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25tv/ST25TVRegisterLockConfiguration.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 : JavaUtilArrayList

- (instancetype)initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration:(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *)outer$;

- (ComStSt25sdkSTRegister_STRegisterField *)getWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)removeWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)setWithInt:(jint)arg0
                                                withId:(ComStSt25sdkSTRegister_STRegisterField *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1)

__attribute__((unused)) static void ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 *self, ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *outer$);

__attribute__((unused)) static ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 *new_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 *create_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *outer$);

@implementation ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration

+ (ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                                                            withInt:(jint)registerAddress {
  return ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(iso15693CustomCommand, registerAddress);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (jboolean)isConfigurationLocked {
  jboolean isConfigurationLocked;
  jint fieldValue = [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"LOCK_CONFIGURATION"])) getValue];
  isConfigurationLocked = (fieldValue == 1);
  return isConfigurationLocked;
}

- (void)lockConfiguration {
  jint fieldValue = 1;
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"LOCK_CONFIGURATION"])) setValueWithInt:fieldValue];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25tvST25TVRegisterLockConfiguration;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:withInt:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(isConfigurationLocked);
  methods[3].selector = @selector(lockConfiguration);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;I", "LComStSt25sdkCommandIso15693CustomCommand;ILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "LComStSt25sdkSTException;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration = { "ST25TVRegisterLockConfiguration", "com.st.st25sdk.type5.st25tv", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration;
}

@end

ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress) {
  ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_initialize();
  NSString *registerName = @"LockConfiguration";
  NSString *registerContentDescription = @"Bit [0]    : Lock configuration\nBits [7:1] : RFU";
  return new_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, registerAddress, registerName, registerContentDescription, JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  [self createFieldHashWithJavaUtilList:new_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(self)];
}

ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *new_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *create_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration)

@implementation ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1

- (instancetype)initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration:(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *)outer$ {
  ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(self, outer$);
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
  methods[0].selector = @selector(initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkType5St25tvST25TVRegisterLockConfiguration;", "initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:", "Ljava/util/ArrayList<Lcom/st/st25sdk/STRegister$STRegisterField;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 = { "", "com.st.st25sdk.type5.st25tv", ptrTable, methods, NULL, 7, 0x8010, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1;
}

@end

void ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 *self, ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *outer$) {
  JavaUtilArrayList_init(self);
  {
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"LOCK_CONFIGURATION", @"Lock configuration register:\n 0 : Configuration registers can be written (after presenting the Configuration password)\n 1 : Configuration registers are permanently locked for write\n", 0b00000001)];
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"RFU", @"RFU", 0b11111110)];
  }
}

ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 *new_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *outer$) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1, initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_, outer$)
}

ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1 *create_ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1_initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration *outer$) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_1, initWithComStSt25sdkType5St25tvST25TVRegisterLockConfiguration_, outer$)
}