//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/st25ta/ST25TA02KBTag.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType4aSt25taST25TA02KBTag")
#ifdef RESTRICT_ComStSt25sdkType4aSt25taST25TA02KBTag
#define INCLUDE_ALL_ComStSt25sdkType4aSt25taST25TA02KBTag 0
#else
#define INCLUDE_ALL_ComStSt25sdkType4aSt25taST25TA02KBTag 1
#endif
#undef RESTRICT_ComStSt25sdkType4aSt25taST25TA02KBTag

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType4aSt25taST25TA02KBTag_) && (INCLUDE_ALL_ComStSt25sdkType4aSt25taST25TA02KBTag || defined(INCLUDE_ComStSt25sdkType4aSt25taST25TA02KBTag))
#define ComStSt25sdkType4aSt25taST25TA02KBTag_

#define RESTRICT_ComStSt25sdkType4aSt25taST25TATag 1
#define INCLUDE_ComStSt25sdkType4aSt25taST25TATag 1
#include "com/st/st25sdk/type4a/st25ta/ST25TATag.h"

#define RESTRICT_ComStSt25sdkSignatureInterface 1
#define INCLUDE_ComStSt25sdkSignatureInterface 1
#include "com/st/st25sdk/SignatureInterface.h"

@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkType4aSt25taST25TA02KBTag : ComStSt25sdkType4aSt25taST25TATag < ComStSt25sdkSignatureInterface >

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                                  withByteArray:(IOSByteArray *)uid;

- (NSString *)getDecodedCertificateNDA;

- (jbyte)getKeyIdNDA;

- (jboolean)isSignatureOkNDA;

- (IOSByteArray *)readSignatureNDA;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType4aSt25taST25TA02KBTag)

FOUNDATION_EXPORT void ComStSt25sdkType4aSt25taST25TA02KBTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType4aSt25taST25TA02KBTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkType4aSt25taST25TA02KBTag *new_ComStSt25sdkType4aSt25taST25TA02KBTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType4aSt25taST25TA02KBTag *create_ComStSt25sdkType4aSt25taST25TA02KBTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType4aSt25taST25TA02KBTag)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType4aSt25taST25TA02KBTag")
