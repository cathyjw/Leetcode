class Solution(object):
    def numJewelsInStones(self, J, S):
        """
        :type J: str
        :type S: str
        :rtype: int
        """
        list_J=list(J)
        count=0
        for i in S:
            if i in list_J:
                count+=1
        return count