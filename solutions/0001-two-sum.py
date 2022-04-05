# Problem 1. Two Sum
# Author: Nico Van den Hooff
# https://leetcode.com/problems/two-sum/


class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        """Determines the indices of the two array values that sum to the target value.

        Assumptions:
            1) There is only one solution.
            2) You cannot use an array element twice in a summation.

        Parameters
        ----------
        nums : list[int]
            List of integers.
        target : int
            The target value.

        Returns
        -------
        list[int]
            The indicies of the values that sum to the target value.
        """
        for i in range(len(nums) - 1):
            for j in range(i + 1, len(nums)):
                if nums[i] + nums[j] == target:
                    return i, j
