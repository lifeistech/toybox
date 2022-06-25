import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var selectionLabel: UILabel!
    @IBOutlet var devicePicker: UIPickerView! {
        didSet {
            devicePicker.delegate = self
            devicePicker.dataSource = self
        }
    }
    
    let deviceList = ["iPhone", "iPad", "MacBook", "Apple Watch", "Apple TV", "Airpods"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return deviceList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return deviceList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectionLabel.text = deviceList[row]
    }
}
