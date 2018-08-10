class Solution:
    def romanToInt(self, s):
        """
        :type s: str
        :rtype: int
        """
        count=0
        dic = {"I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000}
        for i in range(len(s)):
            if (i+1)<len(s):
                if dic[s[i]]>=dic[s[i+1]]:
                    count+=dic[s[i]]
                else:
                    count-=dic[s[i]]
            else:
                count+=dic[s[i]]        
        return count