//
//  DetailViewController.swift
//  HWF 1.Project
//
//  Created by Levent İrdem on 28.02.2023.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedImage:String?
    
    var selectedImageIndex:Int?
    var totalImageNumber:Int?
    
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let index = selectedImageIndex, let total = totalImageNumber{
            title = "Picture \(index) of \(total)"
        }else {
            title = selectedImage
        }
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    

   

}
