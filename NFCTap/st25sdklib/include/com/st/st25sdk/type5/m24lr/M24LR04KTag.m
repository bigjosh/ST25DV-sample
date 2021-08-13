//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/m24lr/M24LR04KTag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/STLog.h"
#include "com/st/st25sdk/TagCache.h"
#include "com/st/st25sdk/TagHelper.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/command/Iso15693Protocol.h"
#include "com/st/st25sdk/type5/STType5Sector.h"
#include "com/st/st25sdk/type5/STType5Tag.h"
#include "com/st/st25sdk/type5/SysFileType5.h"
#include "com/st/st25sdk/type5/m24lr/M24LR04KTag.h"

@interface ComStSt25sdkType5M24lrM24LR04KTag ()

- (jboolean)isPasswordNumberValidWithInt:(jint)passwordNumber;

@end

__attribute__((unused)) static jboolean ComStSt25sdkType5M24lrM24LR04KTag_isPasswordNumberValidWithInt_(ComStSt25sdkType5M24lrM24LR04KTag *self, jint passwordNumber);

@implementation ComStSt25sdkType5M24lrM24LR04KTag

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkType5M24lrM24LR04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (jint)getNumberOfSectors {
  return mNbOfSectors_;
}

- (jint)getNumberOfBlocksPerSector {
  return mNbOfBlocksPerSector_;
}

- (IOSByteArray *)readCfgWithByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) readCfgWithByte:flag withByteArray:[self getUid]];
}

- (IOSByteArray *)readCfg {
  return [self readCfgWithByte:[((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) getFlag]];
}

- (jbyte)writeEHCfgWithByte:(jbyte)data
                   withByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) writeEHCfgWithByte:data withByte:flag withByteArray:[self getUid]];
}

- (jbyte)writeEHCfgWithByte:(jbyte)data {
  return [self writeEHCfgWithByte:data withByte:[((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) getFlag]];
}

- (jbyte)writeDOCfgWithByte:(jbyte)data
                   withByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) writeDOCfgWithByte:data withByte:flag withByteArray:[self getUid]];
}

- (jbyte)writeDOCfgWithByte:(jbyte)data {
  return [self writeDOCfgWithByte:data withByte:[((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) getFlag]];
}

- (jbyte)setRstEHEnWithByte:(jbyte)data
                   withByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) setRstEHEnWithByte:data withByte:flag withByteArray:[self getUid]];
}

- (jbyte)setRstEHEnWithByte:(jbyte)data {
  return [self setRstEHEnWithByte:data withByte:[((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) getFlag]];
}

- (IOSByteArray *)checkEHEnWithByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) checkEHEnWithByte:flag withByteArray:[self getUid]];
}

- (IOSByteArray *)checkEHEn {
  return [self checkEHEnWithByte:[((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) getFlag]];
}

- (jbyte)getSecurityStatusWithInt:(jint)sector {
  if (mSectorSec_ != nil) return [mSectorSec_ getSecurityStatusWithInt:sector];
  return (jbyte) (jint) 0xFF;
}

- (IOSByteArray *)getSecurityStatus {
  if (mSectorSec_ != nil) return [mSectorSec_ getSecurityStatus];
  return nil;
}

- (void)setSecurityStatusWithInt:(jint)sector
                        withByte:(jbyte)value {
  if (mSectorSec_ != nil) [mSectorSec_ setSecurityStatusWithInt:sector withByte:value];
}

- (void)lockSectorWithInt:(jint)sector
                 withByte:(jbyte)value {
  [self setSecurityStatusWithInt:sector withByte:value];
}

- (jboolean)isPasswordNumberValidWithInt:(jint)passwordNumber {
  return ComStSt25sdkType5M24lrM24LR04KTag_isPasswordNumberValidWithInt_(self, passwordNumber);
}

- (void)presentPasswordWithInt:(jint)passwordNumber
                 withByteArray:(IOSByteArray *)password {
  if (!ComStSt25sdkType5M24lrM24LR04KTag_isPasswordNumberValidWithInt_(self, passwordNumber)) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) presentPwdWithByte:(jbyte) passwordNumber withByteArray:password];
}

- (void)writePasswordWithInt:(jint)passwordNumber
               withByteArray:(IOSByteArray *)newPassword {
  if (!ComStSt25sdkType5M24lrM24LR04KTag_isPasswordNumberValidWithInt_(self, passwordNumber)) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) writePwdWithByte:(jbyte) passwordNumber withByteArray:newPassword];
}

- (jint)getPasswordLengthWithInt:(jint)passwordNumber {
  return ComStSt25sdkTagHelper_PWD_ON_32_BITS;
}

- (jint)getConfigurationPasswordNumber {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (jint)getPasswordNumberWithInt:(jint)sector {
  if (mSectorSec_ != nil) return ((JreRShift32([mSectorSec_ getSecurityStatusWithInt:sector], 3)) & (jint) 0x03);
  else @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
}

- (void)setPasswordNumberWithInt:(jint)sector
                         withInt:(jint)passwordNumber {
  if (!ComStSt25sdkType5M24lrM24LR04KTag_isPasswordNumberValidWithInt_(self, passwordNumber)) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, BAD_PARAMETER));
  }
  if (mSectorSec_ != nil) [mSectorSec_ setSecurityStatusWithInt:sector withByte:(jbyte) (JreLShift32(passwordNumber, 3))];
  else @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
}

- (IOSByteArray *)initiateWithByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) initiateWithByte:flag];
}

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) inventoryInitiatedWithByte:flag];
}

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag
                                    withByte:(jbyte)maskLength
                               withByteArray:(IOSByteArray *)maskValue {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) inventoryInitiatedWithByte:flag withByte:maskLength withByteArray:maskValue];
}

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag
                                    withByte:(jbyte)maskLength
                               withByteArray:(IOSByteArray *)maskValue
                                    withByte:(jbyte)afiField {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) inventoryInitiatedWithByte:flag withByte:maskLength withByteArray:maskValue withByte:afiField];
}

- (IOSByteArray *)fastInitiateWithByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) fastInitiateWithByte:flag];
}

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) fastInventoryInitiatedWithByte:flag];
}

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag
                                        withByte:(jbyte)maskLength
                                   withByteArray:(IOSByteArray *)maskValue {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) fastInventoryInitiatedWithByte:flag withByte:maskLength withByteArray:maskValue];
}

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag
                                        withByte:(jbyte)maskLength
                                   withByteArray:(IOSByteArray *)maskValue
                                        withByte:(jbyte)afiField {
  return [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(mIso15693CustomCommand_)) fastInventoryInitiatedWithByte:flag withByte:maskLength withByteArray:maskValue withByte:afiField];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 4, 2, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 6, 5, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 6, 2, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 7, 5, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 7, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 8, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "B", 0x1, 9, 10, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 12, 3, -1, -1, -1 },
    { NULL, "Z", 0x2, 14, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 16, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 18, 10, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 19, 10, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 21, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 22, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 23, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 23, 24, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 23, 25, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 26, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 27, 2, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 27, 24, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 27, 25, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(getNumberOfSectors);
  methods[2].selector = @selector(getNumberOfBlocksPerSector);
  methods[3].selector = @selector(readCfgWithByte:);
  methods[4].selector = @selector(readCfg);
  methods[5].selector = @selector(writeEHCfgWithByte:withByte:);
  methods[6].selector = @selector(writeEHCfgWithByte:);
  methods[7].selector = @selector(writeDOCfgWithByte:withByte:);
  methods[8].selector = @selector(writeDOCfgWithByte:);
  methods[9].selector = @selector(setRstEHEnWithByte:withByte:);
  methods[10].selector = @selector(setRstEHEnWithByte:);
  methods[11].selector = @selector(checkEHEnWithByte:);
  methods[12].selector = @selector(checkEHEn);
  methods[13].selector = @selector(getSecurityStatusWithInt:);
  methods[14].selector = @selector(getSecurityStatus);
  methods[15].selector = @selector(setSecurityStatusWithInt:withByte:);
  methods[16].selector = @selector(lockSectorWithInt:withByte:);
  methods[17].selector = @selector(isPasswordNumberValidWithInt:);
  methods[18].selector = @selector(presentPasswordWithInt:withByteArray:);
  methods[19].selector = @selector(writePasswordWithInt:withByteArray:);
  methods[20].selector = @selector(getPasswordLengthWithInt:);
  methods[21].selector = @selector(getConfigurationPasswordNumber);
  methods[22].selector = @selector(getPasswordNumberWithInt:);
  methods[23].selector = @selector(setPasswordNumberWithInt:withInt:);
  methods[24].selector = @selector(initiateWithByte:);
  methods[25].selector = @selector(inventoryInitiatedWithByte:);
  methods[26].selector = @selector(inventoryInitiatedWithByte:withByte:withByteArray:);
  methods[27].selector = @selector(inventoryInitiatedWithByte:withByte:withByteArray:withByte:);
  methods[28].selector = @selector(fastInitiateWithByte:);
  methods[29].selector = @selector(fastInventoryInitiatedWithByte:);
  methods[30].selector = @selector(fastInventoryInitiatedWithByte:withByte:withByteArray:);
  methods[31].selector = @selector(fastInventoryInitiatedWithByte:withByte:withByteArray:withByte:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mSectorSec_", "LComStSt25sdkType5STType5Sector;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNbOfSectors_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNbOfBlocksPerSector_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "readCfg", "B", "LComStSt25sdkSTException;", "writeEHCfg", "BB", "writeDOCfg", "setRstEHEn", "checkEHEn", "getSecurityStatus", "I", "setSecurityStatus", "IB", "lockSector", "isPasswordNumberValid", "presentPassword", "I[B", "writePassword", "getPasswordLength", "getPasswordNumber", "setPasswordNumber", "II", "initiate", "inventoryInitiated", "BB[B", "BB[BB", "fastInitiate", "fastInventoryInitiated" };
  static const J2ObjcClassInfo _ComStSt25sdkType5M24lrM24LR04KTag = { "M24LR04KTag", "com.st.st25sdk.type5.m24lr", ptrTable, methods, fields, 7, 0x1, 32, 3, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5M24lrM24LR04KTag;
}

@end

void ComStSt25sdkType5M24lrM24LR04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType5M24lrM24LR04KTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkType5STType5Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  self->mName_ = @"M24LR04E";
  self->mTypeDescription_ = JreLoadStatic(ComStSt25sdkNFCTag, DYNAMIC_NFC_RFID_TAG);
  self->mNbOfSectors_ = 4;
  self->mNbOfBlocksPerSector_ = 32;
  [self setMaxReadMultipleBlocksReturnedWithInt:32];
  [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(self->mIso15693CustomCommand_)) setFlagWithByte:(ComStSt25sdkCommandIso15693Protocol_DEFAULT_FLAG)];
  self->mSysFile_ = new_ComStSt25sdkType5SysFileType5_initWithComStSt25sdkCommandIso15693Command_(self->mIso15693CustomCommand_);
  @try {
    self->mSectorSec_ = new_ComStSt25sdkType5STType5Sector_initWithComStSt25sdkCommandIso15693Protocol_withInt_withInt_(self->mIso15693CustomCommand_, self->mNbOfSectors_, self->mNbOfBlocksPerSector_);
    [((ComStSt25sdkTagCache *) nil_chk(self->mCache_)) addWithId:self->mSectorSec_];
  }
  @catch (ComStSt25sdkSTException *e) {
    ComStSt25sdkSTLog_eWithNSString_(@"No support for sector interface");
  }
}

ComStSt25sdkType5M24lrM24LR04KTag *new_ComStSt25sdkType5M24lrM24LR04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5M24lrM24LR04KTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType5M24lrM24LR04KTag *create_ComStSt25sdkType5M24lrM24LR04KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5M24lrM24LR04KTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

jboolean ComStSt25sdkType5M24lrM24LR04KTag_isPasswordNumberValidWithInt_(ComStSt25sdkType5M24lrM24LR04KTag *self, jint passwordNumber) {
  return (passwordNumber >= 1 && passwordNumber <= 3);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5M24lrM24LR04KTag)
