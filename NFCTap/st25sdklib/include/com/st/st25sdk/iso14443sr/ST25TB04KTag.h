//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/iso14443sr/ST25TB04KTag.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkIso14443srST25TB04KTag")
#ifdef RESTRICT_ComStSt25sdkIso14443srST25TB04KTag
#define INCLUDE_ALL_ComStSt25sdkIso14443srST25TB04KTag 0
#else
#define INCLUDE_ALL_ComStSt25sdkIso14443srST25TB04KTag 1
#endif
#undef RESTRICT_ComStSt25sdkIso14443srST25TB04KTag

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkIso14443srST25TB04KTag_) && (INCLUDE_ALL_ComStSt25sdkIso14443srST25TB04KTag || defined(INCLUDE_ComStSt25sdkIso14443srST25TB04KTag))
#define ComStSt25sdkIso14443srST25TB04KTag_

#define RESTRICT_ComStSt25sdkIso14443srSTIso14443SRTag 1
#define INCLUDE_ComStSt25sdkIso14443srSTIso14443SRTag 1
#include "com/st/st25sdk/iso14443sr/STIso14443SRTag.h"

@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkIso14443srST25TB04KTag : ComStSt25sdkIso14443srSTIso14443SRTag

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                                  withByteArray:(IOSByteArray *)uid;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkIso14443srST25TB04KTag)

FOUNDATION_EXPORT void ComStSt25sdkIso14443srST25TB04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkIso14443srST25TB04KTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkIso14443srST25TB04KTag *new_ComStSt25sdkIso14443srST25TB04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkIso14443srST25TB04KTag *create_ComStSt25sdkIso14443srST25TB04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkIso14443srST25TB04KTag)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkIso14443srST25TB04KTag")
