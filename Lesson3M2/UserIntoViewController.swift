import UIKit

class UserIntoViewController: UIViewController {
    
    lazy var nameTextField: UITextField = {
       let view = UITextField()
        view.borderStyle = .roundedRect
        view.placeholder = "Insert name"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var doneButton: UIButton = {
       let button = UIButton()
        button.setTitle("Done", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(doneButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUI()
        // Do any additional setup after loading the view.
    }
    
    private func setUI() {
        view.addSubview(nameTextField)
        view.addSubview(doneButton)
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            doneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            doneButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 12)
        ])
    }
    
    @objc func doneButtonTapped() {
        dismiss(animated: true)
    }

}
