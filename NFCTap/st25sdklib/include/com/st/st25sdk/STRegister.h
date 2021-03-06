//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/STRegister.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkSTRegister")
#ifdef RESTRICT_ComStSt25sdkSTRegister
#define INCLUDE_ALL_ComStSt25sdkSTRegister 0
#else
#define INCLUDE_ALL_ComStSt25sdkSTRegister 1
#endif
#undef RESTRICT_ComStSt25sdkSTRegister

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkSTRegister_) && (INCLUDE_ALL_ComStSt25sdkSTRegister || defined(INCLUDE_ComStSt25sdkSTRegister))
#define ComStSt25sdkSTRegister_

#define RESTRICT_ComStSt25sdkCacheInterface 1
#define INCLUDE_ComStSt25sdkCacheInterface 1
#include "com/st/st25sdk/CacheInterface.h"

@class ComStSt25sdkSTRegister_RegisterAccessRights;
@class ComStSt25sdkSTRegister_RegisterDataSize;
@class ComStSt25sdkSTRegister_STRegisterField;
@class JavaUtilLinkedHashMap;
@protocol ComStSt25sdkSTRegister_RegisterListener;
@protocol JavaUtilList;

@interface ComStSt25sdkSTRegister : NSObject < ComStSt25sdkCacheInterface > {
 @public
  jboolean mExtendedRegisterAddressingMode_;
  jint mRegisterAddress_;
  jint mRegisterParameterAddress_;
  jint mRegisterValue_;
  NSString *mRegisterName_;
  NSString *mRegisterContentDescription_;
  ComStSt25sdkSTRegister_RegisterAccessRights *mRegisterAccessRights_;
  ComStSt25sdkSTRegister_RegisterDataSize *mRegisterDataSize_;
  JavaUtilLinkedHashMap *mRegisterFields_;
  jboolean mCacheActivated_;
  jboolean mCacheInvalidated_;
  id<JavaUtilList> mListenerList_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)registerFid
                              withInt:(jint)registerPid
                         withNSString:(NSString *)registerName
                         withNSString:(NSString *)registerContentDescription
withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize;

- (instancetype __nonnull)initWithInt:(jint)registerAddress
                         withNSString:(NSString *)registerName
                         withNSString:(NSString *)registerContentDescription
withComStSt25sdkSTRegister_RegisterAccessRights:(ComStSt25sdkSTRegister_RegisterAccessRights *)registerAccessRights
withComStSt25sdkSTRegister_RegisterDataSize:(ComStSt25sdkSTRegister_RegisterDataSize *)registerDataSize;

- (void)activateCache;

- (void)addRegisterListenerWithComStSt25sdkSTRegister_RegisterListener:(id<ComStSt25sdkSTRegister_RegisterListener>)newListener;

- (void)deactivateCache;

- (ComStSt25sdkSTRegister_RegisterAccessRights *)getRegisterAccessRights;

- (jint)getRegisterAddress;

- (NSString *)getRegisterContentDescription;

- (ComStSt25sdkSTRegister_RegisterDataSize *)getRegisterDataSize;

- (ComStSt25sdkSTRegister_STRegisterField *)getRegisterFieldWithNSString:(NSString *)fieldName;

- (id<JavaUtilList>)getRegisterFields;

- (NSString *)getRegisterName;

- (jint)getRegisterParameterAddress;

- (jint)getRegisterValue;

- (void)invalidateCache;

- (jboolean)isCacheActivated;

- (jboolean)isCacheValid;

- (jboolean)isExtendedRegisterAddressingModeUsed;

- (void)setRegisterValueWithInt:(jint)value;

- (void)updateCache;

- (void)validateCache;

#pragma mark Protected

- (void)createFieldHashWithJavaUtilList:(id<JavaUtilList>)fieldList;

- (void)notifyListeners;

- (jint)readTagRegisterValue;

- (void)writeRegisterValueWithInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkSTRegister)

J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister, mRegisterName_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister, mRegisterContentDescription_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister, mRegisterAccessRights_, ComStSt25sdkSTRegister_RegisterAccessRights *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister, mRegisterDataSize_, ComStSt25sdkSTRegister_RegisterDataSize *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister, mRegisterFields_, JavaUtilLinkedHashMap *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister, mListenerList_, id<JavaUtilList>)

FOUNDATION_EXPORT void ComStSt25sdkSTRegister_initWithInt_withInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkSTRegister *self, jint registerFid, jint registerPid, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

FOUNDATION_EXPORT void ComStSt25sdkSTRegister_initWithInt_withNSString_withNSString_withComStSt25sdkSTRegister_RegisterAccessRights_withComStSt25sdkSTRegister_RegisterDataSize_(ComStSt25sdkSTRegister *self, jint registerAddress, NSString *registerName, NSString *registerContentDescription, ComStSt25sdkSTRegister_RegisterAccessRights *registerAccessRights, ComStSt25sdkSTRegister_RegisterDataSize *registerDataSize);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTRegister)

#endif

#if !defined (ComStSt25sdkSTRegister_STRegisterField_) && (INCLUDE_ALL_ComStSt25sdkSTRegister || defined(INCLUDE_ComStSt25sdkSTRegister_STRegisterField))
#define ComStSt25sdkSTRegister_STRegisterField_

@class ComStSt25sdkBitField;
@class ComStSt25sdkSTRegister;

@interface ComStSt25sdkSTRegister_STRegisterField : NSObject {
 @public
  NSString *mName_;
  NSString *mDescription_;
  jint mMask_;
  ComStSt25sdkBitField *mBitField_;
}

#pragma mark Public

- (instancetype __nonnull)initWithComStSt25sdkSTRegister:(ComStSt25sdkSTRegister *)outer$
                                            withNSString:(NSString *)name
                                            withNSString:(NSString *)description_
                                                withByte:(jbyte)mask;

- (instancetype __nonnull)initWithComStSt25sdkSTRegister:(ComStSt25sdkSTRegister *)outer$
                                            withNSString:(NSString *)name
                                            withNSString:(NSString *)description_
                                                 withInt:(jint)mask;

- (jint)computeFieldWithInt:(jint)registerValue;

- (jint)computeRegisterValueWithInt:(jint)registerValue
                            withInt:(jint)fieldValue;

- (jint)getBitEnd;

- (jint)getBitStart;

- (NSString *)getDescription;

- (jint)getMask;

- (NSString *)getName;

- (jint)getValue;

- (void)setOtpValueWithInt:(jint)fieldValue;

- (void)setValueWithInt:(jint)fieldValue;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkSTRegister_STRegisterField)

J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister_STRegisterField, mName_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister_STRegisterField, mDescription_, NSString *)
J2OBJC_FIELD_SETTER(ComStSt25sdkSTRegister_STRegisterField, mBitField_, ComStSt25sdkBitField *)

FOUNDATION_EXPORT void ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(ComStSt25sdkSTRegister_STRegisterField *self, ComStSt25sdkSTRegister *outer$, NSString *name, NSString *description_, jint mask);

FOUNDATION_EXPORT ComStSt25sdkSTRegister_STRegisterField *new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(ComStSt25sdkSTRegister *outer$, NSString *name, NSString *description_, jint mask) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkSTRegister_STRegisterField *create_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withInt_(ComStSt25sdkSTRegister *outer$, NSString *name, NSString *description_, jint mask);

FOUNDATION_EXPORT void ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(ComStSt25sdkSTRegister_STRegisterField *self, ComStSt25sdkSTRegister *outer$, NSString *name, NSString *description_, jbyte mask);

FOUNDATION_EXPORT ComStSt25sdkSTRegister_STRegisterField *new_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(ComStSt25sdkSTRegister *outer$, NSString *name, NSString *description_, jbyte mask) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkSTRegister_STRegisterField *create_ComStSt25sdkSTRegister_STRegisterField_initWithComStSt25sdkSTRegister_withNSString_withNSString_withByte_(ComStSt25sdkSTRegister *outer$, NSString *name, NSString *description_, jbyte mask);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTRegister_STRegisterField)

#endif

#if !defined (ComStSt25sdkSTRegister_RegisterListener_) && (INCLUDE_ALL_ComStSt25sdkSTRegister || defined(INCLUDE_ComStSt25sdkSTRegister_RegisterListener))
#define ComStSt25sdkSTRegister_RegisterListener_

@protocol ComStSt25sdkSTRegister_RegisterListener < JavaObject >

- (void)registerChange;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkSTRegister_RegisterListener)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTRegister_RegisterListener)

#endif

#if !defined (ComStSt25sdkSTRegister_RegisterAccessRights_) && (INCLUDE_ALL_ComStSt25sdkSTRegister || defined(INCLUDE_ComStSt25sdkSTRegister_RegisterAccessRights))
#define ComStSt25sdkSTRegister_RegisterAccessRights_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkSTRegister_RegisterAccessRights_Enum) {
  ComStSt25sdkSTRegister_RegisterAccessRights_Enum_REGISTER_READ_ONLY = 0,
  ComStSt25sdkSTRegister_RegisterAccessRights_Enum_REGISTER_READ_WRITE = 1,
  ComStSt25sdkSTRegister_RegisterAccessRights_Enum_REGISTER_READ_WRITE_OTP = 2,
};

@interface ComStSt25sdkSTRegister_RegisterAccessRights : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterAccessRights *REGISTER_READ_ONLY NS_SWIFT_NAME(REGISTER_READ_ONLY);
@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterAccessRights *REGISTER_READ_WRITE NS_SWIFT_NAME(REGISTER_READ_WRITE);
@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterAccessRights *REGISTER_READ_WRITE_OTP NS_SWIFT_NAME(REGISTER_READ_WRITE_OTP);
+ (ComStSt25sdkSTRegister_RegisterAccessRights * __nonnull)REGISTER_READ_ONLY;

+ (ComStSt25sdkSTRegister_RegisterAccessRights * __nonnull)REGISTER_READ_WRITE;

+ (ComStSt25sdkSTRegister_RegisterAccessRights * __nonnull)REGISTER_READ_WRITE_OTP;

#pragma mark Public

+ (ComStSt25sdkSTRegister_RegisterAccessRights *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkSTRegister_RegisterAccessRights_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkSTRegister_RegisterAccessRights)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkSTRegister_RegisterAccessRights *ComStSt25sdkSTRegister_RegisterAccessRights_values_[];

inline ComStSt25sdkSTRegister_RegisterAccessRights *ComStSt25sdkSTRegister_RegisterAccessRights_get_REGISTER_READ_ONLY(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_ONLY)

inline ComStSt25sdkSTRegister_RegisterAccessRights *ComStSt25sdkSTRegister_RegisterAccessRights_get_REGISTER_READ_WRITE(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE)

inline ComStSt25sdkSTRegister_RegisterAccessRights *ComStSt25sdkSTRegister_RegisterAccessRights_get_REGISTER_READ_WRITE_OTP(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterAccessRights, REGISTER_READ_WRITE_OTP)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkSTRegister_RegisterAccessRights_values(void);

FOUNDATION_EXPORT ComStSt25sdkSTRegister_RegisterAccessRights *ComStSt25sdkSTRegister_RegisterAccessRights_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkSTRegister_RegisterAccessRights *ComStSt25sdkSTRegister_RegisterAccessRights_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTRegister_RegisterAccessRights)

#endif

#if !defined (ComStSt25sdkSTRegister_RegisterDataSize_) && (INCLUDE_ALL_ComStSt25sdkSTRegister || defined(INCLUDE_ComStSt25sdkSTRegister_RegisterDataSize))
#define ComStSt25sdkSTRegister_RegisterDataSize_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComStSt25sdkSTRegister_RegisterDataSize_Enum) {
  ComStSt25sdkSTRegister_RegisterDataSize_Enum_REGISTER_DATA_ON_8_BITS = 0,
  ComStSt25sdkSTRegister_RegisterDataSize_Enum_REGISTER_DATA_ON_16_BITS = 1,
  ComStSt25sdkSTRegister_RegisterDataSize_Enum_REGISTER_DATA_ON_24_BITS = 2,
  ComStSt25sdkSTRegister_RegisterDataSize_Enum_REGISTER_DATA_ON_32_BITS = 3,
};

@interface ComStSt25sdkSTRegister_RegisterDataSize : JavaLangEnum

@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterDataSize *REGISTER_DATA_ON_8_BITS NS_SWIFT_NAME(REGISTER_DATA_ON_8_BITS);
@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterDataSize *REGISTER_DATA_ON_16_BITS NS_SWIFT_NAME(REGISTER_DATA_ON_16_BITS);
@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterDataSize *REGISTER_DATA_ON_24_BITS NS_SWIFT_NAME(REGISTER_DATA_ON_24_BITS);
@property (readonly, class, nonnull) ComStSt25sdkSTRegister_RegisterDataSize *REGISTER_DATA_ON_32_BITS NS_SWIFT_NAME(REGISTER_DATA_ON_32_BITS);
+ (ComStSt25sdkSTRegister_RegisterDataSize * __nonnull)REGISTER_DATA_ON_8_BITS;

+ (ComStSt25sdkSTRegister_RegisterDataSize * __nonnull)REGISTER_DATA_ON_16_BITS;

+ (ComStSt25sdkSTRegister_RegisterDataSize * __nonnull)REGISTER_DATA_ON_24_BITS;

+ (ComStSt25sdkSTRegister_RegisterDataSize * __nonnull)REGISTER_DATA_ON_32_BITS;

#pragma mark Public

+ (ComStSt25sdkSTRegister_RegisterDataSize *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (ComStSt25sdkSTRegister_RegisterDataSize_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkSTRegister_RegisterDataSize)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_values_[];

inline ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_get_REGISTER_DATA_ON_8_BITS(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_8_BITS)

inline ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_get_REGISTER_DATA_ON_16_BITS(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_16_BITS)

inline ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_get_REGISTER_DATA_ON_24_BITS(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_24_BITS)

inline ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_get_REGISTER_DATA_ON_32_BITS(void);
J2OBJC_ENUM_CONSTANT(ComStSt25sdkSTRegister_RegisterDataSize, REGISTER_DATA_ON_32_BITS)

FOUNDATION_EXPORT IOSObjectArray *ComStSt25sdkSTRegister_RegisterDataSize_values(void);

FOUNDATION_EXPORT ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComStSt25sdkSTRegister_RegisterDataSize *ComStSt25sdkSTRegister_RegisterDataSize_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkSTRegister_RegisterDataSize)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkSTRegister")
