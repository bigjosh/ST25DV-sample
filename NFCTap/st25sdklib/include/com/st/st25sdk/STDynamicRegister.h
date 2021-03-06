//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/STDynamicRegister.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkSTDynamicRegister")
#ifdef RESTRICT_ComStSt25sdkSTDynamicRegister
#define INCLUDE_ALL_ComStSt25sdkSTDynamicRegister 0
#else
#define INCLUDE_ALL_ComStSt25sdkSTDynamicRegister 1
#endif
#undef RESTRICT_ComStSt25sdkSTDynamicRegister

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkSTDynamicRegister_) && (INCLUDE_ALL_ComStSt25sdkSTDynamicRegister || defined(INCLUDE_ComStSt25sdkSTDynamicRegister))
#define ComStSt25sdkSTDynamicRegister_

#define RESTRICT_ComStSt25sdkType5STType5Register 1
#define INCLUDE_ComStSt25sdkType5STType5Register 1
#include "com/st/st25sdk/type5/STType5Register.h"

@class ComStSt25sdkCommandIso15693CustomCommand;
@class ComStSt25sdkSTDynamicRegister_STDynamicRegisterField;
@class ComStSt25sdkSTRegister_RegisterAccessRights;
@class ComStSt25sdkSTRegister_RegisterDataSize;

@interface ComStSt25sdkSTDynamicRegister : ComStSt25sdkType5STType5Register

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)iso15693CustomCommand
                                                                   withInt:(jint)registerAddress
                                                              withNSString:(NSString *)registerName
                                                              withNSString:(NSString *)registerContentDescription
                           withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
                               withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize;

- (ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *)getDynRegisterFieldWithNSString:(NSString *)fieldName;

- (jint)getRegisterValueWithBoolean:(jboolean)useFastCommand;

- (void)setRegisterValueWithInt:(jint)value;

- (void)setRegisterValueWithInt:(jint)value
                    withBoolean:(jboolean)useFastCommand;

#pragma mark Protected

- (jint)readTagRegisterValue;

- (jint)readTagRegisterValueWithBoolean:(jboolean)useFastCommand;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComStSt25sdkCommandIso15693CustomCommand:(ComStSt25sdkCommandIso15693CustomCommand *)arg0
                                                                   withInt:(jint)arg1
                                                                   withInt:(jint)arg2
                                                              withNSString:(NSString *)arg3
                                                              withNSString:(NSString *)arg4
                           withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)arg5
                               withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)arg6 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkSTDynamicRegister)

FOUNDATION_EXPORT void ComStSt25sdkSTDynamicRegister_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkSTDynamicRegister *self, ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

FOUNDATION_EXPORT ComStSt25sdkSTDynamicRegister *new_ComStSt25sdkSTDynamicRegister_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkSTDynamicRegister *create_ComStSt25sdkSTDynamicRegister_initWithComStSt25sdkCommandIso15693CustomCommand_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkCommandIso15693CustomCommand *iso15693CustomCommand, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTDynamicRegister)

#endif

#if !defined (ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_) && (INCLUDE_ALL_ComStSt25sdkSTDynamicRegister || defined(INCLUDE_ComStSt25sdkSTDynamicRegister_STDynamicRegisterField))
#define ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_

#define RESTRICT_ComStSt25sdkSTRegister 1
#define INCLUDE_ComStSt25sdkSTRegister_STRegisterField 1
#include "com/st/st25sdk/STRegister.h"

@class ComStSt25sdkSTDynamicRegister;

@interface ComStSt25sdkSTDynamicRegister_STDynamicRegisterField : ComStSt25sdkSTRegister_STRegisterField

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkSTDynamicRegister:(ComStSt25sdkSTDynamicRegister *)outer$
                                                   withNSString:(NSString *)name
                                                   withNSString:(NSString *)description_
                                                       withByte:(jbyte)mask;

- (instancetype __nonnull)initWithComStSt25sdkSTDynamicRegister:(ComStSt25sdkSTDynamicRegister *)outer$
                                                   withNSString:(NSString *)name
                                                   withNSString:(NSString *)description_
                                                        withInt:(jint)mask;

- (jint)getValueWithBoolean:(jboolean)useFastCommand;

- (void)setValueWithInt:(jint)fieldValue
            withBoolean:(jboolean)useFastCommand;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithComStSt25sdkSTRegister:(ComStSt25sdkSTRegister *)outer$
                                            withNSString:(NSString *)arg0
                                            withNSString:(NSString *)arg1
                                                withByte:(jbyte)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComStSt25sdkSTRegister:(ComStSt25sdkSTRegister *)outer$
                                            withNSString:(NSString *)arg0
                                            withNSString:(NSString *)arg1
                                                 withInt:(jint)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkSTDynamicRegister_STDynamicRegisterField)

FOUNDATION_EXPORT void ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_initWithComStSt25sdkSTDynamicRegister_withNSString_withNSString_withInt_(ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *self, ComStSt25sdkSTDynamicRegister *outer$, NSString *name, NSString *description_, jint mask);

FOUNDATION_EXPORT ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *new_ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_initWithComStSt25sdkSTDynamicRegister_withNSString_withNSString_withInt_(ComStSt25sdkSTDynamicRegister *outer$, NSString *name, NSString *description_, jint mask) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *create_ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_initWithComStSt25sdkSTDynamicRegister_withNSString_withNSString_withInt_(ComStSt25sdkSTDynamicRegister *outer$, NSString *name, NSString *description_, jint mask);

FOUNDATION_EXPORT void ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_initWithComStSt25sdkSTDynamicRegister_withNSString_withNSString_withByte_(ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *self, ComStSt25sdkSTDynamicRegister *outer$, NSString *name, NSString *description_, jbyte mask);

FOUNDATION_EXPORT ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *new_ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_initWithComStSt25sdkSTDynamicRegister_withNSString_withNSString_withByte_(ComStSt25sdkSTDynamicRegister *outer$, NSString *name, NSString *description_, jbyte mask) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkSTDynamicRegister_STDynamicRegisterField *create_ComStSt25sdkSTDynamicRegister_STDynamicRegisterField_initWithComStSt25sdkSTDynamicRegister_withNSString_withNSString_withByte_(ComStSt25sdkSTDynamicRegister *outer$, NSString *name, NSString *description_, jbyte mask);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTDynamicRegister_STDynamicRegisterField)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkSTDynamicRegister")
