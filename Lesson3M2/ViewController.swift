import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = {
       let button = UIButton()
        button.setTitle("Go to screen 2", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        view.backgroundColor = .white
        setUI()
    }
    
    func setUI() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func buttonTapped() {
        print("Tapped")
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
    
}

