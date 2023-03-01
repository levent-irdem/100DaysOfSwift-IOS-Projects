//
//  ViewController.swift
//  HWF 1.Project
//
//  Created by Levent İrdem on 27.02.2023.
//

import UIKit

class ViewController: UITableViewController{
    
    var  pictures = [String]()

   
    

    override func viewDidLoad() {
      	title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
      
        

        for item in items {
            if item.hasPrefix("nssl") {
                
                pictures.append(item)
                
            }
            
            pictures.sort()
            
        }
        
       
       
        
      
    }
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let  countOfPic = pictures.count
        return countOfPic
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            vc.selectedImageIndex = indexPath.row + 1
            vc.totalImageNumber = pictures.count
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    


}




