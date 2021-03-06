//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Iso15693Command.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandIso15693Command")
#ifdef RESTRICT_ComStSt25sdkCommandIso15693Command
#define INCLUDE_ALL_ComStSt25sdkCommandIso15693Command 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandIso15693Command 1
#endif
#undef RESTRICT_ComStSt25sdkCommandIso15693Command

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandIso15693Command_) && (INCLUDE_ALL_ComStSt25sdkCommandIso15693Command || defined(INCLUDE_ComStSt25sdkCommandIso15693Command))
#define ComStSt25sdkCommandIso15693Command_

#define RESTRICT_ComStSt25sdkCommandIso15693Protocol 1
#define INCLUDE_ComStSt25sdkCommandIso15693Protocol 1
#include "com/st/st25sdk/command/Iso15693Protocol.h"

#define RESTRICT_ComStSt25sdkCommandIso15693CommandInterface 1
#define INCLUDE_ComStSt25sdkCommandIso15693CommandInterface 1
#include "com/st/st25sdk/command/Iso15693CommandInterface.h"

@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkCommandIso15693Command : ComStSt25sdkCommandIso15693Protocol < ComStSt25sdkCommandIso15693CommandInterface >
@property (readonly, class) jbyte ISO15693_CMD_INVENTORY NS_SWIFT_NAME(ISO15693_CMD_INVENTORY);
@property (readonly, class) jbyte ISO15693_CMD_STAY_QUIET NS_SWIFT_NAME(ISO15693_CMD_STAY_QUIET);
@property (readonly, class) jbyte ISO15693_CMD_READ_SINGLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_READ_SINGLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_WRITE_SINGLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_WRITE_SINGLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_LOCK_BLOCK NS_SWIFT_NAME(ISO15693_CMD_LOCK_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_READ_MULTIPLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_READ_MULTIPLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_WRITE_MULTIPLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_WRITE_MULTIPLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_SELECT NS_SWIFT_NAME(ISO15693_CMD_SELECT);
@property (readonly, class) jbyte ISO15693_CMD_RESET_TO_READY NS_SWIFT_NAME(ISO15693_CMD_RESET_TO_READY);
@property (readonly, class) jbyte ISO15693_CMD_WRITE_AFI NS_SWIFT_NAME(ISO15693_CMD_WRITE_AFI);
@property (readonly, class) jbyte ISO15693_CMD_LOCK_AFI NS_SWIFT_NAME(ISO15693_CMD_LOCK_AFI);
@property (readonly, class) jbyte ISO15693_CMD_WRITE_DSFID NS_SWIFT_NAME(ISO15693_CMD_WRITE_DSFID);
@property (readonly, class) jbyte ISO15693_CMD_LOCK_DSFID NS_SWIFT_NAME(ISO15693_CMD_LOCK_DSFID);
@property (readonly, class) jbyte ISO15693_CMD_GET_SYSTEM_INFO NS_SWIFT_NAME(ISO15693_CMD_GET_SYSTEM_INFO);
@property (readonly, class) jbyte ISO15693_CMD_GET_MULTIPLE_BLOCK_SEC_STATUS NS_SWIFT_NAME(ISO15693_CMD_GET_MULTIPLE_BLOCK_SEC_STATUS);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_READ_SINGLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_READ_SINGLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_WRITE_SINGLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_WRITE_SINGLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_LOCK_SINGLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_LOCK_SINGLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_READ_MULTIPLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_READ_MULTIPLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_WRITE_MULTIPLE_BLOCK NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_WRITE_MULTIPLE_BLOCK);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_GET_SYSTEM_INFO NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_GET_SYSTEM_INFO);
@property (readonly, class) jbyte ISO15693_CMD_EXTENDED_GET_MULTIPLE_BLOCK_SEC_STATUS NS_SWIFT_NAME(ISO15693_CMD_EXTENDED_GET_MULTIPLE_BLOCK_SEC_STATUS);

+ (jbyte)ISO15693_CMD_INVENTORY;

+ (jbyte)ISO15693_CMD_STAY_QUIET;

+ (jbyte)ISO15693_CMD_READ_SINGLE_BLOCK;

+ (jbyte)ISO15693_CMD_WRITE_SINGLE_BLOCK;

+ (jbyte)ISO15693_CMD_LOCK_BLOCK;

+ (jbyte)ISO15693_CMD_READ_MULTIPLE_BLOCK;

+ (jbyte)ISO15693_CMD_WRITE_MULTIPLE_BLOCK;

+ (jbyte)ISO15693_CMD_SELECT;

+ (jbyte)ISO15693_CMD_RESET_TO_READY;

+ (jbyte)ISO15693_CMD_WRITE_AFI;

+ (jbyte)ISO15693_CMD_LOCK_AFI;

+ (jbyte)ISO15693_CMD_WRITE_DSFID;

+ (jbyte)ISO15693_CMD_LOCK_DSFID;

+ (jbyte)ISO15693_CMD_GET_SYSTEM_INFO;

+ (jbyte)ISO15693_CMD_GET_MULTIPLE_BLOCK_SEC_STATUS;

+ (jbyte)ISO15693_CMD_EXTENDED_READ_SINGLE_BLOCK;

+ (jbyte)ISO15693_CMD_EXTENDED_WRITE_SINGLE_BLOCK;

+ (jbyte)ISO15693_CMD_EXTENDED_LOCK_SINGLE_BLOCK;

+ (jbyte)ISO15693_CMD_EXTENDED_READ_MULTIPLE_BLOCK;

+ (jbyte)ISO15693_CMD_EXTENDED_WRITE_MULTIPLE_BLOCK;

+ (jbyte)ISO15693_CMD_EXTENDED_GET_SYSTEM_INFO;

+ (jbyte)ISO15693_CMD_EXTENDED_GET_MULTIPLE_BLOCK_SEC_STATUS;

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

- (IOSByteArray *)extendedGetMultipleBlockSecStatusWithByteArray:(IOSByteArray *)firstBlock
                                                   withByteArray:(IOSByteArray *)nbOfBlocks;

- (IOSByteArray *)extendedGetMultipleBlockSecStatusWithByteArray:(IOSByteArray *)firstBlock
                                                   withByteArray:(IOSByteArray *)nbrOfBlocks
                                                        withByte:(jbyte)flag
                                                   withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)extendedGetSystemInfo;

- (IOSByteArray *)extendedGetSystemInfoWithByte:(jbyte)parameters;

- (IOSByteArray *)extendedGetSystemInfoWithByte:(jbyte)parameters
                                       withByte:(jbyte)flag
                                  withByteArray:(IOSByteArray *)uid;

- (jbyte)extendedLockSingleBlockWithByteArray:(IOSByteArray *)blockAddress;

- (jbyte)extendedLockSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                     withByte:(jbyte)flag
                                withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)extendedReadMultipleBlockWithByteArray:(IOSByteArray *)blockAddress
                                           withByteArray:(IOSByteArray *)nbrOfBlocks;

- (IOSByteArray *)extendedReadMultipleBlockWithByteArray:(IOSByteArray *)blockAddress
                                           withByteArray:(IOSByteArray *)nbrOfBlocks
                                                withByte:(jbyte)flag
                                           withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)extendedReadSingleBlockWithByteArray:(IOSByteArray *)blockAddress;

- (IOSByteArray *)extendedReadSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                              withByte:(jbyte)flag
                                         withByteArray:(IOSByteArray *)uid;

- (jbyte)extendedWriteMultipleBlockWithByteArray:(IOSByteArray *)blockAddress
                                   withByteArray:(IOSByteArray *)nbrOfBlocks
                                   withByteArray:(IOSByteArray *)buffer;

- (jbyte)extendedWriteMultipleBlockWithByteArray:(IOSByteArray *)blockAddress
                                   withByteArray:(IOSByteArray *)nbrOfBlocks
                                   withByteArray:(IOSByteArray *)buffer
                                        withByte:(jbyte)flag
                                   withByteArray:(IOSByteArray *)uid;

- (jbyte)extendedWriteSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                 withByteArray:(IOSByteArray *)buffer;

- (jbyte)extendedWriteSingleBlockWithByteArray:(IOSByteArray *)blockAddress
                                 withByteArray:(IOSByteArray *)buffer
                                      withByte:(jbyte)flag
                                 withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)getMultipleBlockSecStatusWithByte:(jbyte)firstBlock
                                           withByte:(jbyte)nbOfBlocks;

- (IOSByteArray *)getMultipleBlockSecStatusWithByte:(jbyte)firstBlock
                                           withByte:(jbyte)nbOfBlocks
                                           withByte:(jbyte)flag
                                      withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)getSystemInfo;

- (IOSByteArray *)getSystemInfoWithByte:(jbyte)flag
                          withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)inventoryWithByte:(jbyte)flag;

- (IOSByteArray *)inventoryWithByte:(jbyte)flag
                           withByte:(jbyte)afiField;

- (IOSByteArray *)inventoryWithByte:(jbyte)flag
                           withByte:(jbyte)maskLengthInBits
                      withByteArray:(IOSByteArray *)maskValue;

- (IOSByteArray *)inventoryWithByte:(jbyte)flag
                           withByte:(jbyte)maskLengthInBits
                      withByteArray:(IOSByteArray *)maskValue
                           withByte:(jbyte)afiField;

- (jbyte)lockAFI;

- (jbyte)lockAFIWithByte:(jbyte)flag
           withByteArray:(IOSByteArray *)uid;

- (jbyte)lockBlockWithByte:(jbyte)blockAddress;

- (jbyte)lockBlockWithByte:(jbyte)blockAddress
                  withByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (jbyte)lockDSFID;

- (jbyte)lockDSFIDWithByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)readMultipleBlockWithByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)readMultipleBlockWithByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks
                                   withByte:(jbyte)flag
                              withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)readSingleBlockWithByte:(jbyte)blockAddress;

- (IOSByteArray *)readSingleBlockWithByte:(jbyte)blockAddress
                                 withByte:(jbyte)flag
                            withByteArray:(IOSByteArray *)uid;

- (jbyte)resetToReady;

- (jbyte)resetToReadyWithByte:(jbyte)flag
                withByteArray:(IOSByteArray *)uid;

- (jbyte)select;

- (jbyte)selectWithByte:(jbyte)flag
          withByteArray:(IOSByteArray *)uid;

- (jbyte)stayQuiet;

- (jbyte)stayQuietWithByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (jbyte)writeAFIWithByte:(jbyte)value;

- (jbyte)writeAFIWithByte:(jbyte)value
                 withByte:(jbyte)flag
            withByteArray:(IOSByteArray *)uid;

- (jbyte)writeDSFIDWithByte:(jbyte)value;

- (jbyte)writeDSFIDWithByte:(jbyte)value
                   withByte:(jbyte)flag
              withByteArray:(IOSByteArray *)uid;

- (jbyte)writeMultipleBlockWithByte:(jbyte)blockAddress
                           withByte:(jbyte)nbrOfBlocks
                      withByteArray:(IOSByteArray *)buffer;

- (jbyte)writeMultipleBlockWithByte:(jbyte)blockAddress
                           withByte:(jbyte)nbrOfBlocks
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

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandIso15693Command)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_INVENTORY(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_INVENTORY 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_INVENTORY, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_STAY_QUIET(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_STAY_QUIET 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_STAY_QUIET, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_READ_SINGLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_READ_SINGLE_BLOCK 32
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_READ_SINGLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_WRITE_SINGLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_WRITE_SINGLE_BLOCK 33
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_WRITE_SINGLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_LOCK_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_LOCK_BLOCK 34
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_LOCK_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_READ_MULTIPLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_READ_MULTIPLE_BLOCK 35
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_READ_MULTIPLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_WRITE_MULTIPLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_WRITE_MULTIPLE_BLOCK 36
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_WRITE_MULTIPLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_SELECT(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_SELECT 37
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_SELECT, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_RESET_TO_READY(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_RESET_TO_READY 38
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_RESET_TO_READY, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_WRITE_AFI(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_WRITE_AFI 39
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_WRITE_AFI, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_LOCK_AFI(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_LOCK_AFI 40
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_LOCK_AFI, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_WRITE_DSFID(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_WRITE_DSFID 41
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_WRITE_DSFID, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_LOCK_DSFID(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_LOCK_DSFID 42
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_LOCK_DSFID, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_GET_SYSTEM_INFO(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_GET_SYSTEM_INFO 43
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_GET_SYSTEM_INFO, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_GET_MULTIPLE_BLOCK_SEC_STATUS(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_GET_MULTIPLE_BLOCK_SEC_STATUS 44
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_GET_MULTIPLE_BLOCK_SEC_STATUS, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_READ_SINGLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_READ_SINGLE_BLOCK 48
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_READ_SINGLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_WRITE_SINGLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_WRITE_SINGLE_BLOCK 49
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_WRITE_SINGLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_LOCK_SINGLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_LOCK_SINGLE_BLOCK 50
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_LOCK_SINGLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_READ_MULTIPLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_READ_MULTIPLE_BLOCK 51
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_READ_MULTIPLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_WRITE_MULTIPLE_BLOCK(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_WRITE_MULTIPLE_BLOCK 52
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_WRITE_MULTIPLE_BLOCK, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_GET_SYSTEM_INFO(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_GET_SYSTEM_INFO 59
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_GET_SYSTEM_INFO, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Command_get_ISO15693_CMD_EXTENDED_GET_MULTIPLE_BLOCK_SEC_STATUS(void);
#define ComStSt25sdkCommandIso15693Command_ISO15693_CMD_EXTENDED_GET_MULTIPLE_BLOCK_SEC_STATUS 60
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Command, ISO15693_CMD_EXTENDED_GET_MULTIPLE_BLOCK_SEC_STATUS, jbyte)

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkCommandIso15693Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *new_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *create_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(ComStSt25sdkCommandIso15693Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *new_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *create_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(ComStSt25sdkCommandIso15693Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *new_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *create_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(ComStSt25sdkCommandIso15693Command *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *new_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Command *create_ComStSt25sdkCommandIso15693Command_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandIso15693Command)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandIso15693Command")
