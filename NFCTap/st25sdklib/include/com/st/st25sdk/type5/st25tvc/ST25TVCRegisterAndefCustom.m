//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25tvc/ST25TVCRegisterAndefCustom.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/STRegister.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/type5/STType5Register.h"
#include "com/st/st25sdk/type5/st25tvc/ST25TVCRegisterAndefCustom.h"
#include "com/st/st25sdk/type5/st25tvc/ST25TVCTag.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 : JavaUtilArrayList

- (instancetype)initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom:(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *)outer$;

- (ComStSt25sdkSTRegister_STRegisterField *)getWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)removeWithInt:(jint)arg0;

- (ComStSt25sdkSTRegister_STRegisterField *)setWithInt:(jint)arg0
                                                withId:(ComStSt25sdkSTRegister_STRegisterField *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1)

__attribute__((unused)) static void ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 *self, ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *outer$);

__attribute__((unused)) static ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 *new_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 *create_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *outer$);

@implementation ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom

+ (ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                                                        withInt:(jint)registerParameterAddress {
  return ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(iso15693CustomCommand, registerParameterAddress);
}

- (instancetype)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                         withInt:(jint)registerAddress
                                                         withInt:(jint)registerParameterAddress
                                                    withNSString:(NSString *)registerName
                                                    withNSString:(NSString *)registerContentDescription
                 withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                     withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize {
  ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  return self;
}

- (void)setAndefCustMsgWithInt:(jint)andefCustMsg {
  [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"CUSTOM"])) setValueWithInt:andefCustMsg];
}

- (jint)getAndefCustMsg {
  return [((ComStSt25sdkSTRegister_STRegisterField *) nil_chk([self getRegisterFieldWithNSString:@"CUSTOM"])) getValue];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithComStSt25sdkCommandIso15693CustomCommand:withInt:);
  methods[1].selector = @selector(initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:);
  methods[2].selector = @selector(setAndefCustMsgWithInt:);
  methods[3].selector = @selector(getAndefCustMsg);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "newInstance", "LComStSt25sdkCommandIso15693CustomCommand;I", "LComStSt25sdkCommandIso15693CustomCommand;IILNSString;LNSString;LComStSt25sdkSTRegister_RegisterAccessRights;LComStSt25sdkSTRegister_RegisterDataSize;", "setAndefCustMsg", "I", "LComStSt25sdkSTException;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom = { "ST25TVCRegisterAndefCustom", "com.st.st25sdk.type5.st25tvc", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom;
}

@end

ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerParameterAddress) {
  ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_initialize();
  NSString *registerName = @"AndefCustomMsg";
  NSString *registerContentDescription = @"Bits [31:0] : CUSTOM";
  if (registerParameterAddress == ComStSt25sdkType5St25tvcST25TVCTag_ST25TVC_PID_REGISTER_ANDEF_CUSTOM_MSB) {
    (void) JreStrAppendStrong(&registerName, "$", @"Msb");
    (void) JreStrAppendStrong(&registerContentDescription, "$", @"_MSB\n");
  }
  else {
    (void) JreStrAppendStrong(&registerName, "$", @"Lsb");
    (void) JreStrAppendStrong(&registerContentDescription, "$", @"_LSB\n");
  }
  return new_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(iso15693CustomCommand, ComStSt25sdkType5St25tvcST25TVCTag_ST25TVC_FID_REGISTER_ANDEF, registerParameterAddress, registerName, registerContentDescription, JreLoadEnum(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE), JreLoadEnum(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_32_BITS));
}

void ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, jint registerParameterAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  ComStSt25sdkType5STType5Register_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(self, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize);
  [self createFieldHashWithJavaUtilList:new_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(self)];
}

ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *new_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, jint registerParameterAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *create_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, jint registerParameterAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom, initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_, iso15693CustomCommand, registerAddress, registerParameterAddress, registerName, registerContentDescription, registerAccessRights, registerDataSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom)

@implementation ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1

- (instancetype)initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom:(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *)outer$ {
  ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(self, outer$);
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
  methods[0].selector = @selector(initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom;", "initWithComStSt25sdkCommandIso15693CustomCommand:withInt:withInt:withNSString:withNSString:withComStSt25sdkSTRegister_RegisterAccessRights:withComStSt25sdkSTRegister_RegisterDataSize:", "Ljava/util/ArrayList<Lcom/st/st25sdk/STRegister$STRegisterField;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 = { "", "com.st.st25sdk.type5.st25tvc", ptrTable, methods, NULL, 7, 0x8010, 1, 0, 0, -1, 1, 2, -1 };
  return &_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1;
}

@end

void ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 *self, ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *outer$) {
  JavaUtilArrayList_init(self);
  {
    [self addWithId:new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(outer$, @"CUSTOM", @"CUSTOM\n", (jint) 0xFFFFFFFF)];
  }
}

ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 *new_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *outer$) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1, initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_, outer$)
}

ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1 *create_ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1_initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom *outer$) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_1, initWithComStSt25sdkType5St25tvcST25TVCRegisterAndefCustom_, outer$)
}
