def sumOfUnique(l: list[int]) -> int:
    local_array = []
    for val in l:
        if val not in local_array:
            local_array.append(val)
        elif val in local_array:
            local_array.remove(val)

    return sum(local_array)


def main() -> None:
    print(sumOfUnique([1, 2, 3, 2, 1]))
    print(sumOfUnique([1, 2, 3, 4, 2, 1, 4, 7]))
    print(sumOfUnique([]))
    print(sumOfUnique([5, 2, 4, 5, 6, 2, 1, 6]))


if __name__ == '__main__':
    main()

# sumOfUnique([1,2,3,2,1]) => 3
