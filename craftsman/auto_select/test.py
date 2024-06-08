def count_gaps(sorted_list):
    count = 1
    for i in range(1, len(sorted_list)):
        if sorted_list[i] - sorted_list[i-1] > 1:
            count += 1
    return count

my = [1,2,3,5,7,10,11,13]

print(count_gaps(my))