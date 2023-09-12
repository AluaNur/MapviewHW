//
//  ViewControllerMap.swift
//  MapViewHW
//
//  Created by Alua Nurakhanova on 10.09.2023.
//

import UIKit
import MapKit

class ViewControllerMap: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    var museum = Museum()
    
    let locationMAnager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lat: CLLocationDegrees = CLLocationDegrees(museum.latitude)
        let long: CLLocationDegrees = CLLocationDegrees(museum.longtitude)
        
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long)
        
        let anotation = MKPointAnnotation()
        
        anotation.coordinate = location
        anotation.title = museum.name
        anotation.subtitle = ""
        
        mapView.addAnnotation(anotation)
        
        let latDelta : CLLocationDegrees = 0.07
        
        let longDelta : CLLocationDegrees = 0.07
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
