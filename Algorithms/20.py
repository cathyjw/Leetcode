class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        temp=[]
        dic={')': '(', ']': '[', '}': '{' }
        for i in s:
            if len(temp)>0 and i in dic and temp[-1]==dic[i]:
                temp.pop()
            else:
                temp.append(i)
        return len(temp)==0