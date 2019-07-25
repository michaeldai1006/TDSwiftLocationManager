import UIKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var requestCurrentLocationBtn: UIButton!
    
    @IBAction func requestCurrentLocationBtnClicked(_ sender: UIButton) {
        TDSwiftLocationManager.shared.requestCurrentLocation { location, error in
            self.textView.text.append("location \(String(describing: location))\n")
            self.textView.text.append("error \(String(describing: error))\n")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Request permission
        TDSwiftLocationManager.shared.locationManager.requestWhenInUseAuthorization()
    }
}

