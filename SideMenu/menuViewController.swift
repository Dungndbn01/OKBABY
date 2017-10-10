//
//  menuViewController.swift
//  SideMenu
//
//  Created by Nguyen Dinh Dung on 2017/10/04.
//  Copyright © 2017年 Nguyen Dinh Dung. All rights reserved.
//

import UIKit

class menuViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var menu_tableView: UITableView!
    var array: [String] = ["One", "Two"]

    override func viewDidLoad() {
        super.viewDidLoad()
        menu_tableView.delegate = self
        menu_tableView.dataSource = self
 //       self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    
 //   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: array[indexPath.row], for: indexPath as IndexPath)
        cell.textLabel?.text = array[indexPath.row]
       return cell    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if indexPath.row == 0 {
            let controller1: mainViewController = storyboard.instantiateViewController(withIdentifier: "mainViewController") as! mainViewController
            present(controller1, animated: true, completion: nil)
        }
        if indexPath.row == 1 {
            let controller2: rightViewController = storyboard.instantiateViewController(withIdentifier: "rightViewController") as! rightViewController
            present(controller2, animated: true, completion: nil)
        }
    }
    //func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath:
      //  IndexPath) ->UITableViewCell {
    
     //   let cell = tableView.dequeueReusableCell(withIdentifier: array[indexPath.row], forIndexPath: indexPath)
       // let cell = tableView.dequeueReusableCellWithIdentifier( array[indexPath.row], forIndexPath: indexPath)
    
   // }

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
