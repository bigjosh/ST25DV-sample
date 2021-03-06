//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/HandoverCarrierRecord.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/Helper.h"
#include "com/st/st25sdk/ndef/HandoverCarrierRecord.h"
#include "com/st/st25sdk/ndef/NDEFRecord.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/Byte.h"
#include "java/lang/Exception.h"
#include "java/nio/ByteBuffer.h"

static id (*ComStSt25sdkNdefHandoverCarrierRecord_super$_getPayload)(id, SEL);

@interface ComStSt25sdkNdefHandoverCarrierRecord () {
 @public
  jbyte mCarrierTypeFormat_;
  jbyte mCarrierTypeLength_;
  IOSByteArray *mCarrierType_;
  IOSByteArray *mCarrierData_;
}

- (void)parseWithJavaNioByteBuffer:(JavaNioByteBuffer *)payload;

@end

J2OBJC_FIELD_SETTER(ComStSt25sdkNdefHandoverCarrierRecord, mCarrierType_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefHandoverCarrierRecord, mCarrierData_, IOSByteArray *)

__attribute__((unused)) static void ComStSt25sdkNdefHandoverCarrierRecord_parseWithJavaNioByteBuffer_(ComStSt25sdkNdefHandoverCarrierRecord *self, JavaNioByteBuffer *payload);

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkNdefHandoverCarrierRecord)

@implementation ComStSt25sdkNdefHandoverCarrierRecord

- (instancetype)initWithByte:(jbyte)carrierTypeFormat
               withByteArray:(IOSByteArray *)carrierType
               withByteArray:(IOSByteArray *)carrierData {
  ComStSt25sdkNdefHandoverCarrierRecord_initWithByte_withByteArray_withByteArray_(self, carrierTypeFormat, carrierType, carrierData);
  return self;
}

- (instancetype)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream {
  ComStSt25sdkNdefHandoverCarrierRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  return self;
}

- (void)parseWithJavaNioByteBuffer:(JavaNioByteBuffer *)payload {
  ComStSt25sdkNdefHandoverCarrierRecord_parseWithJavaNioByteBuffer_(self, payload);
}

- (IOSByteArray *)getPayload {
  @try {
    JavaIoByteArrayOutputStream *outputStream = new_JavaIoByteArrayOutputStream_init();
    [outputStream writeWithInt:mCarrierTypeFormat_];
    [outputStream writeWithInt:mCarrierTypeLength_];
    [outputStream writeWithByteArray:mCarrierType_];
    [outputStream writeWithByteArray:mCarrierData_];
    IOSByteArray *payload = [outputStream toByteArray];
    return payload;
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
    @throw new_JavaLangException_initWithNSString_(@"Error while parsing payload");
  }
}

- (jbyte)getCarrierTypeFormat {
  return mCarrierTypeFormat_;
}

- (jbyte)getCarrierTypeLength {
  return mCarrierTypeLength_;
}

- (IOSByteArray *)getCarrierType {
  return mCarrierType_;
}

- (void)setCarrierTypeWithByteArray:(IOSByteArray *)carrierType {
  mCarrierType_ = carrierType;
  mCarrierTypeLength_ = (jbyte) ((IOSByteArray *) nil_chk(carrierType))->size_;
}

- (IOSByteArray *)getCarrierData {
  return mCarrierData_;
}

- (NSString *)description {
  NSString *recordHeader = [super description];
  NSString *txt = @"Handover Carrier Record:\n";
  (void) JreStrAppendStrong(&txt, "$", recordHeader);
  (void) JreStrAppendStrong(&txt, "$$C", @"- Carrier Type Format : 0x", [((NSString *) nil_chk(NSString_java_formatWithNSString_withNSObjectArray_(@"%02x", [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangByte_valueOfWithByte_(mCarrierTypeFormat_) } count:1 type:NSObject_class_()]))) uppercaseString], 0x000a);
  (void) JreStrAppendStrong(&txt, "$$C", @"- Carrier Type Length : ", NSString_java_formatWithNSString_withNSObjectArray_(@"%d", [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangByte_valueOfWithByte_(mCarrierTypeLength_) } count:1 type:NSObject_class_()]), 0x000a);
  (void) JreStrAppendStrong(&txt, "$$C", @"- Carrier Type : ", [((NSString *) nil_chk(ComStSt25sdkHelper_convertHexByteArrayToStringWithByteArray_(mCarrierType_))) uppercaseString], 0x000a);
  (void) JreStrAppendStrong(&txt, "$$C", @"- Carrier Data : ", [((NSString *) nil_chk(ComStSt25sdkHelper_convertHexByteArrayToStringWithByteArray_(mCarrierData_))) uppercaseString], 0x000a);
  return txt;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, 2, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByte:withByteArray:withByteArray:);
  methods[1].selector = @selector(initWithJavaIoByteArrayInputStream:);
  methods[2].selector = @selector(parseWithJavaNioByteBuffer:);
  methods[3].selector = @selector(getPayload);
  methods[4].selector = @selector(getCarrierTypeFormat);
  methods[5].selector = @selector(getCarrierTypeLength);
  methods[6].selector = @selector(getCarrierType);
  methods[7].selector = @selector(setCarrierTypeWithByteArray:);
  methods[8].selector = @selector(getCarrierData);
  methods[9].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mCarrierTypeFormat_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCarrierTypeLength_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCarrierType_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCarrierData_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "B[B[B", "LJavaIoByteArrayInputStream;", "LJavaLangException;", "parse", "LJavaNioByteBuffer;", "setCarrierType", "[B", "toString" };
  static const J2ObjcClassInfo _ComStSt25sdkNdefHandoverCarrierRecord = { "HandoverCarrierRecord", "com.st.st25sdk.ndef", ptrTable, methods, fields, 7, 0x1, 10, 4, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkNdefHandoverCarrierRecord;
}

+ (void)initialize {
  if (self == [ComStSt25sdkNdefHandoverCarrierRecord class]) {
    ComStSt25sdkNdefHandoverCarrierRecord_super$_getPayload = (id (*)(id, SEL))[ComStSt25sdkNdefNDEFRecord instanceMethodForSelector:@selector(getPayload)];
    J2OBJC_SET_INITIALIZED(ComStSt25sdkNdefHandoverCarrierRecord)
  }
}

@end

void ComStSt25sdkNdefHandoverCarrierRecord_initWithByte_withByteArray_withByteArray_(ComStSt25sdkNdefHandoverCarrierRecord *self, jbyte carrierTypeFormat, IOSByteArray *carrierType, IOSByteArray *carrierData) {
  ComStSt25sdkNdefNDEFRecord_init(self);
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_HANDOVER_CARRIER)];
  [self setILWithBoolean:false];
  self->mCarrierTypeFormat_ = carrierTypeFormat;
  self->mCarrierTypeLength_ = (jbyte) ((IOSByteArray *) nil_chk(carrierType))->size_;
  self->mCarrierType_ = carrierType;
  self->mCarrierData_ = carrierData;
  [self setSR];
}

ComStSt25sdkNdefHandoverCarrierRecord *new_ComStSt25sdkNdefHandoverCarrierRecord_initWithByte_withByteArray_withByteArray_(jbyte carrierTypeFormat, IOSByteArray *carrierType, IOSByteArray *carrierData) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefHandoverCarrierRecord, initWithByte_withByteArray_withByteArray_, carrierTypeFormat, carrierType, carrierData)
}

ComStSt25sdkNdefHandoverCarrierRecord *create_ComStSt25sdkNdefHandoverCarrierRecord_initWithByte_withByteArray_withByteArray_(jbyte carrierTypeFormat, IOSByteArray *carrierType, IOSByteArray *carrierData) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefHandoverCarrierRecord, initWithByte_withByteArray_withByteArray_, carrierTypeFormat, carrierType, carrierData)
}

void ComStSt25sdkNdefHandoverCarrierRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefHandoverCarrierRecord *self, JavaIoByteArrayInputStream *inputStream) {
  ComStSt25sdkNdefNDEFRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  IOSByteArray *payload = ComStSt25sdkNdefHandoverCarrierRecord_super$_getPayload(self, @selector(getPayload));
  if (payload == nil) {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_HANDOVER_CARRIER)];
  ComStSt25sdkNdefHandoverCarrierRecord_parseWithJavaNioByteBuffer_(self, JavaNioByteBuffer_wrapWithByteArray_(payload));
  if (JreLoadStatic(ComStSt25sdkNdefNDEFRecord, DBG_NDEF_RECORD)) {
    [self dbgCheckNdefRecordContentWithByteArray:payload];
  }
}

ComStSt25sdkNdefHandoverCarrierRecord *new_ComStSt25sdkNdefHandoverCarrierRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefHandoverCarrierRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

ComStSt25sdkNdefHandoverCarrierRecord *create_ComStSt25sdkNdefHandoverCarrierRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefHandoverCarrierRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

void ComStSt25sdkNdefHandoverCarrierRecord_parseWithJavaNioByteBuffer_(ComStSt25sdkNdefHandoverCarrierRecord *self, JavaNioByteBuffer *payload) {
  jint payloadLength = [((JavaNioByteBuffer *) nil_chk(payload)) remaining];
  self->mCarrierTypeFormat_ = [payload get];
  self->mCarrierTypeLength_ = [payload get];
  self->mCarrierType_ = [IOSByteArray newArrayWithLength:self->mCarrierTypeLength_];
  (void) [payload getWithByteArray:self->mCarrierType_];
  jint carrierDataLength = payloadLength - 2 - self->mCarrierTypeLength_;
  self->mCarrierData_ = [IOSByteArray newArrayWithLength:carrierDataLength];
  (void) [payload getWithByteArray:self->mCarrierData_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkNdefHandoverCarrierRecord)
