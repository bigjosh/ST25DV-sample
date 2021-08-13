//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/RFReaderInterface.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/RFReaderInterface.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

@interface ComStSt25sdkRFReaderInterface : NSObject

@end

__attribute__((unused)) static void ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(ComStSt25sdkRFReaderInterface_InventoryMode *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkRFReaderInterface_InventoryMode *new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static void ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(ComStSt25sdkRFReaderInterface_TransceiveMode *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkRFReaderInterface_TransceiveMode *new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkRFReaderInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[B", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, 5, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkRFReaderInterface_TransceiveMode;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkNFCTag_NfcTagTypes;", 0x401, 6, 7, 2, -1, -1, -1 },
    { NULL, "[LNSString;", 0x401, 8, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 10, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, 11, 12, 2, 13, -1, -1 },
    { NULL, "B", 0x401, 14, 7, 2, -1, -1, -1 },
    { NULL, "B", 0x401, 15, 7, 2, -1, -1, -1 },
    { NULL, "B", 0x401, 16, 7, 2, -1, -1, -1 },
    { NULL, "B", 0x401, 17, 7, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(transceiveWithId:withNSString:withByteArray:);
  methods[1].selector = @selector(setTransceiveModeWithComStSt25sdkRFReaderInterface_TransceiveMode:);
  methods[2].selector = @selector(getTransceivedData);
  methods[3].selector = @selector(getLastTransceivedData);
  methods[4].selector = @selector(getTransceiveMode);
  methods[5].selector = @selector(decodeTagTypeWithByteArray:);
  methods[6].selector = @selector(getTechListWithByteArray:);
  methods[7].selector = @selector(getMaxTransmitLengthInBytes);
  methods[8].selector = @selector(getMaxReceiveLengthInBytes);
  methods[9].selector = @selector(setTagResponseLengthInBytesWithInt:);
  methods[10].selector = @selector(inventoryWithComStSt25sdkRFReaderInterface_InventoryMode:);
  methods[11].selector = @selector(iso14443aSelectTagWithByteArray:);
  methods[12].selector = @selector(iso14443aDeSelectTagWithByteArray:);
  methods[13].selector = @selector(iso14443bSelectTagWithByteArray:);
  methods[14].selector = @selector(iso14443bDeSelectTagWithByteArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "transceive", "LNSObject;LNSString;[B", "LComStSt25sdkSTException;", "setTransceiveMode", "LComStSt25sdkRFReaderInterface_TransceiveMode;", "()Ljava/util/List<[B>;", "decodeTagType", "[B", "getTechList", "setTagResponseLengthInBytes", "I", "inventory", "LComStSt25sdkRFReaderInterface_InventoryMode;", "(Lcom/st/st25sdk/RFReaderInterface$InventoryMode;)Ljava/util/List<[B>;", "iso14443aSelectTag", "iso14443aDeSelectTag", "iso14443bSelectTag", "iso14443bDeSelectTag", "LComStSt25sdkRFReaderInterface_InventoryMode;LComStSt25sdkRFReaderInterface_TransceiveMode;" };
  static const J2ObjcClassInfo _ComStSt25sdkRFReaderInterface = { "RFReaderInterface", "com.st.st25sdk", ptrTable, methods, NULL, 7, 0x609, 15, 0, -1, 18, -1, -1, -1 };
  return &_ComStSt25sdkRFReaderInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkRFReaderInterface)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkRFReaderInterface_InventoryMode)

ComStSt25sdkRFReaderInterface_InventoryMode *ComStSt25sdkRFReaderInterface_InventoryMode_values_[7];

@implementation ComStSt25sdkRFReaderInterface_InventoryMode

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_TYPE_4A {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_4A);
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_TYPE_4B {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_4B);
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_ISO14443SR {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_ISO14443SR);
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_TYPE_5 {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_5);
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_TYPE1 {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE1);
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_TYPE3 {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE3);
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)NFC_PICOPASS {
  return JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_PICOPASS);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkRFReaderInterface_InventoryMode_values();
}

+ (ComStSt25sdkRFReaderInterface_InventoryMode *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkRFReaderInterface_InventoryMode_valueOfWithNSString_(name);
}

- (ComStSt25sdkRFReaderInterface_InventoryMode_Enum)toNSEnum {
  return (ComStSt25sdkRFReaderInterface_InventoryMode_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkRFReaderInterface_InventoryMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkRFReaderInterface_InventoryMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NFC_TYPE_4A", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "NFC_TYPE_4B", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "NFC_ISO14443SR", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "NFC_TYPE_5", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "NFC_TYPE1", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "NFC_TYPE3", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "NFC_PICOPASS", "LComStSt25sdkRFReaderInterface_InventoryMode;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_4A), &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_4B), &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_ISO14443SR), &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_5), &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE1), &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE3), &JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_PICOPASS), "LComStSt25sdkRFReaderInterface;", "Ljava/lang/Enum<Lcom/st/st25sdk/RFReaderInterface$InventoryMode;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkRFReaderInterface_InventoryMode = { "InventoryMode", "com.st.st25sdk", ptrTable, methods, fields, 7, 0x4019, 2, 7, 9, -1, -1, 10, -1 };
  return &_ComStSt25sdkRFReaderInterface_InventoryMode;
}

+ (void)initialize {
  if (self == [ComStSt25sdkRFReaderInterface_InventoryMode class]) {
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_4A) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 0), 0);
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_4B) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 1), 1);
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_ISO14443SR) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 2), 2);
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE_5) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 3), 3);
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE1) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 4), 4);
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_TYPE3) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 5), 5);
    JreEnum(ComStSt25sdkRFReaderInterface_InventoryMode, NFC_PICOPASS) = new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_InventoryMode_class_(), 6), 6);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkRFReaderInterface_InventoryMode)
  }
}

@end

void ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(ComStSt25sdkRFReaderInterface_InventoryMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkRFReaderInterface_InventoryMode *new_ComStSt25sdkRFReaderInterface_InventoryMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkRFReaderInterface_InventoryMode, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkRFReaderInterface_InventoryMode_values() {
  ComStSt25sdkRFReaderInterface_InventoryMode_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkRFReaderInterface_InventoryMode_values_ count:7 type:ComStSt25sdkRFReaderInterface_InventoryMode_class_()];
}

ComStSt25sdkRFReaderInterface_InventoryMode *ComStSt25sdkRFReaderInterface_InventoryMode_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkRFReaderInterface_InventoryMode_initialize();
  for (int i = 0; i < 7; i++) {
    ComStSt25sdkRFReaderInterface_InventoryMode *e = ComStSt25sdkRFReaderInterface_InventoryMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkRFReaderInterface_InventoryMode *ComStSt25sdkRFReaderInterface_InventoryMode_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkRFReaderInterface_InventoryMode_initialize();
  if (ordinal >= 7) {
    return nil;
  }
  return ComStSt25sdkRFReaderInterface_InventoryMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkRFReaderInterface_InventoryMode)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkRFReaderInterface_TransceiveMode)

ComStSt25sdkRFReaderInterface_TransceiveMode *ComStSt25sdkRFReaderInterface_TransceiveMode_values_[7];

@implementation ComStSt25sdkRFReaderInterface_TransceiveMode

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)NORMAL {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, NORMAL);
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)SILENT {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, SILENT);
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)EVAL {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, EVAL);
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)EVAL_RECORD {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, EVAL_RECORD);
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)RECORD {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, RECORD);
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)ISO14443A_TRANSPARENT {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, ISO14443A_TRANSPARENT);
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)ISO14443B_TRANSPARENT {
  return JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, ISO14443B_TRANSPARENT);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkRFReaderInterface_TransceiveMode_values();
}

+ (ComStSt25sdkRFReaderInterface_TransceiveMode *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkRFReaderInterface_TransceiveMode_valueOfWithNSString_(name);
}

- (ComStSt25sdkRFReaderInterface_TransceiveMode_Enum)toNSEnum {
  return (ComStSt25sdkRFReaderInterface_TransceiveMode_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkRFReaderInterface_TransceiveMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkRFReaderInterface_TransceiveMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NORMAL", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "SILENT", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "EVAL", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "EVAL_RECORD", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "RECORD", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "ISO14443A_TRANSPARENT", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "ISO14443B_TRANSPARENT", "LComStSt25sdkRFReaderInterface_TransceiveMode;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, NORMAL), &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, SILENT), &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, EVAL), &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, EVAL_RECORD), &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, RECORD), &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, ISO14443A_TRANSPARENT), &JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, ISO14443B_TRANSPARENT), "LComStSt25sdkRFReaderInterface;", "Ljava/lang/Enum<Lcom/st/st25sdk/RFReaderInterface$TransceiveMode;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkRFReaderInterface_TransceiveMode = { "TransceiveMode", "com.st.st25sdk", ptrTable, methods, fields, 7, 0x4019, 2, 7, 9, -1, -1, 10, -1 };
  return &_ComStSt25sdkRFReaderInterface_TransceiveMode;
}

+ (void)initialize {
  if (self == [ComStSt25sdkRFReaderInterface_TransceiveMode class]) {
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, NORMAL) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 0), 0);
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, SILENT) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 1), 1);
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, EVAL) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 2), 2);
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, EVAL_RECORD) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 3), 3);
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, RECORD) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 4), 4);
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, ISO14443A_TRANSPARENT) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 5), 5);
    JreEnum(ComStSt25sdkRFReaderInterface_TransceiveMode, ISO14443B_TRANSPARENT) = new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkRFReaderInterface_TransceiveMode_class_(), 6), 6);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkRFReaderInterface_TransceiveMode)
  }
}

@end

void ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(ComStSt25sdkRFReaderInterface_TransceiveMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkRFReaderInterface_TransceiveMode *new_ComStSt25sdkRFReaderInterface_TransceiveMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkRFReaderInterface_TransceiveMode, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkRFReaderInterface_TransceiveMode_values() {
  ComStSt25sdkRFReaderInterface_TransceiveMode_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkRFReaderInterface_TransceiveMode_values_ count:7 type:ComStSt25sdkRFReaderInterface_TransceiveMode_class_()];
}

ComStSt25sdkRFReaderInterface_TransceiveMode *ComStSt25sdkRFReaderInterface_TransceiveMode_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkRFReaderInterface_TransceiveMode_initialize();
  for (int i = 0; i < 7; i++) {
    ComStSt25sdkRFReaderInterface_TransceiveMode *e = ComStSt25sdkRFReaderInterface_TransceiveMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkRFReaderInterface_TransceiveMode *ComStSt25sdkRFReaderInterface_TransceiveMode_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkRFReaderInterface_TransceiveMode_initialize();
  if (ordinal >= 7) {
    return nil;
  }
  return ComStSt25sdkRFReaderInterface_TransceiveMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkRFReaderInterface_TransceiveMode)