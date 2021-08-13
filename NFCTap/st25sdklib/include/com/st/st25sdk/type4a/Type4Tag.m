//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/Type4Tag.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/Helper.h"
#include "com/st/st25sdk/NFCTag.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/STLog.h"
#include "com/st/st25sdk/TagCache.h"
#include "com/st/st25sdk/command/Type4Command.h"
#include "com/st/st25sdk/ndef/NDEFMsg.h"
#include "com/st/st25sdk/type4a/CCFileType4.h"
#include "com/st/st25sdk/type4a/FileControlTlvType4.h"
#include "com/st/st25sdk/type4a/FileType4.h"
#include "com/st/st25sdk/type4a/NdefFileType4.h"
#include "com/st/st25sdk/type4a/Type4Tag.h"
#include "java/lang/Enum.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "java/util/LinkedHashMap.h"

__attribute__((unused)) static void ComStSt25sdkType4aType4Tag_Type4FileType_initWithNSString_withInt_(ComStSt25sdkType4aType4Tag_Type4FileType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType4aType4Tag_Type4FileType *new_ComStSt25sdkType4aType4Tag_Type4FileType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static void ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(ComStSt25sdkType4aType4Tag_AccessStatus *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType4aType4Tag_AccessStatus *new_ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType4aType4Tag

+ (jint)TYPE4_CC_FILE_IDENTIFIER {
  return ComStSt25sdkType4aType4Tag_TYPE4_CC_FILE_IDENTIFIER;
}

+ (jint)TYPE4_INVALID_FILE_IDENTIFIER {
  return ComStSt25sdkType4aType4Tag_TYPE4_INVALID_FILE_IDENTIFIER;
}

+ (jint)TYPE4_MAX_RADPU_SIZE {
  return ComStSt25sdkType4aType4Tag_TYPE4_MAX_RADPU_SIZE;
}

+ (jint)TYPE4_MAX_CAPDU_SIZE {
  return ComStSt25sdkType4aType4Tag_TYPE4_MAX_CAPDU_SIZE;
}

- (instancetype)initWithComStSt25sdkRFReaderInterface:(id<ComStSt25sdkRFReaderInterface>)readerInterface
                                        withByteArray:(IOSByteArray *)uid {
  ComStSt25sdkType4aType4Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(self, readerInterface, uid);
  return self;
}

- (ComStSt25sdkCommandType4Command *)getType4Command {
  return mType4Cmd_;
}

- (jint)getCCFileLength {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) readLength];
}

- (jbyte)getCCMagicNumber {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (IOSByteArray *)readCCFile {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) read];
}

- (void)writeCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)writeCCFileWithByteArray:(IOSByteArray *)buffer {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (void)initEmptyCCFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jbyte)getCCMappingVersion {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getCCMappingVersion];
}

- (jbyte)getCCReadAccess {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getReadAccess];
}

- (jbyte)getCCWriteAccess {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getWriteAccess];
}

- (jint)getCCMemorySize {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_SUPPORTED));
}

- (jint)getCCMaxReadSize {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getMaxReadSize];
}

- (jint)getCCMaxWriteSize {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getMaxWriteSize];
}

- (jint)getApduMaxReadSize {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) getMaxRApduDataSize];
}

- (jint)getApduMaxWriteSize {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) getMaxCApduDataSize];
}

- (ComStSt25sdkType4aFileControlTlvType4 *)getCCTlv {
  return [self getCCTlvWithInt:0];
}

- (ComStSt25sdkType4aFileControlTlvType4 *)getCCTlvWithInt:(jint)pos {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getTlvWithInt:pos];
}

- (ComStSt25sdkType4aFileControlTlvType4 *)getCCFileTlvWithInt:(jint)fileId {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getFileTlvWithInt:fileId];
}

- (jint)getNbOfTlv {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNbOfTlv];
}

- (IOSByteArray *)selectFileWithInt:(jint)fileId {
  IOSByteArray *response = [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectFileWithInt:fileId];
  ComStSt25sdkSTLog_iWithNSString_(JreStrcat("$$$", @"File 0x", ComStSt25sdkHelper_convertIntToHexFormatStringWithInt_(fileId), @" is now selected"));
  return response;
}

- (IOSByteArray *)selectWithByte:(jbyte)p1
                        withByte:(jbyte)p2
                   withByteArray:(IOSByteArray *)data {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectWithByte:p1 withByte:p2 withByteArray:data];
}

- (IOSByteArray *)readBinaryWithByte:(jbyte)p1
                            withByte:(jbyte)p2
                            withByte:(jbyte)length {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) readBinaryWithByte:p1 withByte:p2 withByte:length];
}

- (IOSByteArray *)updateBinaryWithByte:(jbyte)p1
                              withByte:(jbyte)p2
                         withByteArray:(IOSByteArray *)data {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) updateBinaryWithByte:p1 withByte:p2 withByteArray:data];
}

- (IOSByteArray *)selectNdef {
  @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
    jint ndefFileId = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNdefFileId];
    (void) [self selectNdefTagApplicationSequence];
    IOSByteArray *response = [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectFileWithInt:ndefFileId];
    ComStSt25sdkSTLog_iWithNSString_(JreStrcat("$$$", @"File 0x", ComStSt25sdkHelper_convertIntToHexFormatStringWithInt_(ndefFileId), @" is now selected"));
    return response;
  }
}

- (IOSByteArray *)selectNdefTagApplication {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectNdefTagApplication];
}

- (IOSByteArray *)selectNdefTagApplicationMappingVersion2 {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectNdefTagApplicationMappingVersion2];
}

- (IOSByteArray *)selectNdefTagApplicationMappingVersion1 {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectNdefTagApplicationMappingVersion1];
}

- (IOSByteArray *)selectNdefTagApplicationSequence {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) selectNdefTagApplicationSequence];
}

- (void)selectCCFile {
  ComStSt25sdkSTLog_iWithNSString_(@"Select CC File");
  @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
    (void) [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) select];
  }
}

- (IOSByteArray *)readDataWithInt:(jint)offsetInBytes
                          withInt:(jint)sizeInBytes {
  return [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) readDataWithInt:offsetInBytes withInt:sizeInBytes];
}

- (void)writeDataWithInt:(jint)offsetInBytes
           withByteArray:(IOSByteArray *)data {
  [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Cmd_)) writeDataWithInt:offsetInBytes withByteArray:data];
}

- (jint)getSysFileLength {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (IOSByteArray *)readSysFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)selectSysFile {
  @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NOT_IMPLEMENTED));
}

- (void)invalidateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) invalidateCache];
}

- (void)validateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) validateCache];
}

- (void)activateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) activateCache];
}

- (void)deactivateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) deactivateCache];
}

- (void)updateCache {
  [((ComStSt25sdkTagCache *) nil_chk(mCache_)) updateCache];
}

- (jboolean)isCacheValid {
  return [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheValid];
}

- (jboolean)isCacheActivated {
  return [((ComStSt25sdkTagCache *) nil_chk(mCache_)) isCacheActivated];
}

- (jint)getMemSizeInBytes {
  return [((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk([((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getFileTlvWithInt:[self getNdefFileId]])) getMaxFileSize];
}

- (jint)getNdefFileId {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNdefFileId];
}

- (jint)getNbrOfFiles {
  return [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNbOfTlv];
}

- (IOSIntArray *)getFileIdList {
  jint nbrOfFiles = [self getNbrOfFiles];
  IOSIntArray *fileIdList = [IOSIntArray newArrayWithLength:nbrOfFiles];
  for (jint i = 0; i < nbrOfFiles; i++) {
    *IOSIntArray_GetRef(fileIdList, i) = [((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk([((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getTlvWithInt:i])) getFileId];
  }
  return fileIdList;
}

- (ComStSt25sdkType4aType4Tag_Type4FileType *)getFileTypeWithInt:(jint)fileId {
  ComStSt25sdkType4aType4Tag_Type4FileType *type4FileType;
  ComStSt25sdkType4aFileControlTlvType4 *fileTlv = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getFileTlvWithInt:fileId];
  jbyte fileType = [((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk(fileTlv)) getType];
  if (fileType == (jint) 0x04) {
    type4FileType = JreLoadEnum(ComStSt25sdkType4aType4Tag_Type4FileType, NDEF_FILE);
  }
  else {
    type4FileType = JreLoadEnum(ComStSt25sdkType4aType4Tag_Type4FileType, PROPRIETARY_FILE);
  }
  return type4FileType;
}

- (jint)getMaxFileSizeWithInt:(jint)fileId {
  ComStSt25sdkType4aFileControlTlvType4 *fileTlv = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getFileTlvWithInt:fileId];
  return [((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk(fileTlv)) getMaxFileSize];
}

- (jbyte)getFileReadAccessWithInt:(jint)fileId {
  ComStSt25sdkType4aFileControlTlvType4 *fileTlv = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getFileTlvWithInt:fileId];
  return [((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk(fileTlv)) getReadAccess];
}

- (jbyte)getFileWriteAccessWithInt:(jint)fileId {
  ComStSt25sdkType4aFileControlTlvType4 *fileTlv = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getFileTlvWithInt:fileId];
  return [((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk(fileTlv)) getWriteAccess];
}

- (ComStSt25sdkType4aType4Tag_AccessStatus *)getFileReadAccessStatusWithInt:(jint)fileId {
  ComStSt25sdkType4aType4Tag_AccessStatus *readAccessStatus;
  jbyte readAccess = [self getFileReadAccessWithInt:fileId];
  if (readAccess == (jbyte) (jint) 0x00) {
    readAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED);
  }
  else {
    readAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
  }
  return readAccessStatus;
}

- (ComStSt25sdkType4aType4Tag_AccessStatus *)getFileWriteAccessStatusWithInt:(jint)fileId {
  ComStSt25sdkType4aType4Tag_AccessStatus *writeAccessStatus;
  jbyte writeAccess = [self getFileWriteAccessWithInt:fileId];
  if (writeAccess == (jbyte) (jint) 0x00) {
    writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED);
  }
  else if (writeAccess == (jbyte) (jint) 0xFF) {
    writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED);
  }
  else {
    writeAccessStatus = JreLoadEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
  }
  return writeAccessStatus;
}

- (void)writeNdefMessageWithComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  jint ndefFileId = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNdefFileId];
  [self writeNdefMessageWithInt:ndefFileId withComStSt25sdkNdefNDEFMsg:msg];
}

- (void)writeNdefMessageWithInt:(jint)fileId
    withComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  [self writeNdefMessageWithInt:fileId withComStSt25sdkNdefNDEFMsg:msg withByteArray:nil];
}

- (void)writeNdefMessageWithInt:(jint)fileId
    withComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg
                  withByteArray:(IOSByteArray *)password {
  jint ndefLength;
  @try {
    ndefLength = [((ComStSt25sdkNdefNDEFMsg *) nil_chk(msg)) getLength];
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, INVALID_NDEF_DATA));
  }
  if ([((ComStSt25sdkType4aFileControlTlvType4 *) nil_chk([self getCCFileTlvWithInt:fileId])) getMaxFileSize] < ndefLength) {
    @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, NDEF_MESSAGE_TOO_BIG));
  }
  ComStSt25sdkType4aNdefFileType4 *ndefFileType4 = [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) getWithId:JavaLangInteger_valueOfWithInt_(fileId)];
  if (ndefFileType4 == nil) {
    ndefFileType4 = new_ComStSt25sdkType4aNdefFileType4_initWithComStSt25sdkType4aType4Tag_withInt_(self, fileId);
    [ndefFileType4 selectAndWriteNdefMsgWithComStSt25sdkNdefNDEFMsg:msg withByteArray:password];
    (void) [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) putWithId:JavaLangInteger_valueOfWithInt_(fileId) withId:ndefFileType4];
    [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:ndefFileType4];
  }
  else {
    [ndefFileType4 selectAndWriteNdefMsgWithComStSt25sdkNdefNDEFMsg:msg withByteArray:password];
  }
}

- (void)_writeNdefMessageWithInt:(jint)fileId
     withComStSt25sdkNdefNDEFMsg:(ComStSt25sdkNdefNDEFMsg *)msg {
  ComStSt25sdkType4aNdefFileType4 *ndefFileType4 = [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) getWithId:JavaLangInteger_valueOfWithInt_(fileId)];
  if (ndefFileType4 == nil) {
    ndefFileType4 = new_ComStSt25sdkType4aNdefFileType4_initWithComStSt25sdkType4aType4Tag_withInt_(self, fileId);
    [ndefFileType4 writeNdefMsgWithComStSt25sdkNdefNDEFMsg:msg];
    (void) [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) putWithId:JavaLangInteger_valueOfWithInt_(fileId) withId:ndefFileType4];
    [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:ndefFileType4];
  }
  else {
    [ndefFileType4 writeNdefMsgWithComStSt25sdkNdefNDEFMsg:msg];
  }
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessage {
  jint ndefFileId = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNdefFileId];
  return [self readNdefMessageWithInt:ndefFileId];
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessageWithInt:(jint)fileId {
  return [self readNdefMessageWithInt:fileId withByteArray:nil];
}

- (ComStSt25sdkNdefNDEFMsg *)readNdefMessageWithInt:(jint)fileId
                                      withByteArray:(IOSByteArray *)password {
  ComStSt25sdkType4aNdefFileType4 *ndefFileType4 = [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) getWithId:JavaLangInteger_valueOfWithInt_(fileId)];
  if (ndefFileType4 == nil) {
    ndefFileType4 = new_ComStSt25sdkType4aNdefFileType4_initWithComStSt25sdkType4aType4Tag_withInt_(self, fileId);
    (void) [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) putWithId:JavaLangInteger_valueOfWithInt_(fileId) withId:ndefFileType4];
    [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:ndefFileType4];
  }
  return [ndefFileType4 selectAndReadNdefMsgWithByteArray:password];
}

- (ComStSt25sdkNdefNDEFMsg *)_readNdefMessageWithInt:(jint)fileId {
  ComStSt25sdkType4aNdefFileType4 *ndefFileType4 = [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) getWithId:JavaLangInteger_valueOfWithInt_(fileId)];
  if (ndefFileType4 == nil) {
    ndefFileType4 = new_ComStSt25sdkType4aNdefFileType4_initWithComStSt25sdkType4aType4Tag_withInt_(self, fileId);
    (void) [((JavaUtilLinkedHashMap *) nil_chk(mNdefFileList_)) putWithId:JavaLangInteger_valueOfWithInt_(fileId) withId:ndefFileType4];
    [((ComStSt25sdkTagCache *) nil_chk(mCache_)) addWithId:ndefFileType4];
  }
  return [ndefFileType4 readNdefMsg];
}

- (IOSByteArray *)readBytesWithInt:(jint)offsetInBytes
                           withInt:(jint)sizeInBytes {
  @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
    jint ndefFileId = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNdefFileId];
    return [self readBytesWithInt:ndefFileId withInt:offsetInBytes withInt:sizeInBytes];
  }
}

- (IOSByteArray *)readBytesWithInt:(jint)fileId
                           withInt:(jint)offsetInBytes
                           withInt:(jint)sizeInBytes {
  return [new_ComStSt25sdkType4aFileType4_initWithComStSt25sdkCommandType4Command_withInt_(mType4Cmd_, fileId) readWithInt:offsetInBytes withInt:sizeInBytes];
}

- (void)writeBytesWithInt:(jint)offsetInBytes
            withByteArray:(IOSByteArray *)data {
  @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
    jint ndefFileId = [((ComStSt25sdkType4aCCFileType4 *) nil_chk(mCCFile_)) getNdefFileId];
    [self writeBytesWithInt:ndefFileId withInt:offsetInBytes withByteArray:data];
  }
}

- (void)writeBytesWithInt:(jint)fileId
                  withInt:(jint)offsetInBytes
            withByteArray:(IOSByteArray *)data {
  [new_ComStSt25sdkType4aFileType4_initWithComStSt25sdkCommandType4Command_withInt_(mType4Cmd_, fileId) writeWithInt:offsetInBytes withByteArray:data];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkCommandType4Command;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aFileControlTlvType4;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aFileControlTlvType4;", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aFileControlTlvType4;", 0x1, 6, 5, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 7, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 8, 9, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 10, 11, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 12, 9, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 13, 14, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_Type4FileType;", 0x1, 17, 5, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 18, 5, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 19, 5, 1, -1, -1, -1 },
    { NULL, "B", 0x1, 20, 5, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x1, 21, 5, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x1, 22, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 24, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 25, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 26, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 27, 25, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, 28, 5, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, 28, 16, 1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x1, 29, 5, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 30, 14, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, 30, 31, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 32, 16, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 32, 33, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkRFReaderInterface:withByteArray:);
  methods[1].selector = @selector(getType4Command);
  methods[2].selector = @selector(getCCFileLength);
  methods[3].selector = @selector(getCCMagicNumber);
  methods[4].selector = @selector(readCCFile);
  methods[5].selector = @selector(writeCCFile);
  methods[6].selector = @selector(writeCCFileWithByteArray:);
  methods[7].selector = @selector(initEmptyCCFile);
  methods[8].selector = @selector(getCCMappingVersion);
  methods[9].selector = @selector(getCCReadAccess);
  methods[10].selector = @selector(getCCWriteAccess);
  methods[11].selector = @selector(getCCMemorySize);
  methods[12].selector = @selector(getCCMaxReadSize);
  methods[13].selector = @selector(getCCMaxWriteSize);
  methods[14].selector = @selector(getApduMaxReadSize);
  methods[15].selector = @selector(getApduMaxWriteSize);
  methods[16].selector = @selector(getCCTlv);
  methods[17].selector = @selector(getCCTlvWithInt:);
  methods[18].selector = @selector(getCCFileTlvWithInt:);
  methods[19].selector = @selector(getNbOfTlv);
  methods[20].selector = @selector(selectFileWithInt:);
  methods[21].selector = @selector(selectWithByte:withByte:withByteArray:);
  methods[22].selector = @selector(readBinaryWithByte:withByte:withByte:);
  methods[23].selector = @selector(updateBinaryWithByte:withByte:withByteArray:);
  methods[24].selector = @selector(selectNdef);
  methods[25].selector = @selector(selectNdefTagApplication);
  methods[26].selector = @selector(selectNdefTagApplicationMappingVersion2);
  methods[27].selector = @selector(selectNdefTagApplicationMappingVersion1);
  methods[28].selector = @selector(selectNdefTagApplicationSequence);
  methods[29].selector = @selector(selectCCFile);
  methods[30].selector = @selector(readDataWithInt:withInt:);
  methods[31].selector = @selector(writeDataWithInt:withByteArray:);
  methods[32].selector = @selector(getSysFileLength);
  methods[33].selector = @selector(readSysFile);
  methods[34].selector = @selector(selectSysFile);
  methods[35].selector = @selector(invalidateCache);
  methods[36].selector = @selector(validateCache);
  methods[37].selector = @selector(activateCache);
  methods[38].selector = @selector(deactivateCache);
  methods[39].selector = @selector(updateCache);
  methods[40].selector = @selector(isCacheValid);
  methods[41].selector = @selector(isCacheActivated);
  methods[42].selector = @selector(getMemSizeInBytes);
  methods[43].selector = @selector(getNdefFileId);
  methods[44].selector = @selector(getNbrOfFiles);
  methods[45].selector = @selector(getFileIdList);
  methods[46].selector = @selector(getFileTypeWithInt:);
  methods[47].selector = @selector(getMaxFileSizeWithInt:);
  methods[48].selector = @selector(getFileReadAccessWithInt:);
  methods[49].selector = @selector(getFileWriteAccessWithInt:);
  methods[50].selector = @selector(getFileReadAccessStatusWithInt:);
  methods[51].selector = @selector(getFileWriteAccessStatusWithInt:);
  methods[52].selector = @selector(writeNdefMessageWithComStSt25sdkNdefNDEFMsg:);
  methods[53].selector = @selector(writeNdefMessageWithInt:withComStSt25sdkNdefNDEFMsg:);
  methods[54].selector = @selector(writeNdefMessageWithInt:withComStSt25sdkNdefNDEFMsg:withByteArray:);
  methods[55].selector = @selector(_writeNdefMessageWithInt:withComStSt25sdkNdefNDEFMsg:);
  methods[56].selector = @selector(readNdefMessage);
  methods[57].selector = @selector(readNdefMessageWithInt:);
  methods[58].selector = @selector(readNdefMessageWithInt:withByteArray:);
  methods[59].selector = @selector(_readNdefMessageWithInt:);
  methods[60].selector = @selector(readBytesWithInt:withInt:);
  methods[61].selector = @selector(readBytesWithInt:withInt:withInt:);
  methods[62].selector = @selector(writeBytesWithInt:withByteArray:);
  methods[63].selector = @selector(writeBytesWithInt:withInt:withByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE4_CC_FILE_IDENTIFIER", "I", .constantValue.asInt = ComStSt25sdkType4aType4Tag_TYPE4_CC_FILE_IDENTIFIER, 0x19, -1, -1, -1, -1 },
    { "TYPE4_INVALID_FILE_IDENTIFIER", "I", .constantValue.asInt = ComStSt25sdkType4aType4Tag_TYPE4_INVALID_FILE_IDENTIFIER, 0x19, -1, -1, -1, -1 },
    { "TYPE4_MAX_RADPU_SIZE", "I", .constantValue.asInt = ComStSt25sdkType4aType4Tag_TYPE4_MAX_RADPU_SIZE, 0x19, -1, -1, -1, -1 },
    { "TYPE4_MAX_CAPDU_SIZE", "I", .constantValue.asInt = ComStSt25sdkType4aType4Tag_TYPE4_MAX_CAPDU_SIZE, 0x19, -1, -1, -1, -1 },
    { "mCCFile_", "LComStSt25sdkType4aCCFileType4;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mType4Cmd_", "LComStSt25sdkCommandType4Command;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCache_", "LComStSt25sdkTagCache;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mNdefFileList_", "LJavaUtilLinkedHashMap;", .constantValue.asLong = 0, 0x4, -1, -1, 34, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkRFReaderInterface;[B", "LComStSt25sdkSTException;", "writeCCFile", "[B", "getCCTlv", "I", "getCCFileTlv", "selectFile", "select", "BB[B", "readBinary", "BBB", "updateBinary", "readData", "II", "writeData", "I[B", "getFileType", "getMaxFileSize", "getFileReadAccess", "getFileWriteAccess", "getFileReadAccessStatus", "getFileWriteAccessStatus", "writeNdefMessage", "LComStSt25sdkNdefNDEFMsg;", "ILComStSt25sdkNdefNDEFMsg;", "ILComStSt25sdkNdefNDEFMsg;[B", "_writeNdefMessage", "readNdefMessage", "_readNdefMessage", "readBytes", "III", "writeBytes", "II[B", "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/st/st25sdk/type4a/NdefFileType4;>;", "LComStSt25sdkType4aType4Tag_Type4FileType;LComStSt25sdkType4aType4Tag_AccessStatus;" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aType4Tag = { "Type4Tag", "com.st.st25sdk.type4a", ptrTable, methods, fields, 7, 0x1, 64, 8, -1, 35, -1, -1, -1 };
  return &_ComStSt25sdkType4aType4Tag;
}

@end

void ComStSt25sdkType4aType4Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(ComStSt25sdkType4aType4Tag *self, id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  ComStSt25sdkNFCTag_initWithComStSt25sdkRFReaderInterface_(self, readerInterface);
  self->mName_ = @"NFC type4 tag";
  self->mDescription_ = @"NFC type4 - ISO/IEC 14443A/B";
  self->mType4Cmd_ = new_ComStSt25sdkCommandType4Command_initWithComStSt25sdkRFReaderInterface_withInt_withInt_(readerInterface, ComStSt25sdkType4aType4Tag_TYPE4_MAX_RADPU_SIZE, ComStSt25sdkType4aType4Tag_TYPE4_MAX_CAPDU_SIZE);
  self->mCCFile_ = new_ComStSt25sdkType4aCCFileType4_initWithComStSt25sdkCommandType4Command_(self->mType4Cmd_);
  [((ComStSt25sdkCommandType4Command *) nil_chk(self->mType4Cmd_)) setMaxRApduDataSizeWithInt:[self getCCMaxReadSize]];
  [((ComStSt25sdkCommandType4Command *) nil_chk(self->mType4Cmd_)) setMaxCApduDataSizeWithInt:[self getCCMaxWriteSize]];
  self->mUid_ = JavaUtilArrays_copyOfWithByteArray_withInt_(uid, ((IOSByteArray *) nil_chk(uid))->size_);
  self->mCache_ = new_ComStSt25sdkTagCache_init();
  [self->mCache_ addWithId:self->mCCFile_];
  self->mNdefFileList_ = new_JavaUtilLinkedHashMap_init();
}

ComStSt25sdkType4aType4Tag *new_ComStSt25sdkType4aType4Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aType4Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

ComStSt25sdkType4aType4Tag *create_ComStSt25sdkType4aType4Tag_initWithComStSt25sdkRFReaderInterface_withByteArray_(id<ComStSt25sdkRFReaderInterface> readerInterface, IOSByteArray *uid) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType4aType4Tag, initWithComStSt25sdkRFReaderInterface_withByteArray_, readerInterface, uid)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aType4Tag)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType4aType4Tag_Type4FileType)

ComStSt25sdkType4aType4Tag_Type4FileType *ComStSt25sdkType4aType4Tag_Type4FileType_values_[2];

@implementation ComStSt25sdkType4aType4Tag_Type4FileType

+ (ComStSt25sdkType4aType4Tag_Type4FileType *)NDEF_FILE {
  return JreEnum(ComStSt25sdkType4aType4Tag_Type4FileType, NDEF_FILE);
}

+ (ComStSt25sdkType4aType4Tag_Type4FileType *)PROPRIETARY_FILE {
  return JreEnum(ComStSt25sdkType4aType4Tag_Type4FileType, PROPRIETARY_FILE);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType4aType4Tag_Type4FileType_values();
}

+ (ComStSt25sdkType4aType4Tag_Type4FileType *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType4aType4Tag_Type4FileType_valueOfWithNSString_(name);
}

- (ComStSt25sdkType4aType4Tag_Type4FileType_Enum)toNSEnum {
  return (ComStSt25sdkType4aType4Tag_Type4FileType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType4aType4Tag_Type4FileType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_Type4FileType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NDEF_FILE", "LComStSt25sdkType4aType4Tag_Type4FileType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "PROPRIETARY_FILE", "LComStSt25sdkType4aType4Tag_Type4FileType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType4aType4Tag_Type4FileType, NDEF_FILE), &JreEnum(ComStSt25sdkType4aType4Tag_Type4FileType, PROPRIETARY_FILE), "LComStSt25sdkType4aType4Tag;", "Ljava/lang/Enum<Lcom/st/st25sdk/type4a/Type4Tag$Type4FileType;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aType4Tag_Type4FileType = { "Type4FileType", "com.st.st25sdk.type4a", ptrTable, methods, fields, 7, 0x4019, 2, 2, 4, -1, -1, 5, -1 };
  return &_ComStSt25sdkType4aType4Tag_Type4FileType;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType4aType4Tag_Type4FileType class]) {
    JreEnum(ComStSt25sdkType4aType4Tag_Type4FileType, NDEF_FILE) = new_ComStSt25sdkType4aType4Tag_Type4FileType_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aType4Tag_Type4FileType_class_(), 0), 0);
    JreEnum(ComStSt25sdkType4aType4Tag_Type4FileType, PROPRIETARY_FILE) = new_ComStSt25sdkType4aType4Tag_Type4FileType_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aType4Tag_Type4FileType_class_(), 1), 1);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType4aType4Tag_Type4FileType)
  }
}

@end

void ComStSt25sdkType4aType4Tag_Type4FileType_initWithNSString_withInt_(ComStSt25sdkType4aType4Tag_Type4FileType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType4aType4Tag_Type4FileType *new_ComStSt25sdkType4aType4Tag_Type4FileType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aType4Tag_Type4FileType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType4aType4Tag_Type4FileType_values() {
  ComStSt25sdkType4aType4Tag_Type4FileType_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType4aType4Tag_Type4FileType_values_ count:2 type:ComStSt25sdkType4aType4Tag_Type4FileType_class_()];
}

ComStSt25sdkType4aType4Tag_Type4FileType *ComStSt25sdkType4aType4Tag_Type4FileType_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType4aType4Tag_Type4FileType_initialize();
  for (int i = 0; i < 2; i++) {
    ComStSt25sdkType4aType4Tag_Type4FileType *e = ComStSt25sdkType4aType4Tag_Type4FileType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType4aType4Tag_Type4FileType *ComStSt25sdkType4aType4Tag_Type4FileType_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType4aType4Tag_Type4FileType_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return ComStSt25sdkType4aType4Tag_Type4FileType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aType4Tag_Type4FileType)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType4aType4Tag_AccessStatus)

ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aType4Tag_AccessStatus_values_[4];

@implementation ComStSt25sdkType4aType4Tag_AccessStatus

+ (ComStSt25sdkType4aType4Tag_AccessStatus *)NOT_LOCKED {
  return JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED);
}

+ (ComStSt25sdkType4aType4Tag_AccessStatus *)LOCKED_BY_PASSWORD {
  return JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD);
}

+ (ComStSt25sdkType4aType4Tag_AccessStatus *)NOT_AUTHORIZED {
  return JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED);
}

+ (ComStSt25sdkType4aType4Tag_AccessStatus *)STATUS_UNKNOWN {
  return JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType4aType4Tag_AccessStatus_values();
}

+ (ComStSt25sdkType4aType4Tag_AccessStatus *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType4aType4Tag_AccessStatus_valueOfWithNSString_(name);
}

- (ComStSt25sdkType4aType4Tag_AccessStatus_Enum)toNSEnum {
  return (ComStSt25sdkType4aType4Tag_AccessStatus_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType4aType4Tag_AccessStatus;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aType4Tag_AccessStatus;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NOT_LOCKED", "LComStSt25sdkType4aType4Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "LOCKED_BY_PASSWORD", "LComStSt25sdkType4aType4Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "NOT_AUTHORIZED", "LComStSt25sdkType4aType4Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "STATUS_UNKNOWN", "LComStSt25sdkType4aType4Tag_AccessStatus;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED), &JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD), &JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED), &JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN), "LComStSt25sdkType4aType4Tag;", "Ljava/lang/Enum<Lcom/st/st25sdk/type4a/Type4Tag$AccessStatus;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aType4Tag_AccessStatus = { "AccessStatus", "com.st.st25sdk.type4a", ptrTable, methods, fields, 7, 0x4019, 2, 4, 6, -1, -1, 7, -1 };
  return &_ComStSt25sdkType4aType4Tag_AccessStatus;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType4aType4Tag_AccessStatus class]) {
    JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_LOCKED) = new_ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aType4Tag_AccessStatus_class_(), 0), 0);
    JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, LOCKED_BY_PASSWORD) = new_ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aType4Tag_AccessStatus_class_(), 1), 1);
    JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, NOT_AUTHORIZED) = new_ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aType4Tag_AccessStatus_class_(), 2), 2);
    JreEnum(ComStSt25sdkType4aType4Tag_AccessStatus, STATUS_UNKNOWN) = new_ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aType4Tag_AccessStatus_class_(), 3), 3);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType4aType4Tag_AccessStatus)
  }
}

@end

void ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(ComStSt25sdkType4aType4Tag_AccessStatus *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType4aType4Tag_AccessStatus *new_ComStSt25sdkType4aType4Tag_AccessStatus_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aType4Tag_AccessStatus, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType4aType4Tag_AccessStatus_values() {
  ComStSt25sdkType4aType4Tag_AccessStatus_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType4aType4Tag_AccessStatus_values_ count:4 type:ComStSt25sdkType4aType4Tag_AccessStatus_class_()];
}

ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aType4Tag_AccessStatus_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType4aType4Tag_AccessStatus_initialize();
  for (int i = 0; i < 4; i++) {
    ComStSt25sdkType4aType4Tag_AccessStatus *e = ComStSt25sdkType4aType4Tag_AccessStatus_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType4aType4Tag_AccessStatus *ComStSt25sdkType4aType4Tag_AccessStatus_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType4aType4Tag_AccessStatus_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return ComStSt25sdkType4aType4Tag_AccessStatus_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aType4Tag_AccessStatus)
