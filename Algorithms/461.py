# reference: https://stackoverflow.com/questions/33663676/input-2-integers-and-get-binary-brgc-and-hamming-distance
class Solution(object):
    def hammingDistance(self, x, y):
        """
        :type x: int
        :type y: int
        :rtype: int
        """
        return bin(x^y).count('1')