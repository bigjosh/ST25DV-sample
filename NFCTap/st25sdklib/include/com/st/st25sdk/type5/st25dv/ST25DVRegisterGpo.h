//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dv/ST25DVRegisterGpo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5St25dvST25DVRegisterGpo")
#ifdef RESTRICT_ComStSt25sdkType5St25dvST25DVRegisterGpo
#define INCLUDE_ALL_ComStSt25sdkType5St25dvST25DVRegisterGpo 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5St25dvST25DVRegisterGpo 1
#endif
#undef RESTRICT_ComStSt25sdkType5St25dvST25DVRegisterGpo

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5St25dvST25DVRegisterGpo_) && (INCLUDE_ALL_ComStSt25sdkType5St25dvST25DVRegisterGpo || defined(INCLUDE_ComStSt25sdkType5St25dvST25DVRegisterGpo))
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_

#define RESTRICT_ComStSt25sdkType5STType5Register 1
#define INCLUDE_ComStSt25sdkType5STType5Register 1
#include "com/st/st25sdk/type5/STType5Register.h"

@class ComStSt25sdkCommandIso15693CustomCommand;
@class ComStSt25sdkSTRegister_RegisterAccessRights;
@class ComStSt25sdkSTRegister_RegisterDataSize;
@class ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl;

@interface ComStSt25sdkType5St25dvST25DVRegisterGpo : ComStSt25sdkType5STType5Register
@property (readonly, class) jbyte GPO_EN_BIT_MASK NS_SWIFT_NAME(GPO_EN_BIT_MASK);
@property (readonly, class) jbyte RF_WRITE_EN_BIT_MASK NS_SWIFT_NAME(RF_WRITE_EN_BIT_MASK);
@property (readonly, class) jbyte RF_GETMSG_BIT_MASK NS_SWIFT_NAME(RF_GETMSG_BIT_MASK);
@property (readonly, class) jbyte RF_PUTMSG_BIT_MASK NS_SWIFT_NAME(RF_PUTMSG_BIT_MASK);
@property (readonly, class) jbyte FIELD_CHANGE_BIT_MASK NS_SWIFT_NAME(FIELD_CHANGE_BIT_MASK);
@property (readonly, class) jbyte RF_INTERUPT_BIT_MASK NS_SWIFT_NAME(RF_INTERUPT_BIT_MASK);
@property (readonly, class) jbyte RF_ACTIVITY_BIT_MASK NS_SWIFT_NAME(RF_ACTIVITY_BIT_MASK);
@property (readonly, class) jbyte RF_USER_BIT_MASK NS_SWIFT_NAME(RF_USER_BIT_MASK);

+ (jbyte)GPO_EN_BIT_MASK;

+ (jbyte)RF_WRITE_EN_BIT_MASK;

+ (jbyte)RF_GETMSG_BIT_MASK;

+ (jbyte)RF_PUTMSG_BIT_MASK;

+ (jbyte)FIELD_CHANGE_BIT_MASK;

+ (jbyte)RF_INTERUPT_BIT_MASK;

+ (jbyte)RF_ACTIVITY_BIT_MASK;

+ (jbyte)RF_USER_BIT_MASK;

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                   withInt:(jint)registerAddress
                                                              withNSString:(NSString *)registerName
                                                              withNSString:(NSString *)registerContentDescription
                           withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                               withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize;

- (jboolean)isGPOFieldEnabledWithComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl:(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *)gpoControl;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand OBJC_METHOD_FAMILY_NONE;

- (void)setGPOWithByte:(jbyte)value
withComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl:(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *)gpoControl
           withBoolean:(jboolean)enable;

- (void)setGPOWithComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl:(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *)gpoControl
                                                                withBoolean:(jboolean)enable;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)arg0
                                                                   withInt:(jint)arg1
                                                                   withInt:(jint)arg2
                                                              withNSString:(NSString *)arg3
                                                              withNSString:(NSString *)arg4
                           withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)arg5
                               withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)arg6 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25dvST25DVRegisterGpo)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_GPO_EN_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_GPO_EN_BIT_MASK -128
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, GPO_EN_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_RF_WRITE_EN_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_RF_WRITE_EN_BIT_MASK 64
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, RF_WRITE_EN_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_RF_GETMSG_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_RF_GETMSG_BIT_MASK 32
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, RF_GETMSG_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_RF_PUTMSG_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_RF_PUTMSG_BIT_MASK 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, RF_PUTMSG_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_FIELD_CHANGE_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_FIELD_CHANGE_BIT_MASK 8
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, FIELD_CHANGE_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_RF_INTERUPT_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_RF_INTERUPT_BIT_MASK 4
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, RF_INTERUPT_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_RF_ACTIVITY_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_RF_ACTIVITY_BIT_MASK 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, RF_ACTIVITY_BIT_MASK, jbyte)

inline jbyte ComStSt25sdkType5St25dvST25DVRegisterGpo_get_RF_USER_BIT_MASK(void);
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_RF_USER_BIT_MASK 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo, RF_USER_BIT_MASK, jbyte)

FOUNDATION_EXPORT ComStSt25sdkType5St25dvST25DVRegisterGpo *ComStSt25sdkType5St25dvST25DVRegisterGpo_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand);

FOUNDATION_EXPORT void ComStSt25sdkType5St25dvST25DVRegisterGpo_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvST25DVRegisterGpo *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvST25DVRegisterGpo *new_ComStSt25sdkType5St25dvST25DVRegisterGpo_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType5St25dvST25DVRegisterGpo *create_ComStSt25sdkType5St25dvST25DVRegisterGpo_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5St25dvST25DVRegisterGpo)

#endif

#if !defined (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_) && (INCLUDE_ALL_ComStSt25sdkType5St25dvST25DVRegisterGpo || defined(INCLUDE_ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl))
#define ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum) {
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_RF_USER_EN = 0,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_RF_ACTIVITY_EN = 1,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_RF_INTERRUPT_EN = 2,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_FIELD_CHANGE_EN = 3,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_RF_PUTMSG_EN = 4,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_RF_GETMSG_EN = 5,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_RF_WRITE_EN = 6,
  ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum_GPO_EN = 7,
};

@interface ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *RF_USER_EN NS_SWIFT_NAME(RF_USER_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *RF_ACTIVITY_EN NS_SWIFT_NAME(RF_ACTIVITY_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *RF_INTERRUPT_EN NS_SWIFT_NAME(RF_INTERRUPT_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *FIELD_CHANGE_EN NS_SWIFT_NAME(FIELD_CHANGE_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *RF_PUTMSG_EN NS_SWIFT_NAME(RF_PUTMSG_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *RF_GETMSG_EN NS_SWIFT_NAME(RF_GETMSG_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *RF_WRITE_EN NS_SWIFT_NAME(RF_WRITE_EN);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *GPO_EN NS_SWIFT_NAME(GPO_EN);
+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)RF_USER_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)RF_ACTIVITY_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)RF_INTERRUPT_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)FIELD_CHANGE_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)RF_PUTMSG_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)RF_GETMSG_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)RF_WRITE_EN;

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl * __nonnull)GPO_EN;

#pragma mark Public

+ (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_values_[];

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_RF_USER_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, RF_USER_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_RF_ACTIVITY_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, RF_ACTIVITY_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_RF_INTERRUPT_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, RF_INTERRUPT_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_FIELD_CHANGE_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, FIELD_CHANGE_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_RF_PUTMSG_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, RF_PUTMSG_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_RF_GETMSG_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, RF_GETMSG_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_RF_WRITE_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, RF_WRITE_EN)

inline ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_get_GPO_EN(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl, GPO_EN)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_values(void);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl *ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5St25dvST25DVRegisterGpo_ST25DVGPOControl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5St25dvST25DVRegisterGpo")
