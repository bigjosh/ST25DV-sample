//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/CacheInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCacheInterface")
#ifdef RESTRICT_ComStSt25sdkCacheInterface
#define INCLUDE_ALL_ComStSt25sdkCacheInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkCacheInterface 1
#endif
#undef RESTRICT_ComStSt25sdkCacheInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCacheInterface_) && (INCLUDE_ALL_ComStSt25sdkCacheInterface || defined(INCLUDE_ComStSt25sdkCacheInterface))
#define ComStSt25sdkCacheInterface_

@protocol ComStSt25sdkCacheInterface < JavaObject >

- (void)invalidateCache;

- (void)validateCache;

- (void)activateCache;

- (void)deactivateCache;

- (void)updateCache;

- (jboolean)isCacheValid;

- (jboolean)isCacheActivated;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCacheInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCacheInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCacheInterface")
