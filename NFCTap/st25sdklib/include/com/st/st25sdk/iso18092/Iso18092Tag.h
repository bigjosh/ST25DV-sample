//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/iso18092/Iso18092Tag.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkIso18092Iso18092Tag")
#ifdef RESTRICT_ComStSt25sdkIso18092Iso18092Tag
#define INCLUDE_ALL_ComStSt25sdkIso18092Iso18092Tag 0
#else
#define INCLUDE_ALL_ComStSt25sdkIso18092Iso18092Tag 1
#endif
#undef RESTRICT_ComStSt25sdkIso18092Iso18092Tag

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkIso18092Iso18092Tag_) && (INCLUDE_ALL_ComStSt25sdkIso18092Iso18092Tag || defined(INCLUDE_ComStSt25sdkIso18092Iso18092Tag))
#define ComStSt25sdkIso18092Iso18092Tag_

#define RESTRICT_ComStSt25sdkNFCTag 1
#define INCLUDE_ComStSt25sdkNFCTag 1
#include "com/st/st25sdk/NFCTag.h"

@class ComStSt25sdkCommandType3Command;
@class ComStSt25sdkNdefNDEFMsg;
@class IOSByteArray;
@protocol ComStSt25sdkRFReaderInterface;

@interface ComStSt25sdkIso18092Iso18092Tag : ComStSt25sdkNFCTag {
 @public
  ComStSt25sdkCommandType3Command *mType3Cmd_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface;

- (instancetype __nonnull)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                                  withByteArray:(IOSByteArray *)manufactureId;

- (jint)getCCFileLength;

- (jbyte)getCCMagicNumber;

- (jbyte)getCCMappingVersion;

- (jint)getCCMemorySize;

- (jbyte)getCCReadAccess;

- (jbyte)getCCWriteAccess;

- (jint)getMemSizeInBytes;

- (jint)getSysFileLength;

- (ComStSt25sdkCommandType3Command *)getType3Command;

- (void)initEmptyCCFile OBJC_METHOD_FAMILY_NONE;

- (IOSByteArray *)readBytesWithInt:(jint)byteAddress
                           withInt:(jint)sizeInBytes;

- (IOSByteArray *)readCCFile;

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage;

- (IOSByteArray *)readSysFile;

- (void)writeBytesWithInt:(jint)byteAddress
            withByteArray:(IOSByteArray *)data;

- (void)writeCCFile;

- (void)writeCCFileWithByteArray:(IOSByteArray *)buffer;

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkIso18092Iso18092Tag)

J2OBJC_FIELD_SETTER(ComStSt25sdkIso18092Iso18092Tag, mType3Cmd_, ComStSt25sdkCommandType3Command *)

FOUNDATION_EXPORT void ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(ComStSt25sdkIso18092Iso18092Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface);

FOUNDATION_EXPORT ComStSt25sdkIso18092Iso18092Tag *new_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkIso18092Iso18092Tag *create_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_(id<ComStSt25sdkRFReaderInterface> readerInterface);

FOUNDATION_EXPORT void ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkIso18092Iso18092Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId);

FOUNDATION_EXPORT ComStSt25sdkIso18092Iso18092Tag *new_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkIso18092Iso18092Tag *create_ComStSt25sdkIso18092Iso18092Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *manufactureId);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkIso18092Iso18092Tag)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkIso18092Iso18092Tag")
