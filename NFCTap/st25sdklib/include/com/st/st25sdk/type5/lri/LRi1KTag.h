//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/lri/LRi1KTag.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5LriLRi1KTag")
#ifdef RESTRICT_ComStSt25sdkType5LriLRi1KTag
#define INCLUDE_ALL_ComStSt25sdkType5LriLRi1KTag 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5LriLRi1KTag 1
#endif
#undef RESTRICT_ComStSt25sdkType5LriLRi1KTag

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5LriLRi1KTag_) && (INCLUDE_ALL_ComStSt25sdkType5LriLRi1KTag || defined(INCLUDE_ComStSt25sdkType5LriLRi1KTag))
#define ComStSt25sdkType5LriLRi1KTag_

#define RESTRICT_ComStSt25sdkType5LriLRiTag 1
#define INCLUDE_ComStSt25sdkType5LriLRiTag 1
#include "com/st/st25sdk/type5/lri/LRiTag.h"

@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkType5LriLRi1KTag : ComStSt25sdkType5LriLRiTag

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                                  withByteArray:(IOSByteArray *)uid;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5LriLRi1KTag)

FOUNDATION_EXPORT void ComStSt25sdkType5LriLRi1KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType5LriLRi1KTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkType5LriLRi1KTag *new_ComStSt25sdkType5LriLRi1KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType5LriLRi1KTag *create_ComStSt25sdkType5LriLRi1KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5LriLRi1KTag)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5LriLRi1KTag")
