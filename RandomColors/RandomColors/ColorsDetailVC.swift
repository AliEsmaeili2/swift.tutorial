
import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
