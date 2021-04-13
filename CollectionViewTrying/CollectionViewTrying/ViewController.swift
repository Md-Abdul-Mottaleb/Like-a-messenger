//
//  ViewController.swift
//  CollectionViewTrying
//
//  Created by MacBook Pro on 5/4/21.
//

import UIKit

var imagearray = [UIImage(named: "1"),
               UIImage(named: "af"),
               UIImage(named: "3"),
               UIImage(named: "al"),
               UIImage(named: "5"),
               UIImage(named: "ar"),
               UIImage(named: "7"),
               UIImage(named: "au"),
               UIImage(named: "2"),
               UIImage(named: "az"),
               UIImage(named: "4"),
               UIImage(named: "be"),
               UIImage(named: "6"),
               UIImage(named: "bo"),
               UIImage(named: "8"),
               UIImage(named: "br")
               
]

class ViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource, UITableViewDelegate,UITableViewDataSource{
  
    
   // let width = UIScreen.main.bounds.width
    var namearray = ["Devi","Afga","Smit","Alge","Hery","Arze","Tay","Tay","Aust","Devi","Afga","Smit","Alge","Hery","Arze","Tay"]
  
    
    @IBOutlet weak var tableview1: UITableView!
    
    @IBOutlet weak var CollectionView1: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        self.tableview1.delegate = self
        self.tableview1.dataSource = self
        
        self.CollectionView1.delegate = self
        self.CollectionView1.dataSource = self
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .darkGray
            
        }
        else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .clear
            
        }
        else if sender.selectedSegmentIndex == 2 {
            view.backgroundColor = .cyan
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagearray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell", for: indexPath) as! CollectionViewCell1
        sell.imageview1.layer.cornerRadius = sell.imageview1.frame.height / 2
        sell.imageview1.layer.cornerRadius = sell.imageview1.frame.width / 2
        //Timageview11.layer.cornerRadius = Timageview11.frame.height / 2
        sell.imageview1.image = imagearray[indexPath.row]
        
        sell.labelfromC1.text = namearray[indexPath.row]
        
        
        
        return sell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagearray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sell2 = tableview1.dequeueReusableCell(withIdentifier: "Tcell", for: indexPath) as! TableViewCell1
        
        sell2.Timageview11.image = imagearray[indexPath.row]
        sell2.Timageview22.image = imagearray[indexPath.row]
        sell2.Tlabel11.text = namearray[indexPath.row]
        sell2.Tlabel22.text = namearray[indexPath.row]
        
        return sell2
    }
    
   // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print("Try")
   // }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        

     //   print("Did ")
        let storyboard2 = UIStoryboard(name: "Main", bundle: nil)
        
       // if indexPath.row == 0{
            
            
        let vc2 = storyboard2.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        vc2.name = namearray[indexPath.row]
        
        vc2.iimage = indexPath.row
        
            
        navigationController?.pushViewController(vc2, animated: true)
        
        
    }
    
    

}
extension ViewController: UICollectionViewDelegateFlowLayout{
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        ///let container = self.width - 28
        //let cellSize = container/4
        
        return CGSize(width: 100, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
         let storyboard2 = UIStoryboard(name: "Main", bundle: nil)
         
        // if indexPath.row == 0{
             
             
             let vc = storyboard2.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        vc.name = namearray[indexPath.row]
        
        vc.iimage = indexPath.row
     //   vc.label.text = "Time"
      //  vc.name.text = namearray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        
    }
   
}


