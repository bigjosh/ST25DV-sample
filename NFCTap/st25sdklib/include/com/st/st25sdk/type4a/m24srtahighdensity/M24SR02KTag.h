//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/m24srtahighdensity/M24SR02KTag.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag")
#ifdef RESTRICT_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag
#define INCLUDE_ALL_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag 0
#else
#define INCLUDE_ALL_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag 1
#endif
#undef RESTRICT_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType4aM24srtahighdensityM24SR02KTag_) && (INCLUDE_ALL_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag || defined(INCLUDE_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag))
#define ComStSt25sdkType4aM24srtahighdensityM24SR02KTag_

#define RESTRICT_ComStSt25sdkType4aM24srtahighdensityM24SRTag 1
#define INCLUDE_ComStSt25sdkType4aM24srtahighdensityM24SRTag 1
#include "com/st/st25sdk/type4a/m24srtahighdensity/M24SRTag.h"

@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkType4aM24srtahighdensityM24SR02KTag : ComStSt25sdkType4aM24srtahighdensityM24SRTag

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                                  withByteArray:(IOSByteArray *)uid;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType4aM24srtahighdensityM24SR02KTag)

FOUNDATION_EXPORT void ComStSt25sdkType4aM24srtahighdensityM24SR02KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType4aM24srtahighdensityM24SR02KTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkType4aM24srtahighdensityM24SR02KTag *new_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType4aM24srtahighdensityM24SR02KTag *create_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType4aM24srtahighdensityM24SR02KTag)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType4aM24srtahighdensityM24SR02KTag")
