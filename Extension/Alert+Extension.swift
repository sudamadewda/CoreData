//
//  Alert+Extension.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation
import UIKit

// MARK: - AlertView Extension
extension UIAlertController{
    static func alert(title:String, message:String, viewcontroller:UIViewController){
        let myalert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        myalert.addAction(UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            print("Selected")
        })
        viewcontroller.present(myalert , animated: true, completion: nil)
    }
}


