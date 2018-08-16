class Solution(object):
    def longestPalindrome(self, s):
        """
        :type s: str
        :rtype: str
        """
        if len(s)==0 or len(s)==1:
            return s
        start=0
        end=1
        length=1
        result=s[0]
        for i in range(len(s)):
            for j in range(len(s)-1,i,-1):
                if s[i]==s[j]:
                    temp=s[i:j+1]
                    if temp==temp[::-1] and (j-i+1)>length:
                        length=j-i+1
                        result=temp
                        break
        return result