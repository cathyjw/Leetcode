class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        result=0
        y=abs(x)
        while y>0:
            temp=y%10
            result=result*10+temp
            y=y//10
        if x<0:
            result=result*(-1)
        if result<(math.pow(2,31)-1) and result>(math.pow(-2,31)):
            return result
        else:
            return 0