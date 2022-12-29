
import UIKit

class ColorsTableVC: UIViewController {

    var colors: [UIColor] = []
    //
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        addRandomColors()
    }
    
    func addRandomColors() {
        
        for _ in 0..<50 {
            
            colors.append(.random())
        }
        //for create 50 random coloes
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as! ColorsDetailVC
        
        destVC.color = sender as? UIColor
    }
}

    extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colors.count
    }
    // for number of Rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    //For what to show in row
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
    //for select rows and 'Enter'
}
