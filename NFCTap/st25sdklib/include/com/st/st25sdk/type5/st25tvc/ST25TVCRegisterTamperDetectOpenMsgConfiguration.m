//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25tvc/ST25TVCRegisterTamperDetectOpenMsgConfiguration.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25tvc/ST25TVCRegisterTamperDetectOpenMsgConfiguration.h"
#include "com/st/st25sdk/type5/st25tvc/ST25TVCTag.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 : JavaUtilArrayList

- (instancetype)initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration:(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *)outer$;

- (ComStSt25sdkSTRegister_STRegisterField *)getWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)removeWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)setWithInt:(jint)arg0
                                                withId:(ComStSt25sdkSTRegister_STRegisterField *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1)

__attribute__((unused)) static void ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 *self, ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *outer$);

__attribute__((unused)) static ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 *new_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 *create_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *outer$);

@implementation ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration

+ (ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand {
  return ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(iso15693CustomCommand);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                         withInt:(jint)registerParameterAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (jbyte)getTdOpenMsg {
  return (jbyte) [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"TD_OPEN_MSG"])) getValue];
}

- (void)setTdOpenMsgWithByte:(jbyte)tdOpenMsg {
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"TD_OPEN_MSG"])) setValueWithInt:tdOpenMsg];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(getTdOpenMsg);
  methods[3].selector = @selector(setTdOpenMsgWithByte:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;", "LComStSt25sdkCommandIso15693CustomCommand;IILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "LComStSt25sdkSTException;", "setTdOpenMsg", "B" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration = { "ST25TVCRegisterTamperDetectOpenMsgConfiguration", "com.st.st25sdk.type5.st25tvc", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration;
}

@end

ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand) {
  ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_initialize();
  NSString *registerName = @"TamperDetectOpenMsg";
  NSString *registerContentDescription = @"Bits [7:0] : TD_OPEN_MSG\n";
  return new_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25tvcST25TVCTag_ST25TVC_FID_REGISTER_TAMPER_DETECT, ComStSt25sdkType5St25tvcST25TVCTag_ST25TVC_PID_REGISTER_TAMPER_DETECT_TD_OPEN_MSG, registerName, registerContentDescription, JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS));
}

void ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, jint registerParameterAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  [self createFieldHashWithJavaUtilList:new_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(self)];
}

ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *new_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, jint registerParameterAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *create_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, jint registerParameterAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration)

@implementation ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1

- (instancetype)initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration:(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *)outer$ {
  ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(self, outer$);
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
  methods[0].selector = @selector(initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration;", "initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:", "Ljava/util/ArrayList<Lcom/st/st25sdk/STRegister$STRegisterField;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 = { "", "com.st.st25sdk.type5.st25tvc", ptrTable, methods, NULL, 7, 0x8010, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1;
}

@end

void ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 *self, ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *outer$) {
  JavaUtilArrayList_init(self);
  {
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"TD_OPEN_MSG", @"TD_OPEN_MSG\n", (jint) 0xFF)];
  }
}

ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 *new_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *outer$) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1, initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_, outer$)
}

ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1 *create_ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration *outer$) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_1, initWithComStSt25sdkType5St25tvcST25TVCRegisterTamperDetectOpenMsgConfiguration_, outer$)
}
