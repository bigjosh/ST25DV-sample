//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/SmsRecord.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/ndef/NDEFRecord.h"
#include "com/st/st25sdk/ndef/SmsRecord.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/charset/Charset.h"
#include "java/util/Locale.h"

static id (*ComStSt25sdkNdefSmsRecord_super$_getPayload)(id, SEL);

@interface ComStSt25sdkNdefSmsRecord () {
 @public
  NSString *mPhoneNumber_;
  NSString *mMessage_;
  JavaUtilLocale *mLocale_;
  jboolean mUtf8Enc_;
}

@end

J2OBJC_FIELD_SETTER(ComStSt25sdkNdefSmsRecord, mPhoneNumber_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefSmsRecord, mMessage_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkNdefSmsRecord, mLocale_, JavaUtilLocale *)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkNdefSmsRecord)

NSString *ComStSt25sdkNdefSmsRecord_SCHEME = @"sms:";
NSString *ComStSt25sdkNdefSmsRecord_FIELDNAME = @"body";

@implementation ComStSt25sdkNdefSmsRecord

+ (NSString *)SCHEME {
  return ComStSt25sdkNdefSmsRecord_SCHEME;
}

+ (NSString *)FIELDNAME {
  return ComStSt25sdkNdefSmsRecord_FIELDNAME;
}

+ (jint)ID {
  return ComStSt25sdkNdefSmsRecord_ID;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComStSt25sdkNdefSmsRecord_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)phoneNumber
                    withNSString:(NSString *)message {
  ComStSt25sdkNdefSmsRecord_initWithNSString_withNSString_(self, phoneNumber, message);
  return self;
}

- (instancetype)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream {
  ComStSt25sdkNdefSmsRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  return self;
}

- (NSString *)getContact {
  return mPhoneNumber_;
}

- (void)setContactWithNSString:(NSString *)phoneNumber {
  if (phoneNumber == nil) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  mPhoneNumber_ = phoneNumber;
}

- (NSString *)getMessage {
  return mMessage_;
}

- (void)setMessageWithNSString:(NSString *)message {
  if (message == nil) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  mMessage_ = message;
}

- (IOSByteArray *)getPayload {
  JavaNioCharsetCharset *utfEncoding;
  utfEncoding = mUtf8Enc_ ? JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8") : JavaNioCharsetCharset_forNameWithNSString_(@"UTF-16");
  if (mPhoneNumber_ != nil) {
    JavaNioByteBuffer *payload;
    NSString *fullMessage = JreStrcat("$C$C$", mPhoneNumber_, '?', ComStSt25sdkNdefSmsRecord_FIELDNAME, '=', mMessage_);
    NSString *smsString = ComStSt25sdkNdefSmsRecord_SCHEME;
    payload = JavaNioByteBuffer_allocateWithInt_(1 + ((IOSByteArray *) nil_chk([((NSString *) nil_chk(smsString)) java_getBytesWithCharset:utfEncoding]))->size_ + ((IOSByteArray *) nil_chk([fullMessage java_getBytesWithCharset:utfEncoding]))->size_);
    (void) [((JavaNioByteBuffer *) nil_chk(payload)) putWithByte:(jbyte) ComStSt25sdkNdefSmsRecord_ID];
    (void) [payload putWithByteArray:[smsString java_getBytesWithCharset:utfEncoding]];
    (void) [payload putWithByteArray:[fullMessage java_getBytesWithCharset:utfEncoding]];
    return [payload array];
  }
  return nil;
}

- (NSString *)description {
  NSString *txt = @"SMS Record:\n";
  (void) JreStrAppendStrong(&txt, "$$C", @"- Phone Number : ", mPhoneNumber_, 0x000a);
  (void) JreStrAppendStrong(&txt, "$$C", @"- Message : ", mMessage_, 0x000a);
  return txt;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:withNSString:);
  methods[2].selector = @selector(initWithJavaIoByteArrayInputStream:);
  methods[3].selector = @selector(getContact);
  methods[4].selector = @selector(setContactWithNSString:);
  methods[5].selector = @selector(getMessage);
  methods[6].selector = @selector(setMessageWithNSString:);
  methods[7].selector = @selector(getPayload);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SCHEME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "FIELDNAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "ID", "I", .constantValue.asInt = ComStSt25sdkNdefSmsRecord_ID, 0x19, -1, -1, -1, -1 },
    { "mPhoneNumber_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMessage_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mLocale_", "LJavaUtilLocale;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mUtf8Enc_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "LJavaIoByteArrayInputStream;", "LJavaLangException;", "setContact", "LNSString;", "setMessage", "toString", &ComStSt25sdkNdefSmsRecord_SCHEME, &ComStSt25sdkNdefSmsRecord_FIELDNAME };
  static const J2ObjcClassInfo _ComStSt25sdkNdefSmsRecord = { "SmsRecord", "com.st.st25sdk.ndef", ptrTable, methods, fields, 7, 0x1, 9, 7, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkNdefSmsRecord;
}

+ (void)initialize {
  if (self == [ComStSt25sdkNdefSmsRecord class]) {
    ComStSt25sdkNdefSmsRecord_super$_getPayload = (id (*)(id, SEL))[ComStSt25sdkNdefNDEFRecord instanceMethodForSelector:@selector(getPayload)];
    J2OBJC_SET_INITIALIZED(ComStSt25sdkNdefSmsRecord)
  }
}

@end

void ComStSt25sdkNdefSmsRecord_init(ComStSt25sdkNdefSmsRecord *self) {
  ComStSt25sdkNdefNDEFRecord_init(self);
  self->mUtf8Enc_ = true;
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_URI)];
  self->mPhoneNumber_ = @"";
  self->mMessage_ = @"";
  self->mLocale_ = JavaUtilLocale_getDefault();
  self->mUtf8Enc_ = true;
}

ComStSt25sdkNdefSmsRecord *new_ComStSt25sdkNdefSmsRecord_init() {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefSmsRecord, init)
}

ComStSt25sdkNdefSmsRecord *create_ComStSt25sdkNdefSmsRecord_init() {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefSmsRecord, init)
}

void ComStSt25sdkNdefSmsRecord_initWithNSString_withNSString_(ComStSt25sdkNdefSmsRecord *self, NSString *phoneNumber, NSString *message) {
  ComStSt25sdkNdefNDEFRecord_init(self);
  self->mUtf8Enc_ = true;
  if ((phoneNumber == nil) || (message == nil)) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_URI)];
  self->mPhoneNumber_ = phoneNumber;
  self->mMessage_ = message;
  [self setSR];
  self->mLocale_ = JavaUtilLocale_getDefault();
  self->mUtf8Enc_ = true;
}

ComStSt25sdkNdefSmsRecord *new_ComStSt25sdkNdefSmsRecord_initWithNSString_withNSString_(NSString *phoneNumber, NSString *message) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefSmsRecord, initWithNSString_withNSString_, phoneNumber, message)
}

ComStSt25sdkNdefSmsRecord *create_ComStSt25sdkNdefSmsRecord_initWithNSString_withNSString_(NSString *phoneNumber, NSString *message) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefSmsRecord, initWithNSString_withNSString_, phoneNumber, message)
}

void ComStSt25sdkNdefSmsRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefSmsRecord *self, JavaIoByteArrayInputStream *inputStream) {
  ComStSt25sdkNdefNDEFRecord_initWithJavaIoByteArrayInputStream_(self, inputStream);
  self->mUtf8Enc_ = true;
  IOSByteArray *payload = ComStSt25sdkNdefSmsRecord_super$_getPayload(self, @selector(getPayload));
  if (payload == nil) {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  [self setTnfWithShort:ComStSt25sdkNdefNDEFRecord_TNF_WELLKNOWN];
  [self setTypeWithByteArray:JreLoadStatic(ComStSt25sdkNdefNDEFRecord, RTD_URI)];
  if (payload->size_ == 0) {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  jbyte statusByte = IOSByteArray_Get(payload, 0);
  jint lengthOfLanguageCode = statusByte & (jint) 0x3F;
  if (lengthOfLanguageCode < payload->size_) {
    if (lengthOfLanguageCode > 0) {
      NSString *languageCode = [NSString java_stringWithBytes:payload offset:1 length:lengthOfLanguageCode charsetName:@"US-ASCII"];
      self->mLocale_ = new_JavaUtilLocale_initWithNSString_(languageCode);
      self->mUtf8Enc_ = (JreRShift32(IOSByteArray_Get(payload, 0), 7) == 0);
    }
    else {
      self->mLocale_ = JreLoadStatic(JavaUtilLocale, ROOT);
      self->mUtf8Enc_ = true;
    }
  }
  else {
    @throw new_JavaLangException_initWithNSString_(@"Invalid ndef data");
  }
  NSString *message;
  if (self->mUtf8Enc_) {
    message = [NSString java_stringWithBytes:payload charset:JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8")];
  }
  else {
    message = [NSString java_stringWithBytes:payload charset:JavaNioCharsetCharset_forNameWithNSString_(@"UTF-16")];
  }
  jint lengthOfMessage = [message java_length];
  NSString *uri = [message java_substring:1 endIndex:lengthOfMessage];
  if ([((NSString *) nil_chk(uri)) java_hasPrefix:ComStSt25sdkNdefSmsRecord_SCHEME]) {
    uri = [uri java_substring:[((NSString *) nil_chk(ComStSt25sdkNdefSmsRecord_SCHEME)) java_length] endIndex:[uri java_length]];
    jint index = [((NSString *) nil_chk(uri)) java_indexOfString:JreStrcat("C$C", '?', ComStSt25sdkNdefSmsRecord_FIELDNAME, '=')];
    if (index > 0) self->mPhoneNumber_ = [uri java_substring:0 endIndex:index];
    else self->mPhoneNumber_ = @"";
    index = [uri java_indexOfString:@"="];
    self->mMessage_ = [uri java_substring:index + 1 endIndex:[uri java_length]];
  }
  else {
    self->mPhoneNumber_ = @"";
    self->mMessage_ = @"";
  }
  if (JreLoadStatic(ComStSt25sdkNdefNDEFRecord, DBG_NDEF_RECORD)) {
    [self dbgCheckNdefRecordContentWithByteArray:payload];
  }
}

ComStSt25sdkNdefSmsRecord *new_ComStSt25sdkNdefSmsRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_NEW_IMPL(ComStSt25sdkNdefSmsRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

ComStSt25sdkNdefSmsRecord *create_ComStSt25sdkNdefSmsRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkNdefSmsRecord, initWithJavaIoByteArrayInputStream_, inputStream)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkNdefSmsRecord)
