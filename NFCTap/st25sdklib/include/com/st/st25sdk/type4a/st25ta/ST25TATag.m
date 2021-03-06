//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/st25ta/ST25TATag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/TagCache.h"
#include "com/st/st25sdk/command/Iso7816Command.h"
#include "com/st/st25sdk/command/Iso7816Type4RApduStatus.h"
#include "com/st/st25sdk/command/Type4CustomCommand.h"
#include "com/st/st25sdk/type4a/STSysFileType4.h"
#include "com/st/st25sdk/type4a/STType4Tag.h"
#include "com/st/st25sdk/type4a/Type4Tag.h"
#include "com/st/st25sdk/type4a/st25ta/ST25TATag.h"
#include "com/st/st25sdk/type4a/st25ta/SysFileST25TA.h"

@interface ComStSt25sdkType4aSt25taST25TATag ()

- (ComStSt25sdkType4aType4Tag_AccessStatus *)checkReadAccessStatusResponseWithByteArray:(IOSByteArray *)response;

- (ComStSt25sdkType4aType4Tag_AccessStatus *)checkWriteAccessStatusResponseWithByteArray:(IOSByteArray *)response
                                                                                withByte:(jbyte)access;

@end

__attribute__((unused)) static ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aSt25taST25TATag_checkReadAccessStatusResponseWithByteArray_(ComStSt25sdkType4aSt25taST25TATag *self, IOSByteArray *response);

__attribute__((unused)) static ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aSt25taST25TATag_checkWriteAccessStatusResponseWithByteArray_withByte_(ComStSt25sdkType4aSt25taST25TATag *self, IOSByteArray *response, jbyte access);

@implementation ComStSt25sdkType4aSt25taST25TATag

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkType4aSt25taST25TATag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (jbyte)getEventCounter {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) getEventCounter];
}

- (IOSByteArray *)getCounterBytes {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) getCounterBytes];
}

- (jint)getCounterValue {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) getCounterValue];
}

- (jbyte)getProductVersion {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) getProductVersion];
}

- (void)lockCounter {
  [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) lockCounter];
}

- (jboolean)isCounterLocked {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) isCounterLocked];
}

- (void)enableCounter {
  [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) enableCounter];
}

- (jboolean)isCounterEnabled {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) isCounterEnabled];
}

- (void)disableCounter {
  [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) disableCounter];
}

- (void)incrementCounterOnRead {
  [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) incrementCounterOnRead];
}

- (jboolean)isCounterIncrementedOnRead {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) isCounterIncrementedOnRead];
}

- (void)incrementCounterOnWrite {
  [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) incrementCounterOnWrite];
}

- (jboolean)isCounterIncrementedOnWrite {
  return [((ComStSt25sdkType4aSt25taSysFileST25TA *) nil_chk(((ComStSt25sdkType4aSt25taSysFileST25TA *) cast_chk(mSysFile_, [ComStSt25sdkType4aSt25taSysFileST25TA class])))) isCounterIncrementedOnWrite];
}

- (ComStSt25sdkType4aType4Tag_AccessStatus *)getFileReadAccessStatusWithInt:(jint)fileId {
  ComStSt25sdkType4aType4Tag_AccessStatus *readAccessStatus;
  jbyte productVersion = [self getProductVersion];
  if (productVersion >= ((jbyte) (jint) 0x22)) {
    jbyte readAccess = [self getFileReadAccessWithInt:fileId];
    if (readAccess == (jbyte) (jint) 0x00) {
      @try {
        (void) [self selectFileWithInt:fileId];
        IOSByteArray *response = [((ComStSt25sdkCommandIso7816Command *) nil_chk(mIso7816Cmd_)) verifyWithByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x01 withByteArray:nil];
        readAccessStatus = ComStSt25sdkType4aSt25taST25TATag_checkReadAccessStatusResponseWithByteArray_(self, response);
      }
      @catch (ComStSt25sdkSTException *e) {
        switch ([[e getError] ordinal]) {
          case ComStSt25sdkSTException_STExceptionCode_Enum_PASSWORD_NEEDED:
          readAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD);
          break;
          case ComStSt25sdkSTException_STExceptionCode_Enum_WRONG_SECURITY_STATUS:
          readAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED);
          break;
          default:
          @throw e;
        }
      }
    }
    else {
      readAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
    }
  }
  else {
    readAccessStatus = [super getFileReadAccessStatusWithInt:fileId];
  }
  return readAccessStatus;
}

- (ComStSt25sdkType4aType4Tag_AccessStatus *)checkReadAccessStatusResponseWithByteArray:(IOSByteArray *)response {
  return ComStSt25sdkType4aSt25taST25TATag_checkReadAccessStatusResponseWithByteArray_(self, response);
}

- (ComStSt25sdkType4aType4Tag_AccessStatus *)getFileWriteAccessStatusWithInt:(jint)fileId {
  ComStSt25sdkType4aType4Tag_AccessStatus *writeAccessStatus;
  jbyte productVersion = [self getProductVersion];
  if (productVersion >= ((jbyte) (jint) 0x22)) {
    jbyte writeAccess = [self getFileWriteAccessWithInt:fileId];
    if (writeAccess == (jbyte) (jint) 0xFF) {
      @try {
        (void) [self selectFileWithInt:fileId];
        IOSByteArray *response = [((ComStSt25sdkCommandIso7816Command *) nil_chk(mIso7816Cmd_)) verifyWithByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x02 withByteArray:nil];
        writeAccessStatus = ComStSt25sdkType4aSt25taST25TATag_checkWriteAccessStatusResponseWithByteArray_withByte_(self, response, writeAccess);
      }
      @catch (ComStSt25sdkSTException *e) {
        switch ([[e getError] ordinal]) {
          case ComStSt25sdkSTException_STExceptionCode_Enum_PASSWORD_NEEDED:
          writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD);
          break;
          case ComStSt25sdkSTException_STExceptionCode_Enum_WRONG_SECURITY_STATUS:
          case ComStSt25sdkSTException_STExceptionCode_Enum_INVALID_DATA_PARAM:
          writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED);
          break;
          default:
          @throw e;
        }
      }
    }
    else {
      if (writeAccess == (jbyte) (jint) 0x00) {
        writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED);
      }
      else writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
    }
  }
  else {
    writeAccessStatus = [super getFileWriteAccessStatusWithInt:fileId];
  }
  return writeAccessStatus;
}

- (ComStSt25sdkType4aType4Tag_AccessStatus *)checkWriteAccessStatusResponseWithByteArray:(IOSByteArray *)response
                                                                                withByte:(jbyte)access {
  return ComStSt25sdkType4aSt25taST25TATag_checkWriteAccessStatusResponseWithByteArray_withByte_(self, response, access);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x1, 6, 3, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x2, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(getEventCounter);
  methods[2].selector = @selector(getCounterBytes);
  methods[3].selector = @selector(getCounterValue);
  methods[4].selector = @selector(getProductVersion);
  methods[5].selector = @selector(lockCounter);
  methods[6].selector = @selector(isCounterLocked);
  methods[7].selector = @selector(enableCounter);
  methods[8].selector = @selector(isCounterEnabled);
  methods[9].selector = @selector(disableCounter);
  methods[10].selector = @selector(incrementCounterOnRead);
  methods[11].selector = @selector(isCounterIncrementedOnRead);
  methods[12].selector = @selector(incrementCounterOnWrite);
  methods[13].selector = @selector(isCounterIncrementedOnWrite);
  methods[14].selector = @selector(getFileReadAccessStatusWithInt:);
  methods[15].selector = @selector(checkReadAccessStatusResponseWithByteArray:);
  methods[16].selector = @selector(getFileWriteAccessStatusWithInt:);
  methods[17].selector = @selector(checkWriteAccessStatusResponseWithByteArray:withByte:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "LComStSt25sdkSTException;", "getFileReadAccessStatus", "I", "checkReadAccessStatusResponse", "[B", "getFileWriteAccessStatus", "checkWriteAccessStatusResponse", "[BB" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aSt25taST25TATag = { "ST25TATag", "com.st.st25sdk.type4a.st25ta", ptrTable, methods, NULL, 7, 0x1, 18, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType4aSt25taST25TATag;
}

@end

void ComStSt25sdkType4aSt25taST25TATag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType4aSt25taST25TATag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkType4aSTType4Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  self->mTypeDescription_ = JreLoadStatic(ComStSt25sdkNFCTag, NFC_RFID_TAG);
  *JreLoadStaticRef(ComStSt25sdkCommandIso7816Type4RApduStatus, mIgnoreSw2) = false;
  [((ComStSt25sdkTagCache *) nil_chk(self->mCache_)) removeWithId:self->mSysFile_];
  self->mSysFile_ = new_ComStSt25sdkType4aSt25taSysFileST25TA_initWithComStSt25sdkCommandType4CustomCommand_(self->mSTType4Cmd_);
  [((ComStSt25sdkTagCache *) nil_chk(self->mCache_)) addWithId:self->mSysFile_];
}

ComStSt25sdkType4aSt25taST25TATag *new_ComStSt25sdkType4aSt25taST25TATag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aSt25taST25TATag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType4aSt25taST25TATag *create_ComStSt25sdkType4aSt25taST25TATag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType4aSt25taST25TATag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aSt25taST25TATag_checkReadAccessStatusResponseWithByteArray_(ComStSt25sdkType4aSt25taST25TATag *self, IOSByteArray *response) {
  ComStSt25sdkType4aType4Tag_AccessStatus *status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
  if ((response != nil) && (IOSByteArray_Get(nil_chk(response), 0) != (jint) 0x00)) {
    if (((IOSByteArray *) nil_chk(response))->size_ >= 2) {
      if (IOSByteArray_Get(response, 0) == (jbyte) (jint) 0x90 && IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x00) {
        status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED);
      }
      if (IOSByteArray_Get(response, 0) == (jbyte) (jint) 0x63 && IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x00) {
        status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD);
      }
      if (IOSByteArray_Get(response, 0) == (jbyte) (jint) 0x69 && (IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x84 || IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x82)) {
        status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED);
      }
    }
    else {
      status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
    }
  }
  return status;
}

ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aSt25taST25TATag_checkWriteAccessStatusResponseWithByteArray_withByte_(ComStSt25sdkType4aSt25taST25TATag *self, IOSByteArray *response, jbyte access) {
  ComStSt25sdkType4aType4Tag_AccessStatus *status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
  if ((response != nil) && (IOSByteArray_Get(nil_chk(response), 0) != (jint) 0x00)) {
    if (((IOSByteArray *) nil_chk(response))->size_ >= 2) {
      if (IOSByteArray_Get(response, 0) == (jbyte) (jint) 0x90 && IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x00 && access == (jbyte) (jint) 0x00) {
        status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED);
      }
      if (IOSByteArray_Get(response, 0) == (jbyte) (jint) 0x63 && IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x00 && access == (jbyte) (jint) 0xFF) {
        status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD);
      }
      if (IOSByteArray_Get(response, 0) == (jbyte) (jint) 0x69 && IOSByteArray_Get(response, 1) == (jbyte) (jint) 0x84 && access == (jbyte) (jint) 0xFF) {
        status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED);
      }
    }
    else {
      status = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
    }
  }
  return status;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aSt25taST25TATag)
