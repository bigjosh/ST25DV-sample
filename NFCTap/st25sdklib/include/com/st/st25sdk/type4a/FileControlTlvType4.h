//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/FileControlTlvType4.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType4aFileControlTlvType4")
#ifdef RESTRICT_ComStSt25sdkType4aFileControlTlvType4
#define INCLUDE_ALL_ComStSt25sdkType4aFileControlTlvType4 0
#else
#define INCLUDE_ALL_ComStSt25sdkType4aFileControlTlvType4 1
#endif
#undef RESTRICT_ComStSt25sdkType4aFileControlTlvType4

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType4aFileControlTlvType4_) && (INCLUDE_ALL_ComStSt25sdkType4aFileControlTlvType4 || defined(INCLUDE_ComStSt25sdkType4aFileControlTlvType4))
#define ComStSt25sdkType4aFileControlTlvType4_

@class IOSByteArray;

@interface ComStSt25sdkType4aFileControlTlvType4 : NSObject
@property (readonly, class) jbyte PERMANENTLY_LOCKED NS_SWIFT_NAME(PERMANENTLY_LOCKED);
@property (readonly, class) jbyte LOCKED_BY_PASSWORD NS_SWIFT_NAME(LOCKED_BY_PASSWORD);

+ (jbyte)PERMANENTLY_LOCKED;

+ (jbyte)LOCKED_BY_PASSWORD;

#pragma mark Public

- (instancetype __nonnull)initWithByte:(jbyte)type
                               withInt:(jint)length;

- (jint)getFileId;

- (jint)getLength;

- (jint)getMaxFileSize;

- (jbyte)getReadAccess;

- (jbyte)getType;

- (jbyte)getWriteAccess;

+ (ComStSt25sdkType4aFileControlTlvType4 *)newInstanceWithByteArray:(IOSByteArray *)buffer OBJC_METHOD_FAMILY_NONE;

- (void)parseWithByteArray:(IOSByteArray *)buffer;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType4aFileControlTlvType4)

inline jbyte ComStSt25sdkType4aFileControlTlvType4_get_PERMANENTLY_LOCKED(void);
#define ComStSt25sdkType4aFileControlTlvType4_PERMANENTLY_LOCKED -1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType4aFileControlTlvType4, PERMANENTLY_LOCKED, jbyte)

inline jbyte ComStSt25sdkType4aFileControlTlvType4_get_LOCKED_BY_PASSWORD(void);
#define ComStSt25sdkType4aFileControlTlvType4_LOCKED_BY_PASSWORD -128
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType4aFileControlTlvType4, LOCKED_BY_PASSWORD, jbyte)

FOUNDATION_EXPORT ComStSt25sdkType4aFileControlTlvType4 *ComStSt25sdkType4aFileControlTlvType4_newInstanceWithByteArray_(IOSByteArray *buffer);

FOUNDATION_EXPORT void ComStSt25sdkType4aFileControlTlvType4_initWithByte_withInt_(ComStSt25sdkType4aFileControlTlvType4 *self, jbyte type, jint length);

FOUNDATION_EXPORT ComStSt25sdkType4aFileControlTlvType4 *new_ComStSt25sdkType4aFileControlTlvType4_initWithByte_withInt_(jbyte type, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType4aFileControlTlvType4 *create_ComStSt25sdkType4aFileControlTlvType4_initWithByte_withInt_(jbyte type, jint length);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType4aFileControlTlvType4)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType4aFileControlTlvType4")
