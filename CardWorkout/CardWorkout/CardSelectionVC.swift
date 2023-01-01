
import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var CardImageView: UIImageView!
    
   // @IBOutlet var StopButton: UIButton!
   // @IBOutlet var RestartButton: UIButton!
   // @IBOutlet var RulesButton: UIButton!
    
    @IBOutlet var Buttons: [UIButton]!
    //for STOP
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        for button1 in Buttons {
            //can be button
            
            button1.layer.cornerRadius = 8
        }
        
       // StopButton.layer.cornerRadius      = 8
       // RestartButton.layer.cornerRadius    = 8
       // RulesButton.layer.cornerRadius      = 8
    }
    
    @IBAction func StopButtonTapped(_ sender: UIButton) {
       // StopButton.setTitle("I've been tapped", for: .normal)
    }
    
    @IBAction func RestartButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func RulesButtonTapped(_ sender: UIButton) {
        
    }
}
