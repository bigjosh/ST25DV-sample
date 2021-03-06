//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Iso15693CustomCommandInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandIso15693CustomCommandInterface")
#ifdef RESTRICT_ComStSt25sdkCommandIso15693CustomCommandInterface
#define INCLUDE_ALL_ComStSt25sdkCommandIso15693CustomCommandInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandIso15693CustomCommandInterface 1
#endif
#undef RESTRICT_ComStSt25sdkCommandIso15693CustomCommandInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandIso15693CustomCommandInterface_) && (INCLUDE_ALL_ComStSt25sdkCommandIso15693CustomCommandInterface || defined(INCLUDE_ComStSt25sdkCommandIso15693CustomCommandInterface))
#define ComStSt25sdkCommandIso15693CustomCommandInterface_

@class IOSByteArray;

@protocol ComStSt25sdkCommandIso15693CustomCommandInterface < JavaObject >

- (jbyte)killWithByteArray:(IOSByteArray *)unencryptedKillCode;

- (jbyte)writeKillWithByteArray:(IOSByteArray *)unencryptedKillPassword;

- (jbyte)lockKill;

- (IOSByteArray *)readConfigWithByte:(jbyte)configId;

- (IOSByteArray *)readConfigWithByte:(jbyte)fid
                            withByte:(jbyte)pid;

- (IOSByteArray *)readCfg;

- (jbyte)writeConfigWithByte:(jbyte)configId
                    withByte:(jbyte)newAttributeValue;

- (jbyte)writeConfigWithByte:(jbyte)configId
               withByteArray:(IOSByteArray *)newRegisterValue;

- (jbyte)writeConfigWithByte:(jbyte)registerFeatureId
                    withByte:(jbyte)registerParameterId
                    withByte:(jbyte)newAttributeValue;

- (jbyte)writeConfigWithByte:(jbyte)registerFeatureId
                    withByte:(jbyte)registerParameterId
               withByteArray:(IOSByteArray *)newRegisterValue;

- (IOSByteArray *)readDynConfigWithByte:(jbyte)configId;

- (IOSByteArray *)fastReadDynConfigWithByte:(jbyte)configId;

- (jbyte)writeDynConfigWithByte:(jbyte)configId
                       withByte:(jbyte)newAttributeValue;

- (jbyte)fastWriteDynConfigWithByte:(jbyte)configId
                           withByte:(jbyte)newAttributeValue;

- (IOSByteArray *)getRandomNumber;

- (jbyte)writePwdWithByte:(jbyte)passwordNumber
            withByteArray:(IOSByteArray *)newPassword;

- (jbyte)presentPwdWithByte:(jbyte)passwordNumber
              withByteArray:(IOSByteArray *)password;

- (jbyte)lockSectorWithByte:(jbyte)blockAddress
                   withByte:(jbyte)securityStatus;

- (IOSByteArray *)fastReadSingleBlockWithByte:(jbyte)blockAddress;

- (IOSByteArray *)fastReadMultipleBlockWithByte:(jbyte)blockAddress
                                       withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)fastExtendedReadSingleBlockWithByteArray:(IOSByteArray *)blockAddress;

- (IOSByteArray *)fastExtendedReadMultipleBlockWithByteArray:(IOSByteArray *)blockAddress
                                               withByteArray:(IOSByteArray *)nbrOfBlocks;

- (jbyte)writeEHCfgWithByte:(jbyte)data
                   withByte:(jbyte)flag
              withByteArray:(IOSByteArray *)uid;

- (jbyte)writeDOCfgWithByte:(jbyte)data
                   withByte:(jbyte)flag
              withByteArray:(IOSByteArray *)uid;

- (jbyte)setRstEHEnWithByte:(jbyte)data
                   withByte:(jbyte)flag
              withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)checkEHEnWithByte:(jbyte)flag
                      withByteArray:(IOSByteArray *)uid;

- (jbyte)writeMsgWithByte:(jbyte)sizeInBytes
            withByteArray:(IOSByteArray *)buffer;

- (IOSByteArray *)readMsgWithByte:(jbyte)offset
                         withByte:(jbyte)sizeInBytes;

- (IOSByteArray *)readMsgLength;

- (jbyte)fastWriteMsgWithByte:(jbyte)sizeInBytes
                withByteArray:(IOSByteArray *)buffer;

- (IOSByteArray *)fastReadMsgWithByte:(jbyte)offset
                             withByte:(jbyte)sizeInBytes;

- (IOSByteArray *)fastReadMsgLength;

- (jbyte)manageGpoWithByte:(jbyte)value
                  withByte:(jbyte)flag
             withByteArray:(IOSByteArray *)uid;

- (jbyte)enableUntraceableModeWithByteArray:(IOSByteArray *)obfuscatedUntraceableModePassword;

- (jbyte)toggleUntraceableModeWithByteArray:(IOSByteArray *)obfuscatedUntraceableModePassword
                                    withInt:(jint)untraceablePasswordNumber;

- (jbyte)setEas;

- (jbyte)resetEas;

- (jbyte)lockEas;

- (IOSByteArray *)enableEAS;

- (jbyte)writeEasIdWithByteArray:(IOSByteArray *)easId;

- (jbyte)writeEasConfigWithByte:(jbyte)config;

- (IOSByteArray *)readSignature;

- (IOSByteArray *)readSignatureWithByte:(jbyte)flag
                          withByteArray:(IOSByteArray *)uid;

- (IOSByteArray *)initiateWithByte:(jbyte)flag OBJC_METHOD_FAMILY_NONE;

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag;

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag
                                    withByte:(jbyte)afiField;

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag
                                    withByte:(jbyte)maskLengthInBits
                               withByteArray:(IOSByteArray *)maskValue;

- (IOSByteArray *)inventoryInitiatedWithByte:(jbyte)flag
                                    withByte:(jbyte)maskLengthInBits
                               withByteArray:(IOSByteArray *)maskValue
                                    withByte:(jbyte)afiField;

- (IOSByteArray *)fastInitiateWithByte:(jbyte)flag;

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag;

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag
                                        withByte:(jbyte)afiField;

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag
                                        withByte:(jbyte)maskLengthInBits
                                   withByteArray:(IOSByteArray *)maskValue;

- (IOSByteArray *)fastInventoryInitiatedWithByte:(jbyte)flag
                                        withByte:(jbyte)maskLengthInBits
                                   withByteArray:(IOSByteArray *)maskValue
                                        withByte:(jbyte)afiField;

- (IOSByteArray *)inventoryReadWithByte:(jbyte)flag
                               withByte:(jbyte)blockAddress
                               withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)inventoryReadWithByte:(jbyte)flag
                               withByte:(jbyte)afiField
                               withByte:(jbyte)blockAddress
                               withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)inventoryReadWithByte:(jbyte)flag
                               withByte:(jbyte)maskLengthInBits
                          withByteArray:(IOSByteArray *)maskValue
                               withByte:(jbyte)blockAddress
                               withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)inventoryReadWithByte:(jbyte)flag
                               withByte:(jbyte)maskLengthInBits
                          withByteArray:(IOSByteArray *)maskValue
                               withByte:(jbyte)afiField
                               withByte:(jbyte)blockAddress
                               withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)fastInventoryReadWithByte:(jbyte)flag
                                   withByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)fastInventoryReadWithByte:(jbyte)flag
                                   withByte:(jbyte)afiField
                                   withByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)fastInventoryReadWithByte:(jbyte)flag
                                   withByte:(jbyte)maskLengthInBits
                              withByteArray:(IOSByteArray *)maskValue
                                   withByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks;

- (IOSByteArray *)fastInventoryReadWithByte:(jbyte)flag
                                   withByte:(jbyte)maskLengthInBits
                              withByteArray:(IOSByteArray *)maskValue
                                   withByte:(jbyte)afiField
                                   withByte:(jbyte)blockAddress
                                   withByte:(jbyte)nbrOfBlocks;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandIso15693CustomCommandInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandIso15693CustomCommandInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandIso15693CustomCommandInterface")
