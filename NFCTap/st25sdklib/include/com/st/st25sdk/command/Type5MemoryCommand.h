//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Type5MemoryCommand.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandType5MemoryCommand")
#ifdef RESTRICT_ComStSt25sdkCommandType5MemoryCommand
#define INCLUDE_ALL_ComStSt25sdkCommandType5MemoryCommand 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandType5MemoryCommand 1
#endif
#undef RESTRICT_ComStSt25sdkCommandType5MemoryCommand

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandType5MemoryCommand_) && (INCLUDE_ALL_ComStSt25sdkCommandType5MemoryCommand || defined(INCLUDE_ComStSt25sdkCommandType5MemoryCommand))
#define ComStSt25sdkCommandType5MemoryCommand_

#define RESTRICT_ComStSt25sdkCommandIso15693Protocol 1
#define INCLUDE_ComStSt25sdkCommandIso15693Protocol 1
#include "com/st/st25sdk/command/Iso15693Protocol.h"

#define RESTRICT_ComStSt25sdkCommandType5MemoryCommandInterface 1
#define INCLUDE_ComStSt25sdkCommandType5MemoryCommandInterface 1
#include "com/st/st25sdk/command/Type5MemoryCommandInterface.h"

@class ComStSt25sdkType5ReadBlockResult;
@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkCommandType5MemoryCommand : ComStSt25sdkCommandIso15693Protocol < ComStSt25sdkCommandType5MemoryCommandInterface >

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

- (IOSByteArray *)readSingleBlockWithInt:(jint)blockOffset
                                withByte:(jbyte)flag
                           withByteArray:(IOSByteArray *)uid;

- (void)setFlagWithByte:(jbyte)flag;

- (void)setIsReadMultipleBlockSupportedWithBoolean:(jboolean)isReadMultipleBlockSupported;

- (void)setIsWriteMultipleBlockSupportedWithBoolean:(jboolean)isWriteMultipleBlockSupported;

- (void)setTagMaxReadMultipleBlockLengthWithInt:(jint)tagMaxReadMultipleBlockLength;

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)data;

- (void)writeBlocksWithInt:(jint)firstBlockAddress
             withByteArray:(IOSByteArray *)data
                  withByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data
                 withByte:(jbyte)flag
            withByteArray:(IOSByteArray *)uid;

- (jbyte)writeSingleBlockWithInt:(jint)blockOffset
                   withByteArray:(IOSByteArray *)buffer
                        withByte:(jbyte)flag
                   withByteArray:(IOSByteArray *)uid;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandType5MemoryCommand)

FOUNDATION_EXPORT void ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkCommandType5MemoryCommand *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *new_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *create_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT void ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(ComStSt25sdkCommandType5MemoryCommand *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *new_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *create_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT void ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(ComStSt25sdkCommandType5MemoryCommand *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *new_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *create_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT void ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(ComStSt25sdkCommandType5MemoryCommand *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *new_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand *create_ComStSt25sdkCommandType5MemoryCommand_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandType5MemoryCommand)

#endif

#if !defined (ComStSt25sdkCommandType5MemoryCommand_CommandSupport_) && (INCLUDE_ALL_ComStSt25sdkCommandType5MemoryCommand || defined(INCLUDE_ComStSt25sdkCommandType5MemoryCommand_CommandSupport))
#define ComStSt25sdkCommandType5MemoryCommand_CommandSupport_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkCommandType5MemoryCommand_CommandSupport_Enum) {
  ComStSt25sdkCommandType5MemoryCommand_CommandSupport_Enum_INFORMATION_NOT_AVAILABLE_YET = 0,
  ComStSt25sdkCommandType5MemoryCommand_CommandSupport_Enum_COMMAND_SUPPORTED = 1,
  ComStSt25sdkCommandType5MemoryCommand_CommandSupport_Enum_COMMAND_NOT_SUPPORTED = 2,
};

@interface ComStSt25sdkCommandType5MemoryCommand_CommandSupport : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkCommandType5MemoryCommand_CommandSupport *INFORMATION_NOT_AVAILABLE_YET NS_SWIFT_NAME(INFORMATION_NOT_AVAILABLE_YET);
@property (readonly, class, nonnull) ComStSt25sdkCommandType5MemoryCommand_CommandSupport *COMMAND_SUPPORTED NS_SWIFT_NAME(COMMAND_SUPPORTED);
@property (readonly, class, nonnull) ComStSt25sdkCommandType5MemoryCommand_CommandSupport *COMMAND_NOT_SUPPORTED NS_SWIFT_NAME(COMMAND_NOT_SUPPORTED);
+ (ComStSt25sdkCommandType5MemoryCommand_CommandSupport * __nonnull)INFORMATION_NOT_AVAILABLE_YET;

+ (ComStSt25sdkCommandType5MemoryCommand_CommandSupport * __nonnull)COMMAND_SUPPORTED;

+ (ComStSt25sdkCommandType5MemoryCommand_CommandSupport * __nonnull)COMMAND_NOT_SUPPORTED;

#pragma mark Public

+ (ComStSt25sdkCommandType5MemoryCommand_CommandSupport *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkCommandType5MemoryCommand_CommandSupport_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkCommandType5MemoryCommand_CommandSupport)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand_CommandSupport *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_values_[];

inline ComStSt25sdkCommandType5MemoryCommand_CommandSupport *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_get_INFORMATION_NOT_AVAILABLE_YET(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkCommandType5MemoryCommand_CommandSupport, INFORMATION_NOT_AVAILABLE_YET)

inline ComStSt25sdkCommandType5MemoryCommand_CommandSupport *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_get_COMMAND_SUPPORTED(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkCommandType5MemoryCommand_CommandSupport, COMMAND_SUPPORTED)

inline ComStSt25sdkCommandType5MemoryCommand_CommandSupport *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_get_COMMAND_NOT_SUPPORTED(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkCommandType5MemoryCommand_CommandSupport, COMMAND_NOT_SUPPORTED)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_values(void);

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand_CommandSupport *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkCommandType5MemoryCommand_CommandSupport *ComStSt25sdkCommandType5MemoryCommand_CommandSupport_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandType5MemoryCommand_CommandSupport)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandType5MemoryCommand")
