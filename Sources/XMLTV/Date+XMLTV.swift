import Foundation

extension Date {
    static func parse(tvDate: String?) -> Date? {
        guard let tvDate = tvDate else { return nil }
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyyMMddHHmmss Z"
        return dateFormatter.date(from: tvDate)
    }
}
