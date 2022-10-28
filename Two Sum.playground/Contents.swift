// []https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
      
        var constant1 = 0
        var constant2 = 1
        
        while nums[constant1] + nums[constant2] != target || constant1 == constant2 {
            constant2 += 1
            if constant2 > nums.count - 1 {
                constant1 += 1
                constant2 = 0
            }
            
            if constant1 > nums.count - 1 {
                constant1 = 0
                break
            }
        }
    
    return [constant1, constant2]
    }
}

// example

let example = Solution()
let answer = example.twoSum([1,4,6,7,8,9,4,10], 8)
print(answer)

