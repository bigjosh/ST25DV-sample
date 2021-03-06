//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/ndef/WifiRecord.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkNdefWifiRecord")
#ifdef RESTRICT_ComStSt25sdkNdefWifiRecord
#define INCLUDE_ALL_ComStSt25sdkNdefWifiRecord 0
#else
#define INCLUDE_ALL_ComStSt25sdkNdefWifiRecord 1
#endif
#undef RESTRICT_ComStSt25sdkNdefWifiRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkNdefWifiRecord_) && (INCLUDE_ALL_ComStSt25sdkNdefWifiRecord || defined(INCLUDE_ComStSt25sdkNdefWifiRecord))
#define ComStSt25sdkNdefWifiRecord_

#define RESTRICT_ComStSt25sdkNdefNDEFRecord 1
#define INCLUDE_ComStSt25sdkNdefNDEFRecord 1
#include "com/st/st25sdk/ndef/NDEFRecord.h"

@class IOSByteArray;
@class JavaIoByteArrayInputStream;

@interface ComStSt25sdkNdefWifiRecord : ComStSt25sdkNdefNDEFRecord
@property (readonly, class) jbyte WIFI_AUTH_OPEN NS_SWIFT_NAME(WIFI_AUTH_OPEN);
@property (readonly, class) jbyte WIFI_AUTH_WPAPSK NS_SWIFT_NAME(WIFI_AUTH_WPAPSK);
@property (readonly, class) jbyte WIFI_AUTH_SHARED NS_SWIFT_NAME(WIFI_AUTH_SHARED);
@property (readonly, class) jbyte WIFI_AUTH_WPA NS_SWIFT_NAME(WIFI_AUTH_WPA);
@property (readonly, class) jbyte WIFI_AUTH_WPA2 NS_SWIFT_NAME(WIFI_AUTH_WPA2);
@property (readonly, class) jbyte WIFI_AUTH_WPA2PSK NS_SWIFT_NAME(WIFI_AUTH_WPA2PSK);
@property (readonly, class) jbyte WIFI_ENCR_NONE NS_SWIFT_NAME(WIFI_ENCR_NONE);
@property (readonly, class) jbyte WIFI_ENCR_WEP NS_SWIFT_NAME(WIFI_ENCR_WEP);
@property (readonly, class) jbyte WIFI_ENCR_TKIP NS_SWIFT_NAME(WIFI_ENCR_TKIP);
@property (readonly, class) jbyte WIFI_ENCR_AES NS_SWIFT_NAME(WIFI_ENCR_AES);

+ (jbyte)WIFI_AUTH_OPEN;

+ (jbyte)WIFI_AUTH_WPAPSK;

+ (jbyte)WIFI_AUTH_SHARED;

+ (jbyte)WIFI_AUTH_WPA;

+ (jbyte)WIFI_AUTH_WPA2;

+ (jbyte)WIFI_AUTH_WPA2PSK;

+ (jbyte)WIFI_ENCR_NONE;

+ (jbyte)WIFI_ENCR_WEP;

+ (jbyte)WIFI_ENCR_TKIP;

+ (jbyte)WIFI_ENCR_AES;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)inputStream;

- (instancetype __nonnull)initWithNSString:(NSString *)ssid
                                   withInt:(jint)authType
                                   withInt:(jint)encrType
                              withNSString:(NSString *)password;

- (jint)getAuthType;

- (NSString *)getEncrKey;

- (jint)getEncrType;

- (IOSByteArray *)getPayload;

- (NSString *)getSSID;

- (void)setAuthTypeWithInt:(jint)type;

- (void)setEncrKeyWithNSString:(NSString *)key;

- (void)setEncrTypeWithInt:(jint)type;

- (void)setSSIDWithNSString:(NSString *)ssid;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithComStSt25sdkNdefNDEFRecord:(ComStSt25sdkNdefNDEFRecord *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkNdefWifiRecord)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_AUTH_OPEN(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_AUTH_OPEN 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_AUTH_OPEN, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_AUTH_WPAPSK(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_AUTH_WPAPSK 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_AUTH_WPAPSK, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_AUTH_SHARED(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_AUTH_SHARED 4
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_AUTH_SHARED, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_AUTH_WPA(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_AUTH_WPA 8
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_AUTH_WPA, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_AUTH_WPA2(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_AUTH_WPA2 16
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_AUTH_WPA2, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_AUTH_WPA2PSK(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_AUTH_WPA2PSK 32
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_AUTH_WPA2PSK, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_ENCR_NONE(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_ENCR_NONE 1
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_ENCR_NONE, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_ENCR_WEP(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_ENCR_WEP 2
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_ENCR_WEP, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_ENCR_TKIP(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_ENCR_TKIP 4
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_ENCR_TKIP, jbyte)

inline jbyte ComStSt25sdkNdefWifiRecord_get_WIFI_ENCR_AES(void);
#define ComStSt25sdkNdefWifiRecord_WIFI_ENCR_AES 8
J2OBJC_STATIC_FIELD_CONSTANT(ComStSt25sdkNdefWifiRecord, WIFI_ENCR_AES, jbyte)

FOUNDATION_EXPORT void ComStSt25sdkNdefWifiRecord_init(ComStSt25sdkNdefWifiRecord *self);

FOUNDATION_EXPORT ComStSt25sdkNdefWifiRecord *new_ComStSt25sdkNdefWifiRecord_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefWifiRecord *create_ComStSt25sdkNdefWifiRecord_init(void);

FOUNDATION_EXPORT void ComStSt25sdkNdefWifiRecord_initWithNSString_withInt_withInt_withNSString_(ComStSt25sdkNdefWifiRecord *self, NSString *ssid, jint authType, jint encrType, NSString *password);

FOUNDATION_EXPORT ComStSt25sdkNdefWifiRecord *new_ComStSt25sdkNdefWifiRecord_initWithNSString_withInt_withInt_withNSString_(NSString *ssid, jint authType, jint encrType, NSString *password) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefWifiRecord *create_ComStSt25sdkNdefWifiRecord_initWithNSString_withInt_withInt_withNSString_(NSString *ssid, jint authType, jint encrType, NSString *password);

FOUNDATION_EXPORT void ComStSt25sdkNdefWifiRecord_initWithJavaIoByteArrayInputStream_(ComStSt25sdkNdefWifiRecord *self, JavaIoByteArrayInputStream *inputStream);

FOUNDATION_EXPORT ComStSt25sdkNdefWifiRecord *new_ComStSt25sdkNdefWifiRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComStSt25sdkNdefWifiRecord *create_ComStSt25sdkNdefWifiRecord_initWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *inputStream);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkNdefWifiRecord)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkNdefWifiRecord")
