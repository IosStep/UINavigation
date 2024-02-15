import UIKit

class ViewController2: UIViewController {
    
    lazy var button: UIButton = {
       let button = UIButton()
        button.setTitle("Go to screen 3", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var backButton: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = "go back"
        button.tintColor = .black
        button.style = .plain
        button.action = #selector(backButtonTapped)
        button.target = self
        return button
    }()
    
    lazy var presentButton: UIButton = {
        let button = UIButton()
         button.setTitle("Go to user info", for: .normal)
         button.setTitleColor(.black, for: .normal)
         button.addTarget(self, action: #selector(goToUserInfo), for: .touchUpInside)
         button.translatesAutoresizingMaskIntoConstraints = false
         return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = backButton
        view.backgroundColor = .white
        setUI()
    }
    
    func setUI() {
        view.addSubview(button)
        view.addSubview(presentButton)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            presentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 12),
            
            
        ])
    }
    
    @objc func buttonTapped() {
        print("Tapped")
//        navigationController?.popViewController(animated: true)
        navigationController?.pushViewController(Screen3(), animated: true)
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func goToUserInfo() {
        present(UserIntoViewController(), animated: true)
    }
    
}

