//
//  PictureViewController.swift
//  trySegueViaUIImagePicker
//
//  Created by Masaki Horimoto on 2015/12/11.
//  Copyright © 2015年 Masaki Horimoto. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var selectedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("\(NSStringFromClass(self.classForCoder)).\(__FUNCTION__) is called!")
        
        self.selectedImage.image = self.image
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnPictureView(segue: UIStoryboardSegue) {
        print("\(NSStringFromClass(self.classForCoder)).\(__FUNCTION__) is called!")
    }

    
}
