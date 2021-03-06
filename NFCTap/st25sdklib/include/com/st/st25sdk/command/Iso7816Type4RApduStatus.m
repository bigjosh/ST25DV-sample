//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Iso7816Type4RApduStatus.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Iso7816Type4RApduStatus.h"

@interface ComStSt25sdkCommandIso7816Type4RApduStatus () {
 @public
  jboolean mStatusError_;
}

- (void)parseResponseWithByteArray:(IOSByteArray *)response;

@end

__attribute__((unused)) static void ComStSt25sdkCommandIso7816Type4RApduStatus_parseResponseWithByteArray_(ComStSt25sdkCommandIso7816Type4RApduStatus *self, IOSByteArray *response);

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkCommandIso7816Type4RApduStatus)

jboolean ComStSt25sdkCommandIso7816Type4RApduStatus_mIgnoreSw2 = false;
IOSObjectArray *ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS;

@implementation ComStSt25sdkCommandIso7816Type4RApduStatus

+ (jboolean)mIgnoreSw2 {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_mIgnoreSw2;
}

+ (void)setMIgnoreSw2:(jboolean)value {
  ComStSt25sdkCommandIso7816Type4RApduStatus_mIgnoreSw2 = value;
}

+ (jbyte)SW1_NORMALPROCESSING {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_NORMALPROCESSING;
}

+ (jbyte)SW2_NORMALPROCESSING {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_NORMALPROCESSING;
}

+ (jbyte)SW1_NORMALPROCESSINGREMAINDATA {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_NORMALPROCESSINGREMAINDATA;
}

+ (jbyte)SW1_WARNINGPROCESSING_NVMUNCHANGED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_WARNINGPROCESSING_NVMUNCHANGED;
}

+ (jbyte)SW2_WARNTRIGGEDBYCARDB {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNTRIGGEDBYCARDB;
}

+ (jbyte)SW2_WARNTRIGGEDBYCARDE {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNTRIGGEDBYCARDE;
}

+ (jbyte)SW2_WARNTDATAMAYCORRUPT {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNTDATAMAYCORRUPT;
}

+ (jbyte)SW2_WARNEOFREACHED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNEOFREACHED;
}

+ (jbyte)SW2_WARNSELFILERELEASED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNSELFILERELEASED;
}

+ (jbyte)SW2_WARNFILTECTRLERR {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNFILTECTRLERR;
}

+ (jbyte)SW1_WARNINGPROCESSING_NVMCHANGED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_WARNINGPROCESSING_NVMCHANGED;
}

+ (jbyte)SW1_EXECERROR_NVMUNCHANGED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_EXECERROR_NVMUNCHANGED;
}

+ (jbyte)SW1_EXECERROR_NVMCHANGED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_EXECERROR_NVMCHANGED;
}

+ (jbyte)SW1_EXECERROR_SECURITY {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_EXECERROR_SECURITY;
}

+ (jbyte)SW1_CHECKERROR_WRONGLENGTH {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGLENGTH;
}

+ (jbyte)SW1_CHECKERROR_FUNCLANOTSUPPORTED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_FUNCLANOTSUPPORTED;
}

+ (jbyte)SW1_CHECKERROR_CMDNOTALLOWED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_CMDNOTALLOWED;
}

+ (jbyte)SW1_CHECKERROR_WRONGPARAMETER {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGPARAMETER;
}

+ (jbyte)SW1_CHECKERROR_WRONGPARAMETER2 {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGPARAMETER2;
}

+ (jbyte)SW1_CHECKERROR_WRONGLEFIELD {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGLEFIELD;
}

+ (jbyte)SW1_CHECKERROR_INSNOTSUPPORTED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_INSNOTSUPPORTED;
}

+ (jbyte)SW1_CHECKERROR_CLANOTSUPPORTED {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_CLANOTSUPPORTED;
}

+ (jbyte)SW1_CHECKERROR_UNKNOWNERR {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_UNKNOWNERR;
}

+ (IOSObjectArray *)ISO_7816_TYPE_4_ERRORS {
  return ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS;
}

- (instancetype)initWithByteArray:(IOSByteArray *)response {
  ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByteArray_(self, response);
  return self;
}

- (instancetype)initWithByte:(jbyte)SW1
                    withByte:(jbyte)SW2
                withNSString:(NSString *)meaning
withComStSt25sdkSTException_STExceptionCode:(ComStSt25sdkSTException_STExceptionCode *)code {
  ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_(self, SW1, SW2, meaning, code);
  return self;
}

- (void)parseResponseWithByteArray:(IOSByteArray *)response {
  ComStSt25sdkCommandIso7816Type4RApduStatus_parseResponseWithByteArray_(self, response);
}

- (jboolean)isEqual:(id)obj {
  return self == obj || (obj != nil && [self java_getClass] == [obj java_getClass] && !((mSW1_ != ((ComStSt25sdkCommandIso7816Type4RApduStatus *) cast_chk(obj, [ComStSt25sdkCommandIso7816Type4RApduStatus class]))->mSW1_) || (mSW2_ != ((ComStSt25sdkCommandIso7816Type4RApduStatus *) cast_chk(obj, [ComStSt25sdkCommandIso7816Type4RApduStatus class]))->mSW2_)));
}

- (jboolean)isError {
  return mStatusError_;
}

+ (void)checkErrorWithByteArray:(IOSByteArray *)response {
  ComStSt25sdkCommandIso7816Type4RApduStatus_checkErrorWithByteArray_(response);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 0, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByteArray:);
  methods[1].selector = @selector(initWithByte:withByte:withNSString:withComStSt25sdkSTException_STExceptionCode:);
  methods[2].selector = @selector(parseResponseWithByteArray:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(isError);
  methods[5].selector = @selector(checkErrorWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mError_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mSTExceptionCode_", "LComStSt25sdkSTException_STExceptionCode;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mSW1_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mSW2_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mStatusError_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mIgnoreSw2", "Z", .constantValue.asLong = 0, 0x9, -1, 7, -1, -1 },
    { "SW1_NORMALPROCESSING", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_NORMALPROCESSING, 0x18, -1, -1, -1, -1 },
    { "SW2_NORMALPROCESSING", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_NORMALPROCESSING, 0x18, -1, -1, -1, -1 },
    { "SW1_NORMALPROCESSINGREMAINDATA", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_NORMALPROCESSINGREMAINDATA, 0x18, -1, -1, -1, -1 },
    { "SW1_WARNINGPROCESSING_NVMUNCHANGED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_WARNINGPROCESSING_NVMUNCHANGED, 0x18, -1, -1, -1, -1 },
    { "SW2_WARNTRIGGEDBYCARDB", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNTRIGGEDBYCARDB, 0x18, -1, -1, -1, -1 },
    { "SW2_WARNTRIGGEDBYCARDE", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNTRIGGEDBYCARDE, 0x18, -1, -1, -1, -1 },
    { "SW2_WARNTDATAMAYCORRUPT", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNTDATAMAYCORRUPT, 0x18, -1, -1, -1, -1 },
    { "SW2_WARNEOFREACHED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNEOFREACHED, 0x18, -1, -1, -1, -1 },
    { "SW2_WARNSELFILERELEASED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNSELFILERELEASED, 0x18, -1, -1, -1, -1 },
    { "SW2_WARNFILTECTRLERR", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW2_WARNFILTECTRLERR, 0x18, -1, -1, -1, -1 },
    { "SW1_WARNINGPROCESSING_NVMCHANGED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_WARNINGPROCESSING_NVMCHANGED, 0x18, -1, -1, -1, -1 },
    { "SW1_EXECERROR_NVMUNCHANGED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_EXECERROR_NVMUNCHANGED, 0x18, -1, -1, -1, -1 },
    { "SW1_EXECERROR_NVMCHANGED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_EXECERROR_NVMCHANGED, 0x18, -1, -1, -1, -1 },
    { "SW1_EXECERROR_SECURITY", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_EXECERROR_SECURITY, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_WRONGLENGTH", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGLENGTH, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_FUNCLANOTSUPPORTED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_FUNCLANOTSUPPORTED, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_CMDNOTALLOWED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_CMDNOTALLOWED, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_WRONGPARAMETER", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGPARAMETER, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_WRONGPARAMETER2", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGPARAMETER2, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_WRONGLEFIELD", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_WRONGLEFIELD, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_INSNOTSUPPORTED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_INSNOTSUPPORTED, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_CLANOTSUPPORTED", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_CLANOTSUPPORTED, 0x18, -1, -1, -1, -1 },
    { "SW1_CHECKERROR_UNKNOWNERR", "B", .constantValue.asChar = ComStSt25sdkCommandIso7816Type4RApduStatus_SW1_CHECKERROR_UNKNOWNERR, 0x18, -1, -1, -1, -1 },
    { "ISO_7816_TYPE_4_ERRORS", "[LComStSt25sdkCommandIso7816Type4RApduStatus;", .constantValue.asLong = 0, 0x18, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "[B", "LComStSt25sdkSTException;", "BBLNSString;LComStSt25sdkSTException_STExceptionCode;", "parseResponse", "equals", "LNSObject;", "checkError", &ComStSt25sdkCommandIso7816Type4RApduStatus_mIgnoreSw2, &ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS };
  static const J2ObjcClassInfo _ComStSt25sdkCommandIso7816Type4RApduStatus = { "Iso7816Type4RApduStatus", "com.st.st25sdk.command", ptrTable, methods, fields, 7, 0x1, 6, 30, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkCommandIso7816Type4RApduStatus;
}

+ (void)initialize {
  if (self == [ComStSt25sdkCommandIso7816Type4RApduStatus class]) {
    ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS = [IOSObjectArray newArrayWithObjects:(id[]){ create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x62, (jbyte) (jint) 0x80, @"File overflow (Le error)", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, FILE_OVERFLOW)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x62, (jbyte) (jint) 0x82, @"End of file or record reached before reading Le bytes", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, EOF)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x63, (jbyte) (jint) 0x00, @"A password is required", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, PASSWORD_NEEDED)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x63, (jbyte) (jint) 0xCF, @"The password transmitted is incorrect", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, WRONG_PASSWORD)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x65, (jbyte) (jint) 0x81, @"Unsuccessful updating", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, UPDATE_ERROR)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x67, (jbyte) (jint) 0x00, @"Wrong length", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, WRONG_LENGTH)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x69, (jbyte) (jint) 0x85, @"Condition of use not satisfied - (e.g. no NDEF file Was selected", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_USE_CONTEXT)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x69, (jbyte) (jint) 0x81, @"Command Incompatible with file structure", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_CMD_FOR_FILE)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x69, (jbyte) (jint) 0x82, @"Security status not satisfied", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, WRONG_SECURITY_STATUS)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x69, (jbyte) (jint) 0x84, @"Reference data not usable", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_DATA_PARAM)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x6A, (jbyte) (jint) 0x80, @"Incorrect Parameter in cmd data field", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_CMD_PARAM)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x6A, (jbyte) (jint) 0x82, @"File or Application Not found", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, FILE_APPLICATION_NOT_SUPPORTED)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x6A, (jbyte) (jint) 0x86, @"Incorrect Parameter P1-P2", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_P1_P2)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x6E, (jbyte) (jint) 0x00, @"Class not supported", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CLASS_NOT_SUPPORTED)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x6D, (jbyte) (jint) 0x00, @"INS field not supported", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INS_FIELD_NOT_SUPPORTED)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x00, (jbyte) (jint) 0x01, @"Tag Unreacheable", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, TAG_NOT_IN_THE_FIELD)), create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_((jbyte) (jint) 0x00, (jbyte) (jint) 0x00, @"unsupported Error", JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_ERROR_CODE)) } count:17 type:ComStSt25sdkCommandIso7816Type4RApduStatus_class_()];
    J2OBJC_SET_INITIALIZED(ComStSt25sdkCommandIso7816Type4RApduStatus)
  }
}

@end

void ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByteArray_(ComStSt25sdkCommandIso7816Type4RApduStatus *self, IOSByteArray *response) {
  NSObject_init(self);
  ComStSt25sdkCommandIso7816Type4RApduStatus_parseResponseWithByteArray_(self, response);
}

ComStSt25sdkCommandIso7816Type4RApduStatus *new_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByteArray_(IOSByteArray *response) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandIso7816Type4RApduStatus, initWithByteArray_, response)
}

ComStSt25sdkCommandIso7816Type4RApduStatus *create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByteArray_(IOSByteArray *response) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkCommandIso7816Type4RApduStatus, initWithByteArray_, response)
}

void ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_(ComStSt25sdkCommandIso7816Type4RApduStatus *self, jbyte SW1, jbyte SW2, NSString *meaning, ComStSt25sdkSTException_STExceptionCode *code) {
  NSObject_init(self);
  self->mSW1_ = SW1;
  self->mSW2_ = SW2;
  self->mError_ = meaning;
  self->mStatusError_ = true;
  self->mSTExceptionCode_ = code;
}

ComStSt25sdkCommandIso7816Type4RApduStatus *new_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_(jbyte SW1, jbyte SW2, NSString *meaning, ComStSt25sdkSTException_STExceptionCode *code) {
  J2OBJC_NEW_IMPL(ComStSt25sdkCommandIso7816Type4RApduStatus, initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_, SW1, SW2, meaning, code)
}

ComStSt25sdkCommandIso7816Type4RApduStatus *create_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_(jbyte SW1, jbyte SW2, NSString *meaning, ComStSt25sdkSTException_STExceptionCode *code) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkCommandIso7816Type4RApduStatus, initWithByte_withByte_withNSString_withComStSt25sdkSTException_STExceptionCode_, SW1, SW2, meaning, code)
}

void ComStSt25sdkCommandIso7816Type4RApduStatus_parseResponseWithByteArray_(ComStSt25sdkCommandIso7816Type4RApduStatus *self, IOSByteArray *response) {
  if (((IOSByteArray *) nil_chk(response))->size_ < 2) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_withByteArray_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, UNKNOWN_ANSWER), response);
  }
  self->mSW1_ = IOSByteArray_Get(response, response->size_ - 2);
  self->mSW2_ = IOSByteArray_Get(response, response->size_ - 1);
  if ((self->mSW1_ == (jbyte) (jint) 0x90) && ((self->mSW2_ == (jbyte) (jint) 0x00) || ComStSt25sdkCommandIso7816Type4RApduStatus_mIgnoreSw2)) {
    self->mSTExceptionCode_ = nil;
    self->mError_ = @"Command Completed";
    self->mStatusError_ = false;
    *IOSByteArray_GetRef(response, response->size_ - 1) = (jint) 0x00;
    return;
  }
  self->mStatusError_ = true;
  jint i = 0;
  while (i < ((IOSObjectArray *) nil_chk(ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS))->size_ && ![((ComStSt25sdkCommandIso7816Type4RApduStatus *) nil_chk(IOSObjectArray_Get(ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS, i))) isEqual:self]) i++;
  if (i == ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS->size_) {
    if ((self->mSW1_ == (jint) 0x63) && ((self->mSW2_ & (jint) 0xF0) == (jint) 0xC0)) {
      self->mSTExceptionCode_ = JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, WRONG_PASSWORD);
    }
    else {
      self->mSTExceptionCode_ = JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, UNKNOWN_ANSWER);
    }
  }
  else self->mSTExceptionCode_ = ((ComStSt25sdkCommandIso7816Type4RApduStatus *) nil_chk(IOSObjectArray_Get(ComStSt25sdkCommandIso7816Type4RApduStatus_ISO_7816_TYPE_4_ERRORS, i)))->mSTExceptionCode_;
}

void ComStSt25sdkCommandIso7816Type4RApduStatus_checkErrorWithByteArray_(IOSByteArray *response) {
  ComStSt25sdkCommandIso7816Type4RApduStatus_initialize();
  ComStSt25sdkCommandIso7816Type4RApduStatus *status = new_ComStSt25sdkCommandIso7816Type4RApduStatus_initWithByteArray_(response);
  if ([status isError]) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_withByteArray_(status->mSTExceptionCode_, response);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandIso7816Type4RApduStatus)
