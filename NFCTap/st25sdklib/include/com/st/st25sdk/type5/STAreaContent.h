//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/STAreaContent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5STAreaContent")
#ifdef RESTRICT_ComStSt25sdkType5STAreaContent
#define INCLUDE_ALL_ComStSt25sdkType5STAreaContent 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5STAreaContent 1
#endif
#undef RESTRICT_ComStSt25sdkType5STAreaContent

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5STAreaContent_) && (INCLUDE_ALL_ComStSt25sdkType5STAreaContent || defined(INCLUDE_ComStSt25sdkType5STAreaContent))
#define ComStSt25sdkType5STAreaContent_

#define RESTRICT_ComStSt25sdkCacheInterface 1
#define INCLUDE_ComStSt25sdkCacheInterface 1
#include "com/st/st25sdk/CacheInterface.h"

@class ComStSt25sdkCommandNdefType5Command;
@class ComStSt25sdkNdefNDEFMsg;
@class ComStSt25sdkType5STType5MultiAreaTag;
@class IOSByteArray;

@interface ComStSt25sdkType5STAreaContent : NSObject < ComStSt25sdkCacheInterface >

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkType5STType5MultiAreaTag:(ComStSt25sdkType5STType5MultiAreaTag *)tag
                                                               withInt:(jint)memoryOffsetInBytes
                                                               withInt:(jint)areaSizeInBytes
                               withComStSt25sdkCommandNdefType5Command:(ComStSt25sdkCommandNdefType5Command *)ndefType5Command;

- (void)activateCache;

- (void)deactivateCache;

- (void)invalidateCache;

- (jboolean)isCacheActivated;

- (jboolean)isCacheValid;

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage;

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessageWithByte:(jbyte)flag
                                       withByteArray:(IOSByteArray *)uid;

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessageWithInt:(jint)nbOfBlocksInCCFile
                                           withByte:(jbyte)flag
                                      withByteArray:(IOSByteArray *)uid;

- (void)updateCache;

- (void)validateCache;

- (void)writeNdefMessageWithInt:(jint)ccOffsetInBlocks
    withComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg;

- (void)writeNdefMessageWithInt:(jint)ccOffsetInBlocks
    withComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg
                       withByte:(jbyte)flag
                  withByteArray:(IOSByteArray *)uid;

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5STAreaContent)

FOUNDATION_EXPORT void ComStSt25sdkType5STAreaContent_initWithComStSt25sdkType5STType5MultiAreaTag_withInt_withInt_withComStSt25sdkCommandNdefType5Command_(ComStSt25sdkType5STAreaContent *self, ComStSt25sdkType5STType5MultiAreaTag *tag, jint memoryOffsetInBytes, jint areaSizeInBytes, ComStSt25sdkCommandNdefType5Command *ndefType5Command);

FOUNDATION_EXPORT ComStSt25sdkType5STAreaContent *new_ComStSt25sdkType5STAreaContent_initWithComStSt25sdkType5STType5MultiAreaTag_withInt_withInt_withComStSt25sdkCommandNdefType5Command_(ComStSt25sdkType5STType5MultiAreaTag *tag, jint memoryOffsetInBytes, jint areaSizeInBytes, ComStSt25sdkCommandNdefType5Command *ndefType5Command) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType5STAreaContent *create_ComStSt25sdkType5STAreaContent_initWithComStSt25sdkType5STType5MultiAreaTag_withInt_withInt_withComStSt25sdkCommandNdefType5Command_(ComStSt25sdkType5STType5MultiAreaTag *tag, jint memoryOffsetInBytes, jint areaSizeInBytes, ComStSt25sdkCommandNdefType5Command *ndefType5Command);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5STAreaContent)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5STAreaContent")
