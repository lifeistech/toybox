import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var selectionLabel: UILabel!
    @IBOutlet var devicePicker: UIPickerView! {
        didSet {
            //UIPickerViewのDelegateとDataSourceにUIViewControllerをセット
            devicePicker.delegate = self
            devicePicker.dataSource = self
        }
    }
    
    let deviceList = ["iPhone", "iPad", "MacBook", "Apple Watch", "Apple TV", "AirPods"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    //UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //UIPickerViewの選択肢の数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return deviceList.count
    }
    
    //UIPickerViewの要素をセット
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return deviceList[row]
    }
    
    //UIPickerViewの要素が選択されたときの処理
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectionLabel.text = deviceList[row]
    }
}

