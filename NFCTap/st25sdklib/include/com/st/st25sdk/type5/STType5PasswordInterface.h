//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/STType5PasswordInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5STType5PasswordInterface")
#ifdef RESTRICT_ComStSt25sdkType5STType5PasswordInterface
#define INCLUDE_ALL_ComStSt25sdkType5STType5PasswordInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5STType5PasswordInterface 1
#endif
#undef RESTRICT_ComStSt25sdkType5STType5PasswordInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5STType5PasswordInterface_) && (INCLUDE_ALL_ComStSt25sdkType5STType5PasswordInterface || defined(INCLUDE_ComStSt25sdkType5STType5PasswordInterface))
#define ComStSt25sdkType5STType5PasswordInterface_

@class IOSByteArray;

@protocol ComStSt25sdkType5STType5PasswordInterface < JavaObject >

- (void)presentPasswordWithInt:(jint)passwordNumber
                 withByteArray:(IOSByteArray *)password;

- (void)writePasswordWithInt:(jint)passwordNumber
               withByteArray:(IOSByteArray *)newPassword;

- (jint)getPasswordLengthWithInt:(jint)passwordNumber;

- (jint)getConfigurationPasswordNumber;

- (jint)getPasswordNumberWithInt:(jint)area;

- (void)setPasswordNumberWithInt:(jint)area
                         withInt:(jint)passwordNumber;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5STType5PasswordInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5STType5PasswordInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5STType5PasswordInterface")
