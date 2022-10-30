class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let b = String(x)
        let a = String(b.reversed())
        
        if a == b {
            return true
        }
        return false
    }
}

let solution = Solution()
let result = solution.isPalindrome(141)

print(result)
