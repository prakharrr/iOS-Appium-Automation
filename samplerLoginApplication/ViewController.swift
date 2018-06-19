//
//  ViewController.swift
//  samplerLoginApplication
//
//  Created by Prakhar Rawat on 6/19/18.
//  Copyright © 2018 Prakhar Rawat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        print("Button Tapped")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateInitialViewController("VC2") as ViewController
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2")
        self.navigationController?.pushViewController(vc, animated: true)
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

