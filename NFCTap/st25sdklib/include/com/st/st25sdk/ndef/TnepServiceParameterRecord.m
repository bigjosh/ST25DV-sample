//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/TnepServiceParameterRecord.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/ndef/NDEFRecord.h"
#include "com/st/st25sdk/ndef/TnepServiceParameterRecord.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/lang/Byte.h"
#include "java/lang/Exception.h"
#include "java/lang/Math.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/charset/Charset.h"

static id (*ComStSt25sdkNdefTnepServiceParameterRecord_super$_getPayload)(id, SEL);

@interface ComStSt25sdkNdefTnepServiceParameterRecord () {
 @public
  jbyte mVersionMajorNumber_;
  jbyte mVersionMinorNumber_;
  NSString *mServiceName_;
  jbyte mCommunicationMode_;
  jbyte mMinimumWaitingTime_;
  jbyte mMaximumNbrOfWaitingTimeExtensions_;
  jint mMaximumNdefMessageSizeInBytes_;
}

- (void)parseWithJavaNioByteBuffer:(JavaNioByteBuffer *)payload;

@end

J2OBJC_FIELD_SETTER(ComStSt25sdkNdefTnepServiceParameterRecord, mServiceName_, NSString *)

__attribute__((unused)) static void ComStSt25sdkNdefTnepServiceParameterRecord_parseWithJavaNioByteBuffer_(ComStSt25sdkNdefTnepServiceParameterRecord *self, JavaNioByteBuffer *payload);

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkNdefTnepServiceParameterRecord)

@implementation ComStSt25sdkNdefTnepServiceParameterRecord

+ (jbyte)SINGLE_RESPONSE_COMMUNICATION_MODE {
  return ComStSt25sdkNdefTnepServiceParameterRecord_SINGLE_RESPONSE_COMMUNICATION_MODE;
}

+ (jbyte)SERVICE_SPECIFIC_COMMUNICATION_MODE {
  return ComStSt25sdkNdefTnepServiceParameterRecord_SERVICE_SPECIFIC_COMMUNICATION_MODE;
}

- (instancetype)initWithByte:(jbyte)versionMajorNumber
                    withByte:(jbyte)versionMinorNumber
                withNSString:(NSString *)serviceName
                    withByte:(jbyte)communicationMode
                    withByte:(jbyte)minimumWaitingTime
                    withByte:(jbyte)maximumNumberOfWaitingTimeExtensions
                     withInt:(jint)maximumNdefMessageSizeInBytes {
  ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(self, versionMajorNumber, versionMinorNumber, serviceName, communicationMode, minimumWaitingTime, maximumNumberOfWaitingTimeExtensions, maximumNdefMessageSizeInBytes);
  return self;
}

- (instancetype)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream {
  ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  return self;
}

- (void)parseWithJavaNioByteBuffer:(JavaNioByteBuffer *)payload {
  ComStSt25sdkNdefTnepServiceParameterRecord_parseWithJavaNioByteBuffer_(self, payload);
}

- (IOSByteArray *)getPayload {
  JavaIoByteArrayOutputStream *outputStream = new_JavaIoByteArrayOutputStream_init();
  jbyte version_ = (jbyte) ((JreLShift32((mVersionMajorNumber_ & (jint) 0x0F), 4)) | (mVersionMinorNumber_ & (jint) 0x0F));
  [outputStream writeWithInt:version_];
  jbyte serviceNameLength = (jbyte) [((NSString *) nil_chk(mServiceName_)) java_length];
  [outputStream writeWithInt:serviceNameLength];
  [outputStream writeWithByteArray:[((NSString *) nil_chk(mServiceName_)) java_getBytes] withInt:0 withInt:[((NSString *) nil_chk(mServiceName_)) java_length]];
  [outputStream writeWithInt:mCommunicationMode_];
  [outputStream writeWithInt:mMinimumWaitingTime_];
  [outputStream writeWithInt:mMaximumNbrOfWaitingTimeExtensions_];
  jbyte msb = (jbyte) ((JreRShift32(mMaximumNdefMessageSizeInBytes_, 8)) & (jint) 0xFF);
  jbyte lsb = (jbyte) (mMaximumNdefMessageSizeInBytes_ & (jint) 0xFF);
  [outputStream writeWithInt:msb];
  [outputStream writeWithInt:lsb];
  IOSByteArray *payload = [outputStream toByteArray];
  return payload;
}

- (jbyte)getVersionMajorNumber {
  return mVersionMajorNumber_;
}

- (jbyte)getVersionMinorNumber {
  return mVersionMinorNumber_;
}

- (NSString *)getServiceName {
  return mServiceName_;
}

- (jbyte)getCommunicationMode {
  return mCommunicationMode_;
}

- (jbyte)getMinimumWaitingTime {
  return mMinimumWaitingTime_;
}

- (jint)getMinimumWaitingTimeInMs {
  jint exponent = (mMinimumWaitingTime_ & (jint) 0xFF) / 4 - 1;
  if (exponent < 1) exponent = 1;
  jint minimumWaitingTimeInMs = JreFpToInt(JavaLangMath_powWithDouble_withDouble_(2, exponent));
  return minimumWaitingTimeInMs;
}

- (jbyte)getMaximumNbrOfWaitingTimeExtensions {
  return mMaximumNbrOfWaitingTimeExtensions_;
}

- (jint)getMaximumNdefMessageSizeInBytes {
  return mMaximumNdefMessageSizeInBytes_;
}

- (NSString *)description {
  NSString *recordHeader = [super description];
  jint minimumWaitingTimeInMs = [self getMinimumWaitingTimeInMs];
  NSString *txt = @"TNEP Service Parameter Record:\n";
  (void) JreStrAppendStrong(&txt, "$", recordHeader);
  (void) JreStrAppendStrong(&txt, "$BCBC", @"- Version : ", mVersionMajorNumber_, '.', mVersionMinorNumber_, 0x000a);
  (void) JreStrAppendStrong(&txt, "$$$", @"- Service Name : \"", mServiceName_, @"\"\n");
  (void) JreStrAppendStrong(&txt, "$BC", @"- Communication Mode : ", mCommunicationMode_, 0x000a);
  (void) JreStrAppendStrong(&txt, "$$$I$", @"- Minimum Waiting Time : 0x", [((NSString *) nil_chk(NSString_java_formatWithNSString_withNSObjectArray_(@"%02x", [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangByte_valueOfWithByte_(mMinimumWaitingTime_) } count:1 type:NSObject_class_()]))) uppercaseString], @" (= ", minimumWaitingTimeInMs, @" ms)\n");
  (void) JreStrAppendStrong(&txt, "$BC", @"- Maximum Nbr Of Waiting Time Extensions : ", mMaximumNbrOfWaitingTimeExtensions_, 0x000a);
  (void) JreStrAppendStrong(&txt, "$IC", @"- Maximum Ndef Message Size : ", mMaximumNdefMessageSizeInBytes_, 0x000a);
  return txt;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByte:withByte:withNSString:withByte:withByte:withByte:withInt:);
  methods[1].selector = @selector(initWithJavaIoByteArrayInputStream:);
  methods[2].selector = @selector(parseWithJavaNioByteBuffer:);
  methods[3].selector = @selector(getPayload);
  methods[4].selector = @selector(getVersionMajorNumber);
  methods[5].selector = @selector(getVersionMinorNumber);
  methods[6].selector = @selector(getServiceName);
  methods[7].selector = @selector(getCommunicationMode);
  methods[8].selector = @selector(getMinimumWaitingTime);
  methods[9].selector = @selector(getMinimumWaitingTimeInMs);
  methods[10].selector = @selector(getMaximumNbrOfWaitingTimeExtensions);
  methods[11].selector = @selector(getMaximumNdefMessageSizeInBytes);
  methods[12].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mVersionMajorNumber_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mVersionMinorNumber_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mServiceName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCommunicationMode_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMinimumWaitingTime_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaximumNbrOfWaitingTimeExtensions_", "B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMaximumNdefMessageSizeInBytes_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "SINGLE_RESPONSE_COMMUNICATION_MODE", "B", .constantValue.asChar = ComStSt25sdkNdefTnepServiceParameterRecord_SINGLE_RESPONSE_COMMUNICATION_MODE, 0x19, -1, -1, -1, -1 },
    { "SERVICE_SPECIFIC_COMMUNICATION_MODE", "B", .constantValue.asChar = ComStSt25sdkNdefTnepServiceParameterRecord_SERVICE_SPECIFIC_COMMUNICATION_MODE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "BBLNSString;BBBI", "LJavaLangException;", "LJavaIoByteArrayInputStream;", "parse", "LJavaNioByteBuffer;", "toString" };
  static const J2ObjcClassInfo _ComStSt25sdkNdefTnepServiceParameterRecord = { "TnepServiceParameterRecord", "com.st.st25sdk.ndef", ptrTable, methods, fields, 7, 0x1, 13, 9, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkNdefTnepServiceParameterRecord;
}

+ (void)initialize {
  if (self == [ComStSt25sdkNdefTnepServiceParameterRecord class]) {
    ComStSt25sdkNdefTnepServiceParameterRecord_super$_getPayload = (id (*)(id, SEL))[ComStSt25sdkNdefNDEFRecord instanceMethodForSelector:@selector(getPayload)];
    J2OBJC_SET_INITIALIZED(ComStSt25sdkNdefTnepServiceParameterRecord)
  }
}

@end

void ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(ComStSt25sdkNdefTnepServiceParameterRecord *self, jbyte versionMajorNumber, jbyte versionMinorNumber, NSString *serviceName, jbyte communicationMode, jbyte minimumWaitingTime, jbyte maximumNumberOfWaitingTimeExtensions, jint maximumNdefMessageSizeInBytes) {
  ComStSt25sdkNdefNDEFRecord_init(self);
  if ((serviceName == nil) || ([((NSString *) nil_chk(serviceName)) java_length] == 0)) {
    @throw new_JavaLangException_initWithNSString_(@"Bad serviceName parameter!");
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_TNEP_SERVICE_PARAMETER)];
  [self setILWithBoolean:false];
  self->mVersionMajorNumber_ = versionMajorNumber;
  self->mVersionMinorNumber_ = versionMinorNumber;
  self->mServiceName_ = serviceName;
  self->mCommunicationMode_ = communicationMode;
  self->mMinimumWaitingTime_ = minimumWaitingTime;
  self->mMaximumNbrOfWaitingTimeExtensions_ = maximumNumberOfWaitingTimeExtensions;
  self->mMaximumNdefMessageSizeInBytes_ = maximumNdefMessageSizeInBytes;
  [self setSR];
}

ComStSt25sdkNdefTnepServiceParameterRecord *new_ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(jbyte versionMajorNumber, jbyte versionMinorNumber, NSString *serviceName, jbyte communicationMode, jbyte minimumWaitingTime, jbyte maximumNumberOfWaitingTimeExtensions, jint maximumNdefMessageSizeInBytes) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefTnepServiceParameterRecord, initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_, versionMajorNumber, versionMinorNumber, serviceName, communicationMode, minimumWaitingTime, maximumNumberOfWaitingTimeExtensions, maximumNdefMessageSizeInBytes)
}

ComStSt25sdkNdefTnepServiceParameterRecord *create_ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(jbyte versionMajorNumber, jbyte versionMinorNumber, NSString *serviceName, jbyte communicationMode, jbyte minimumWaitingTime, jbyte maximumNumberOfWaitingTimeExtensions, jint maximumNdefMessageSizeInBytes) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefTnepServiceParameterRecord, initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_, versionMajorNumber, versionMinorNumber, serviceName, communicationMode, minimumWaitingTime, maximumNumberOfWaitingTimeExtensions, maximumNdefMessageSizeInBytes)
}

void ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefTnepServiceParameterRecord *self, JavaIoByteArrayInputStream *inputStream) {
  ComStSt25sdkNdefNDEFRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  IOSByteArray *payload = ComStSt25sdkNdefTnepServiceParameterRecord_super$_getPayload(self, @selector(getPayload));
  if (payload == nil) {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_TNEP_SERVICE_PARAMETER)];
  ComStSt25sdkNdefTnepServiceParameterRecord_parseWithJavaNioByteBuffer_(self, JavaNioByteBuffer_wrapWithByteArray_(payload));
  if (JreLoadStatic(ComStSt25sdkNdefNDEFRecord, DBG_NDEF_RECORD)) {
    [self dbgCheckNdefRecordContentWithByteArray:payload];
  }
}

ComStSt25sdkNdefTnepServiceParameterRecord *new_ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefTnepServiceParameterRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

ComStSt25sdkNdefTnepServiceParameterRecord *create_ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefTnepServiceParameterRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

void ComStSt25sdkNdefTnepServiceParameterRecord_parseWithJavaNioByteBuffer_(ComStSt25sdkNdefTnepServiceParameterRecord *self, JavaNioByteBuffer *payload) {
  jbyte tnepVersion = [((JavaNioByteBuffer *) nil_chk(payload)) get];
  self->mVersionMajorNumber_ = (jbyte) ((JreRShift32(tnepVersion, 4)) & (jint) 0xFF);
  self->mVersionMinorNumber_ = (jbyte) (tnepVersion & (jint) 0x0F);
  jbyte serviceNameLength = [payload get];
  if (serviceNameLength <= 0) {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  IOSByteArray *rawData = [IOSByteArray newArrayWithLength:serviceNameLength];
  (void) [payload getWithByteArray:rawData];
  self->mServiceName_ = [NSString java_stringWithBytes:rawData charset:JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8")];
  self->mCommunicationMode_ = [payload get];
  self->mMinimumWaitingTime_ = [payload get];
  self->mMaximumNbrOfWaitingTimeExtensions_ = [payload get];
  IOSByteArray *maxNdefSizeRawdata = [IOSByteArray newArrayWithLength:2];
  (void) [payload getWithByteArray:maxNdefSizeRawdata];
  self->mMaximumNdefMessageSizeInBytes_ = (JreLShift32(IOSByteArray_Get(maxNdefSizeRawdata, 0), 8)) + IOSByteArray_Get(maxNdefSizeRawdata, 1);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkNdefTnepServiceParameterRecord)
