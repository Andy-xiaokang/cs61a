def reverse_recursive(lst):
#     """Returns the reverse of the given list.

#     >>> reverse_recursive([1, 2, 3, 4])
#     [4, 3, 2, 1]
#     >>> import inspect, re
#     >>> cleaned = re.sub(r"#.*\\n", '', re.sub(r'"{3}[\s\S]*?"{3}', '', inspect.getsource(reverse_recursive)))
#     >>> print("Do not use lst[::-1], lst.reverse(), or reversed(lst)!") if any([r in cleaned for r in ["[::", ".reverse", "reversed"]]) else None
#     """
#     "*** YOUR CODE HERE ***"
#     # base case
#     if len(lst) == 1:
#         return lst[:]
#     return list[lst[-1]] + reverse_recursive(lst[0:-1])

# print(reverse_recursive([1,2,3,4]))