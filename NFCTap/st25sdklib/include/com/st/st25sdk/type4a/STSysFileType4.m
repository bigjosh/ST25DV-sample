//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/STSysFileType4.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/Helper.h"
#include "com/st/st25sdk/STException.h"
#include "com/st/st25sdk/command/Type4Command.h"
#include "com/st/st25sdk/type4a/FileType4.h"
#include "com/st/st25sdk/type4a/STSysFileType4.h"
#include "com/st/st25sdk/type4a/STType4Tag.h"
#include "java/lang/Exception.h"
#include "java/util/Arrays.h"

@implementation ComStSt25sdkType4aSTSysFileType4

- (instancetype)initWithComStSt25sdkCommandType4Command:(ComStSt25sdkCommandType4Command *)type4Command {
  ComStSt25sdkType4aSTSysFileType4_initWithComStSt25sdkCommandType4Command_(self, type4Command);
  return self;
}

- (jint)readLength {
  if (!mCacheActivated_ || mCacheInvalidated_) {
    IOSByteArray *buffer;
    jbyte length = (jbyte) (jint) 0x02;
    @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
      @try {
        (void) [self select];
        buffer = [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) readBinaryWithByte:(jbyte) (jint) 0x00 withByte:(jbyte) (jint) 0x00 withByte:length];
        if (IOSByteArray_Get(nil_chk(buffer), 0) == (jbyte) (jint) 0x00) {
          mLength_ = (JreLShift32(ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_(IOSByteArray_Get(buffer, 0)), 8)) + ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_(IOSByteArray_Get(buffer, 1));
        }
        else @throw new_ComStSt25sdkSTException_initWithNSString_(@"Tag application not found");
      }
      @catch (JavaLangException *e) {
        [e printStackTrace];
        @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
      }
    }
  }
  return mLength_;
}

- (IOSByteArray *)read {
  if (!mCacheActivated_ || mCacheInvalidated_) {
    IOSByteArray *buffer = nil;
    @synchronized(JreLoadStatic(ComStSt25sdkCommandType4Command, mLock)) {
      @try {
        jint sizeInBytes = [self readLength];
        if (sizeInBytes > 0) buffer = [((ComStSt25sdkCommandType4Command *) nil_chk(mType4Command_)) readDataWithInt:0 withInt:sizeInBytes];
        if (buffer != nil) return JavaUtilArrays_copyOfRangeWithByteArray_withInt_withInt_(buffer, 0, buffer->size_);
        else return nil;
      }
      @catch (JavaLangException *e) {
        [e printStackTrace];
        @throw new_ComStSt25sdkSTException_initWithComStSt25sdkSTException_STExceptionCode_(JreLoadEnum(ComStSt25sdkSTException_STExceptionCode, CMD_FAILED));
      }
    }
  }
  return mBuffer_;
}

- (IOSByteArray *)getData {
  [self checkCache];
  return mBuffer_;
}

- (jint)getLength {
  [self checkCache];
  return mLength_;
}

- (jint)getMemSizeInBytes {
  [self checkCache];
  return mMemorySizeInBytes_;
}

- (jbyte)getICRef {
  [self checkCache];
  return mICRef_;
}

- (void)invalidateCache {
  mCacheInvalidated_ = true;
}

- (void)validateCache {
  mCacheInvalidated_ = false;
}

- (void)activateCache {
  mCacheActivated_ = true;
  mCacheInvalidated_ = true;
}

- (void)deactivateCache {
  mCacheActivated_ = false;
}

- (void)updateCache {
  if ([self isCacheActivated]) {
    [self invalidateCache];
    IOSByteArray *buffer = [self read];
    if (buffer != nil) {
      [self parseSysFileWithByteArray:buffer];
      mCacheInvalidated_ = false;
    }
  }
}

- (jboolean)isCacheValid {
  return !mCacheInvalidated_;
}

- (jboolean)isCacheActivated {
  return mCacheActivated_;
}

- (void)checkCache {
  if (![self isCacheActivated]) {
    IOSByteArray *buffer = [self read];
    [self parseSysFileWithByteArray:buffer];
  }
  else if (![self isCacheValid]) [self updateCache];
}

- (void)parseSysFileWithByteArray:(IOSByteArray *)buffer {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithComStSt25sdkCommandType4Command:);
  methods[1].selector = @selector(readLength);
  methods[2].selector = @selector(read);
  methods[3].selector = @selector(getData);
  methods[4].selector = @selector(getLength);
  methods[5].selector = @selector(getMemSizeInBytes);
  methods[6].selector = @selector(getICRef);
  methods[7].selector = @selector(invalidateCache);
  methods[8].selector = @selector(validateCache);
  methods[9].selector = @selector(activateCache);
  methods[10].selector = @selector(deactivateCache);
  methods[11].selector = @selector(updateCache);
  methods[12].selector = @selector(isCacheValid);
  methods[13].selector = @selector(isCacheActivated);
  methods[14].selector = @selector(checkCache);
  methods[15].selector = @selector(parseSysFileWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mLength_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mICRef_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mUid_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mMemorySizeInBytes_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mProductCode_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mBuffer_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCacheActivated_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mCacheInvalidated_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkCommandType4Command;", "LComStSt25sdkSTException;", "parseSysFile", "[B" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aSTSysFileType4 = { "STSysFileType4", "com.st.st25sdk.type4a", ptrTable, methods, fields, 7, 0x1, 16, 8, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkType4aSTSysFileType4;
}

@end

void ComStSt25sdkType4aSTSysFileType4_initWithComStSt25sdkCommandType4Command_(ComStSt25sdkType4aSTSysFileType4 *self, ComStSt25sdkCommandType4Command *type4Command) {
  ComStSt25sdkType4aFileType4_initWithComStSt25sdkCommandType4Command_withInt_(self, type4Command, ComStSt25sdkType4aSTType4Tag_SYS_FILE_IDENTIFIER);
  self->mUid_ = [IOSByteArray newArrayWithLength:7];
  self->mCacheActivated_ = true;
  self->mCacheInvalidated_ = true;
}

ComStSt25sdkType4aSTSysFileType4 *new_ComStSt25sdkType4aSTSysFileType4_initWithComStSt25sdkCommandType4Command_(ComStSt25sdkCommandType4Command *type4Command) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aSTSysFileType4, initWithComStSt25sdkCommandType4Command_, type4Command)
}

ComStSt25sdkType4aSTSysFileType4 *create_ComStSt25sdkType4aSTSysFileType4_initWithComStSt25sdkCommandType4Command_(ComStSt25sdkCommandType4Command *type4Command) {
  J2OBJC_CREATE_IMPL(ComStSt25sdkType4aSTSysFileType4, initWithComStSt25sdkCommandType4Command_, type4Command)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aSTSysFileType4)