class Solution(object):
    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """
        count=0
        result=""
        flag=True
        temp=None
        if len(strs)==1:
            return strs[0]
        while flag:
            for j in range(1,len(strs)):
                temp=None
                if count>=(len(strs[j])) or count>=(len(strs[0])):
                    return result
                if strs[0][count]==strs[j][count]:
                    temp=strs[0][count]
                else:
                    return result
            if temp is not None:
                result=result+temp
                count+=1
            else:
                flag=False
        return result