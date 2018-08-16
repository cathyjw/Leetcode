class Solution(object):
    def maxSubArray(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        result=0
        # in 7. Reverse Integer: an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1].
        max_sum=math.pow(-2,31)
        for i in nums:
            if result<0:
                result=0
            result+=i
            max_sum=max(result,max_sum)
        return max_sum