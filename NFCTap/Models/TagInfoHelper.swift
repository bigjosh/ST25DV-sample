//
//  TagInfoHelper.swift
//  NFCTap
//
//  Created by STMICROELECTRONICS on 03/10/2019.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import Foundation
import UIKit
import CoreNFC

let mUIDUnTraceable:Data = Data([0xE0,0x02,0x00,0x00,0x00,0x00,0x00,0x00])

public class TagInfo {
    var uid : Data
    var dfsid: Int
    var afi: Int
    var blockSize: Int
    var numberOfBlocks: Int
    var icRef: Int
    var productID: ProductID
    var mCurrentST25SdkTagInstance : ComStSt25sdkNFCTag!
    var miOSCCFileType5:CCFileType5? = nil
    
    init(uid : Data, dfsid: Int, afi: Int, blockSize: Int, numberOfBlocks: Int, icRef: Int) {
        if #available(iOS 14.0, *) {
            self.blockSize = blockSize
            self.numberOfBlocks = numberOfBlocks
            self.productID = ProductID.PRODUCT_UNKNOWN

        } else {
            // Fallback on earlier versions
            // Patch for iOS API regarding extendedGetSystemInfo .... High density Tags
            // force values of numberOfBlock and BblockSize returned as -1 by get system info
            // TV
            if icRef == 0x48 {
                self.blockSize = 4
                self.numberOfBlocks = 512
                self.productID = ProductID.PRODUCT_ST_ST25TV16K
            }else{
                self.blockSize = blockSize
                self.numberOfBlocks = numberOfBlocks
                self.productID = ProductID.PRODUCT_UNKNOWN
            }
        }

        self.icRef = icRef
        self.uid = uid
        self.dfsid = dfsid
        self.afi = afi
        
    }
    
    func setCCFileType5(ccfileType5:CCFileType5){
        self.miOSCCFileType5 = ccfileType5
    }
    
    func getCCFileType5() -> CCFileType5 {
        return self.miOSCCFileType5!
    }
    
    func setProductID (productID: ProductID) {
        self.productID = productID
    }
    func getProductID () -> ProductID {
        return productID
    }
    // instantiate ST25SDKTag according to ProductID
    func instantiateTag(RFReaderInterface: iOSRFReaderInterface)  {
        #if !APPCLIP
        switch productID {
        case ProductID.PRODUCT_ST_ST25TV02K, ProductID.PRODUCT_ST_ST25TV512:
                instantiateST25TVTag(RFReaderInterface: RFReaderInterface)
        case ProductID.PRODUCT_ST_ST25TV04K_P:
            mCurrentST25SdkTagInstance = ST25TV04KPTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
        case ProductID.PRODUCT_ST_ST25TV02KC:
            instantiateST25TVCTag(RFReaderInterface: RFReaderInterface)
        case ProductID.PRODUCT_ST_ST25TV512C:
            instantiateST25TVCTag(RFReaderInterface: RFReaderInterface)
        case ProductID.PRODUCT_ST_ST25DV04K_I, ProductID.PRODUCT_ST_ST25DV04K_J,ProductID.PRODUCT_ST_ST25DV16K_I, ProductID.PRODUCT_ST_ST25DV16K_J, ProductID.PRODUCT_ST_ST25DV64K_I, ProductID.PRODUCT_ST_ST25DV64K_J:
            instantiateST25DVTag(RFReaderInterface: RFReaderInterface)

        case ProductID.PRODUCT_ST_ST25DV04KC_I, ProductID.PRODUCT_ST_ST25DV16KC_I, ProductID.PRODUCT_ST_ST25DV64KC_I,
             ProductID.PRODUCT_ST_ST25DV04KC_J, ProductID.PRODUCT_ST_ST25DV16KC_J, ProductID.PRODUCT_ST_ST25DV64KC_J:
            instantiateST25DVCTag(RFReaderInterface: RFReaderInterface)

        case ProductID.PRODUCT_ST_ST25DV02K_W1, ProductID.PRODUCT_ST_ST25DV02K_W2:
            instantiateST25DVPwmTag(RFReaderInterface: RFReaderInterface)

        case ProductID.PRODUCT_ST_ST25TV16K:
            mCurrentST25SdkTagInstance = ST25TV16KTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
        case ProductID.PRODUCT_ST_ST25TV64K:
            mCurrentST25SdkTagInstance = ST25TV64KTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
        case ProductID.PRODUCT_ST_STM_UNTRACEABLE:
            instantiateST25TVUntraceableTag(RFReaderInterface: RFReaderInterface)
        default:
            mCurrentST25SdkTagInstance = Type5Tag(RFReaderInterface: RFReaderInterface, uid: self.uid)
        }
        #endif
    }
    
    func getTagInstance() -> ComStSt25sdkNFCTag{
        return mCurrentST25SdkTagInstance
    }

    #if !APPCLIP
    private func instantiateST25TVTag(RFReaderInterface: iOSRFReaderInterface) {
        mCurrentST25SdkTagInstance = ST25TVTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
    }
    private func instantiateST25DVTag(RFReaderInterface: iOSRFReaderInterface) {
        mCurrentST25SdkTagInstance = ST25DVTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
    }
    private func instantiateST25DVCTag(RFReaderInterface: iOSRFReaderInterface) {
        mCurrentST25SdkTagInstance = ST25DVCTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
    }
    private func instantiateST25DVPwmTag(RFReaderInterface: iOSRFReaderInterface) {
        mCurrentST25SdkTagInstance = ST25DVPwmTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
    }
    private func instantiateST25TVCTag(RFReaderInterface: iOSRFReaderInterface) {
        mCurrentST25SdkTagInstance = ST25TVCTag(RFReaderInterface: RFReaderInterface, uid: self.uid)
    }
    private func instantiateST25TVUntraceableTag(RFReaderInterface: iOSRFReaderInterface) {
        mCurrentST25SdkTagInstance = ST25TVCTag(RFReaderInterface: RFReaderInterface, uid: self.uid,sendInitCommand: false)
    }

    #endif
}

/**
 * Lists all NFC tag types
 */
public enum NfcTagTypes {
    /**
     * Default unknown mode
     */
    case NFC_TAG_TYPE_UNKNOWN
    /**
     * NFC Forum Type1/Topaz Tag
     */
    case NFC_TAG_TYPE_1
    /**
     * NFC Forum Type2 Tag
     */
    case NFC_TAG_TYPE_2
    /**
     * NFC Forum Type3 Tag
     */
    case NFC_TAG_TYPE_3
    /**
     * ISO18092 Tag
     */
    case NFC_TAG_ISO18092
    /**
     * NFC Forum Type4A Tag
     */
    case NFC_TAG_TYPE_4A
    /**
     * NFC Forum Type4B Tag
     */
    case NFC_TAG_TYPE_4B
    /**
     * NFC Forum ISO14443B SRTag
     */
    case NFC_TAG_ISO14443SR
    /**
     * ISO14443A Tag
     */
    case NFC_TAG_TYPE_A
    /**
     * ISO14443B Tag
     */
    case NFC_TAG_TYPE_B
    /**
     * Felica Tag
     */
    case NFC_TAG_TYPE_F
    /**
     * NFC Forum Type5 Tag
     */
    case NFC_TAG_TYPE_V
    /**
     * Picopass Tag
     */
    case NFC_TAG_PICOPASS
}

/**
 * Products internal identifiers
 */
public enum ProductID: String {

    /**
     * Unknown product
     */
    case PRODUCT_UNKNOWN

    //---NFC TYPE4  ---------------------------------------------------
    /**
     * NFC Forum Type4 tag
     */
    case PRODUCT_GENERIC_TYPE4

    //--- ISO14443-A & TYPE1 & TYPE2 & TYPE4A  ---------------------------------------------------

    /**
     * Generic Iso14443A tag
     */
    case PRODUCT_GENERIC_ISO14443A
    /**
     * NFC Forum Type1 tag
     */
    case PRODUCT_GENERIC_TYPE1
    /**
     * NFC Forum Type2 tag
     */
    case PRODUCT_GENERIC_TYPE2
    /**
     * NFC Forum Type3 tag
     */
    case PRODUCT_GENERIC_TYPE3
    /**
     * NFC Forum ISO18092 tag
     */
    case PRODUCT_GENERIC_ISO18092
    /**
     * NFC Forum Type4A tag
     */
    case PRODUCT_GENERIC_TYPE4A
    /**
     * M24SR02K ST dynamic tag (NFC Forum Type4)
     */
    case PRODUCT_ST_M24SR02_Y
    /**
     * M24SR04K ST dynamic tag (NFC Forum Type4)
     */
    case PRODUCT_ST_M24SR04_Y
    /**
     * M24SR04K ST dynamic tag (NFC Forum Type4)
     */
    case PRODUCT_ST_M24SR04_G
    /**
     * M24SR16K ST dynamic tag (NFC Forum Type4)
     */
    case PRODUCT_ST_M24SR16_Y
    /**
     * M24SR64K ST dynamic tag (NFC Forum Type4)
     */
    case PRODUCT_ST_M24SR64_Y
    /**
     * ST25TA512 ST tag (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA512    // E5
    /**
     * ST25TA512K ST tag (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA512_K   // D5
    /**
     * ST25TA512B ST tag (Product version 0x22 with electronic signature, NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA512B   // E4
    /**
     * ST25TA02K ST tag (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA02K     // E2
    /**
     * ST25TA02K-G ST tag (Product version 0x22 with electronic signature, NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA02KB   // E3
    /**
     * ST25TA02K-P ST tag with CMOS General Purpose Output (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA02K_P   // A2
    /**
     * ST25TA02KB-P ST tag with CMOS General Purpose Output (Product version 0x22 with electronic signature, NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA02KB_P  // A3
    /**
     * ST25TA02K-D ST tag with OPEN DRAIN General Purpose Output (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA02K_D   // F2
    /**
     * ST25TA02KB-D ST tag with OPEN DRAIN General Purpose Output (Product version 0x22 with electronic signature, NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA02KB_D  // F3
    /**
     * ST25TA16K ST tag (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA16K     // C5
    /**
     * ST25TA64K ST tag (NFC Forum Type4)
     */
    case PRODUCT_ST_ST25TA64K     // C4
    /**
     * Legacy product : Type4A tag
     */
    case PRODUCT_ST_SRTAG2K
    /**
     * Legacy product : Type4A tag
     */
    case PRODUCT_ST_SRTAG2K_D

    //--- ISO14443-B  ---------------------------------------------------
    /**
     * Generic Iso14443B tag
     */
    case PRODUCT_GENERIC_ISO14443B

    /**
     * Generic NFC Forum type4B tag
     */
    case PRODUCT_GENERIC_TYPE4B

    //--- ISO14443 SR ---------------------------------------------------

    /**
     * Generic Iso14443SR tag
     */
    case PRODUCT_GENERIC_ISO14443SR
    /**
     * ST25TB512-AC ST Iso14443SR tag
     */
    case PRODUCT_ST_ST25TB512_AC
    /**
     * ST25TB512-AT ST Iso14443SR tag
     */
    case PRODUCT_ST_ST25TB512_AT
    /**
     * ST25TB02K ST Iso14443SR tag
     */
    case PRODUCT_ST_ST25TB02K
    /**
     * ST25TB04K ST Iso14443SR tag
     */
    case PRODUCT_ST_ST25TB04K

    /**
     * Legacy product : Iso14443SR tag
     */
    case PRODUCT_ST_SRi512
    /**
     * Legacy product : Iso14443SR tag
     */
    case PRODUCT_ST_SRi2K
    /**
     * Legacy product : Iso14443SR tag
     */
    case PRODUCT_ST_SRi4K
    /**
     * Legacy product : Iso14443SR tag
     */
    case PRODUCT_ST_SRT512
    /**
     * Legacy product : Iso14443SR tag
     */
    case PRODUCT_ST_SRiX4K


    //--- ISO15693 & TYPE5---------------------------------------------------

    /**
     * Generic Type5 and Iso15693 tags
     */
    case PRODUCT_GENERIC_TYPE5_AND_ISO15693
    /**
     * Generic Type5 tags
     */
    case PRODUCT_GENERIC_TYPE5
    /**
     * LRiS64K ST Iso15693 tag
     */
    case PRODUCT_ST_LRiS64K
    /**
     * M24LR64-R Long Range ST dynamic tag
     */
    case PRODUCT_ST_M24LR64_R
    /**
     * M24LR04E-R Long Range ST dynamic tag
     */
    case PRODUCT_ST_M24LR04E_R
    /**
     * M24LR16E-R Long Range ST dynamic tag
     */
    case PRODUCT_ST_M24LR16E_R
    /**
     * M24LR64E-R Long Range ST dynamic tag
     */
    case PRODUCT_ST_M24LR64E_R
    /**
     * ST25DV04K ST NFC Forum Type5 tag with Open Drain GPO
     */
    case PRODUCT_ST_ST25DV04K_I
    /**
     * ST25DV04K ST NFC Forum Type5 tag with CMOS GPO
     */
    case PRODUCT_ST_ST25DV04K_J
    /**
     * ST25DV16K ST NFC Forum Type5 tag with Open Drain GPO
     */
    case PRODUCT_ST_ST25DV16K_I
    /**
     * ST25DV16K ST NFC Forum Type5 tag with CMOS GPO
     */
    case PRODUCT_ST_ST25DV16K_J
    /**
     * ST25DV64K ST NFC Forum Type5 tag with Open Drain GPO
     */
    case PRODUCT_ST_ST25DV64K_I
    /**
     * ST25DV64K ST NFC Forum Type5 tag with CMOS GPO
     */
    case PRODUCT_ST_ST25DV64K_J
    /**
     * ST25TV512 ST NFC Forum Type5 tag
     */
    case PRODUCT_ST_ST25TV512    //23
    case PRODUCT_ST_ST25TV512C    //

    /**
     * ST25DV02K-W ST NFC Forum Type5 tag with 1 PWM
     */
    case PRODUCT_ST_ST25DV02K_W1
    /**
     * ST25DV02K-W ST NFC Forum Type5 tag with 2 PWM
     */
    case PRODUCT_ST_ST25DV02K_W2
    /**
     * ST25TV02K ST NFC Forum Type5 tag
     */
    case PRODUCT_ST_ST25TV02K    //23
    
    case PRODUCT_ST_ST25TV02KC   //
    /**
     * ST25TV04K ST NFC Forum Type5 tag
     */
    case PRODUCT_ST_ST25TV04K_P  //35
    /**
     * ST25TV16K ST NFC Forum Type5 tag with Open Drain GPO
     */
    case PRODUCT_ST_ST25TV16K   //48
    /**
     * ST25TV64K ST NFC Forum Type5 tag with Open Drain GPO
     */
    case PRODUCT_ST_ST25TV64K    //48
    /**
     * Legacy product : ISO15693 tag
     */
    case PRODUCT_ST_LRi64
    /**
     * Legacy product : ISO15693 tag
     */
    case PRODUCT_ST_LRi512
    /**
     * Legacy product : ISO15693 tag
     */
    case PRODUCT_ST_LRi1K
    /**
     * Legacy product : ISO15693 tag
     */
    case PRODUCT_ST_LRi2K
    /**
     * Legacy product : ISO15693 tag
     */
    case PRODUCT_ST_LRiS2K

    //--- PICOPASS ---------------------------------------------------
    /**
     * NFC Forum Picopass tag
     */
    case PRODUCT_GENERIC_PICOPASS

    //--- ST READER ---------------------------------------------------
    /**
     * RX95HF tag emulation
     */
    case PRODUCT_ST_RX95HF
    /**
     * ST95HF tag emulation
     */
    case PRODUCT_ST_ST95HF

    /**
     * ST25DV EVO
     */
    case PRODUCT_ST_ST25DV04KC_I
    case PRODUCT_ST_ST25DV16KC_I
    case PRODUCT_ST_ST25DV64KC_I
    case PRODUCT_ST_ST25DV04KC_J
    case PRODUCT_ST_ST25DV16KC_J
    case PRODUCT_ST_ST25DV64KC_J
    // Override toString for a better display
//    @Override
//    public func toString() -> String {
//        if(name().startsWith("PRODUCT_ST_")) {
//            return name().substring(11).replace('_', '-');
//        } else if (name().startsWith("PRODUCT_GENERIC_")) {
//            return name().substring(8);
//        } else {
//            return name();
//        }
//    }
    
    // For handling STM untraceable Tags
    case PRODUCT_ST_STM_UNTRACEABLE
    
    var description: String {
        let name = self.rawValue
        if(name.hasPrefix("PRODUCT_ST_")) {
            return String(name.dropFirst(11))
        } else if (name.hasPrefix("PRODUCT_GENERIC_")) {
            return String(name.dropFirst(8))
        } else {
            return name;
        }
        return self.rawValue
    }
}

    public func getProductCode(uid : Data, tag : NFCTag) -> UInt8 {
        var productCode : UInt8 = 0;
        var tagType:NfcTagTypes
        tagType = getTagType(tag: tag)
        var iso15693Tag: NFCISO15693Tag!
        //ComStSt25sdkTagHelper_ProductID_get_PRODUCT_GENERIC_TYPE5()
        var manufCode:UInt8 = 0

        switch tagType {
        case NfcTagTypes.NFC_TAG_TYPE_V:
            switch tag {
            case let .iso7816(tag):
                break
            case let .feliCa(tag):
                break
            case let .iso15693(tag):
                iso15693Tag = tag.asNFCISO15693Tag()
                // Retrieve manuf code
                iso15693Tag.identifier.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) -> Void in
                           let rawPointer = UnsafeRawPointer(bytes)
                           manufCode = rawPointer.load(fromByteOffset: 1, as: UInt8.self)
                       }
                
                // Retrieve product code
                if manufCode == ComStSt25sdkCommandIso15693Protocol_STM_MANUFACTURER_CODE {
                    iso15693Tag.icSerialNumber.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) -> Void in
                               let rawPointer = UnsafeRawPointer(bytes)
                               productCode = rawPointer.load(fromByteOffset: 0, as: UInt8.self)
                    
                           }
                }
            case let .miFare(tag):
                break
            @unknown default:
                break
            }

        case NfcTagTypes.NFC_TAG_TYPE_4A:
            break
        default:
            break
        }
        return productCode;
    }

public func getTagType(tag : NFCTag) -> NfcTagTypes  {
    var tagType : NfcTagTypes = NfcTagTypes.NFC_TAG_TYPE_UNKNOWN;
    switch tag {
     case let .iso7816(tag):
        tagType = NfcTagTypes.NFC_TAG_TYPE_4A
     case let .feliCa(tag):
        tagType = NfcTagTypes.NFC_TAG_ISO18092
         break
     case let .iso15693(tag):
        tagType = NfcTagTypes.NFC_TAG_TYPE_V
     case let .miFare(tag):
        break
    @unknown default: break
     }
    return tagType;
}

public func decodeProductID(uid : Data, tag : NFCTag, icRef:Int, _ nbrOfBlocks : Int) -> ProductID  {
    var pdt : ProductID = ProductID.PRODUCT_UNKNOWN
    let productCode = getProductCode(uid: uid, tag: tag)
    switch tag {
     case let .iso7816(tag):
        pdt = decodeTagType(uid: uid, tag: tag.asNFCISO7816Tag()!, icRef: icRef)
     case let .feliCa(tag):
         break
     case let .iso15693(tag):
        pdt = decodeTagType(uid: uid, icRef: icRef, productCode: productCode, nbrOfBlocks)
     case let .miFare(tag):
        break
    @unknown default: break
     }
    return pdt;
}



private func decodeTagType(uid : Data, icRef:Int, productCode: UInt8, _ nbrOfBlocks : Int)  -> ProductID {
    return getType5ProductId(uid, icRef, productCode, nbrOfBlocks)
}
// Type4
private func decodeTagType(uid : Data, tag : NFCISO7816Tag, icRef:Int)  -> ProductID {
    let productId : ProductID = ProductID.PRODUCT_UNKNOWN
    return productId
}

private func getType5ProductId(_ uid : Data, _ icRef : Int, _ productCode : UInt8, _ nbrOfBlocks : Int) -> ProductID {
     var productId : ProductID;

     switch icRef {
         // LRi and LRiS family
     case 0x14..<0x17:
        productId = ProductID.PRODUCT_ST_LRi64;
     case 0x20..<0x23:
             productId = ProductID.PRODUCT_ST_LRi2K;
     case 0x28..<0x2B:
             productId = ProductID.PRODUCT_ST_LRiS2K;
     case 0x40..<0x43:
             productId = ProductID.PRODUCT_ST_LRi1K;
         case 0x44:
             productId = ProductID.PRODUCT_ST_LRiS64K;

             // M24LR family
         case 0x2C:
             productId = ProductID.PRODUCT_ST_M24LR64_R;
         case 0x5E:
             productId = ProductID.PRODUCT_ST_M24LR64E_R;
         case 0x4E:
             productId = ProductID.PRODUCT_ST_M24LR16E_R;
         case 0x5A:
             productId = ProductID.PRODUCT_ST_M24LR04E_R;

             // ST25DV family
        case 0x24..<0x27:
             // For ST25DV, the memory size is needed to conclude. It should be obtained from "extended get system info"
             productId = identifyST25DVProduct(productCode: productCode, nbrOfBlocks: nbrOfBlocks)
        case 0x50..<0x53:
             // For ST25DVC, the memory size is needed to conclude. It should be obtained from "extended get system info"
             productId = identifyST25DVCProduct(productCode: productCode, nbrOfBlocks: nbrOfBlocks)
         case 0x23:
             // For ST25TV, the memory size is needed to conclude
             if(nbrOfBlocks == 64) {
                 productId = ProductID.PRODUCT_ST_ST25TV02K;
             } else if (nbrOfBlocks == 16) {
                 productId = ProductID.PRODUCT_ST_ST25TV512;
             } else {
                 productId = ProductID.PRODUCT_UNKNOWN;
             }
            // ST25TV ANDEF
         case 0x08:
            //productId = ProductID.PRODUCT_ST_ST25TV02KC;
            productId = identifyST25TVCProduct(productCode: productCode, nbrOfBlocks: nbrOfBlocks)

            
            // ST25DV-PWM family
         case 0x38:
             productId = ProductID.PRODUCT_ST_ST25DV02K_W1;
         case 0x39:
             productId = ProductID.PRODUCT_ST_ST25DV02K_W2;

             // ST25TV04K-P / ST25TV16K / ST25TV64K
         case 0x35:
            // For ST25DV, the memory size is needed to conclude. It should be obtained from "extended get system info"
            productId = identifyST25TVProduct(productCode: productCode, nbrOfBlocks: nbrOfBlocks)
         case 0x48:
             // For ST25DV, the memory size is needed to conclude. It should be obtained from "extended get system info"
             productId = identifyST25TVProduct(productCode: productCode, nbrOfBlocks: nbrOfBlocks)

         default:
             productId = ProductID.PRODUCT_GENERIC_TYPE5_AND_ISO15693;
     }

     return productId;
 }


private func identifyST25TVProduct(productCode: UInt8, nbrOfBlocks: Int) -> ProductID {
    var productId : ProductID;
        // Default is Unknown
    productId = ProductID.PRODUCT_UNKNOWN;
        if (productCode == 0x48) {
            if (nbrOfBlocks == (0x1FF + 1)) {
                productId = ProductID.PRODUCT_ST_ST25TV16K;
            } else if (nbrOfBlocks == (0x7FF + 1)) {
                productId = ProductID.PRODUCT_ST_ST25TV64K;
            } else {
                productId = ProductID.PRODUCT_UNKNOWN;
            }
        } else if (productCode == 0x35) {
            productId = ProductID.PRODUCT_ST_ST25TV04K_P;
        }

    return productId;
}


private func identifyST25TVCProduct(productCode: UInt8, nbrOfBlocks: Int) -> ProductID {
    var productId : ProductID;
        // Default is Unknown
    productId = ProductID.PRODUCT_UNKNOWN;
        if (productCode == 0x08) {
            if (nbrOfBlocks == (0x0F + 1)) {
                productId = ProductID.PRODUCT_ST_ST25TV512C;
            } else {
                productId = ProductID.PRODUCT_ST_ST25TV02KC;
            }
        }

    return productId;
}


private func identifyST25DVProduct(productCode: UInt8, nbrOfBlocks: Int) -> ProductID {
    var productId : ProductID
    // patched seen from Android and info returned by GetExtendedSystemInfo with APDU cmd
    // Exemple:IOS return 128 from getSystemInfo function in parameters instead of 127 returned by APDU cmd
    let nbrOfBlocksPatched = nbrOfBlocks - 1

    // Default is Unknown
    productId = ProductID.PRODUCT_UNKNOWN;
        if (nbrOfBlocksPatched == 0x7F) {
            if (productCode == 0x24) {
                productId = ProductID.PRODUCT_ST_ST25DV04K_I;
            } else if(productCode == 0x25) {
                productId = ProductID.PRODUCT_ST_ST25DV04K_J;
            }
        } else if (nbrOfBlocksPatched == 0x1FF) {
            if (productCode == 0x26) {
                productId = ProductID.PRODUCT_ST_ST25DV16K_I;
            } else if (productCode == 0x27) {
                productId = ProductID.PRODUCT_ST_ST25DV16K_J;
            }
        } else if (nbrOfBlocksPatched == 0x7FF) {
            if (productCode == 0x26) {
                productId = ProductID.PRODUCT_ST_ST25DV64K_I;
            } else if (productCode == 0x27) {
                productId = ProductID.PRODUCT_ST_ST25DV64K_J;
            }
        }
    return productId;
}

private func identifyST25DVCProduct(productCode: UInt8, nbrOfBlocks: Int) -> ProductID {
    var productId : ProductID
    // patched seen from Android and info returned by GetExtendedSystemInfo with APDU cmd
    // Exemple:IOS return 128 from getSystemInfo function in parameters instead of 127 returned by APDU cmd
    let nbrOfBlocksPatched = nbrOfBlocks - 1

    // Default is Unknown
    productId = ProductID.PRODUCT_UNKNOWN;
        if (nbrOfBlocksPatched == 0x7F) {
            if productCode == 0x50 {
                productId = ProductID.PRODUCT_ST_ST25DV04KC_I;
            } else if productCode == 0x52 {
                productId = ProductID.PRODUCT_ST_ST25DV04KC_J;
            }
            
        } else if (nbrOfBlocksPatched == 0x1FF) {
            if productCode == 0x51 {
                productId = ProductID.PRODUCT_ST_ST25DV16KC_I;
            } else if productCode == 0x53 {
                productId = ProductID.PRODUCT_ST_ST25DV16KC_J;
            }

        } else if (nbrOfBlocksPatched == 0x7FF) {
            if productCode == 0x51 {
                productId = ProductID.PRODUCT_ST_ST25DV64KC_I;
            } else if productCode == 0x53 {
                productId = ProductID.PRODUCT_ST_ST25DV64KC_J;
            }

        }
    return productId;
}

/**
 * IC Manufacturers codes, as defined in ISO/IEC 7816-6
 */
public let ICManufacturers : [String] = [ /* 0x00 */ "Unknown", /* 0x01 */ "Motorola",
        /* 0x02 */ "STMicroelectronics", /* 0x03 */ "Hitachi Ltd", /* 0x04 */ "NXP Semiconductors",
        /* 0x05 */ "Infineon Technologies", /* 0x06 */ "Cylink", /* 0x07 */ "Texas Instruments",
        /* 0x08 */ "Fujitsu Limited", /* 0x09 */ "Matsushita Electronics Corporation", /* 0x0A */ "NEC",
        /* 0x0B */ "Oki Electric Industry Co. Ltd", /* 0x0C */ "Toshiba Corp.",
        /* 0x0D */ "Mitsubishi Electric Corp.", /* 0x0E */ "Samsung Electronics Co. Ltd",
        /* 0x0F */ "Hyundai Electronics Industries Co. Ltd", /* 0x10 */ "LG-Semiconductors Co. Ltd",
        /* 0x11 */ "Emosyn-EM Microelectronics", /* 0x12 */ "Inside Technology",
        /* 0x13 */ "ORGA Kartensysteme GmbH", /* 0x14 */ "SHARP Corporation", /* 0x15 */ "ATMEL",
        /* 0x16 */ "EM Microelectronic-Marin SA", /* 0x17 */ "KSW Microtec GmbH", /* 0x18 */ "Unknown",
        /* 0x19 */ "XICOR, Inc.", /* 0x1A */ "Sony Corporation",
        /* 0x1B */ "Malaysia Microelectronic Solutions Sdn Bhd (MY)", /* 0x1C */ "Emosyn (US)",
        /* 0x1D */ "Shanghai Fudan Microelectronics Co Ltd (CN)", /* 0x1E */ "Magellan Technology Pty Limited (AU)",
        /* 0x1F */ "Melexis NV BO (CH)", /* 0x20 */ "Renesas Technology Corp (JP)", /* 0x21 */ "TAGSYS (FR)",
        /* 0x22 */ "Transcore (US)", /* 0x23 */ "Shanghai Belling Corp Ltd (CN)",
        /* 0x24 */ "Masktech Germany GmbH (DE)", /* 0x25 */ "Innovision Research and Technology",
        /* 0x26 */ "Hitachi ULSI Systems Co Ltd (JP)", /* 0x27 */ "Cypak AB (SE)", /* 0x28 */ "Ricoh (JP)",
        /* 0x29 */ "ASK (FR)", /* 0x2A */ "Unicore Microsystems LLC (RU)",
        /* 0x2B */ "Dallas semiconductor/Maxim (US)", /* 0x2C */ "Impinj Inc (US)",
        /* 0x2D */ "RightPlug Alliance (US)", /* 0x2E */ "Broadcom Corporation (US)",
        /* 0x2F */ "MStar Semiconductor Inc (TW)", /* 0x30 */ "BeeDar Technology Inc (US)",
        /* 0x31 */ "RFIDsec (DK)", /* 0x32 */ "Schweizer Electronic AG (DE)",
        /* 0x33 */ "AMIC Technology Corp (TW)", /* 0x34 */ "Mikron JSC (RU)",
        /* 0x35 */ "Fraunhofer Institute for Photonic Microsystems (DE)", /* 0x36 */ "IDS Microship AG (CH)",
        /* 0x37 */ "Kovio (US)", /* 0x38 */ "AHMT Microelectronic Ltd (CH)",
        /* 0x39 */ "Silicon Craft Technology (TH)", /* 0x3A */ "Advanced Film Device Inc. (JP)",
        /* 0x3B */ "Nitecrest Ltd (UK)", /* 0x3C */ "Verayo Inc. (US)", /* 0x3D */ "HID Global (US)",
        /* 0x3E */ "Productivity Engineering Gmbh (DE)", /* 0x3F */ "AMS (Austria Microsystems)",
        /* 0x40 */ "Gemalto SA (FR)", /* 0x41 */ "Renesas Electronics Corporation (JP)",
        /* 0x42 */ "3Alogics Inc (KR)", /* 0x43 */ "Top TroniQ Asia Limited (Hong Kong)",
        /* 0x44 */ "Gentag Inc (USA)", /* 0x45 */ "Invengo Information Technology Co.Ltd (CN)",
        /* 0x46 */ "Guangzhou Sysur Microelectronics, Inc (CN)", /* 0x47 */ "CEITEC S.A. (BR)",
        /* 0x48 */ "Shanghai Quanray Electronics Co. Ltd. (CN)", /* 0x49 */ "MediaTek Inc (TW)",
        /* 0x4A */ "Angstrem PJSC (RU)", /* 0x4B */ "Celisic Semiconductor (Hong Kong) Limited (CN)",
        /* 0x4C */ "LEGIC Identsystems AG (CH)", /* 0x4D */ "Balluff GmbH (DE)",
        /* 0x4E */ "Oberthur Technologies (FR)", /* 0x4F */ "Silterra Malaysia Sdn. Bhd. (MY)",
        /* 0x50 */ "DELTA Danish Electronics, Light & Acoustics (DK)", /* 0x51 */ "Giesecke & Devrient GmbH (DE)",
        /* 0x52 */ "Shenzhen China Vision Microelectronics Co., Ltd. (CN)", /* 0x53 */ "Shanghai Feiju Microelectronics Co. Ltd. (CN)",
        /* 0x54 */ "Intel Corporation (US)", /* 0x55 */ "Microsensys GmbH (DE)",
        /* 0x56 */ "Sonix Technology Co., Ltd. (TW)", /* 0x57 */ "Qualcomm Technologies Inc (US)",
        /* 0x58 */ "Realtek Semiconductor Corp (TW)", /* 0x59 */ "Freevision Technologies Co. Ltd (CN)",
        /* 0x5A */ "Giantec Semiconductor Inc. (CN)", /* 0x5B */ "JSC Angstrem-T (RU)",
        /* 0x5C */ "STARCHIP France", /* 0x5D */ "SPIRTECH (FR)",
        /* 0x5E */ "GANTNER Electronic GmbH (AT)", /* 0x5F */ "Nordic Semiconductor (NO)",
        /* 0x60 */ "Verisiti Inc (US)", /* 0x61 */ "Wearlinks Technology Inc. (CN)",
        /* 0x62 */ "Userstar Information Systems Co., Ltd (TW)", /* 0x63 */ "Pragmatic Printing Ltd. (UK)",
        /* 0x64 */ "Associacao do Laboratorio de Sistemas Integraveis Tecnologico - LSI-TEC (BR)", /* 0x65 */ "Tendyron Corporation (CN)",
        /* 0x66 */ "MUTO Smart Co., Ltd.(KR)", /* 0x67 */ "ON Semiconductor (US)",
        /* 0x68 */ "TUBITAK BILGEM (TR)", /* 0x69 */ "Huada Semiconductor Co., Ltd (CN)",
        /* 0x6A */ "SEVENEY (FR)", /* 0x6B */ "ISSM (FR)",
        /* 0x6C */ "Wisesec Ltd (IL)"
]



