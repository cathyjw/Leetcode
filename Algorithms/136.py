# reference https://www.jianshu.com/p/93d679392b2d
class Solution(object):
    def singleNumber(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        temp=0
        for i in range(len(nums)):
            temp=temp^nums[i]
        return temp