
import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    
    let stopButton  = CWButton(color: .systemRed, title: "STOP!", systemImageName: "stop.circle")
    let resetButton = CWButton(color: .systemGreen, title: "RESET", systemImageName: "arrow.clockwise.circle")
    let rulesButton = CWButton(color: .systemBlue, title: "RULES", systemImageName: "list.bullet")
    
    //cardDeck file
    //var cards : [UIImage] = CardDeck.allValues
    var cards      = CardDeck.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        configureUI()
        startTimer()
    }
    
    
    func startTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func stopTimer() {
        
        timer.invalidate()
    }
    
    @objc func resetTimer(){
    
        stopTimer()
        
        startTimer()
        
    }
    
    @objc func showRandomCard() {
        
        cardImageView.image = cards.randomElement()
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
        
        stopButton.addTarget(self , action: #selector(stopTimer), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
            
         ])
    }
    
    func configureResetButton(){
        
        view.addSubview(resetButton)
        
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
         ])
    }
    
    func configureRulesButton(){
        
        view.addSubview(rulesButton)
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
         ])
    }
    
    @objc func presentRulesVC() {
        
        present(RulesVC(), animated: true)
    }
}
