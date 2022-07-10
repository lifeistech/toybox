import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dateLabel: UILabel! {
        didSet {
            //Dateをextensionで定義したString型に変換して表示
            dateLabel.text = Date().toString()
            //dateLabelにextensionで定義したaddBorder()とroundCorner()を呼び出す
            dateLabel.addBorder(color: .lightGray, width: 1)
            dateLabel.roundCorner()
        }
    }
    
    @IBOutlet var returnTextField: UITextField! {
        didSet {
            returnTextField.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//textFieldでreturnキーを押したときにキーボードを閉じるextensionを定義
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
