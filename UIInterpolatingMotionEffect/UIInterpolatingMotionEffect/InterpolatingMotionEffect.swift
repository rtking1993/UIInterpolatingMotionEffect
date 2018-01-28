import UIKit

class InterpolatingMotionEffect: UIViewController {

    @IBOutlet var exampleView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Add motion effect to our example image view
        // Adjusting the intensity will change the severity of the effect
        exampleView.motionEffect(intensity: 50)
    }
}

