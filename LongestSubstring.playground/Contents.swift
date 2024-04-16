// Longest Substring Without Repeating Characters

func lengthOfLongestSubstring(_ s: String) -> Int {
    var res = 0
    var chars = [Character]()
    
    for c in s {
        if let index = chars.firstIndex(of: c) {
            chars.removeSubrange(0...index)
        }
        
        chars.append(c)
        res = max(res, chars.count)
    }
    
    return res
}

lengthOfLongestSubstring("abcabcbb")
lengthOfLongestSubstring("bbbbb")
lengthOfLongestSubstring("pwwkew")
