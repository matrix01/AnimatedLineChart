import Foundation

struct ChartItem {
    let value: Int
    let label: String
}

extension ChartItem: Comparable {
    static func <(lhs: ChartItem, rhs: ChartItem) -> Bool {
        return lhs.value < rhs.value
    }
    
    static func ==(lhs: ChartItem, rhs: ChartItem) -> Bool {
        return lhs.value == rhs.value
    }
}
