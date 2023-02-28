//
//  DetailViewController.swift
//  HWF 1.Project
//
//  Created by Levent İrdem on 28.02.2023.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedImage:String?

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        super.viewDidLoad()
        
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
