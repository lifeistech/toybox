import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cameraButton: UIButton! {
        didSet {
            //ボタンのConfigurationを定義
            var configuration = UIButton.Configuration.filled()
            configuration.title = "カメラ"
            configuration.imagePlacement = .trailing
            let symbolConfiguration = UIImage.SymbolConfiguration(scale: .default)
            configuration.image = UIImage(systemName: "camera", withConfiguration: symbolConfiguration)
            configuration.imagePadding = 8
            //searchButtonに反映
            cameraButton.configuration = configuration
        }
    }
    
    @IBOutlet var photoLibraryButton: UIButton! {
        didSet {
            //ボタンのConfigurationを定義
            var configuration = UIButton.Configuration.filled()
            configuration.title = "ライブラリ"
            configuration.imagePlacement = .trailing
            let symbolConfiguration = UIImage.SymbolConfiguration(scale: .default)
            configuration.image = UIImage(systemName: "photo", withConfiguration: symbolConfiguration)
            configuration.imagePadding = 8
            //searchButtonに反映
            photoLibraryButton.configuration = configuration
        }
    }
    
    //写真を表示するImageViewを宣言
    @IBOutlet var imageView: UIImageView!
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        //UIImagePickerのDelegateにUIViewControllerをセット
        imagePicker.delegate = self
    }

    //カメラ撮影画面の表示
    @IBAction func openCamera() {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true)
    }
    
    //フォトライブラリの表示
    @IBAction func openPhotoLibrary() {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //ImagePickerで取得してきた画像をimageViewにセット
        if let image = info[.originalImage] as? UIImage {
            imageView.image = image
        }
        //ImagePickerを閉じる
        dismiss(animated: true)
    }
}
