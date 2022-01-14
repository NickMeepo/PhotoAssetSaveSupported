# PhotoAssetSaveSupported

A very simple swift protocol using UIImage method UIImageWriteToSavedPhotosAlbum to save UIImage in system`s photo album.



## Demo:


 ```swift
class SinglePhotoVC: UIViewController, PhotoAssetSaveSupported {
    //MARK: PhotoAssetSaveSupported defined function.
    func photoAssetSaved(image: UIImage?, didFinishSavingWithError error: NSError?, contextInfo: UnsafeMutableRawPointer?) {
        if error == nil {
          //Save Image Success!
        } else {
          //Save Image Failure!
        }
  }
   
   //Save Image Action
    func saveImage(_ image: UIImage) {
        //UIImage`s extension method -> photoAssetSaved:target:context:
        //target is instance satisied PhotoAssetSaveSupported protocol.
        image.photoAssetSaved(target: self, context: nil)
        
        //Or use PhotoAssetSaveSupported protocol`s extension function -> save:asset:context, same effect as above.
        self.save(asset: image, context: nil)
    }
}

 ```

## Warning: 

You must add "Privacy - Photo Library Additions Usage Description" (NSPhotoLibraryAddUsageDescription) in your info.plist.
