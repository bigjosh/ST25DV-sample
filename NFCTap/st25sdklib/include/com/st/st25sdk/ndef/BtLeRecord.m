//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/BtLeRecord.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/Helper.h"
#include "com/st/st25sdk/STLog.h"
#include "com/st/st25sdk/ndef/BtLeRecord.h"
#include "com/st/st25sdk/ndef/NDEFRecord.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/nio/Buffer.h"
#include "java/nio/BufferUnderflowException.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/charset/Charset.h"
#include "java/util/Arrays.h"

static id (*ComStSt25sdkNdefBtLeRecord_super$_getPayload)(id, SEL);

@interface ComStSt25sdkNdefBtLeRecord () {
 @public
  NSString *mBtDeviceName_;
  IOSByteArray *mBtMacAddress_;
  jbyte mBtMacAddressType_;
  IOSByteArray *mBtDeviceClass_;
  IOSByteArray *mBtUuidClassList_;
  jbyte mBtUuidClass_;
  IOSByteArray *mBtRoleList_;
  jbyte mBtRole_;
  IOSByteArray *mBtAppearenceData_;
  jbyte mBtAppearence_;
  IOSByteArray *mBtSecureConnectionsConfirmationValue_;
  IOSByteArray *mBtSecureConnectionsRandomValue_;
  IOSByteArray *mBuffer_;
}

- (void)parseWithJavaNioByteBuffer:(JavaNioByteBuffer *)payload;

- (IOSByteArray *)fillEirBufferWithByteArray:(IOSByteArray *)input
                                    withByte:(jbyte)id_;

- (void)export2Bt;

@end

J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtDeviceName_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtMacAddress_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtDeviceClass_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtUuidClassList_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtRoleList_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtAppearenceData_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtSecureConnectionsConfirmationValue_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBtSecureConnectionsRandomValue_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefBtLeRecord, mBuffer_, IOSByteArray *)

__attribute__((unused)) static void ComStSt25sdkNdefBtLeRecord_parseWithJavaNioByteBuffer_(ComStSt25sdkNdefBtLeRecord *self, JavaNioByteBuffer *payload);

__attribute__((unused)) static IOSByteArray *ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(ComStSt25sdkNdefBtLeRecord *self, IOSByteArray *input, jbyte id_);

__attribute__((unused)) static void ComStSt25sdkNdefBtLeRecord_export2Bt(ComStSt25sdkNdefBtLeRecord *self);

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkNdefBtLeRecord)

@implementation ComStSt25sdkNdefBtLeRecord

+ (jbyte)BTLE_ROLE_ONLY_PERIPHERAL {
  return ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_ONLY_PERIPHERAL;
}

+ (jbyte)BTLE_ROLE_ONLY_CENTRAL {
  return ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_ONLY_CENTRAL;
}

+ (jbyte)BTLE_ROLE_PERIPHERAL_AND_CENTRAL_PERIPHERAL_ROLE_PREFERRED {
  return ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_PERIPHERAL_AND_CENTRAL_PERIPHERAL_ROLE_PREFERRED;
}

+ (jbyte)BTLE_ROLE_PERIPHERAL_AND_CENTRAL_CENTRAL_ROLE_PREFERRED {
  return ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_PERIPHERAL_AND_CENTRAL_CENTRAL_ROLE_PREFERRED;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComStSt25sdkNdefBtLeRecord_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)deviceName
                   withByteArray:(IOSByteArray *)macAddr
                   withByteArray:(IOSByteArray *)deviceClass
                   withByteArray:(IOSByteArray *)uuidClass
                        withByte:(jbyte)uidClassList {
  ComStSt25sdkNdefBtLeRecord_initWithNSString_withByteArray_withByteArray_withByteArray_withByte_(self, deviceName, macAddr, deviceClass, uuidClass, uidClassList);
  return self;
}

- (instancetype)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream {
  ComStSt25sdkNdefBtLeRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  return self;
}

- (NSString *)getBTDeviceName {
  return mBtDeviceName_;
}

- (void)setBTDeviceNameWithNSString:(NSString *)name {
  mBtDeviceName_ = name;
}

- (IOSByteArray *)getBTDeviceMacAddr {
  return mBtMacAddress_;
}

- (void)setBTDeviceMacAddrWithByteArray:(IOSByteArray *)macAddr {
  if (macAddr == nil) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  if (macAddr->size_ != 6) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  mBtMacAddress_ = JavaUtilArrays_copyOfWithByteArray_withInt_(macAddr, macAddr->size_);
}

- (IOSByteArray *)getBTDeviceClass {
  return mBtDeviceClass_;
}

- (void)setBTDeviceClassWithByteArray:(IOSByteArray *)deviceClass {
  mBtDeviceClass_ = deviceClass;
}

- (jbyte)getBTDeviceMacAddrType {
  return mBtMacAddressType_;
}

- (void)setBTDeviceMacAddrTypeWithByte:(jbyte)type {
  mBtMacAddressType_ = type;
}

- (jbyte)getBTUuidClass {
  return mBtUuidClass_;
}

- (void)setBtUuidClassWithByte:(jbyte)uuidClass {
  mBtUuidClass_ = uuidClass;
}

- (IOSByteArray *)getBTUuidClassList {
  return mBtUuidClassList_;
}

- (void)setBTUuidClassListWithByteArray:(IOSByteArray *)uuidClassList {
  mBtUuidClassList_ = uuidClassList;
}

- (IOSByteArray *)getBTRoleList {
  return mBtRoleList_;
}

- (void)setBTRoleListWithByteArray:(IOSByteArray *)roleList {
  mBtRoleList_ = roleList;
}

- (IOSByteArray *)getBTAppearence {
  return mBtAppearenceData_;
}

- (void)setBTAppearenceWithByteArray:(IOSByteArray *)appearence {
  mBtAppearenceData_ = appearence;
}

- (IOSByteArray *)getPayload {
  IOSByteArray *payload = nil;
  ComStSt25sdkNdefBtLeRecord_export2Bt(self);
  if (mBuffer_ != nil) {
    payload = mBuffer_;
  }
  return payload;
}

- (void)parseWithJavaNioByteBuffer:(JavaNioByteBuffer *)payload {
  ComStSt25sdkNdefBtLeRecord_parseWithJavaNioByteBuffer_(self, payload);
}

- (IOSByteArray *)getBTSecureConnectionsConfirmationValue {
  return mBtSecureConnectionsConfirmationValue_;
}

- (void)setBTSecureConnectionsConfirmationValueWithByteArray:(IOSByteArray *)btSecureConnectionsConfirmationValue {
  self->mBtSecureConnectionsConfirmationValue_ = btSecureConnectionsConfirmationValue;
}

- (IOSByteArray *)getBTSecureConnectionsRandomValue {
  return mBtSecureConnectionsRandomValue_;
}

- (void)setBTSecureConnectionsRandomValueWithByteArray:(IOSByteArray *)btSecureConnectionsRandomValue {
  self->mBtSecureConnectionsRandomValue_ = btSecureConnectionsRandomValue;
}

- (IOSByteArray *)fillEirBufferWithByteArray:(IOSByteArray *)input
                                    withByte:(jbyte)id_ {
  return ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, input, id_);
}

- (void)export2Bt {
  ComStSt25sdkNdefBtLeRecord_export2Bt(self);
}

- (NSString *)description {
  NSString *txt = @"Bluetooth LE Record:\n";
  (void) JreStrAppendStrong(&txt, "$$C", @"- Device Name : ", mBtDeviceName_, 0x000a);
  (void) JreStrAppendStrong(&txt, "$$C", @"- MAC Address : ", ComStSt25sdkHelper_convertHexByteArrayToStringWithByteArray_(mBtMacAddress_), 0x000a);
  return txt;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 15, 2, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x2, 18, 19, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 20, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:withByteArray:withByteArray:withByteArray:withByte:);
  methods[2].selector = @selector(initWithJavaIoByteArrayInputStream:);
  methods[3].selector = @selector(getBTDeviceName);
  methods[4].selector = @selector(setBTDeviceNameWithNSString:);
  methods[5].selector = @selector(getBTDeviceMacAddr);
  methods[6].selector = @selector(setBTDeviceMacAddrWithByteArray:);
  methods[7].selector = @selector(getBTDeviceClass);
  methods[8].selector = @selector(setBTDeviceClassWithByteArray:);
  methods[9].selector = @selector(getBTDeviceMacAddrType);
  methods[10].selector = @selector(setBTDeviceMacAddrTypeWithByte:);
  methods[11].selector = @selector(getBTUuidClass);
  methods[12].selector = @selector(setBtUuidClassWithByte:);
  methods[13].selector = @selector(getBTUuidClassList);
  methods[14].selector = @selector(setBTUuidClassListWithByteArray:);
  methods[15].selector = @selector(getBTRoleList);
  methods[16].selector = @selector(setBTRoleListWithByteArray:);
  methods[17].selector = @selector(getBTAppearence);
  methods[18].selector = @selector(setBTAppearenceWithByteArray:);
  methods[19].selector = @selector(getPayload);
  methods[20].selector = @selector(parseWithJavaNioByteBuffer:);
  methods[21].selector = @selector(getBTSecureConnectionsConfirmationValue);
  methods[22].selector = @selector(setBTSecureConnectionsConfirmationValueWithByteArray:);
  methods[23].selector = @selector(getBTSecureConnectionsRandomValue);
  methods[24].selector = @selector(setBTSecureConnectionsRandomValueWithByteArray:);
  methods[25].selector = @selector(fillEirBufferWithByteArray:withByte:);
  methods[26].selector = @selector(export2Bt);
  methods[27].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mBtDeviceName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtMacAddress_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtMacAddressType_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtDeviceClass_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtUuidClassList_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtUuidClass_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtRoleList_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtRole_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtAppearenceData_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtAppearence_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtSecureConnectionsConfirmationValue_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBtSecureConnectionsRandomValue_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mBuffer_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "BTLE_ROLE_ONLY_PERIPHERAL", "B", .constantValue.asChar = ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_ONLY_PERIPHERAL, 0x19, -1, -1, -1, -1 },
    { "BTLE_ROLE_ONLY_CENTRAL", "B", .constantValue.asChar = ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_ONLY_CENTRAL, 0x19, -1, -1, -1, -1 },
    { "BTLE_ROLE_PERIPHERAL_AND_CENTRAL_PERIPHERAL_ROLE_PREFERRED", "B", .constantValue.asChar = ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_PERIPHERAL_AND_CENTRAL_PERIPHERAL_ROLE_PREFERRED, 0x19, -1, -1, -1, -1 },
    { "BTLE_ROLE_PERIPHERAL_AND_CENTRAL_CENTRAL_ROLE_PREFERRED", "B", .constantValue.asChar = ComStSt25sdkNdefBtLeRecord_BTLE_ROLE_PERIPHERAL_AND_CENTRAL_CENTRAL_ROLE_PREFERRED, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;[B[B[BB", "LJavaIoByteArrayInputStream;", "LJavaLangException;", "setBTDeviceName", "LNSString;", "setBTDeviceMacAddr", "[B", "setBTDeviceClass", "setBTDeviceMacAddrType", "B", "setBtUuidClass", "setBTUuidClassList", "setBTRoleList", "setBTAppearence", "parse", "LJavaNioByteBuffer;", "setBTSecureConnectionsConfirmationValue", "setBTSecureConnectionsRandomValue", "fillEirBuffer", "[BB", "toString" };
  static const J2ObjcClassInfo _ComStSt25sdkNdefBtLeRecord = { "BtLeRecord", "com.st.st25sdk.ndef", ptrTable, methods, fields, 7, 0x1, 28, 17, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkNdefBtLeRecord;
}

+ (void)initialize {
  if (self == [ComStSt25sdkNdefBtLeRecord class]) {
    ComStSt25sdkNdefBtLeRecord_super$_getPayload = (id (*)(id, SEL))[ComStSt25sdkNdefNDEFRecord instanceMethodForSelector:@selector(getPayload)];
    J2OBJC_SET_INITIALIZED(ComStSt25sdkNdefBtLeRecord)
  }
}

@end

void ComStSt25sdkNdefBtLeRecord_init(ComStSt25sdkNdefBtLeRecord *self) {
  ComStSt25sdkNdefNDEFRecord_init(self);
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_MEDIA];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_BTLE_APP)];
  self->mBtDeviceName_ = @"";
  self->mBtMacAddress_ = [IOSByteArray newArrayWithBytes:(jbyte[]){ (jint) 0x00, (jint) 0x00, (jint) 0x00, (jint) 0x00, (jint) 0x00, (jint) 0x00 } count:6];
  self->mBtDeviceClass_ = nil;
  self->mBtUuidClassList_ = nil;
  self->mBtUuidClass_ = (jint) 0x00;
}

ComStSt25sdkNdefBtLeRecord *new_ComStSt25sdkNdefBtLeRecord_init() {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefBtLeRecord, init)
}

ComStSt25sdkNdefBtLeRecord *create_ComStSt25sdkNdefBtLeRecord_init() {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefBtLeRecord, init)
}

void ComStSt25sdkNdefBtLeRecord_initWithNSString_withByteArray_withByteArray_withByteArray_withByte_(ComStSt25sdkNdefBtLeRecord *self, NSString *deviceName, IOSByteArray *macAddr, IOSByteArray *deviceClass, IOSByteArray *uuidClass, jbyte uidClassList) {
  ComStSt25sdkNdefNDEFRecord_init(self);
  if (macAddr == nil) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  if (macAddr->size_ != 6) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_MEDIA];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_BTLE_APP)];
  self->mBtDeviceName_ = deviceName;
  self->mBtMacAddress_ = JavaUtilArrays_copyOfWithByteArray_withInt_(macAddr, macAddr->size_);
  if (deviceClass != nil) {
    self->mBtDeviceClass_ = JavaUtilArrays_copyOfWithByteArray_withInt_(deviceClass, deviceClass->size_);
  }
  else {
    self->mBtDeviceClass_ = nil;
  }
  if (uuidClass != nil) {
    self->mBtUuidClassList_ = JavaUtilArrays_copyOfWithByteArray_withInt_(uuidClass, uuidClass->size_);
  }
  else {
    self->mBtUuidClassList_ = nil;
  }
  self->mBtUuidClass_ = uidClassList;
  [self setSR];
}

ComStSt25sdkNdefBtLeRecord *new_ComStSt25sdkNdefBtLeRecord_initWithNSString_withByteArray_withByteArray_withByteArray_withByte_(NSString *deviceName, IOSByteArray *macAddr, IOSByteArray *deviceClass, IOSByteArray *uuidClass, jbyte uidClassList) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefBtLeRecord, initWithNSString_withByteArray_withByteArray_withByteArray_withByte_, deviceName, macAddr, deviceClass, uuidClass, uidClassList)
}

ComStSt25sdkNdefBtLeRecord *create_ComStSt25sdkNdefBtLeRecord_initWithNSString_withByteArray_withByteArray_withByteArray_withByte_(NSString *deviceName, IOSByteArray *macAddr, IOSByteArray *deviceClass, IOSByteArray *uuidClass, jbyte uidClassList) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefBtLeRecord, initWithNSString_withByteArray_withByteArray_withByteArray_withByte_, deviceName, macAddr, deviceClass, uuidClass, uidClassList)
}

void ComStSt25sdkNdefBtLeRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefBtLeRecord *self, JavaIoByteArrayInputStream *inputStream) {
  ComStSt25sdkNdefNDEFRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  IOSByteArray *payload = ComStSt25sdkNdefBtLeRecord_super$_getPayload(self, @selector(getPayload));
  if (payload == nil) {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_MEDIA];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_BTLE_APP)];
  ComStSt25sdkNdefBtLeRecord_parseWithJavaNioByteBuffer_(self, JavaNioByteBuffer_wrapWithByteArray_(payload));
  if (JreLoadStatic(ComStSt25sdkNdefNDEFRecord, DBG_NDEF_RECORD)) {
    [self dbgCheckNdefRecordContentWithByteArray:payload];
  }
}

ComStSt25sdkNdefBtLeRecord *new_ComStSt25sdkNdefBtLeRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefBtLeRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

ComStSt25sdkNdefBtLeRecord *create_ComStSt25sdkNdefBtLeRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefBtLeRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

void ComStSt25sdkNdefBtLeRecord_parseWithJavaNioByteBuffer_(ComStSt25sdkNdefBtLeRecord *self, JavaNioByteBuffer *payload) {
  @try {
    (void) [((JavaNioByteBuffer *) nil_chk(payload)) positionWithInt:0];
    self->mBtDeviceName_ = nil;
    while ([payload remaining] > 0) {
      IOSByteArray *nameBytes;
      jint len = [payload get] & (jint) 0xFF;
      jint type = [payload get];
      if (len <= 0) {
        @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
      }
      {
        IOSByteArray *address;
        switch (type) {
          case (jint) 0x08:
          nameBytes = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:nameBytes];
          self->mBtDeviceName_ = [NSString java_stringWithBytes:nameBytes charset:JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8")];
          break;
          case (jint) 0x09:
          if (self->mBtDeviceName_ != nil) break;
          nameBytes = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:nameBytes];
          self->mBtDeviceName_ = [NSString java_stringWithBytes:nameBytes charset:JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8")];
          break;
          case (jint) 0x0D:
          self->mBtDeviceClass_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtDeviceClass_];
          break;
          case (jint) 0x1B:
          address = [IOSByteArray newArrayWithLength:6];
          (void) [payload getWithByteArray:address];
          for (jint i = 0; i < 3; i++) {
            jbyte temp = IOSByteArray_Get(address, i);
            *IOSByteArray_GetRef(address, i) = IOSByteArray_Get(address, 5 - i);
            *IOSByteArray_GetRef(address, 5 - i) = temp;
          }
          self->mBtMacAddress_ = [address java_clone];
          self->mBtMacAddressType_ = [payload get];
          break;
          case (jint) 0x1C:
          self->mBtRole_ = (jbyte) type;
          self->mBtRoleList_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtRoleList_];
          break;
          case (jint) 0x19:
          self->mBtAppearence_ = (jbyte) type;
          self->mBtAppearenceData_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtAppearenceData_];
          break;
          case (jint) 0x02:
          self->mBtUuidClass_ = (jbyte) (jint) 0x02;
          self->mBtUuidClassList_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtUuidClassList_];
          break;
          case (jint) 0x03:
          case (jint) 0x04:
          case (jint) 0x05:
          case (jint) 0x06:
          case (jint) 0x07:
          self->mBtUuidClass_ = (jbyte) type;
          self->mBtUuidClassList_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtUuidClassList_];
          break;
          case (jint) 0x22:
          self->mBtSecureConnectionsConfirmationValue_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtSecureConnectionsConfirmationValue_];
          break;
          case (jint) 0x23:
          self->mBtSecureConnectionsRandomValue_ = [IOSByteArray newArrayWithLength:len - 1];
          (void) [payload getWithByteArray:self->mBtSecureConnectionsRandomValue_];
          break;
          default:
          (void) [payload positionWithInt:[payload position] + len - 1];
          break;
        }
      }
    }
  }
  @catch (JavaLangIllegalArgumentException *e) {
    ComStSt25sdkSTLog_eWithNSString_(@"BT OOB: invalid BT address");
  }
  @catch (JavaNioBufferUnderflowException *e) {
    ComStSt25sdkSTLog_eWithNSString_(@"BT OOB: payload shorter than expected");
  }
}

IOSByteArray *ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(ComStSt25sdkNdefBtLeRecord *self, IOSByteArray *input, jbyte id_) {
  if ((input != nil) && (((IOSByteArray *) nil_chk(input))->size_ != 0)) {
    JavaNioByteBuffer *output;
    output = JavaNioByteBuffer_allocateWithInt_(1 + 1 + ((IOSByteArray *) nil_chk(input))->size_);
    (void) [((JavaNioByteBuffer *) nil_chk(output)) putWithByte:(jbyte) ((1 + input->size_) & (jint) 0xFF)];
    (void) [output putWithByte:id_];
    (void) [output putWithByteArray:input withInt:0 withInt:input->size_];
    return [output array];
  }
  return nil;
}

void ComStSt25sdkNdefBtLeRecord_export2Bt(ComStSt25sdkNdefBtLeRecord *self) {
  self->mBuffer_ = nil;
  IOSByteArray *macAddr = nil;
  if (self->mBtMacAddress_ != nil) {
    macAddr = [IOSByteArray newArrayWithLength:self->mBtMacAddress_->size_ + 1];
    for (jint i = 0; i < self->mBtMacAddress_->size_; i++) {
      *IOSByteArray_GetRef(macAddr, i) = IOSByteArray_Get(self->mBtMacAddress_, self->mBtMacAddress_->size_ - i - 1);
    }
    *IOSByteArray_GetRef(macAddr, self->mBtMacAddress_->size_) = self->mBtMacAddressType_;
  }
  JavaIoByteArrayOutputStream *outputStream = new_JavaIoByteArrayOutputStream_init();
  IOSByteArray *eirBuffer;
  if (macAddr != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, macAddr, (jbyte) (jint) 0x1B);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtDeviceName_ != nil && [self->mBtDeviceName_ java_length] > 0) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, [self->mBtDeviceName_ java_getBytes], (jbyte) (jint) 0x09);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtDeviceClass_ != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, self->mBtDeviceClass_, (jbyte) (jint) 0x0D);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtUuidClassList_ != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, self->mBtUuidClassList_, self->mBtUuidClass_);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtAppearenceData_ != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, self->mBtAppearenceData_, (jbyte) (jint) 0x19);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtSecureConnectionsConfirmationValue_ != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, self->mBtSecureConnectionsConfirmationValue_, (jbyte) (jint) 0x22);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtSecureConnectionsRandomValue_ != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, self->mBtSecureConnectionsRandomValue_, (jbyte) (jint) 0x23);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  if (self->mBtRoleList_ != nil) {
    eirBuffer = ComStSt25sdkNdefBtLeRecord_fillEirBufferWithByteArray_withByte_(self, self->mBtRoleList_, (jbyte) (jint) 0x1C);
    [outputStream writeWithByteArray:eirBuffer withInt:0 withInt:((IOSByteArray *) nil_chk(eirBuffer))->size_];
  }
  self->mBuffer_ = [outputStream toByteArray];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkNdefBtLeRecord)