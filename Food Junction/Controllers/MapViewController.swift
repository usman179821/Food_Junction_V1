//
//  MapViewController.swift
//  Food Junction
//
//  Created by apple on 08/04/2022.
//

import UIKit
import MapKit
class MapViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var Mapview: MKMapView!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Customize the map view
        Mapview.delegate = self
        Mapview.showsCompass = true
        Mapview.showsScale = true
        Mapview.showsTraffic = true

        // Convert address to coordinate and annotate it on map
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location, completionHandler: { placemarks, error in
            if let error = error {
                print(error)
                return
            }

            if let placemarks = placemarks {
                // Get the first placemark
                let placemark = placemarks[0]

                // Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type

                if let location = placemark.location {
                    annotation.coordinate = location.coordinate

                    // Display the annotation
                    self.Mapview.showAnnotations([annotation], animated: true)
                    self.Mapview.selectAnnotation(annotation, animated: true)
                }
            }

        })
    }

    // MARK: - MKMapViewDelegate methods

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "MyMarker"

        if annotation.isKind(of: MKUserLocation.self) {
            return nil
        }

        // Reuse the annotation if possible
        var annotationView: MKMarkerAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView

        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }

        annotationView?.glyphText = "😋"
        annotationView?.markerTintColor = UIColor.orange

        return annotationView
    }
        // Do any additional setup after loading the view.
    }




