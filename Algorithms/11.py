class Solution(object):
    def maxArea(self, height):
        """
        :type height: List[int]
        :rtype: int
        """
        area=0
        start=0
        end=len(height)-1
        while start<=end:
            a=min(height[start],height[end])*(end-start)
            area=max(area,a)
            if height[start]<height[end]:
                start+=1
            else:
                end-=1
        return area