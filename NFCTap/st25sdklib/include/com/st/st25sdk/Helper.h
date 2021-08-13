//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/Helper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkHelper")
#ifdef RESTRICT_ComStSt25sdkHelper
#define INCLUDE_ALL_ComStSt25sdkHelper 0
#else
#define INCLUDE_ALL_ComStSt25sdkHelper 1
#endif
#undef RESTRICT_ComStSt25sdkHelper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkHelper_) && (INCLUDE_ALL_ComStSt25sdkHelper || defined(INCLUDE_ComStSt25sdkHelper))
#define ComStSt25sdkHelper_

@class IOSByteArray;
@class JavaIoByteArrayInputStream;

@interface ComStSt25sdkHelper : NSObject

#pragma mark Public

+ (IOSByteArray *)concatenateByteArraysWithByteArray:(IOSByteArray *)array1
                                       withByteArray:(IOSByteArray *)array2;

+ (jint)convert2BytesHexaFormatToIntWithByteArray:(IOSByteArray *)arrayToConvert;

+ (jint)convert3BytesHexaFormatToIntWithByteArray:(IOSByteArray *)arrayToConvert;

+ (jint)convert4BytesHexaFormatToIntWithByteArray:(IOSByteArray *)arrayToConvert;

+ (NSString *)convertAsciiStringToHexStringWithNSString:(NSString *)asciiData;

+ (jint)convertAsciiStringToReversedHexValueWithNSString:(NSString *)stringToConvert;

+ (NSString *)convertByteArrayToHexStringWithByteArray:(IOSByteArray *)bytes;

+ (jchar)convertByteToAsciiCharWithByte:(jbyte)byteToConvert;

+ (NSString *)convertByteToHexStringWithByte:(jbyte)byteToConvert;

+ (jint)convertByteToUnsignedIntWithByte:(jbyte)byteToConvert;

+ (NSString *)convertHexByteArrayToAsciiStringWithByteArray:(IOSByteArray *)myByteArray;

+ (NSString *)convertHexByteArrayToStringWithByteArray:(IOSByteArray *)byteArrayToConvert;

+ (NSString *)convertHexByteToAsciiStringWithByte:(jbyte)myByte;

+ (jbyte)convertHexStringToByteWithNSString:(NSString *)hexNumber;

+ (IOSByteArray *)convertHexStringToByteArrayWithNSString:(NSString *)s;

+ (jint)convertHexStringToIntWithNSString:(NSString *)hexNumber;

+ (NSString *)convertHexValueToReversedAsciiStringWithInt:(jint)val
                                                  withInt:(jint)nbrOfCharacters;

+ (IOSByteArray *)convertIntTo2BytesHexaFormatWithInt:(jint)numberToConvert;

+ (IOSByteArray *)convertIntTo3BytesHexaFormatWithInt:(jint)numberToConvert;

+ (IOSByteArray *)convertIntTo4BytesHexaFormatWithInt:(jint)numberToConvert;

+ (NSString *)convertIntToHexFormatStringWithInt:(jint)numberToConvert;

+ (jint)convertStringToIntWithNSString:(NSString *)s;

+ (jint)divisionRoundedUpWithInt:(jint)num
                         withInt:(jint)den;

+ (jint)findSubArrayPositionWithByteArray:(IOSByteArray *)arrayToSearch
                            withByteArray:(IOSByteArray *)patternToFind;

+ (jboolean)isCharacterInST25AsciiTableWithChar:(jchar)myChar;

+ (jboolean)isStringInST25AsciiTableWithNSString:(NSString *)txt;

+ (void)printHexByteArrayWithNSString:(NSString *)msg
                        withByteArray:(IOSByteArray *)byteArrayToPrint;

+ (IOSByteArray *)readByteArrayInputStreamWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)byteArrayInputStream
                                                                 withInt:(jint)len;

+ (IOSByteArray *)readNextBlockOfByteArrayInputStreamWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)byteArrayInputStream
                                                                            withInt:(jint)nbrOfBytesPerBlock;

+ (jbyte)readNextByteOfByteArrayInputStreamWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)byteArrayInputStream;

+ (IOSByteArray *)reverseByteArrayWithByteArray:(IOSByteArray *)array;

+ (NSString *)stringForceDigitWithNSString:(NSString *)stringToFormat
                                   withInt:(jint)nbOfDigits;

@end

J2OBJC_STATIC_INIT(ComStSt25sdkHelper)

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_stringForceDigitWithNSString_withInt_(NSString *stringToFormat, jint nbOfDigits);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertByteToHexStringWithByte_(jbyte byteToConvert);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertHexByteArrayToStringWithByteArray_(IOSByteArray *byteArrayToConvert);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertAsciiStringToHexStringWithNSString_(NSString *asciiData);

FOUNDATION_EXPORT void ComStSt25sdkHelper_printHexByteArrayWithNSString_withByteArray_(NSString *msg, IOSByteArray *byteArrayToPrint);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertIntToHexFormatStringWithInt_(jint numberToConvert);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_convertHexStringToByteArrayWithNSString_(NSString *s);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertByteArrayToHexStringWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convertStringToIntWithNSString_(NSString *s);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convertHexStringToIntWithNSString_(NSString *hexNumber);

FOUNDATION_EXPORT jbyte ComStSt25sdkHelper_convertHexStringToByteWithNSString_(NSString *hexNumber);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_convertIntTo4BytesHexaFormatWithInt_(jint numberToConvert);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convert4BytesHexaFormatToIntWithByteArray_(IOSByteArray *arrayToConvert);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_convertIntTo3BytesHexaFormatWithInt_(jint numberToConvert);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convert3BytesHexaFormatToIntWithByteArray_(IOSByteArray *arrayToConvert);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_convertIntTo2BytesHexaFormatWithInt_(jint numberToConvert);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convert2BytesHexaFormatToIntWithByteArray_(IOSByteArray *arrayToConvert);

FOUNDATION_EXPORT jbyte ComStSt25sdkHelper_readNextByteOfByteArrayInputStreamWithJavaIoByteArrayInputStream_(JavaIoByteArrayInputStream *byteArrayInputStream);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_readNextBlockOfByteArrayInputStreamWithJavaIoByteArrayInputStream_withInt_(JavaIoByteArrayInputStream *byteArrayInputStream, jint nbrOfBytesPerBlock);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_readByteArrayInputStreamWithJavaIoByteArrayInputStream_withInt_(JavaIoByteArrayInputStream *byteArrayInputStream, jint len);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_concatenateByteArraysWithByteArray_withByteArray_(IOSByteArray *array1, IOSByteArray *array2);

FOUNDATION_EXPORT IOSByteArray *ComStSt25sdkHelper_reverseByteArrayWithByteArray_(IOSByteArray *array);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_divisionRoundedUpWithInt_withInt_(jint num, jint den);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convertByteToUnsignedIntWithByte_(jbyte byteToConvert);

FOUNDATION_EXPORT jchar ComStSt25sdkHelper_convertByteToAsciiCharWithByte_(jbyte byteToConvert);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertHexValueToReversedAsciiStringWithInt_withInt_(jint val, jint nbrOfCharacters);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_convertAsciiStringToReversedHexValueWithNSString_(NSString *stringToConvert);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertHexByteToAsciiStringWithByte_(jbyte myByte);

FOUNDATION_EXPORT NSString *ComStSt25sdkHelper_convertHexByteArrayToAsciiStringWithByteArray_(IOSByteArray *myByteArray);

FOUNDATION_EXPORT jint ComStSt25sdkHelper_findSubArrayPositionWithByteArray_withByteArray_(IOSByteArray *arrayToSearch, IOSByteArray *patternToFind);

FOUNDATION_EXPORT jboolean ComStSt25sdkHelper_isStringInST25AsciiTableWithNSString_(NSString *txt);

FOUNDATION_EXPORT jboolean ComStSt25sdkHelper_isCharacterInST25AsciiTableWithChar_(jchar myChar);

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkHelper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkHelper")
