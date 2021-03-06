//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/AugmentedNdefInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkAugmentedNdefInterface")
#ifdef RESTRICT_ComStSt25sdkAugmentedNdefInterface
#define INCLUDE_ALL_ComStSt25sdkAugmentedNdefInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkAugmentedNdefInterface 1
#endif
#undef RESTRICT_ComStSt25sdkAugmentedNdefInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkAugmentedNdefInterface_) && (INCLUDE_ALL_ComStSt25sdkAugmentedNdefInterface || defined(INCLUDE_ComStSt25sdkAugmentedNdefInterface))
#define ComStSt25sdkAugmentedNdefInterface_

@class ComStSt25sdkNdefUriRecord;

@protocol ComStSt25sdkAugmentedNdefInterface < JavaObject >

- (jboolean)isAndefEnabled;

- (void)enableAndefWithBoolean:(jboolean)isAndefEnabled;

- (void)writeAndefUriWithComStSt25sdkNdefUriRecord:(ComStSt25sdkNdefUriRecord *)originalUriRecord;

- (NSString *)getAndefString;

- (jboolean)isAndefSeparatorEnabled;

- (void)enableAndefSeparatorWithBoolean:(jboolean)isAndefSeparatorEnabled;

- (void)setAndefSeparatorWithNSString:(NSString *)andefSeparator;

- (NSString *)getAndefSeparator;

- (jboolean)isAndefUidEnabled;

- (void)enableAndefUidWithBoolean:(jboolean)isAndefUidEnabled;

- (void)setAndefStartAddressInBytesWithInt:(jint)value;

- (jint)getAndefStartAddressInBytes;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkAugmentedNdefInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkAugmentedNdefInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkAugmentedNdefInterface")
