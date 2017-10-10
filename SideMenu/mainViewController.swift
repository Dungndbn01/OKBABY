//
//  mainViewController.swift
//  SideMenu
//
//  Created by Nguyen Dinh Dung on 2017/10/04.
//  Copyright © 2017年 Nguyen Dinh Dung. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    @IBOutlet weak var menu_Bar: UIBarButtonItem!
    @IBOutlet weak var rightMenu_Bar: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        side_menu()
     //   self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    
       
        // Do any additional setup after loading the view.
    }
    
    func side_menu() {
        if revealViewController() != nil {
            menu_Bar.target = self.revealViewController()
            menu_Bar.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 200
            rightMenu_Bar.target = self.revealViewController()
            rightMenu_Bar.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            revealViewController().rightViewRevealWidth = 150
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
