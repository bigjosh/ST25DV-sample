//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Iso15693Protocol.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandIso15693Protocol")
#ifdef RESTRICT_ComStSt25sdkCommandIso15693Protocol
#define INCLUDE_ALL_ComStSt25sdkCommandIso15693Protocol 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandIso15693Protocol 1
#endif
#undef RESTRICT_ComStSt25sdkCommandIso15693Protocol

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandIso15693Protocol_) && (INCLUDE_ALL_ComStSt25sdkCommandIso15693Protocol || defined(INCLUDE_ComStSt25sdkCommandIso15693Protocol))
#define ComStSt25sdkCommandIso15693Protocol_

@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkCommandIso15693Protocol : NSObject {
 @public
  id<ComStSt25sdkRFReaderInterface> mReaderInterface_;
  jbyte mFlag_;
  IOSByteArray *mUid_;
  jint mNbrOfBytesPerBlock_;
}
@property (readonly, class) jbyte STM_MANUFACTURER_CODE NS_SWIFT_NAME(STM_MANUFACTURER_CODE);
@property (readonly, class) jbyte SUB_CARRIER_MODE NS_SWIFT_NAME(SUB_CARRIER_MODE);
@property (readonly, class) jbyte HIGH_DATA_RATE_MODE NS_SWIFT_NAME(HIGH_DATA_RATE_MODE);
@property (readonly, class) jbyte INVENTORY_MODE NS_SWIFT_NAME(INVENTORY_MODE);
@property (readonly, class) jbyte PROTOCOL_FORMAT_EXTENSION NS_SWIFT_NAME(PROTOCOL_FORMAT_EXTENSION);
@property (readonly, class) jbyte SELECTED_MODE NS_SWIFT_NAME(SELECTED_MODE);
@property (readonly, class) jbyte ADDRESSED_MODE NS_SWIFT_NAME(ADDRESSED_MODE);
@property (readonly, class) jbyte OPTION_FLAG NS_SWIFT_NAME(OPTION_FLAG);
@property (readonly, class) jbyte INVENTORY_AFI_FLAG NS_SWIFT_NAME(INVENTORY_AFI_FLAG);
@property (readonly, class) jbyte INVENTORY_AFI_FIELD NS_SWIFT_NAME(INVENTORY_AFI_FIELD);
@property (readonly, class) jbyte INVENTORY_ONE_SLOT NS_SWIFT_NAME(INVENTORY_ONE_SLOT);
@property (readonly, class) jint DEFAULT_READ_MULTIPLE_MAX_NBR_OF_BLOCKS NS_SWIFT_NAME(DEFAULT_READ_MULTIPLE_MAX_NBR_OF_BLOCKS);
@property (readonly, class) jint DEFAULT_WRITE_MULTIPLE_MAX_NBR_OF_BLOCKS NS_SWIFT_NAME(DEFAULT_WRITE_MULTIPLE_MAX_NBR_OF_BLOCKS);
@property (readonly, class) jbyte ISO_RESPONSE_FLAG_NOERROR NS_SWIFT_NAME(ISO_RESPONSE_FLAG_NOERROR);
@property (readonly, class) jbyte ISO_RESPONSE_FLAG_ERROR NS_SWIFT_NAME(ISO_RESPONSE_FLAG_ERROR);
@property (readonly, class) jbyte ISO_ERRORCODE_CMD_NOT_SUPPORTED NS_SWIFT_NAME(ISO_ERRORCODE_CMD_NOT_SUPPORTED);
@property (readonly, class) jbyte ISO_ERRORCODE_CMD_NOT_RECOGNIZED NS_SWIFT_NAME(ISO_ERRORCODE_CMD_NOT_RECOGNIZED);
@property (readonly, class) jbyte ISO_ERRORCODE_CMD_OPTION_NOT_SUPPORTED NS_SWIFT_NAME(ISO_ERRORCODE_CMD_OPTION_NOT_SUPPORTED);
@property (readonly, class) jbyte ISO_ERRORCODE_CMD_FAILED NS_SWIFT_NAME(ISO_ERRORCODE_CMD_FAILED);
@property (readonly, class) jbyte ISO_ERRORCODE_BLOCK_NOT_AVAILABLE NS_SWIFT_NAME(ISO_ERRORCODE_BLOCK_NOT_AVAILABLE);
@property (readonly, class) jbyte ISO_ERRORCODE_BLOCK_ALREADY_LOCKED NS_SWIFT_NAME(ISO_ERRORCODE_BLOCK_ALREADY_LOCKED);
@property (readonly, class) jbyte ISO_ERRORCODE_BLOCK_READ_ONLY NS_SWIFT_NAME(ISO_ERRORCODE_BLOCK_READ_ONLY);
@property (readonly, class) jbyte ISO_ERRORCODE_BLOCK_WRITE_FAILED NS_SWIFT_NAME(ISO_ERRORCODE_BLOCK_WRITE_FAILED);
@property (readonly, class) jbyte ISO_ERRORCODE_BLOCK_NOT_SUCCESSFULLY_LOCKED NS_SWIFT_NAME(ISO_ERRORCODE_BLOCK_NOT_SUCCESSFULLY_LOCKED);
@property (readonly, class) jbyte ISO_ERRORCODE_BLOCK_IS_PROTECTED NS_SWIFT_NAME(ISO_ERRORCODE_BLOCK_IS_PROTECTED);
@property (readonly, class) jbyte ISO_ERRORCODE_GENERIC_CRYPTOGRAPHIC_ERROR NS_SWIFT_NAME(ISO_ERRORCODE_GENERIC_CRYPTOGRAPHIC_ERROR);
@property (readonly, class) jbyte DEFAULT_FLAG NS_SWIFT_NAME(DEFAULT_FLAG);
@property (readonly, class) jbyte DEFAULT_VICINITY_FLAG NS_SWIFT_NAME(DEFAULT_VICINITY_FLAG);
@property (readonly, class) jint ISO15693_HEADER_SIZE_UID NS_SWIFT_NAME(ISO15693_HEADER_SIZE_UID);
@property (readonly, class) jint ISO15693_UID_OFFSET NS_SWIFT_NAME(ISO15693_UID_OFFSET);
@property (readonly, class) jint ISO15693_HEADER_SIZE NS_SWIFT_NAME(ISO15693_HEADER_SIZE);
@property (readonly, class) jint ISO15693_CUSTOM_ST_HEADER_SIZE_UID NS_SWIFT_NAME(ISO15693_CUSTOM_ST_HEADER_SIZE_UID);
@property (readonly, class) jint ISO15693_CUSTOM_ST_UID_OFFSET NS_SWIFT_NAME(ISO15693_CUSTOM_ST_UID_OFFSET);
@property (readonly, class) jint ISO15693_CUSTOM_ST_HEADER_SIZE NS_SWIFT_NAME(ISO15693_CUSTOM_ST_HEADER_SIZE);

+ (jbyte)STM_MANUFACTURER_CODE;

+ (jbyte)SUB_CARRIER_MODE;

+ (jbyte)HIGH_DATA_RATE_MODE;

+ (jbyte)INVENTORY_MODE;

+ (jbyte)PROTOCOL_FORMAT_EXTENSION;

+ (jbyte)SELECTED_MODE;

+ (jbyte)ADDRESSED_MODE;

+ (jbyte)OPTION_FLAG;

+ (jbyte)INVENTORY_AFI_FLAG;

+ (jbyte)INVENTORY_AFI_FIELD;

+ (jbyte)INVENTORY_ONE_SLOT;

+ (jint)DEFAULT_READ_MULTIPLE_MAX_NBR_OF_BLOCKS;

+ (jint)DEFAULT_WRITE_MULTIPLE_MAX_NBR_OF_BLOCKS;

+ (jbyte)ISO_RESPONSE_FLAG_NOERROR;

+ (jbyte)ISO_RESPONSE_FLAG_ERROR;

+ (jbyte)ISO_ERRORCODE_CMD_NOT_SUPPORTED;

+ (jbyte)ISO_ERRORCODE_CMD_NOT_RECOGNIZED;

+ (jbyte)ISO_ERRORCODE_CMD_OPTION_NOT_SUPPORTED;

+ (jbyte)ISO_ERRORCODE_CMD_FAILED;

+ (jbyte)ISO_ERRORCODE_BLOCK_NOT_AVAILABLE;

+ (jbyte)ISO_ERRORCODE_BLOCK_ALREADY_LOCKED;

+ (jbyte)ISO_ERRORCODE_BLOCK_READ_ONLY;

+ (jbyte)ISO_ERRORCODE_BLOCK_WRITE_FAILED;

+ (jbyte)ISO_ERRORCODE_BLOCK_NOT_SUCCESSFULLY_LOCKED;

+ (jbyte)ISO_ERRORCODE_BLOCK_IS_PROTECTED;

+ (jbyte)ISO_ERRORCODE_GENERIC_CRYPTOGRAPHIC_ERROR;

+ (jbyte)DEFAULT_FLAG;

+ (jbyte)DEFAULT_VICINITY_FLAG;

+ (jint)ISO15693_HEADER_SIZE_UID;

+ (jint)ISO15693_UID_OFFSET;

+ (jint)ISO15693_HEADER_SIZE;

+ (jint)ISO15693_CUSTOM_ST_HEADER_SIZE_UID;

+ (jint)ISO15693_CUSTOM_ST_UID_OFFSET;

+ (jint)ISO15693_CUSTOM_ST_HEADER_SIZE;

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

- (jbyte)getFlag;

- (id<ComStSt25sdkRFReaderInterface>)getReaderInterface;

- (IOSByteArray *)getUid;

- (void)setFlagWithByte:(jbyte)flag;

- (void)setUidWithByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)transceiveWithNSString:(NSString *)commandName
                           withByteArray:(IOSByteArray *)data;

#pragma mark Protected

- (void)addUidToFrameWithByteArray:(IOSByteArray *)frame
                           withInt:(jint)offset;

- (void)addUidToFrameWithByteArray:(IOSByteArray *)frame
                           withInt:(jint)offset
                     withByteArray:(IOSByteArray *)uid;

- (void)checkIso15693ResponseWithByteArray:(IOSByteArray *)response;

- (void)generateCmdExceptionWithByteArray:(IOSByteArray *)response;

- (jint)getIso15693CustomHeaderSizeWithByte:(jbyte)flag;

- (jint)getIso15693HeaderSizeWithByte:(jbyte)flag;

- (jboolean)uidNeededWithByte:(jbyte)flag;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandIso15693Protocol)

J2OBJC_FIELD_SETTER(ComStSt25sdkCommandIso15693Protocol, mReaderInterface_, id<ComStSt25sdkRFReaderInterface>)
J2OBJC_FIELD_SETTER(ComStSt25sdkCommandIso15693Protocol, mUid_, IOSByteArray *)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_STM_MANUFACTURER_CODE(void);
#define ComStSt25sdkCommandIso15693Protocol_STM_MANUFACTURER_CODE 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, STM_MANUFACTURER_CODE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_SUB_CARRIER_MODE(void);
#define ComStSt25sdkCommandIso15693Protocol_SUB_CARRIER_MODE 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, SUB_CARRIER_MODE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_HIGH_DATA_RATE_MODE(void);
#define ComStSt25sdkCommandIso15693Protocol_HIGH_DATA_RATE_MODE 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, HIGH_DATA_RATE_MODE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_INVENTORY_MODE(void);
#define ComStSt25sdkCommandIso15693Protocol_INVENTORY_MODE 4
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, INVENTORY_MODE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_PROTOCOL_FORMAT_EXTENSION(void);
#define ComStSt25sdkCommandIso15693Protocol_PROTOCOL_FORMAT_EXTENSION 8
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, PROTOCOL_FORMAT_EXTENSION, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_SELECTED_MODE(void);
#define ComStSt25sdkCommandIso15693Protocol_SELECTED_MODE 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, SELECTED_MODE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ADDRESSED_MODE(void);
#define ComStSt25sdkCommandIso15693Protocol_ADDRESSED_MODE 32
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ADDRESSED_MODE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_OPTION_FLAG(void);
#define ComStSt25sdkCommandIso15693Protocol_OPTION_FLAG 64
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, OPTION_FLAG, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_INVENTORY_AFI_FLAG(void);
#define ComStSt25sdkCommandIso15693Protocol_INVENTORY_AFI_FLAG 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, INVENTORY_AFI_FLAG, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_INVENTORY_AFI_FIELD(void);
#define ComStSt25sdkCommandIso15693Protocol_INVENTORY_AFI_FIELD 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, INVENTORY_AFI_FIELD, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_INVENTORY_ONE_SLOT(void);
#define ComStSt25sdkCommandIso15693Protocol_INVENTORY_ONE_SLOT 32
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, INVENTORY_ONE_SLOT, jbyte)

inline jint ComStSt25sdkCommandIso15693Protocol_get_DEFAULT_READ_MULTIPLE_MAX_NBR_OF_BLOCKS(void);
#define ComStSt25sdkCommandIso15693Protocol_DEFAULT_READ_MULTIPLE_MAX_NBR_OF_BLOCKS 32
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, DEFAULT_READ_MULTIPLE_MAX_NBR_OF_BLOCKS, jint)

inline jint ComStSt25sdkCommandIso15693Protocol_get_DEFAULT_WRITE_MULTIPLE_MAX_NBR_OF_BLOCKS(void);
#define ComStSt25sdkCommandIso15693Protocol_DEFAULT_WRITE_MULTIPLE_MAX_NBR_OF_BLOCKS 4
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, DEFAULT_WRITE_MULTIPLE_MAX_NBR_OF_BLOCKS, jint)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_RESPONSE_FLAG_NOERROR(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_RESPONSE_FLAG_NOERROR 0
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_RESPONSE_FLAG_NOERROR, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_RESPONSE_FLAG_ERROR(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_RESPONSE_FLAG_ERROR 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_RESPONSE_FLAG_ERROR, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_CMD_NOT_SUPPORTED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_CMD_NOT_SUPPORTED 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_CMD_NOT_SUPPORTED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_CMD_NOT_RECOGNIZED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_CMD_NOT_RECOGNIZED 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_CMD_NOT_RECOGNIZED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_CMD_OPTION_NOT_SUPPORTED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_CMD_OPTION_NOT_SUPPORTED 3
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_CMD_OPTION_NOT_SUPPORTED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_CMD_FAILED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_CMD_FAILED 15
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_CMD_FAILED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_BLOCK_NOT_AVAILABLE(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_BLOCK_NOT_AVAILABLE 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_BLOCK_NOT_AVAILABLE, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_BLOCK_ALREADY_LOCKED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_BLOCK_ALREADY_LOCKED 17
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_BLOCK_ALREADY_LOCKED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_BLOCK_READ_ONLY(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_BLOCK_READ_ONLY 18
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_BLOCK_READ_ONLY, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_BLOCK_WRITE_FAILED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_BLOCK_WRITE_FAILED 19
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_BLOCK_WRITE_FAILED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_BLOCK_NOT_SUCCESSFULLY_LOCKED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_BLOCK_NOT_SUCCESSFULLY_LOCKED 20
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_BLOCK_NOT_SUCCESSFULLY_LOCKED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_BLOCK_IS_PROTECTED(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_BLOCK_IS_PROTECTED 21
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_BLOCK_IS_PROTECTED, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_ISO_ERRORCODE_GENERIC_CRYPTOGRAPHIC_ERROR(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO_ERRORCODE_GENERIC_CRYPTOGRAPHIC_ERROR 64
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO_ERRORCODE_GENERIC_CRYPTOGRAPHIC_ERROR, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_DEFAULT_FLAG(void);
#define ComStSt25sdkCommandIso15693Protocol_DEFAULT_FLAG 34
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, DEFAULT_FLAG, jbyte)

inline jbyte ComStSt25sdkCommandIso15693Protocol_get_DEFAULT_VICINITY_FLAG(void);
#define ComStSt25sdkCommandIso15693Protocol_DEFAULT_VICINITY_FLAG 42
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, DEFAULT_VICINITY_FLAG, jbyte)

inline jint ComStSt25sdkCommandIso15693Protocol_get_ISO15693_HEADER_SIZE_UID(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO15693_HEADER_SIZE_UID 10
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO15693_HEADER_SIZE_UID, jint)

inline jint ComStSt25sdkCommandIso15693Protocol_get_ISO15693_UID_OFFSET(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO15693_UID_OFFSET 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO15693_UID_OFFSET, jint)

inline jint ComStSt25sdkCommandIso15693Protocol_get_ISO15693_HEADER_SIZE(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO15693_HEADER_SIZE 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO15693_HEADER_SIZE, jint)

inline jint ComStSt25sdkCommandIso15693Protocol_get_ISO15693_CUSTOM_ST_HEADER_SIZE_UID(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO15693_CUSTOM_ST_HEADER_SIZE_UID 11
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO15693_CUSTOM_ST_HEADER_SIZE_UID, jint)

inline jint ComStSt25sdkCommandIso15693Protocol_get_ISO15693_CUSTOM_ST_UID_OFFSET(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO15693_CUSTOM_ST_UID_OFFSET 3
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO15693_CUSTOM_ST_UID_OFFSET, jint)

inline jint ComStSt25sdkCommandIso15693Protocol_get_ISO15693_CUSTOM_ST_HEADER_SIZE(void);
#define ComStSt25sdkCommandIso15693Protocol_ISO15693_CUSTOM_ST_HEADER_SIZE 3
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkCommandIso15693Protocol, ISO15693_CUSTOM_ST_HEADER_SIZE, jint)

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkCommandIso15693Protocol *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *new_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *create_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid);

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(ComStSt25sdkCommandIso15693Protocol *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *new_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *create_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag);

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(ComStSt25sdkCommandIso15693Protocol *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *new_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *create_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT void ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(ComStSt25sdkCommandIso15693Protocol *self, id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *new_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkCommandIso15693Protocol *create_ComStSt25sdkCommandIso15693Protocol_initWithComStSt25sdkRFReaderInterface_withByteArray_withByte_withInt_(id<ComStSt25sdkRFReaderInterface> reader, IOSByteArray *uid, jbyte flag, jint nbrOfBytesPerBlock);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandIso15693Protocol)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandIso15693Protocol")