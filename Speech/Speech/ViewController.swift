import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    // peechSynthesizerクラスのインスタンスを宣言
    let speechSynthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func speech() {
        // 読み上げの内容をセット
        let utterance = AVSpeechUtterance(string: "ライフイズテックは、中学生・高校生向けIT・プログラミング教育サービスです。")
        // 言語を日本に設定
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        // 読み上げの実行
        speechSynthesizer.speak(utterance)
    }
}

