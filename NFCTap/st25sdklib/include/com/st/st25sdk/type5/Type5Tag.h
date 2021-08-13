//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/Type5Tag.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5Type5Tag")
#ifdef RESTRICT_ComStSt25sdkType5Type5Tag
#define INCLUDE_ALL_ComStSt25sdkType5Type5Tag 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5Type5Tag 1
#endif
#undef RESTRICT_ComStSt25sdkType5Type5Tag

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5Type5Tag_) && (INCLUDE_ALL_ComStSt25sdkType5Type5Tag || defined(INCLUDE_ComStSt25sdkType5Type5Tag))
#define ComStSt25sdkType5Type5Tag_

#define RESTRICT_ComStSt25sdkNFCTag 1
#define INCLUDE_ComStSt25sdkNFCTag 1
#include "com/st/st25sdk/NFCTag.h"

#define RESTRICT_ComStSt25sdkCCFileInterface 1
#define INCLUDE_ComStSt25sdkCCFileInterface 1
#include "com/st/st25sdk/CCFileInterface.h"

#define RESTRICT_ComStSt25sdkSysFileInterface 1
#define INCLUDE_ComStSt25sdkSysFileInterface 1
#include "com/st/st25sdk/SysFileInterface.h"

#define RESTRICT_ComStSt25sdkCacheInterface 1
#define INCLUDE_ComStSt25sdkCacheInterface 1
#include "com/st/st25sdk/CacheInterface.h"

#define RESTRICT_ComStSt25sdkCommandNdefCommandInterface 1
#define INCLUDE_ComStSt25sdkCommandNdefCommandInterface 1
#include "com/st/st25sdk/command/NdefCommandInterface.h"

@class ComStSt25sdkCommandIso15693Command;
@class ComStSt25sdkCommandNdefType5Command;
@class ComStSt25sdkCommandType5Command;
@class ComStSt25sdkNdefNDEFMsg;
@class ComStSt25sdkTagCache;
@class ComStSt25sdkType5CCFileType5;
@class ComStSt25sdkType5ReadBlockResult;
@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkType5Type5Tag : ComStSt25sdkNFCTag < ComStSt25sdkCCFileInterface, ComStSt25sdkSysFileInterface, ComStSt25sdkCacheInterface, ComStSt25sdkCommandNdefCommandInterface > {
 @public
  ComStSt25sdkType5CCFileType5 *mCCFile_;
  ComStSt25sdkCommandType5Command *mType5Cmd_;
  ComStSt25sdkCommandIso15693Command *mIso15693Cmd_;
  ComStSt25sdkCommandNdefType5Command *mNdefCmd_;
  ComStSt25sdkTagCache *mCache_;
  jint mMaxReadMultipleBlocksReturned_;
}
@property (readonly, class) jint DEFAULT_NBR_OF_BYTES_PER_BLOCK NS_SWIFT_NAME(DEFAULT_NBR_OF_BYTES_PER_BLOCK);

+ (jint)DEFAULT_NBR_OF_BYTES_PER_BLOCK;

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                                  withByteArray:(IOSByteArray *)uid;

- (void)activateCache;

- (void)deactivateCache;

- (jbyte)extendedLockSingleBlockWithInt:(jint)blockAddress;

- (jbyte)extendedLockSingleBlockWithInt:(jint)blockAddress
                               withByte:(jbyte)flag;

- (IOSByteArray *)extendedReadMultipleBlockWithInt:(jint)blockAddress
                                           withInt:(jint)numberOfBlocks;

- (IOSByteArray *)extendedReadMultipleBlockWithInt:(jint)blockAddress
                                           withInt:(jint)numberOfBlocks
                                          withByte:(jbyte)flag;

- (IOSByteArray *)extendedReadSingleBlockWithInt:(jint)blockAddress;

- (IOSByteArray *)extendedReadSingleBlockWithInt:(jint)blockAddress
                                        withByte:(jbyte)flag;

- (jbyte)extendedWriteSingleBlockWithInt:(jint)blockAddress
                           withByteArray:(IOSByteArray *)buffer;

- (jbyte)extendedWriteSingleBlockWithInt:(jint)blockAddress
                           withByteArray:(IOSByteArray *)buffer
                                withByte:(jbyte)flag;

- (jbyte)getAFI;

- (jint)getBlockSizeInBytes;

- (jint)getCCFileLength;

- (jbyte)getCCMagicNumber;

- (jbyte)getCCMappingVersion;

- (jint)getCCMemorySize;

- (jbyte)getCCReadAccess;

- (jbyte)getCCWriteAccess;

- (jbyte)getDSFID;

- (IOSByteArray *)getExpectedCCFileData;

- (jint)getExpectedCCFileLength;

- (jbyte)getICRef;

- (jint)getMaxReadMultipleBlocksReturned;

- (jint)getMemSizeInBytes;

- (jint)getNumberOfBlocks;

- (jint)getSysFileLength;

- (void)initEmptyCCFile OBJC_METHOD_FAMILY_NONE;

- (void)invalidateCache;

- (void)invalidateCCFileCache;

- (void)invalidateNdefCache;

- (jboolean)isCacheActivated;

- (jboolean)isCacheValid;

- (jboolean)isCCFileValid;

- (jbyte)lockSingleBlockWithInt:(jint)blockAddress;

- (jbyte)lockSingleBlockWithInt:(jint)blockAddress
                       withByte:(jbyte)flag;

- (ComStSt25sdkType5ReadBlockResult *)readBlocksWithInt:(jint)firstBlockAddress
                                                withInt:(jint)sizeInBlocks;

- (ComStSt25sdkType5ReadBlockResult *)readBlocksWithInt:(jint)firstBlockAddress
                                                withInt:(jint)sizeInBlocks
                                               withByte:(jbyte)flag;

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes;

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes
                          withByte:(jbyte)flag;

- (IOSByteArray *)readCCFile;

- (IOSByteArray *)readMultipleBlockWithInt:(jint)blockAddress
                                   withInt:(jint)numberOfBlocks;

- (IOSByteArray *)readMultipleBlockWithInt:(jint)blockAddress
                                   withInt:(jint)numberOfBlocks
                                  withByte:(jbyte)flag;

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage;

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessageWithByte:(jbyte)flag;

- (IOSByteArray *)readSingleBlockWithInt:(jint)blockAddress;

- (IOSByteArray *)readSingleBlockWithInt:(jint)blockAddress
                                withByte:(jbyte)flag;

- (IOSByteArray *)readSysFile;

- (jbyte)select;

- (jbyte)selectWithByte:(jbyte)flag;

- (void)selectSysFile;

- (void)setMaxReadMultipleBlocksReturnedWithInt:(jint)maxReadMultipleBlocksReturned;

- (jbyte)stayQuiet;

- (jbyte)stayQuietWithByte:(jbyte)flag;

- (void)updateCache;

- (void)validateCache;

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)data;

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)data
                  withByte:(jbyte)flag;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data
                 withByte:(jbyte)flag;

- (void)writeCCFile;

- (void)writeCCFileWithByteArray:(IOSByteArray *)buffer;

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg;

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg
                                        withBoolean:(jboolean)updateCCFile;

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg
                                           withByte:(jbyte)flag;

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg
                                           withByte:(jbyte)flag
                                        withBoolean:(jboolean)updateCCFile;

- (jbyte)writeSingleBlockWithInt:(jint)blockAddress
                   withByteArray:(IOSByteArray *)buffer;

- (jbyte)writeSingleBlockWithInt:(jint)blockAddress
                   withByteArray:(IOSByteArray *)buffer
                        withByte:(jbyte)flag;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5Type5Tag)

J2OBJC_FIELD_SETTER(ComStSt25sdkType5Type5Tag, mCCFile_, ComStSt25sdkType5CCFileType5 *)
J2OBJC_FIELD_SETTER(ComStSt25sdkType5Type5Tag, mType5Cmd_, ComStSt25sdkCommandType5Command *)
J2OBJC_FIELD_SETTER(ComStSt25sdkType5Type5Tag, mIso15693Cmd_, ComStSt25sdkCommandIso15693Command *)
J2OBJC_FIELD_SETTER(ComStSt25sdkType5Type5Tag, mNdefCmd_, ComStSt25sdkCommandNdefType5Command *)
J2OBJC_FIELD_SETTER(ComStSt25sdkType5Type5Tag, mCache_, ComStSt25sdkTagCache *)

inline jint ComStSt25sdkType5Type5Tag_get_DEFAULT_NBR_OF_BYTES_PER_BLOCK(void);
#define ComStSt25sdkType5Type5Tag_DEFAULT_NBR_OF_BYTES_PER_BLOCK 4
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5Type5Tag, DEFAULT_NBR_OF_BYTES_PER_BLOCK, jint)

FOUNDATION_EXPORT void ComStSt25sdkType5Type5Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType5Type5Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkType5Type5Tag *new_ComStSt25sdkType5Type5Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType5Type5Tag *create_ComStSt25sdkType5Type5Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5Type5Tag)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5Type5Tag")
