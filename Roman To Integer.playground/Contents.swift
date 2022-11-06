// https://leetcode.com/problems/roman-to-integer/

class Solution {
    func romanToInt(_ s: String) -> Int {

        var sDict = [String]()

        for (index, result) in s.enumerated() {
            sDict.append(String(result))
        }

        print(sDict)

        var rangeNumber = 0

        var resultDict = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]

        var answerArray = [Int]()

        for i in sDict {
            answerArray.append(resultDict["\(sDict[rangeNumber])"] ?? 0)
            rangeNumber += 1

            if rangeNumber < sDict.count {
                continue
            } else {
                break
            }
        }
        let reversedArray = Array(answerArray.reversed())
        
        print(reversedArray)
        
        
        var sum = reversedArray[0]
        
        for i in 0..<reversedArray.count - 1 {
            if reversedArray[i] > reversedArray[i + 1] {
                sum -= reversedArray[i + 1]
                print(sum)
            } else {
                sum += reversedArray[i + 1]
                print(sum)
            }
        }
        return sum
        }
}


