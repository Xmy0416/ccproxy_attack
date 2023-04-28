import itertools

mylist = ("".join(x) for x in itertools.product("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
                                                repeat=2))
for i in range(0, 2000):
    print(next(mylist), end="")
    i += 1
