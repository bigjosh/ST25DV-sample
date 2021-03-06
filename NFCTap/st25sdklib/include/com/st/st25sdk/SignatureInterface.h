//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/SignatureInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkSignatureInterface")
#ifdef RESTRICT_ComStSt25sdkSignatureInterface
#define INCLUDE_ALL_ComStSt25sdkSignatureInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkSignatureInterface 1
#endif
#undef RESTRICT_ComStSt25sdkSignatureInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkSignatureInterface_) && (INCLUDE_ALL_ComStSt25sdkSignatureInterface || defined(INCLUDE_ComStSt25sdkSignatureInterface))
#define ComStSt25sdkSignatureInterface_

@class IOSByteArray;

@protocol ComStSt25sdkSignatureInterface < JavaObject >

- (jbyte)getKeyIdNDA;

- (jboolean)isSignatureOkNDA;

- (IOSByteArray *)readSignatureNDA;

- (NSString *)getDecodedCertificateNDA;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkSignatureInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSignatureInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkSignatureInterface")
