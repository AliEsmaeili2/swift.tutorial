

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    let stopButton  = CWButton(backgroundColor: .systemRed, title: "STOP!")
    let resetButton = CWButton(backgroundColor: .systemGreen, title: "RESET")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "RULES")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureUI()
    }
    
    func configureUI() {
        
        configureCardImageView()
        
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
    
    func configureCardImageView() {
        
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "QD")
        
        NSLayoutConstraint.activate([
        
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 300),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
            
        ])
    }
    
    func configureStopButton(){
        
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
        
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
            
         ])
    }
    
    func configureResetButton(){
        
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
        
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
         ])
    }
    
    func configureRulesButton(){
        
        view.addSubview(rulesButton)
        
       // rulesButton.addTarget(self, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        
        NSLayoutConstraint.activate([
        
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
         ])
    }
    
    
    
}
