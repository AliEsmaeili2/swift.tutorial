
import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var CardImageView: UIImageView!
    
   // @IBOutlet var Buttons: [UIButton]!
    //for STOP
    
    var cards: [UIImage] = Card.allValues
    
    var timer: Timer!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        startTimer()
        
      //  for button1 in Buttons {
            
       //     button1.layer.cornerRadius = 8
      //  }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        timer.invalidate()
    }

    
    func startTimer() {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    
    @objc func showRandomImage () {
                
        CardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    
    @IBAction func StopButtonTapped(_ sender: UIButton) {
        
        timer.invalidate()
    }
    
    
    @IBAction func RestartButtonTapped(_ sender: UIButton) {
        
        timer.invalidate()
        startTimer()
    }
    
    
    @IBAction func RulesButtonTapped(_ sender: UIButton) {
        
    }
}
