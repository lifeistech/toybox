import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    let speechSynthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func speech() {
        let utterance = AVSpeechUtterance(string: "ライフイズテックは、中学生・高校生向けIT・プログラミング教育サービスです。")
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        speechSynthesizer.speak(utterance)
    }
}

