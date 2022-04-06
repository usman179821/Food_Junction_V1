//
//  RestaturantVC.swift
//  Food junction2
//
//  Created by apple on 02/04/2022.
//

import UIKit

class RestaturantVC: UIViewController {

    var getDatafromPrevious = Restaurant()
    
   
    @IBOutlet weak var Restaurantimageview: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = getDatafromPrevious.name
        typeLbl.text = getDatafromPrevious.type
        locationLbl.text = getDatafromPrevious.location
        descriptionLbl.text = getDatafromPrevious.description
        phoneLbl.text = getDatafromPrevious.phone
        Restaurantimageview.image = UIImage(named: getDatafromPrevious.image)
        
        // Do any additional setup after loading the view.
    }
    


}
