//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Type5Command.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandType5Command")
#ifdef RESTRICT_ComStSt25sdkCommandType5Command
#define INCLUDE_ALL_ComStSt25sdkCommandType5Command 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandType5Command 1
#endif
#undef RESTRICT_ComStSt25sdkCommandType5Command

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandType5Command_) && (INCLUDE_ALL_ComStSt25sdkCommandType5Command || defined(INCLUDE_ComStSt25sdkCommandType5Command))
#define ComStSt25sdkCommandType5Command_

#define RESTRICT_ComStSt25sdkCommandIso15693Protocol 1
#define INCLUDE_ComStSt25sdkCommandIso15693Protocol 1
#include "com/st/st25sdk/command/Iso15693Protocol.h"

#define RESTRICT_ComStSt25sdkCommandType5CommandInterface 1
#define INCLUDE_ComStSt25sdkCommandType5CommandInterface 1
#include "com/st/st25sdk/command/Type5CommandInterface.h"

@class ComStSt25sdkCommandIso15693Command;
@class ComStSt25sdkType5ReadBlockResult;
@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkCommandType5Command : ComStSt25sdkCommandIso15693Protocol < ComStSt25sdkCommandType5CommandInterface > {
 @public
  ComStSt25sdkCommandIso15693Command *mIso15693Cmd_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)reader
                                                  withByteArray:(IOSByteArray *)uid;

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)reader
                                                  withByteArray:(IOSByteArray *)uid
                                                       withByte:(jbyte)flag;

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)reader
                                                  withByteArray:(IOSByteArray *)uid
                                                       withByte:(jbyte)flag
                                                        withInt:(jint)nbrOfBytesPerBlock;

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)reader
                                                  withByteArray:(IOSByteArray *)uid
                                                        withInt:(jint)nbrOfBytesPerBlock;

- (jbyte)extendedLockSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                     withByte:(jbyte)flag
                                withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)extendedReadMultipleBlockWithByteArray:(IOSByteArray *)blockAddress
                                           withByteArray:(IOSByteArray *)nbrOfBlocks
                                                withByte:(jbyte)flag
                                           withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)extendedReadSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                              withByte:(jbyte)flag
                                         withByteArray:(IOSByteArray *)uid;

- (jbyte)extendedWriteSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                 withByteArray:(IOSByteArray *)buffer
                                      withByte:(jbyte)flag
                                 withByteArray:(IOSByteArray *)uid;

- (jbyte)lockSingleBlockWithByte:(jbyte)blockAddress
                        withByte:(jbyte)flag
                   withByteArray:(IOSByteArray *)uid;

- (ComStSt25sdkType5ReadBlockResult *)readBlocksWithInt:(jint)firstBlockAddress
                                                withInt:(jint)sizeInBlocks;

- (ComStSt25sdkType5ReadBlockResult *)readBlocksWithInt:(jint)firstBlockAddress
                                                withInt:(jint)sizeInBlocks
                                               withByte:(jbyte)flag
                                          withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes;

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes
                          withByte:(jbyte)flag
                     withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)readMultipleBlockWithByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks
                                   withByte:(jbyte)flag
                              withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)readSingleBlockWithByte:(jbyte)blockAddress
                                 withByte:(jbyte)flag
                            withByteArray:(IOSByteArray *)uid;

- (jbyte)selectWithByte:(jbyte)flag
          withByteArray:(IOSByteArray *)uid;

- (void)setFlagWithByte:(jbyte)flag;

- (void)setIsReadMultipleBlockSupportedWithBoolean:(jboolean)isReadMultipleBlockSupported;

- (void)setIsWriteMultipleBlockSupportedWithBoolean:(jboolean)isWriteMultipleBlockSupported;

- (void)setTagMaxReadMultipleBlockLengthWithInt:(jint)tagMaxReadMultipleBlockLength;

- (jbyte)stayQuietWithByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)buffer;

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)buffer
                  withByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)buffer;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)buffer
                 withByte:(jbyte)flag
            withByteArray:(IOSByteArray *)uid;

- (jbyte)writeSingleBlockWithByte:(jbyte)blockAddress
                    withByteArray:(IOSByteArray *)buffer;

- (jbyte)writeSingleBlockWithByte:(jbyte)blockAddress
                    withByteArray:(IOSByteArray *)buffer
                         withByte:(jbyte)flag
                    withByteArray:(IOSByteArray *)uid;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandType5Command)

J2OBJC_FIELD_SETTER(ComStSt25sdkCommandType5Command, mIso15693Cmd_, ComStSt25sdkCommandIso15693Command *)

FOUNDATION_EXPORT void ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkCommandType5Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *new_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *create_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT void ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(ComStSt25sdkCommandType5Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *new_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *create_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT void ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(ComStSt25sdkCommandType5Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *new_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *create_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT void ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(ComStSt25sdkCommandType5Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *new_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5Command *create_ComStSt25sdkCommandType5Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandType5Command)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandType5Command")
