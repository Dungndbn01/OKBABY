//
//  rightViewController.swift
//  SideMenu
//
//  Created by Nguyen Dinh Dung on 2017/10/04.
//  Copyright © 2017年 Nguyen Dinh Dung. All rights reserved.
//

import UIKit

class rightViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var Coll_View: UICollectionView!
    
    var array: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: myCollCellCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: array[indexPath.row], for: indexPath) as! myCollCellCollectionViewCell
      //  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: array[indexPath.row], for: indexPath as IndexPath)
    if indexPath.row > 2 {
            if indexPath.row == 6 {cell.backgroundColor = UIColor.blue }
            else {
        cell.txt2.text = array[indexPath.row]
        cell.txt2.textColor = UIColor.red
                cell.backgroundColor = UIColor.blue } }
        if indexPath.row <= 2 {
            cell.img_View.image = UIImage(named: array[indexPath.row] + ".jpg")
        } 
        
     //   cell.textLabel?.text = array[indexPath.row]
        cell.backgroundColor = UIColor.blue
        return cell }
/*    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   //     let cell: myCollCellCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: array[indexPath.row], for: indexPath) as! myCollCellCollectionViewCell
   //     cell.txt2.text = array[indexPath.row]
   //     cell.txt2.textColor = UIColor.red
   //     cell.backgroundColor = UIColor.blue
       // let cell: myCollCellCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: array[indexPath.row], for: indexPath as IndexPath)
    //    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: array[indexPath.row], for: indexPath as IndexPath)
   //     cell.backgroundColor = UIColor.red
        
        
  //      array.append("Eleven")
  
    //    self.performSegue(withIdentifier: "segue", sender: self)
        
   } */

    override func viewDidLoad() {
        super.viewDidLoad()
        Coll_View.delegate = self
        Coll_View.dataSource = self
  //      self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
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
