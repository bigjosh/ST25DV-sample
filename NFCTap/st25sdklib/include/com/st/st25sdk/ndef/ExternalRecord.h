//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/ExternalRecord.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkNdefExternalRecord")
#ifdef RESTRICT_ComStSt25sdkNdefExternalRecord
#define INCLUDE_ALL_ComStSt25sdkNdefExternalRecord 0
#else
#define INCLUDE_ALL_ComStSt25sdkNdefExternalRecord 1
#endif
#undef RESTRICT_ComStSt25sdkNdefExternalRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkNdefExternalRecord_) && (INCLUDE_ALL_ComStSt25sdkNdefExternalRecord || defined(INCLUDE_ComStSt25sdkNdefExternalRecord))
#define ComStSt25sdkNdefExternalRecord_

#define RESTRICT_ComStSt25sdkNdefNDEFRecord 1
#define INCLUDE_ComStSt25sdkNdefNDEFRecord 1
#include "com/st/st25sdk/ndef/NDEFRecord.h"

@class IOSByteArray;
@class JavaIoByteArrayInputStream;

@interface ComStSt25sdkNdefExternalRecord : ComStSt25sdkNdefNDEFRecord
@property (readonly, copy, class) NSString *DEFAULT_EXTERNAL_TYPE_FORMAT NS_SWIFT_NAME(DEFAULT_EXTERNAL_TYPE_FORMAT);
@property (readonly, copy, class) NSString *DEFAULT_EXTERNAL_DOMAIN_FORMAT NS_SWIFT_NAME(DEFAULT_EXTERNAL_DOMAIN_FORMAT);
@property (copy, class) NSString *DEFAULT_EXTERNAL_FORMAT NS_SWIFT_NAME(DEFAULT_EXTERNAL_FORMAT);

+ (NSString *)DEFAULT_EXTERNAL_TYPE_FORMAT;

+ (NSString *)DEFAULT_EXTERNAL_DOMAIN_FORMAT;

+ (NSString *)DEFAULT_EXTERNAL_FORMAT;

+ (void)setDEFAULT_EXTERNAL_FORMAT:(NSString *)value;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream;

- (IOSByteArray *)getContent;

- (NSString *)getExternalDomain;

- (NSString *)getExternalType;

- (IOSByteArray *)getPayload;

- (void)setContentWithByteArray:(IOSByteArray *)content;

- (void)setExternalDomainWithNSString:(NSString *)domain;

- (void)setExternalTypeWithNSString:(NSString *)externalType;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComStSt25sdkNdefNDEFRecord:(ComStSt25sdkNdefNDEFRecord *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkNdefExternalRecord)

inline NSString *ComStSt25sdkNdefExternalRecord_get_DEFAULT_EXTERNAL_TYPE_FORMAT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComStSt25sdkNdefExternalRecord_DEFAULT_EXTERNAL_TYPE_FORMAT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComStSt25sdkNdefExternalRecord, DEFAULT_EXTERNAL_TYPE_FORMAT, NSString *)

inline NSString *ComStSt25sdkNdefExternalRecord_get_DEFAULT_EXTERNAL_DOMAIN_FORMAT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComStSt25sdkNdefExternalRecord_DEFAULT_EXTERNAL_DOMAIN_FORMAT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComStSt25sdkNdefExternalRecord, DEFAULT_EXTERNAL_DOMAIN_FORMAT, NSString *)

inline NSString *ComStSt25sdkNdefExternalRecord_get_DEFAULT_EXTERNAL_FORMAT(void);
inline NSString *ComStSt25sdkNdefExternalRecord_set_DEFAULT_EXTERNAL_FORMAT(NSString *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComStSt25sdkNdefExternalRecord_DEFAULT_EXTERNAL_FORMAT;
J2OBJC_STATIC_FIELD_OBJ(ComStSt25sdkNdefExternalRecord, DEFAULT_EXTERNAL_FORMAT, NSString *)

FOUNDATION_EXPORT void ComStSt25sdkNdefExternalRecord_init(ComStSt25sdkNdefExternalRecord *self);

FOUNDATION_EXPORT ComStSt25sdkNdefExternalRecord *new_ComStSt25sdkNdefExternalRecord_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefExternalRecord *create_ComStSt25sdkNdefExternalRecord_init(void);

FOUNDATION_EXPORT void ComStSt25sdkNdefExternalRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefExternalRecord *self, JavaIoByteArrayInputStream *inputStream);

FOUNDATION_EXPORT ComStSt25sdkNdefExternalRecord *new_ComStSt25sdkNdefExternalRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefExternalRecord *create_ComStSt25sdkNdefExternalRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkNdefExternalRecord)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkNdefExternalRecord")
