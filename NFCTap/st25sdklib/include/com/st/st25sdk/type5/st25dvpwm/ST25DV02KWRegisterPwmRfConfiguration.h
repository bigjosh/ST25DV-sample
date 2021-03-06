//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/st25dvpwm/ST25DV02KWRegisterPwmRfConfiguration.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration")
#ifdef RESTRICT_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration
#define INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration 1
#endif
#undef RESTRICT_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_) && (INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration || defined(INCLUDE_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration))
#define ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_

#define RESTRICT_ComStSt25sdkType5STType5Register 1
#define INCLUDE_ComStSt25sdkType5STType5Register 1
#include "com/st/st25sdk/type5/STType5Register.h"

@class ComStSt25sdkCommandIso15693CustomCommand;
@class ComStSt25sdkSTRegister_RegisterAccessRights;
@class ComStSt25sdkSTRegister_RegisterDataSize;
@class ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement;
@class ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming;
@class ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive;

@interface ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration : ComStSt25sdkType5STType5Register

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                   withInt:(jint)registerAddress
                                                              withNSString:(NSString *)registerName
                                                              withNSString:(NSString *)registerContentDescription
                           withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                               withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize;

- (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *)getDualityManagement;

- (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *)getOutputDriverTrimmingWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive:(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *)pwmDrive;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration *)newInstanceWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                                                                    withInt:(jint)registerAddress OBJC_METHOD_FAMILY_NONE;

- (void)setDualityManagementWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement:(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *)value;

- (void)setOutputDriverTrimmingWithComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive:(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *)pwmDrive
                   withComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming:(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *)value;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)arg0
                                                                   withInt:(jint)arg1
                                                                   withInt:(jint)arg2
                                                              withNSString:(NSString *)arg3
                                                              withNSString:(NSString *)arg4
                           withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)arg5
                               withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)arg6 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration)

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_newInstanceWithComStSt25sdkCommandIso15693CustomCommand_withInt_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress);

FOUNDATION_EXPORT void ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration *new_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration *create_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration)

#endif

#if !defined (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_) && (INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration || defined(INCLUDE_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming))
#define ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_Enum) {
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_Enum_FULL_POWER = 0,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_Enum_ONE_QUARTER_FULL_POWER = 1,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_Enum_HALF_FULL_POWER = 2,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_Enum_THREE_QUARTER_FULL_POWER = 3,
};

@interface ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *FULL_POWER NS_SWIFT_NAME(FULL_POWER);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ONE_QUARTER_FULL_POWER NS_SWIFT_NAME(ONE_QUARTER_FULL_POWER);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *HALF_FULL_POWER NS_SWIFT_NAME(HALF_FULL_POWER);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *THREE_QUARTER_FULL_POWER NS_SWIFT_NAME(THREE_QUARTER_FULL_POWER);
+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming * __nonnull)FULL_POWER;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming * __nonnull)ONE_QUARTER_FULL_POWER;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming * __nonnull)HALF_FULL_POWER;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming * __nonnull)THREE_QUARTER_FULL_POWER;

#pragma mark Public

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_values_[];

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_get_FULL_POWER(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming, FULL_POWER)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_get_ONE_QUARTER_FULL_POWER(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming, ONE_QUARTER_FULL_POWER)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_get_HALF_FULL_POWER(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming, HALF_FULL_POWER)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_get_THREE_QUARTER_FULL_POWER(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming, THREE_QUARTER_FULL_POWER)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_values(void);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_OutputDriverTrimming)

#endif

#if !defined (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_) && (INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration || defined(INCLUDE_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement))
#define ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum) {
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum_FULL_DUPLEX = 0,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum_PWM_IN_HZ_WHILE_RF_CMD = 1,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum_PWM_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD = 2,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum_PWM_FREQ_REDUCED = 3,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum_PWM_FREQ_REDUCED_AND_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD = 4,
};

@interface ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *FULL_DUPLEX NS_SWIFT_NAME(FULL_DUPLEX);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *PWM_IN_HZ_WHILE_RF_CMD NS_SWIFT_NAME(PWM_IN_HZ_WHILE_RF_CMD);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *PWM_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD NS_SWIFT_NAME(PWM_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *PWM_FREQ_REDUCED NS_SWIFT_NAME(PWM_FREQ_REDUCED);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *PWM_FREQ_REDUCED_AND_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD NS_SWIFT_NAME(PWM_FREQ_REDUCED_AND_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD);
+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement * __nonnull)FULL_DUPLEX;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement * __nonnull)PWM_IN_HZ_WHILE_RF_CMD;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement * __nonnull)PWM_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement * __nonnull)PWM_FREQ_REDUCED;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement * __nonnull)PWM_FREQ_REDUCED_AND_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD;

#pragma mark Public

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_values_[];

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_get_FULL_DUPLEX(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement, FULL_DUPLEX)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_get_PWM_IN_HZ_WHILE_RF_CMD(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement, PWM_IN_HZ_WHILE_RF_CMD)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_get_PWM_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement, PWM_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_get_PWM_FREQ_REDUCED(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement, PWM_FREQ_REDUCED)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_get_PWM_FREQ_REDUCED_AND_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement, PWM_FREQ_REDUCED_AND_ONE_QUARTER_FULL_POWER_WHILE_RF_CMD)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_values(void);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_DualityManagement)

#endif

#if !defined (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_) && (INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration || defined(INCLUDE_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive))
#define ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_Enum) {
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_Enum_PWM1_DRIVE = 0,
  ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_Enum_PWM2_DRIVE = 1,
};

@interface ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *PWM1_DRIVE NS_SWIFT_NAME(PWM1_DRIVE);
@property (readonly, class, nonnull) ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *PWM2_DRIVE NS_SWIFT_NAME(PWM2_DRIVE);
+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive * __nonnull)PWM1_DRIVE;

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive * __nonnull)PWM2_DRIVE;

#pragma mark Public

+ (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_values_[];

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_get_PWM1_DRIVE(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive, PWM1_DRIVE)

inline ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_get_PWM2_DRIVE(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive, PWM2_DRIVE)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_values(void);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive *ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration_PwmDrive)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5St25dvpwmST25DV02KWRegisterPwmRfConfiguration")
