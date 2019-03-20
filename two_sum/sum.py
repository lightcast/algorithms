#Given a sorted array of integers, return the two numbers such that
# they add up to a specific target. You may assume that each input
# would have exactly one solution, and you may not use the same element twiceself.

arry = [-2, 1, 2, 4, 7, 11]
target = 13
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def two_sum_brute_force(arry, target):
    for i in range(len(arry) -1):
        for j in range(i+1, len(arry)):
            if arry[i] + arry[j] == target:
                print(arry[i], arry[j])
                return True
    return False


print(two_sum_brute_force(arry, target))



#Time Complexity: O(n)
# Space Complexity: O(n)
def two_sum_hash_table(A, target):
    ht = dict()
    for i in range(len(A)):
        if A[i] in ht:
            print(ht[A[i]], A[i])
            return True
        else:
            ht[target - A[i]] = A[i]
    return False

arry = [2, 4, 6]
two_sum_hash_table(arry, 10)


#Time Complexity: O(n)
#Space Complexity: O(1)

def two_sum(arry, target):
    i = 0
    j = len(arry) - 1

    while i <= j:
        if arry[i] + arry[j] == target:
            print(arry[i], arry[j])
            return True
        elif arry[i] + arry[j] < target:
            i += 1
        else: # arry[i] + arryj > target
            j -= 1
    return False


two_sum(arry, 10)
