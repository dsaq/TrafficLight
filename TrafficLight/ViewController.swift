import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redCircleView: UIView!
    @IBOutlet var yellowCircleView: UIView!
    @IBOutlet var greenCircleView: UIView!
    @IBOutlet var switchColorOfTrafficLightButton: UIButton!
    
    override func viewDidLoad() {
        redCircleView.alpha = 0.3
        yellowCircleView.alpha = 0.3
        greenCircleView.alpha = 0.3
        
        redCircleView.layer.cornerRadius = redCircleView.frame.size.width / 2
        redCircleView.clipsToBounds = true
        yellowCircleView.layer.cornerRadius = yellowCircleView.frame.size.width / 2
        yellowCircleView.clipsToBounds = true
        greenCircleView.layer.cornerRadius = greenCircleView.frame.size.width / 2
        greenCircleView.clipsToBounds = true
    }

    @IBAction func switchColorOfTrafficLightButtonPressed() {
        if redCircleView.alpha == 0.3 &&
            yellowCircleView.alpha == 0.3 &&
            greenCircleView.alpha == 0.3 {
            redCircleView.alpha = 1
            switchColorOfTrafficLightButton.setTitle("Next", for: .normal)
        } else if redCircleView.alpha == 1 {
            redCircleView.alpha = 0.3
            yellowCircleView.alpha = 1
        } else if yellowCircleView.alpha == 1 {
            yellowCircleView.alpha = 0.3
            greenCircleView.alpha = 1
        } else {
            greenCircleView.alpha = 0.3
            redCircleView.alpha = 1
        }
    }
    
}

