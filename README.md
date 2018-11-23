# PhotoAssetSaveSupported

A very simple swift protocol using UIImage method UIImageWriteToSavedPhotosAlbum to save UIImage in system`s photo album.



## Demo:


 ```swift
class SinglePhotoVC: UIViewController, PhotoAssetSaveSupported {
    //MARK: PhotoAssetSaveSupported
    func photoAssetSaved(image: UIImage?, didFinishSavingWithError error: NSError?, contextInfo: UnsafeRawPointer?) {
        if error == nil {
          //Save Image Success!
        } else {
          //Save Image Failure!
        }
  }
   
   //Save Image Action
    func saveImage(_ image: UIImage) {
        //target is instance satisied PhotoAssetSaveSupported protocol!
        //UIImage`s extension method -> photoAssetSaved:target:context:
        image.photoAssetSaved(target: self, context: nil)
    }
}

 ```
