//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/SignatureInterface.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/SignatureInterface.h"

@interface ComStSt25sdkSignatureInterface : NSObject

@end

@implementation ComStSt25sdkSignatureInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "B", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getKeyIdNDA);
  methods[1].selector = @selector(isSignatureOkNDA);
  methods[2].selector = @selector(readSignatureNDA);
  methods[3].selector = @selector(getDecodedCertificateNDA);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkSTException;" };
  static const J2ObjcClassInfo _ComStSt25sdkSignatureInterface = { "SignatureInterface", "com.st.st25sdk", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkSignatureInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkSignatureInterface)
