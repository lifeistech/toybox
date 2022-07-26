import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    var number: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forceUnwrap() {
        resultLabel.text = String(number!)
    }
    
    @IBAction func unwrapWithIfLet() {
        if let number = number {
            resultLabel.text = String(number)
        } else {
            resultLabel.text = "numberはnilです"
        }
    }
    
    @IBAction func unwrapWithGuardLet() {
        guard let number = number else {
            resultLabel.text = "numberはnilです"
            return
        }
        resultLabel.text = String(number)
    }
    
    @IBAction func defaultValue() {
        resultLabel.text = String(number ?? 0)
    }
    
    @IBAction func switchNilAndSome(sender: UISwitch) {
        if sender.isOn {
            number = 10
        } else {
            number = nil
        }
    }
}

