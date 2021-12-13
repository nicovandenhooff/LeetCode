# Problem 2. Add Two Numbers
# Author: Nico Van den Hooff
# https://leetcode.com/problems/add-two-numbers/

# Note: The ListNode() class is specified by LeetCode to be:
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next


class Solution:
    def get_linked_number(self, l: ListNode()) -> int:
        """Concatenates digits in reversed order from a Linked List to form a number.

        Parameters
        ----------
        l : ListNode
            The linked list containing the digits

        Returns
        -------
        int
            The concatenated digits in reverse order from the linked list
        """

        number = []

        # get each value from linked list
        while l.next is not None:
            number.insert(0, str(l.val))
            l = l.next

        # get value from tail node
        number.insert(0, str(l.val))

        return int("".join(number))

    def create_linked_sum(self, sum_digits: list[int]) -> ListNode():
        """Creates a linked list of numbers from an array of digits.

        Parameters
        ----------
        sum_digits : list[int]
            The array of digits

        Returns
        -------
        ListNode()
            The linked list containing the digits
        """

        # set the head and current nodes
        head = ListNode(val=sum_digits[0], next=ListNode())
        current = head.next

        # add the remaining digits to linked list
        for i in range(1, len(sum_digits) - 1):
            current.val = sum_digits[i]
            current.next = ListNode()
            current = current.next

        # set value of tail node
        current.val = sum_digits[-1]

        return head

    def addTwoNumbers(
        self, l1: Optional[ListNode], l2: Optional[ListNode]
    ) -> Optional[ListNode]:
        """Takes two linked lists and:
            1) Concatentates their numbers in reversed order
            2) Sums the two numbers above
            3) Returns a linked list with the individual digits from the sum
               in reversed order

        Parameters
        ----------
        l1 : Optional[ListNode]
            The first linked list of digits
        l2 : Optional[ListNode]
            The second linked list of digits

        Returns
        -------
        Optional[ListNode]
            The linked list of digits from the sum
        """

        # get the sum of the two numbers and reverse it
        total = str(self.get_linked_number(l1) + self.get_linked_number(l2))[::-1]

        # edge case: single digit sum
        if len(total) == 1:
            return ListNode(val=int(total))

        # create list of sum digits
        sum_digits = [int(char) for char in total]

        return self.create_linked_sum(sum_digits)
