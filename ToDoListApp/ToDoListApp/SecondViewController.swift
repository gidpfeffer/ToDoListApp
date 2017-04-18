//
//  SecondViewController.swift
//  ToDoListApp
//
//  Created by Gideon Pfeffer on 4/17/17.
//  Copyright © 2017 Gideon Pfeffer. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    
    @IBAction func addPressed(_ sender: Any) {
        
        var items: [String]
        
        let itemObjects = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemObjects as? [String]{
            items = tempItems
            items.append(textBox.text!)
            
        } else{
            items = [textBox.text!]
        }
        textBox.text = ""
        UserDefaults.standard.set(items, forKey: "items")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

