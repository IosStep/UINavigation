import UIKit

class DiceViewController: UIViewController {

    let imageNames = ["dice", "dice-2", "dice-3", "dice-4", "dice-5", "dice-6"]
    
    lazy var firstDice: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var secondDice: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice-2")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var shuffleButton: UIButton = {
       let button = UIButton()
        button.setTitle("Shuffle", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(shuffleTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(firstDice)
        view.addSubview(secondDice)
        view.addSubview(shuffleButton)

        NSLayoutConstraint.activate([
            firstDice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            firstDice.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            firstDice.widthAnchor.constraint(equalToConstant: 150),
            firstDice.heightAnchor.constraint(equalToConstant: 150),
            
            secondDice.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            secondDice.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            secondDice.widthAnchor.constraint(equalToConstant: 150),
            secondDice.heightAnchor.constraint(equalToConstant: 150),
            
            shuffleButton.topAnchor.constraint(equalTo: secondDice.bottomAnchor, constant: 20),
            shuffleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc func shuffleTapped() {
        if let name = imageNames.randomElement() {
            firstDice.image = UIImage(named: name)
        }
        secondDice.image = UIImage(named: imageNames.randomElement()!)
    }
    

}
