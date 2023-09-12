//
//  ViewController.swift
//  MapViewHW
//
//  Created by Alua Nurakhanova on 10.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelDescription: UILabel!
    var museum = Museum()
    @IBAction func show(_ sender: Any) {
        let mapVC = storyboard?.instantiateViewController(withIdentifier:"mapVC") as! ViewControllerMap
        navigationController?.show(mapVC, sender: self)
        mapVC.museum = museum
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = museum.name
        labelDescription.text = museum.description
        imageView.image = UIImage(named: museum.photo)
        
    }


}

