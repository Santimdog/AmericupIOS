//
//  BarcodeViewController.swift
//  AmericupIOS
//
//  Created by German Rivera P on 7/21/19.
//  Copyright © 2019 Santiago Muñoz. All rights reserved.
//

import UIKit

class BarcodeViewController: UIViewController {
    @IBAction func touchCancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
     var delegate:BarcodeViewControllerDelegate?
    
    //Delegate protocol implementation for barcode readings notification
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
protocol BarcodeViewControllerDelegate {
    func foundBarcode(barcode:String)
}
