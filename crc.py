crc(data: str, generator: str):
    print(f"M: {data}")

    n = len(generator) - 1
    data_with_zeroes: str = data + (n * '0')

    crc = binary_divide(data_with_zeroes, generator)

    data_with_crc = data + crc

    print(f"M with zeroes: {data_with_zeroes}")

    print(f"CRC: {crc}")

    print(f"Transmitted data: {data_with_crc}")


def verify_crc(data: str, generator: str):
    print(f"M: {data}")
    print(f"G: {generator}")

    remainder = binary_divide(data, generator)

    print(f"remainder: {remainder}")

    onlyzeroes = True

    for dig in list(remainder):
        if dig != "0":
            onlyzeroes = False
            break

    print("Verified." if onlyzeroes else "Error Detected")


def binary_divide(dividend: str, divisor: str):
    orig_dividend = dividend

    for i in range(len(dividend) - 4):

        if dividend[0] == "1":
            dividend = binary_divide_step(dividend, divisor, i)
        else:
            dividend = binary_divide_step(dividend, "0" * len(divisor), i)

        dividend = dividend[1:]

        if (len(dividend) < len(divisor)):
            break

    print(" " * (len(orig_dividend) - len(dividend)) + dividend)

    return dividend


def binary_divide_step(dividend: str, divisor: str, length: int):
    print(" " * (length) + dividend)

    print(" " * length + divisor)
    print(" " * length + "-" * len(divisor))

    divisor = list(divisor)
    dividend = list(dividend)

    for i in range(len(divisor)):
        # print(dividend[i], divisor[i])
        if (dividend[i] == divisor[i]):
            dividend[i] = '0'
        else:
            dividend[i] = '1'

    dividend = "".join(dividend)

    return dividend

