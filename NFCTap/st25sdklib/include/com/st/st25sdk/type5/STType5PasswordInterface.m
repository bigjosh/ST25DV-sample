//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/STType5PasswordInterface.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/type5/STType5PasswordInterface.h"

@interface ComStSt25sdkType5STType5PasswordInterface : NSObject

@end

@implementation ComStSt25sdkType5STType5PasswordInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 1, 2, -1, -1, -1 },
    { NULL, "I", 0x401, 4, 5, 2, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "I", 0x401, 6, 5, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 8, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(presentPasswordWithInt:withByteArray:);
  methods[1].selector = @selector(writePasswordWithInt:withByteArray:);
  methods[2].selector = @selector(getPasswordLengthWithInt:);
  methods[3].selector = @selector(getConfigurationPasswordNumber);
  methods[4].selector = @selector(getPasswordNumberWithInt:);
  methods[5].selector = @selector(setPasswordNumberWithInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "presentPassword", "I[B", "LComStSt25sdkSTException;", "writePassword", "getPasswordLength", "I", "getPasswordNumber", "setPasswordNumber", "II" };
  static const J2ObjcClassInfo _ComStSt25sdkType5STType5PasswordInterface = { "STType5PasswordInterface", "com.st.st25sdk.type5", ptrTable, methods, NULL, 7, 0x609, 6, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5STType5PasswordInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkType5STType5PasswordInterface)
