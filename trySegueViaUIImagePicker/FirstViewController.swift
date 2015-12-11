//
//  ViewController.swift
//  trySegueViaUIImagePicker
//
//  Created by Masaki Horimoto on 2015/12/11.
//  Copyright © 2015年 Masaki Horimoto. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("\(__FUNCTION__) is called!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
    写真Libraryへ遷移する
    */
    func shiftUIImagePicker() {
        print("\(__FUNCTION__) is called!")
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {    //追記
            
            //写真ライブラリ(カメラロール)表示用のViewControllerを宣言しているという理解
            let controller = UIImagePickerController()
            
            //おまじないという認識で今は良いと思う
            controller.delegate = self
            
            //新しく宣言したViewControllerでカメラとカメラロールのどちらを表示するかを指定
            //以下はカメラロールの例
            //.Cameraを指定した場合はカメラを呼び出し(シミュレーター不可)
            controller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            
            //新たに追加したカメラロール表示ViewControllerをpresentViewControllerにする
            self.presentViewController(controller, animated: true, completion: nil)
        }
        
    }
    
    /**
    UIImagePickerから戻る時に呼ばれるdeledate
    */
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo: [String: AnyObject]) {
        
        print("\(__FUNCTION__) is called!")
        
        //ここでPictureViewControllerへ遷移する処理を書けば良い？
        
    }

    /**
    ToLibraryButtonを押した時
    */
    @IBAction func pressToLibraryButton(sender: AnyObject) {
        print("\(__FUNCTION__) is called!")
        
        shiftUIImagePicker()
        
    }

    /**
    FirstViewへの戻り口
    
    - parameter segue:
    */
    @IBAction func exitToFirstView(segue: UIStoryboardSegue) {
        print("\(__FUNCTION__) is called!")
    }

}

