// You are given an integer limit and a 2D array queries of size n x 2.
// There are limit + 1 balls with distinct labels in the range [0, limit]. Initially, all balls are uncolored. For every query in queries that is of the form [x, y], you mark ball x with the color y. After each query, you need to find the number of distinct colors among the balls.
// Return an array result of length n, where result[i] denotes the number of distinct colors after ith query.
// Note that when answering a query, lack of a color will not be considered as a color.

class Solution {
    func queryResults(_ limit: Int, _ queries: [[Int]]) -> [Int] {
        
        var result: [Int] = []
        var ballsColors: [Int: Int] = [:]
        var uniqueColors: Set<Int> = []
        var colorFrequency: [Int: Int] = [:]

        for query in queries {
            let ball = query[0]
            let color = query[1]

            if let ballColor = ballsColors[ball] {
                if let count = colorFrequency[ballColor] {
                    if count == 1 {
                        uniqueColors.remove(ballColor)
                    }
                    colorFrequency[ballColor] = count - 1
                }
            }
            ballsColors[ball] = color
            uniqueColors.insert(color)
            colorFrequency[color, default: 0] += 1
            result.append(uniqueColors.count)
        }
        return result
    }
}

// First Solution: TLE
// class Solution {
//     func queryResults(_ limit: Int, _ queries: [[Int]]) -> [Int] {
        
//         var result: [Int] = []

//         var ballsColors = Array(repeating: 0, count: limit + 1)

//         for query in queries {
//             ballsColors[query[0]] = query[1]
//             result.append(Set(ballsColors.filter { $0 > 0 }).count)
//         }
//         return result
//     }
// }