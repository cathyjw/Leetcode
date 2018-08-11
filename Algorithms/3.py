class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        substring=[]
        length=0
        count=0
        position={}
        for i in range(len(s)):
            if s[i] in substring:
                length=max(length,count)
                substring=s[position[s[i]]+1:i+1]
                substring=list(substring)
                count=i-position[s[i]]
            else:
                substring.append(s[i])
                count+=1
                length=max(length,count)
            position[s[i]]=i
        return length