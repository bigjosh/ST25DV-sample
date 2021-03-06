//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/m24lr/M24LR16KTag.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/command/Iso15693CustomCommand.h"
#include "com/st/st25sdk/command/Iso15693Protocol.h"
#include "com/st/st25sdk/type5/STVicinityTag.h"
#include "com/st/st25sdk/type5/m24lr/M24LR16KTag.h"

@implementation ComStSt25sdkType5M24lrM24LR16KTag

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkType5M24lrM24LR16KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (void)lockSectorWithInt:(jint)sector
                 withByte:(jbyte)value {
  [self setSecurityStatusWithInt:sector withByte:value];
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
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 6, 7, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 6, 5, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 8, 7, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 8, 5, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 9, 7, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 9, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 10, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 11, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 12, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 12, 13, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 12, 14, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 15, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 16, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 16, 13, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 16, 14, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(lockSectorWithInt:withByte:);
  methods[2].selector = @selector(readCfgWithByte:);
  methods[3].selector = @selector(readCfg);
  methods[4].selector = @selector(writeEHCfgWithByte:withByte:);
  methods[5].selector = @selector(writeEHCfgWithByte:);
  methods[6].selector = @selector(writeDOCfgWithByte:withByte:);
  methods[7].selector = @selector(writeDOCfgWithByte:);
  methods[8].selector = @selector(setRstEHEnWithByte:withByte:);
  methods[9].selector = @selector(setRstEHEnWithByte:);
  methods[10].selector = @selector(checkEHEnWithByte:);
  methods[11].selector = @selector(checkEHEn);
  methods[12].selector = @selector(initiateWithByte:);
  methods[13].selector = @selector(inventoryInitiatedWithByte:);
  methods[14].selector = @selector(inventoryInitiatedWithByte:withByte:withByteArray:);
  methods[15].selector = @selector(inventoryInitiatedWithByte:withByte:withByteArray:withByte:);
  methods[16].selector = @selector(fastInitiateWithByte:);
  methods[17].selector = @selector(fastInventoryInitiatedWithByte:);
  methods[18].selector = @selector(fastInventoryInitiatedWithByte:withByte:withByteArray:);
  methods[19].selector = @selector(fastInventoryInitiatedWithByte:withByte:withByteArray:withByte:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "LComStSt25sdkSTException;", "lockSector", "IB", "readCfg", "B", "writeEHCfg", "BB", "writeDOCfg", "setRstEHEn", "checkEHEn", "initiate", "inventoryInitiated", "BB[B", "BB[BB", "fastInitiate", "fastInventoryInitiated" };
  static const J2ObjcClassInfo _ComStSt25sdkType5M24lrM24LR16KTag = { "M24LR16KTag", "com.st.st25sdk.type5.m24lr", ptrTable, methods, NULL, 7, 0x1, 20, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType5M24lrM24LR16KTag;
}

@end

void ComStSt25sdkType5M24lrM24LR16KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType5M24lrM24LR16KTag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkType5STVicinityTag_initWithComStSt25sdkRFReaderInterface_withByteArray_withInt_withInt_(self, readerInterface, uid, 16, 32);
  self->mName_ = @"M24LR16E";
  self->mTypeDescription_ = JreLoadStatic(ComStSt25sdkNFCTag, DYNAMIC_NFC_RFID_TAG);
  [self setMaxReadMultipleBlocksReturnedWithInt:32];
  [((ComStSt25sdkCommandIso15693CustomCommand *) nil_chk(self->mIso15693CustomCommand_)) setFlagWithByte:(jbyte) (ComStSt25sdkCommandIso15693Protocol_DEFAULT_FLAG)];
}

ComStSt25sdkType5M24lrM24LR16KTag *new_ComStSt25sdkType5M24lrM24LR16KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType5M24lrM24LR16KTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType5M24lrM24LR16KTag *create_ComStSt25sdkType5M24lrM24LR16KTag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType5M24lrM24LR16KTag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType5M24lrM24LR16KTag)
