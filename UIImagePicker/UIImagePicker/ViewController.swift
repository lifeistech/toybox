import UIKit

class ViewController: UIViewController {
    
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
