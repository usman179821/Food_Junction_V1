//
//  RestaturantDetailViewController.swift
//  Food Junction
//
//  Created by apple on 04/04/2022.
//

import UIKit

class RestaturantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var rateBtn: UIButton!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: RestaurantDetailHeaderView!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        rateBtn.layer.cornerRadius = 25
        navigationItem.largeTitleDisplayMode = .never
        
        // Configure header view
        headerView.nameLabel.text = restaurant.name
        headerView.typeLabel.text = restaurant.type
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        headerView.heartImageView.isHidden = (restaurant.isVisited) ? false : true
        
        // Set the table view's delegate and data source
        tableView.delegate = self
        tableView.dataSource = self
        
        // Configure the table view's style
        tableView.separatorStyle = .none
        
        //MARK:- customize its Detail navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .white
        tableView.contentInsetAdjustmentBehavior = .never

        navigationItem.largeTitleDisplayMode = .never

        // Configure header view
        headerView.nameLabel.text = restaurant.name
        headerView.typeLabel.text = restaurant.type
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        headerView.heartImageView.isHidden = (restaurant.isVisited) ? false : true

//        // Set the table view's delegate and data source
        tableView.delegate = self
        tableView.dataSource = self

        // Configure the table view's style
        tableView.separatorStyle = .none

        // Customize the navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .white
        navigationController?.hidesBarsOnSwipe = false
    }
    
   

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    // MARK: - UITableViewDataSource methods

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {

        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "cell".self), for: indexPath) as! RestaurantIconViewCell
            cell.iconImageView.image = UIImage(named: "phone")
            cell.shortTextLabel.text = restaurant.phone
            cell.selectionStyle = .none

            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "cell".self), for: indexPath) as! RestaurantIconViewCell
            cell.iconImageView.image = UIImage(named: "map")
            cell.shortTextLabel.text = restaurant.location
            cell.selectionStyle = .none

            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "restaurantcell".self), for: indexPath) as! RestatuarantDetailTableViewCell
            cell.descriptionLabel.text = restaurant.description
            cell.selectionStyle = .none

            return cell
        case 3:
               let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "SeprateCell".self), for: indexPath) as! RestaurantDetailSeprateCell
               cell.titleLablel.text = "HOW TO GET HERE"
               cell.selectionStyle = .none

               return cell

           case 4:
               let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "RestaurantDetailMapCell".self), for: indexPath) as! RestaurantDetailMapCell
               cell.configure(location: restaurant.location)
               cell.selectionStyle = .none

               return cell

        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMap" {
    let destinationController = segue.destination as! MapViewController
        destinationController.restaurant = restaurant
    } else if segue.identifier == "showReview" {
    let destinationController = segue.destination as! ReviewViewController
        destinationController.restaurant = restaurant
    }
        }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
}

