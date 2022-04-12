//
//  RestaurantDetailMapCell.swift
//  Food Junction
//
//  Created by apple on 08/04/2022.
//

import UIKit
import MapKit
class RestaurantDetailMapCell: UITableViewCell {

    @IBOutlet weak var MapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(location: String) {
        // Get location
        let geoCoder = CLGeocoder()

        print(location)
        geoCoder.geocodeAddressString(location, completionHandler: { placemarks, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }

            if let placemarks = placemarks {
                // Get the first placemark
                let placemark = placemarks[0]

                // Add annotation
                let annotation = MKPointAnnotation()

                if let location = placemark.location {
                    // Display the annotation
                    annotation.coordinate = location.coordinate
                    self.MapView.addAnnotation(annotation)

                    // Set the zoom level
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
                    self.MapView.setRegion(region, animated: false)
                }
            }

        })
    }

}



