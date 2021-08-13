//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dv/ST25DVCRegisterMb.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVCRegisterMb.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVCTag.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@implementation ComStSt25sdkType5St25dvST25DVCRegisterMb

+ (jbyte)MB_MODE_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVCRegisterMb_MB_MODE_BIT_MASK;
}

+ (jbyte)MB_WATCHDOG_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVCRegisterMb_MB_WATCHDOG_BIT_MASK;
}

+ (jbyte)RFU_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVCRegisterMb_RFU_BIT_MASK;
}

+ (ComStSt25sdkType5St25dvST25DVCRegisterMb *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand {
  return ComStSt25sdkType5St25dvST25DVCRegisterMb_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(iso15693CustomCommand);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25dvST25DVCRegisterMb_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (jboolean)isMBModeEnabled {
  jboolean status;
  ComStSt25sdkSTRegister_STRegisterField *mbField = [self getRegisterFieldWithNSString:@"MB_MODE"];
  status = ([((ComStSt25sdkSTRegister_STRegisterField *) nil_chk(mbField)) getValue] != 0);
  return status;
}

- (void)setMBModeWithBoolean:(jboolean)enable {
  ComStSt25sdkSTRegister_STRegisterField *registerField = [self getRegisterFieldWithNSString:@"MB_MODE"];
  jint val = enable ? 1 : 0;
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk(registerField)) setValueWithInt:val];
}

- (jbyte)getMBWatchdog {
  ComStSt25sdkSTRegister_STRegisterField *registerField = [self getRegisterFieldWithNSString:@"MB_WATCHDOG"];
  return (jbyte) [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk(registerField)) getValue];
}

- (void)setMBWatchdogWithByte:(jbyte)value {
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"MB_WATCHDOG"])) setValueWithInt:value];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25dvST25DVCRegisterMb;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(isMBModeEnabled);
  methods[3].selector = @selector(setMBModeWithBoolean:);
  methods[4].selector = @selector(getMBWatchdog);
  methods[5].selector = @selector(setMBWatchdogWithByte:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MB_MODE_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVCRegisterMb_MB_MODE_BIT_MASK, 0x19, -1, -1, -1, -1 },
    { "MB_WATCHDOG_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVCRegisterMb_MB_WATCHDOG_BIT_MASK, 0x19, -1, -1, -1, -1 },
    { "RFU_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVCRegisterMb_RFU_BIT_MASK, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;", "LComStSt25sdkCommandIso15693CustomCommand;ILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "LComStSt25sdkSTException;", "setMBMode", "Z", "setMBWatchdog", "B" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVCRegisterMb = { "ST25DVCRegisterMb", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x1, 6, 3, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5St25dvST25DVCRegisterMb;
}

@end

ComStSt25sdkType5St25dvST25DVCRegisterMb *ComStSt25sdkType5St25dvST25DVCRegisterMb_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand) {
  ComStSt25sdkType5St25dvST25DVCRegisterMb_initialize();
  return new_ComStSt25sdkType5St25dvST25DVCRegisterMb_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25dvST25DVCTag_REGISTER_MB_ADDRESS, @"MB", @"Fast Transfer Mode state after power on", JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25dvST25DVCRegisterMb_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvST25DVCRegisterMb *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  id<JavaUtilList> registerFields = new_JavaUtilArrayList_init();
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, @"MB_MODE", @"0: Enabling Fast Transfer Mode is forbidden\n1: Enabling Fast Transfer Mode is authorized. Fast Transfer Mode activation can be done through the Dynamic Register 'MB_CTRL_Dyn'\n", ComStSt25sdkType5St25dvST25DVCRegisterMb_MB_MODE_BIT_MASK)];
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, @"MB_WATCHDOG", @"Watch dog duration = (2 ** (MB_WDG -1)) x 30 ms +/- 6 %\nIf MB_WDG = 0, then watchdog duration is infinite\n", ComStSt25sdkType5St25dvST25DVCRegisterMb_MB_WATCHDOG_BIT_MASK)];
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, @"RFU", @"RFU\n", ComStSt25sdkType5St25dvST25DVCRegisterMb_RFU_BIT_MASK)];
  [self createFieldHashWithJavaUtilList:registerFields];
}

ComStSt25sdkType5St25dvST25DVCRegisterMb *new_ComStSt25sdkType5St25dvST25DVCRegisterMb_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVCRegisterMb, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25dvST25DVCRegisterMb *create_ComStSt25sdkType5St25dvST25DVCRegisterMb_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvST25DVCRegisterMb, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVCRegisterMb)