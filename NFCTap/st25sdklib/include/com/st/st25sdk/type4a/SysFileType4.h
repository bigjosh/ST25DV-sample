//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/SysFileType4.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType4aSysFileType4")
#ifdef RESTRICT_ComStSt25sdkType4aSysFileType4
#define INCLUDE_ALL_ComStSt25sdkType4aSysFileType4 0
#else
#define INCLUDE_ALL_ComStSt25sdkType4aSysFileType4 1
#endif
#undef RESTRICT_ComStSt25sdkType4aSysFileType4

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType4aSysFileType4_) && (INCLUDE_ALL_ComStSt25sdkType4aSysFileType4 || defined(INCLUDE_ComStSt25sdkType4aSysFileType4))
#define ComStSt25sdkType4aSysFileType4_

@class ComStSt25sdkType4aType4Tag;
@class IOSByteArray;

@interface ComStSt25sdkType4aSysFileType4 : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkType4aType4Tag:(ComStSt25sdkType4aType4Tag *)tag;

- (IOSByteArray *)read;

- (jint)readLength;

- (void)selectFile;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType4aSysFileType4)

FOUNDATION_EXPORT void ComStSt25sdkType4aSysFileType4_initWithComStSt25sdkType4aType4Tag_(ComStSt25sdkType4aSysFileType4 *self, ComStSt25sdkType4aType4Tag *tag);

FOUNDATION_EXPORT ComStSt25sdkType4aSysFileType4 *new_ComStSt25sdkType4aSysFileType4_initWithComStSt25sdkType4aType4Tag_(ComStSt25sdkType4aType4Tag *tag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType4aSysFileType4 *create_ComStSt25sdkType4aSysFileType4_initWithComStSt25sdkType4aType4Tag_(ComStSt25sdkType4aType4Tag *tag);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType4aSysFileType4)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType4aSysFileType4")
