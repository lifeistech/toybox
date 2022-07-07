import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //UserDefaultsに入ってるメモデータを変数に代入。UserDefaultsの中のデータがOptionalなので、if letでnil判定をしてから表示を実行します
        if let savedData = UserDefaults.standard.data(forKey: "memo"), let decoded = try? JSONDecoder().decode(MemoData.self, from: savedData) {
            titleTextField.text = decoded.title
            contentTextView.text = decoded.content
        }
    }
    
    //TextFieldsに入力した値をUserDefaultsに保存する
    @IBAction func saveMemo() {
        let memoData = MemoData(title: titleTextField.text ?? "", content: contentTextView.text ?? "")
        if let encoded = try? JSONEncoder().encode(memoData) {
            UserDefaults.standard.set(encoded, forKey: "memo")
        }
    }
}

