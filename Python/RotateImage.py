# -*- coding: UTF-8 -*-
#
# You are given an n x n 2D matrix representing an image.
#
# Rotate the image by 90 degrees (clockwise).
#
# Note:
# You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
#
# Example 1:
#
# Given input matrix =
# [
# [1,2,3],
# [4,5,6],
# [7,8,9]
# ],
#
# rotate the input matrix in-place such that it becomes:
# [
# [7,4,1],
# [8,5,2],
# [9,6,3]
# ]
# Example 2:
#
# Given input matrix =
# [
# [ 5, 1, 9,11],
# [ 2, 4, 8,10],
# [13, 3, 6, 7],
# [15,14,12,16]
# ],
#
# rotate the input matrix in-place such that it becomes:
# [
# [15,13, 2, 5],
# [14, 3, 4, 1],
# [12, 6, 8, 9],
# [16, 7,10,11]
# ]
#
# Python, Python3 all accepted.
class RotateImage:
    def rotate(self, matrix):
        """
        :type matrix: List[List[int]]
        :rtype: void Do not return anything, modify matrix in-place instead.
        """
        length = len(matrix)
        for i in range(length // 2):
            j = length - 1 - i
            cache = matrix[i]
            matrix[i] = matrix[j]
            matrix[j] = cache

        for i in range(length):
            for j in range(i + 1, length):
                cache = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = cache


ri = RotateImage()

ints1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
ri.rotate(ints1)
print(ints1)

ints2 = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
ri.rotate(ints2)
print(ints2)