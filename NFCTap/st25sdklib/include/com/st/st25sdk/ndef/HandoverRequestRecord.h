//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/HandoverRequestRecord.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkNdefHandoverRequestRecord")
#ifdef RESTRICT_ComStSt25sdkNdefHandoverRequestRecord
#define INCLUDE_ALL_ComStSt25sdkNdefHandoverRequestRecord 0
#else
#define INCLUDE_ALL_ComStSt25sdkNdefHandoverRequestRecord 1
#endif
#undef RESTRICT_ComStSt25sdkNdefHandoverRequestRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkNdefHandoverRequestRecord_) && (INCLUDE_ALL_ComStSt25sdkNdefHandoverRequestRecord || defined(INCLUDE_ComStSt25sdkNdefHandoverRequestRecord))
#define ComStSt25sdkNdefHandoverRequestRecord_

#define RESTRICT_ComStSt25sdkNdefNDEFRecord 1
#define INCLUDE_ComStSt25sdkNdefNDEFRecord 1
#include "com/st/st25sdk/ndef/NDEFRecord.h"

@class IOSByteArray;
@class JavaIoByteArrayInputStream;
@protocol JavaUtilList;

@interface ComStSt25sdkNdefHandoverRequestRecord : ComStSt25sdkNdefNDEFRecord

#pragma mark Public

- (instancetype __nonnull)initWithByte:(jbyte)versionMajorNumber
                              withByte:(jbyte)versionMinorNumber
                      withJavaUtilList:(id<JavaUtilList>)records;

- (instancetype __nonnull)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream;

- (IOSByteArray *)getPayload;

- (id<JavaUtilList>)getRecords;

- (jbyte)getVersionMajorNumber;

- (jbyte)getVersionMinorNumber;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComStSt25sdkNdefNDEFRecord:(ComStSt25sdkNdefNDEFRecord *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkNdefHandoverRequestRecord)

FOUNDATION_EXPORT void ComStSt25sdkNdefHandoverRequestRecord_initWithByte_withByte_withJavaUtilList_(ComStSt25sdkNdefHandoverRequestRecord *self, jbyte versionMajorNumber, jbyte versionMinorNumber, id<JavaUtilList> records);

FOUNDATION_EXPORT ComStSt25sdkNdefHandoverRequestRecord *new_ComStSt25sdkNdefHandoverRequestRecord_initWithByte_withByte_withJavaUtilList_(jbyte versionMajorNumber, jbyte versionMinorNumber, id<JavaUtilList> records) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefHandoverRequestRecord *create_ComStSt25sdkNdefHandoverRequestRecord_initWithByte_withByte_withJavaUtilList_(jbyte versionMajorNumber, jbyte versionMinorNumber, id<JavaUtilList> records);

FOUNDATION_EXPORT void ComStSt25sdkNdefHandoverRequestRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefHandoverRequestRecord *self, JavaIoByteArrayInputStream *inputStream);

FOUNDATION_EXPORT ComStSt25sdkNdefHandoverRequestRecord *new_ComStSt25sdkNdefHandoverRequestRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefHandoverRequestRecord *create_ComStSt25sdkNdefHandoverRequestRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkNdefHandoverRequestRecord)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkNdefHandoverRequestRecord")
