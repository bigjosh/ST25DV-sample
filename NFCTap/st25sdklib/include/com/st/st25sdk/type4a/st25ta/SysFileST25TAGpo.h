//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type4a/st25ta/SysFileST25TAGpo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType4aSt25taSysFileST25TAGpo")
#ifdef RESTRICT_ComStSt25sdkType4aSt25taSysFileST25TAGpo
#define INCLUDE_ALL_ComStSt25sdkType4aSt25taSysFileST25TAGpo 0
#else
#define INCLUDE_ALL_ComStSt25sdkType4aSt25taSysFileST25TAGpo 1
#endif
#undef RESTRICT_ComStSt25sdkType4aSt25taSysFileST25TAGpo

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType4aSt25taSysFileST25TAGpo_) && (INCLUDE_ALL_ComStSt25sdkType4aSt25taSysFileST25TAGpo || defined(INCLUDE_ComStSt25sdkType4aSt25taSysFileST25TAGpo))
#define ComStSt25sdkType4aSt25taSysFileST25TAGpo_

#define RESTRICT_ComStSt25sdkType4aSt25taSysFileST25TA 1
#define INCLUDE_ComStSt25sdkType4aSt25taSysFileST25TA 1
#include "com/st/st25sdk/type4a/st25ta/SysFileST25TA.h"

#define RESTRICT_ComStSt25sdkType4aSTType4GpoInterface 1
#define INCLUDE_ComStSt25sdkType4aSTType4GpoInterface 1
#include "com/st/st25sdk/type4a/STType4GpoInterface.h"

@class ComStSt25sdkCommandType4CustomCommand;
@class ComStSt25sdkType4aSTType4GpoInterface_GpoMode;
@class IOSByteArray;
@protocol JavaUtilList;

@interface ComStSt25sdkType4aSt25taSysFileST25TAGpo : ComStSt25sdkType4aSt25taSysFileST25TA < ComStSt25sdkType4aSTType4GpoInterface > {
 @public
  ComStSt25sdkCommandType4CustomCommand *mType4CustomCommand_;
  jbyte mGpo_;
  id<JavaUtilList> mSupportedGpoModes_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkCommandType4CustomCommand:(ComStSt25sdkCommandType4CustomCommand *)type4CustomCommand;

- (jbyte)getGpo;

- (ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)getGpoModeWithByte:(jbyte)gpoConfig;

- (id<JavaUtilList>)getSupportedGpoModes;

- (jboolean)isGpoConfigurableByRf;

- (jboolean)isGpoInInterruptedMode;

- (jboolean)isGpoInStateControlMode;

- (jboolean)isGpoLocked;

- (void)lockGpo;

- (void)lockGpoWithByte:(jbyte)value;

- (void)sendInterruptCommand;

- (void)setGpoWithByte:(jbyte)value;

- (void)setGpoModeWithComStSt25sdkType4aSTType4GpoInterface_GpoMode:(ComStSt25sdkType4aSTType4GpoInterface_GpoMode *)mode;

- (void)setStateControlCommandWithInt:(jint)value;

#pragma mark Protected

- (void)parseSysFileWithByteArray:(IOSByteArray *)buffer;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType4aSt25taSysFileST25TAGpo)

J2OBJC_FIELD_SETTER(ComStSt25sdkType4aSt25taSysFileST25TAGpo, mType4CustomCommand_, ComStSt25sdkCommandType4CustomCommand *)
J2OBJC_FIELD_SETTER(ComStSt25sdkType4aSt25taSysFileST25TAGpo, mSupportedGpoModes_, id<JavaUtilList>)

FOUNDATION_EXPORT void ComStSt25sdkType4aSt25taSysFileST25TAGpo_initWithComStSt25sdkCommandType4CustomCommand_(ComStSt25sdkType4aSt25taSysFileST25TAGpo *self, ComStSt25sdkCommandType4CustomCommand *type4CustomCommand);

FOUNDATION_EXPORT ComStSt25sdkType4aSt25taSysFileST25TAGpo *new_ComStSt25sdkType4aSt25taSysFileST25TAGpo_initWithComStSt25sdkCommandType4CustomCommand_(ComStSt25sdkCommandType4CustomCommand *type4CustomCommand) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkType4aSt25taSysFileST25TAGpo *create_ComStSt25sdkType4aSt25taSysFileST25TAGpo_initWithComStSt25sdkCommandType4CustomCommand_(ComStSt25sdkCommandType4CustomCommand *type4CustomCommand);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType4aSt25taSysFileST25TAGpo)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType4aSt25taSysFileST25TAGpo")
