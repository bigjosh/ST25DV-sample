//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/CCFileInterface.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/CCFileInterface.h"

@interface ComStSt25sdkCCFileInterface : NSObject

@end

@implementation ComStSt25sdkCCFileInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 1, 2, 0, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getCCFileLength);
  methods[1].selector = @selector(readCCFile);
  methods[2].selector = @selector(writeCCFile);
  methods[3].selector = @selector(writeCCFileWithByteArray:);
  methods[4].selector = @selector(initEmptyCCFile);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkSTException;", "writeCCFile", "[B" };
  static const J2ObjcClassInfo _ComStSt25sdkCCFileInterface = { "CCFileInterface", "com.st.st25sdk", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkCCFileInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkCCFileInterface)
