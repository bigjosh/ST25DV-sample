//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/type5/STVicinityConfigInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkType5STVicinityConfigInterface")
#ifdef RESTRICT_ComStSt25sdkType5STVicinityConfigInterface
#define INCLUDE_ALL_ComStSt25sdkType5STVicinityConfigInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkType5STVicinityConfigInterface 1
#endif
#undef RESTRICT_ComStSt25sdkType5STVicinityConfigInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkType5STVicinityConfigInterface_) && (INCLUDE_ALL_ComStSt25sdkType5STVicinityConfigInterface || defined(INCLUDE_ComStSt25sdkType5STVicinityConfigInterface))
#define ComStSt25sdkType5STVicinityConfigInterface_

@class IOSByteArray;

@protocol ComStSt25sdkType5STVicinityConfigInterface < JavaObject >

- (IOSByteArray *)readCfg;

- (jbyte)writeEHCfgWithByte:(jbyte)data;

- (jbyte)writeDOCfgWithByte:(jbyte)data;

- (jbyte)setRstEHEnWithByte:(jbyte)data;

- (IOSByteArray *)checkEHEn;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkType5STVicinityConfigInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkType5STVicinityConfigInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkType5STVicinityConfigInterface")
