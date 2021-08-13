//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/TnepServiceParameterRecord.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkNdefTnepServiceParameterRecord")
#ifdef RESTRICT_ComStSt25sdkNdefTnepServiceParameterRecord
#define INCLUDE_ALL_ComStSt25sdkNdefTnepServiceParameterRecord 0
#else
#define INCLUDE_ALL_ComStSt25sdkNdefTnepServiceParameterRecord 1
#endif
#undef RESTRICT_ComStSt25sdkNdefTnepServiceParameterRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkNdefTnepServiceParameterRecord_) && (INCLUDE_ALL_ComStSt25sdkNdefTnepServiceParameterRecord || defined(INCLUDE_ComStSt25sdkNdefTnepServiceParameterRecord))
#define ComStSt25sdkNdefTnepServiceParameterRecord_

#define RESTRICT_ComStSt25sdkNdefNDEFRecord 1
#define INCLUDE_ComStSt25sdkNdefNDEFRecord 1
#include "com/st/st25sdk/ndef/NDEFRecord.h"

@class IOSByteArray;
@class JavaIoByteArrayInputStream;

@interface ComStSt25sdkNdefTnepServiceParameterRecord : ComStSt25sdkNdefNDEFRecord
@property (readonly, class) jbyte SINGLE_RESPONSE_COMMUNICATION_MODE NS_SWIFT_NAME(SINGLE_RESPONSE_COMMUNICATION_MODE);
@property (readonly, class) jbyte SERVICE_SPECIFIC_COMMUNICATION_MODE NS_SWIFT_NAME(SERVICE_SPECIFIC_COMMUNICATION_MODE);

+ (jbyte)SINGLE_RESPONSE_COMMUNICATION_MODE;

+ (jbyte)SERVICE_SPECIFIC_COMMUNICATION_MODE;

#pragma mark Public

- (instancetype __nonnull)initWithByte:(jbyte)versionMajorNumber
                              withByte:(jbyte)versionMinorNumber
                          withNSString:(NSString *)serviceName
                              withByte:(jbyte)communicationMode
                              withByte:(jbyte)minimumWaitingTime
                              withByte:(jbyte)maximumNumberOfWaitingTimeExtensions
                               withInt:(jint)maximumNdefMessageSizeInBytes;

- (instancetype __nonnull)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream;

- (jbyte)getCommunicationMode;

- (jbyte)getMaximumNbrOfWaitingTimeExtensions;

- (jint)getMaximumNdefMessageSizeInBytes;

- (jbyte)getMinimumWaitingTime;

- (jint)getMinimumWaitingTimeInMs;

- (IOSByteArray *)getPayload;

- (NSString *)getServiceName;

- (jbyte)getVersionMajorNumber;

- (jbyte)getVersionMinorNumber;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComStSt25sdkNdefNDEFRecord:(ComStSt25sdkNdefNDEFRecord *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkNdefTnepServiceParameterRecord)

inline jbyte ComStSt25sdkNdefTnepServiceParameterRecord_get_SINGLE_RESPONSE_COMMUNICATION_MODE(void);
#define ComStSt25sdkNdefTnepServiceParameterRecord_SINGLE_RESPONSE_COMMUNICATION_MODE 0
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefTnepServiceParameterRecord, SINGLE_RESPONSE_COMMUNICATION_MODE, jbyte)

inline jbyte ComStSt25sdkNdefTnepServiceParameterRecord_get_SERVICE_SPECIFIC_COMMUNICATION_MODE(void);
#define ComStSt25sdkNdefTnepServiceParameterRecord_SERVICE_SPECIFIC_COMMUNICATION_MODE -2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefTnepServiceParameterRecord, SERVICE_SPECIFIC_COMMUNICATION_MODE, jbyte)

FOUNDATION_EXPORT void ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(ComStSt25sdkNdefTnepServiceParameterRecord *self, jbyte versionMajorNumber, jbyte versionMinorNumber, NSString *serviceName, jbyte communicationMode, jbyte minimumWaitingTime, jbyte maximumNumberOfWaitingTimeExtensions, jint maximumNdefMessageSizeInBytes);

FOUNDATION_EXPORT ComStSt25sdkNdefTnepServiceParameterRecord *new_ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(jbyte versionMajorNumber, jbyte versionMinorNumber, NSString *serviceName, jbyte communicationMode, jbyte minimumWaitingTime, jbyte maximumNumberOfWaitingTimeExtensions, jint maximumNdefMessageSizeInBytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefTnepServiceParameterRecord *create_ComStSt25sdkNdefTnepServiceParameterRecord_initWithByte_withByte_withNSString_withByte_withByte_withByte_withInt_(jbyte versionMajorNumber, jbyte versionMinorNumber, NSString *serviceName, jbyte communicationMode, jbyte minimumWaitingTime, jbyte maximumNumberOfWaitingTimeExtensions, jint maximumNdefMessageSizeInBytes);

FOUNDATION_EXPORT void ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefTnepServiceParameterRecord *self, JavaIoByteArrayInputStream *inputStream);

FOUNDATION_EXPORT ComStSt25sdkNdefTnepServiceParameterRecord *new_ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefTnepServiceParameterRecord *create_ComStSt25sdkNdefTnepServiceParameterRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkNdefTnepServiceParameterRecord)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkNdefTnepServiceParameterRecord")
