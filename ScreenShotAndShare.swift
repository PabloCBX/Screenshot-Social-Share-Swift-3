func shareScreenshot(){
        
        UIGraphicsBeginImageContext(view!.frame.size)
        view!.layer.render(in: UIGraphicsGetCurrentContext()!)
        let imageCap = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        UIImageWriteToSavedPhotosAlbum(imageCap!, nil, nil, nil)
        
        let shareImg: UIActivityViewController = UIActivityViewController(activityItems: [(imageCap!)], applicationActivities: nil)
        self.present(shareImg, animated: true, completion: nil)

    }
    

