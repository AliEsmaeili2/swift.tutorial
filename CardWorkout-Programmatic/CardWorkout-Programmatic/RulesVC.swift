//
import UIKit

class RulesVC: UIViewController {
    
    let titleLabel    = UILabel()
    let rulesLabel    = UILabel()
    let exerciseLabel  = UILabel()

    override func viewDidLoad() {
        
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    //titleLabel
   func configureTitleLabel() {
    
       view.addSubview(titleLabel)
       
       titleLabel.translatesAutoresizingMaskIntoConstraints = false
       
       /*What is the use of translatesAutoresizingMaskIntoConstraints?
        translatesAutoresizingMaskIntoConstraints. A Boolean value that determines whether the view's autoresizing mask is translated into Auto Layout constraints.*/
       
       titleLabel.text = "Rules"
       
       titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
       titleLabel.textAlignment = .center
       
       
       NSLayoutConstraint.activate([
        
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)

       ])
    }
    //rulesLabel
    func configureRulesLabel() {
        
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n\n J = 11, Q = 12, K = 13, A = 14"
        
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        
        NSLayoutConstraint.activate([
         
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)

        ])
    }
    //exerciseLabel
    func configureExerciseLabel() {
        
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = " ♠️ = Push-ups\n\n ♥️ = Sit-up\n\n ♣️ = Burpees\n\n ♦️ = Jumping Jacks "
        
        exerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
       // exerciseLabel.textAlignment = .center
       // exerciseLabel.lineBreakMode = .byWordWrapping
        exerciseLabel.numberOfLines = 0
        
        
        NSLayoutConstraint.activate([
         
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
