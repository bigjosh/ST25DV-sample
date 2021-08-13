//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/lri/LRi512Tag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/type5/lri/LRi512Tag.h"
#include "com/st/st25sdk/type5/lri/LRiTag.h"

@implementation ComStSt25sdkType5LriLRi512Tag

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkType5LriLRi512Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (jint)getMemSizeInBytes {
  return mMemSize_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(getMemSizeInBytes);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "LComStSt25sdkSTException;" };
  static const J2ObjcClassInfo _ComStSt25sdkType5LriLRi512Tag = { "LRi512Tag", "com.st.st25sdk.type5.lri", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5LriLRi512Tag;
}

@end

void ComStSt25sdkType5LriLRi512Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType5LriLRi512Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkType5LriLRiTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  self->mName_ = @"LRi512";
  self->mMemSize_ = 64;
}

ComStSt25sdkType5LriLRi512Tag *new_ComStSt25sdkType5LriLRi512Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5LriLRi512Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType5LriLRi512Tag *create_ComStSt25sdkType5LriLRi512Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5LriLRi512Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5LriLRi512Tag)