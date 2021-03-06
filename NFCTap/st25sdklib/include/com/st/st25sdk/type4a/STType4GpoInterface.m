//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/STType4GpoInterface.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/st/st25sdk/type4a/STType4GpoInterface.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

@interface ComStSt25sdkType4aSTType4GpoInterface : NSObject

@end

__attribute__((unused)) static void ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(ComStSt25sdkType4aSTType4GpoInterface_GpoMode *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComStSt25sdkType4aSTType4GpoInterface_GpoMode *new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComStSt25sdkType4aSTType4GpoInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, 2, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, 2, 5, -1, -1 },
    { NULL, "B", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 9, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getGpoModeWithByte:);
  methods[1].selector = @selector(setGpoModeWithComStSt25sdkType4aSTType4GpoInterface_GpoMode:);
  methods[2].selector = @selector(getSupportedGpoModes);
  methods[3].selector = @selector(getGpo);
  methods[4].selector = @selector(setGpoWithByte:);
  methods[5].selector = @selector(lockGpoWithByte:);
  methods[6].selector = @selector(lockGpo);
  methods[7].selector = @selector(isGpoLocked);
  methods[8].selector = @selector(isGpoConfigurableByRf);
  methods[9].selector = @selector(isGpoInInterruptedMode);
  methods[10].selector = @selector(isGpoInStateControlMode);
  methods[11].selector = @selector(sendInterruptCommand);
  methods[12].selector = @selector(setStateControlCommandWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getGpoMode", "B", "LComStSt25sdkSTException;", "setGpoMode", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", "()Ljava/util/List<Lcom/st/st25sdk/type4a/STType4GpoInterface$GpoMode;>;", "setGpo", "lockGpo", "setStateControlCommand", "I" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aSTType4GpoInterface = { "STType4GpoInterface", "com.st.st25sdk.type4a", ptrTable, methods, NULL, 7, 0x609, 13, 0, -1, 4, -1, -1, -1 };
  return &_ComStSt25sdkType4aSTType4GpoInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aSTType4GpoInterface)

J2OBJC_INITIALIZED_DEFN(ComStSt25sdkType4aSTType4GpoInterface_GpoMode)

ComStSt25sdkType4aSTType4GpoInterface_GpoMode *ComStSt25sdkType4aSTType4GpoInterface_GpoMode_values_[9];

@implementation ComStSt25sdkType4aSTType4GpoInterface_GpoMode

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_NOT_USED {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_NOT_USED);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_HIGH_IMPEDANCE {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_HIGH_IMPEDANCE);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_SESSION_OPENED {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_SESSION_OPENED);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_WIP {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_WIP);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_MIP {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_MIP);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_INTERRUPT {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_INTERRUPT);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_STATE_CONTROL {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_STATE_CONTROL);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_RF_BUSY {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_RF_BUSY);
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)GPO_FIELD_DETECT {
  return JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_FIELD_DETECT);
}

+ (IOSObjectArray *)values {
  return ComStSt25sdkType4aSTType4GpoInterface_GpoMode_values();
}

+ (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)valueOfWithNSString:(NSString *)name {
  return ComStSt25sdkType4aSTType4GpoInterface_GpoMode_valueOfWithNSString_(name);
}

- (ComStSt25sdkType4aSTType4GpoInterface_GpoMode_Enum)toNSEnum {
  return (ComStSt25sdkType4aSTType4GpoInterface_GpoMode_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "GPO_NOT_USED", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "GPO_HIGH_IMPEDANCE", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "GPO_SESSION_OPENED", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "GPO_WIP", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "GPO_MIP", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "GPO_INTERRUPT", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "GPO_STATE_CONTROL", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "GPO_RF_BUSY", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "GPO_FIELD_DETECT", "LComStSt25sdkType4aSTType4GpoInterface_GpoMode;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_NOT_USED), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_HIGH_IMPEDANCE), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_SESSION_OPENED), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_WIP), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_MIP), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_INTERRUPT), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_STATE_CONTROL), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_RF_BUSY), &JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_FIELD_DETECT), "LComStSt25sdkType4aSTType4GpoInterface;", "Ljava/lang/Enum<Lcom/st/st25sdk/type4a/STType4GpoInterface$GpoMode;>;" };
  static const J2ObjcClassInfo _ComStSt25sdkType4aSTType4GpoInterface_GpoMode = { "GpoMode", "com.st.st25sdk.type4a", ptrTable, methods, fields, 7, 0x4019, 2, 9, 11, -1, -1, 12, -1 };
  return &_ComStSt25sdkType4aSTType4GpoInterface_GpoMode;
}

+ (void)initialize {
  if (self == [ComStSt25sdkType4aSTType4GpoInterface_GpoMode class]) {
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_NOT_USED) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 0), 0);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_HIGH_IMPEDANCE) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 1), 1);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_SESSION_OPENED) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 2), 2);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_WIP) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 3), 3);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_MIP) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 4), 4);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_INTERRUPT) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 5), 5);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_STATE_CONTROL) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 6), 6);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_RF_BUSY) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 7), 7);
    JreEnum(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, GPO_FIELD_DETECT) = new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(JreEnumConstantName(ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_(), 8), 8);
    J2OBJC_SET_INITIALIZED(ComStSt25sdkType4aSTType4GpoInterface_GpoMode)
  }
}

@end

void ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(ComStSt25sdkType4aSTType4GpoInterface_GpoMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComStSt25sdkType4aSTType4GpoInterface_GpoMode *new_ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComStSt25sdkType4aSTType4GpoInterface_GpoMode, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComStSt25sdkType4aSTType4GpoInterface_GpoMode_values() {
  ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initialize();
  return [IOSObjectArray arrayWithObjects:ComStSt25sdkType4aSTType4GpoInterface_GpoMode_values_ count:9 type:ComStSt25sdkType4aSTType4GpoInterface_GpoMode_class_()];
}

ComStSt25sdkType4aSTType4GpoInterface_GpoMode *ComStSt25sdkType4aSTType4GpoInterface_GpoMode_valueOfWithNSString_(NSString *name) {
  ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initialize();
  for (int i = 0; i < 9; i++) {
    ComStSt25sdkType4aSTType4GpoInterface_GpoMode *e = ComStSt25sdkType4aSTType4GpoInterface_GpoMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComStSt25sdkType4aSTType4GpoInterface_GpoMode *ComStSt25sdkType4aSTType4GpoInterface_GpoMode_fromOrdinal(NSUInteger ordinal) {
  ComStSt25sdkType4aSTType4GpoInterface_GpoMode_initialize();
  if (ordinal >= 9) {
    return nil;
  }
  return ComStSt25sdkType4aSTType4GpoInterface_GpoMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComStSt25sdkType4aSTType4GpoInterface_GpoMode)
