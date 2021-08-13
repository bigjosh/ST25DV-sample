//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dv/ST25DVRegisterMailboxWatchdog.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVRegisterMailboxWatchdog.h"
#include "com/st/st25sdk/type5/st25dv/ST25DVTag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

__attribute__((unused)) static void ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *new_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog

+ (jbyte)MB_WDG_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_MB_WDG_BIT_MASK;
}

+ (jbyte)RFU_BIT_MASK {
  return ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_RFU_BIT_MASK;
}

+ (ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand {
  return ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(iso15693CustomCommand);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (jbyte)getMailboxWatchdog {
  ComStSt25sdkSTRegister_STRegisterField *registerField = [self getRegisterFieldWithNSString:[((ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *) nil_chk(JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, MB_WDG))) description]];
  return (jbyte) [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk(registerField)) getValue];
}

- (void)setMailboxWatchdogWithByte:(jbyte)value {
  jint registerValue = value & ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_MB_WDG_BIT_MASK;
  if (registerValue != value) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  else {
    [self setRegisterValueWithInt:registerValue];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(getMailboxWatchdog);
  methods[3].selector = @selector(setMailboxWatchdogWithByte:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MB_WDG_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_MB_WDG_BIT_MASK, 0x19, -1, -1, -1, -1 },
    { "RFU_BIT_MASK", "B", .constantValue.asChar = ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_RFU_BIT_MASK, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;", "LComStSt25sdkCommandIso15693CustomCommand;ILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "LComStSt25sdkSTException;", "setMailboxWatchdog", "B", "LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog = { "ST25DVRegisterMailboxWatchdog", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, 6, -1, -1, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog;
}

@end

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog *ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand) {
  ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_initialize();
  return new_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25dvST25DVTag_REGISTER_MB_WDG_ADDRESS, @"MB_WDG", @"Mail box Watch dog duration = Maximum time before message is automatically released", JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  id<JavaUtilList> registerFields = new_JavaUtilArrayList_init();
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, [((ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *) nil_chk(JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, MB_WDG))) description], @"Watch dog duration = (2 ** (MB_WDG -1)) x 30 ms +/- 6 %\nIf MB_WDG = 0, then watchdog duration is infinite\n", ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_MB_WDG_BIT_MASK)];
  [registerFields addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(self, [((ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *) nil_chk(JreLoadEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, RFU))) description], @"RFU\n", ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_RFU_BIT_MASK)];
  [self createFieldHashWithJavaUtilList:registerFields];
}

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog *new_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog *create_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl)

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_values_[2];

@implementation ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl

+ (ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *)MB_WDG {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, MB_WDG);
}

+ (ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *)RFU {
  return JreEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, RFU);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_values();
}

+ (ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_valueOfWithNSString_(name);
}

- (ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_Enum)toNSEnum {
  return (ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MB_WDG", "LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "RFU", "LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, MB_WDG), &JreEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, RFU), "LComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog;", "Ljava/lang/Enum<Lcom/st/st25sdk/type5/st25dv/ST25DVRegisterMailboxWatchdog$ST25DVRegisterMailboxWatchdogControl;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl = { "ST25DVRegisterMailboxWatchdogControl", "com.st.st25sdk.type5.st25dv", ptrTable, methods, fields, 7, 0x4019, 2, 2, 4, -1, -1, 5, -1 };
  return &_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl class]) {
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, MB_WDG) = new_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_class_(), 0), 0);
    JreEnum(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, RFU) = new_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_class_(), 1), 1);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl)
  }
}

@end

void ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initWithNSString_withInt_(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *new_ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_values() {
  ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_values_ count:2 type:ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_class_()];
}

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initialize();
  for (int i = 0; i < 2; i++) {
    ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *e = ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl *ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25dvST25DVRegisterMailboxWatchdog_ST25DVRegisterMailboxWatchdogControl)
