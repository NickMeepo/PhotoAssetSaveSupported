//
//  PhotoAssetSaveSupported.swift
//  Projects
//
//  Created by nickmeepo on 2018/11/22.
//  Copyright © 2018年 nickmeepo. All rights reserved.
//

#if canImport(UIKit)
import UIKit

@objc public protocol PhotoAssetSaveSupported: AnyObject {
    @objc func photoAssetSaved(image: UIImage?, didFinishSavingWithError error: NSError?, contextInfo: UnsafeMutableRawPointer?)
}

extension UIImage {
    public func photoAssetSaved(target: PhotoAssetSaveSupported, context: UnsafeMutableRawPointer?) {
        UIImageWriteToSavedPhotosAlbum(self, target, #selector(target.photoAssetSaved(image:didFinishSavingWithError:contextInfo:)), context)
    }
}


#endif


