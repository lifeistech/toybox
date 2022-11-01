import UIKit

class ViewController: UIViewController {
    //UICalendarViewを定義
    var calendarView: UICalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //カレンダービューの設定
        setupCalendarView()
        //定義したカレンダービューを表示
        view.addSubview(calendarView)
    }
    
    func setupCalendarView() {
        calendarView = UICalendarView(frame: view.frame)
        let gregorianCalendar = Calendar(identifier: .gregorian)
        calendarView.calendar = gregorianCalendar
        calendarView.locale = Locale(identifier: "ja_JP")
        //カレンダーのフォントを変更
        calendarView.fontDesign = .rounded
        //UICalendarViewのdelegateにUIViewControllerをセット
        calendarView.delegate = self
        //選択できる日数を1日に設定
        calendarView.selectionBehavior = UICalendarSelectionSingleDate(delegate: self)
    }
}

//日付ごとのデコレーションを設定
extension ViewController: UICalendarViewDelegate {
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        switch dateComponents.day {
        //日付の下のアクセント(デフォルトカラーはグレー)
        case 1:
            return .default()
        //日付の下のアクセント(緑)
        case 2:
            return .default(color: .systemGreen)
        //SFSymbolを表示
        case 3:
            return .image(UIImage(systemName: "pencil"), color: .systemTeal, size: .large)
        //UILabelを表示
        case 10:
            return .customView {
                let label = UILabel()
                label.text = "School"
                return label
            }
        default:
            return nil
        }
    }
}

//カレンダーのタップした日付をprintする
extension ViewController: UICalendarSelectionSingleDateDelegate {
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        if let month = dateComponents?.month, let day = dateComponents?.day {
            print("\(month)月\(day)日")
        }
    }
}
