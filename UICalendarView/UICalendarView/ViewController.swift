import UIKit

class ViewController: UIViewController {
    
    var calendarView: UICalendarView {
        let calendarView = UICalendarView(frame: view.frame)
        let gregorianCalendar = Calendar(identifier: .gregorian)
        calendarView.calendar = gregorianCalendar
        calendarView.locale = Locale(identifier: "ja_JP")
        calendarView.fontDesign = .rounded
        calendarView.delegate = self
        calendarView.selectionBehavior = UICalendarSelectionSingleDate(delegate: self)
        return calendarView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(calendarView)
    }
}

extension ViewController: UICalendarViewDelegate {
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        switch dateComponents.day {
        case 1:
            return .default()
        case 2:
            return .default(color: .systemGreen)
        case 3:
            return .image(UIImage(systemName: "pencil"), color: .systemTeal, size: .large)
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

extension ViewController: UICalendarSelectionSingleDateDelegate {
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        if let month = dateComponents?.month, let day = dateComponents?.day {
            print("\(month)月\(day)日")
        }
    }
}
