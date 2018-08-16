class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        if len(prices)==0:
            return 0
        buy=prices[0]
        sell=0
        result=0
        for i in range(1,len(prices)):
            if prices[i]<buy:
                buy=prices[i]
                sell=0
            else:
                sell=max(prices[i],sell)
                result=max(result,sell-buy)
        else:
            return result