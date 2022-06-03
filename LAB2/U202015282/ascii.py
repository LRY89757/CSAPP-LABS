# print(chr())
# print(map(hex, list(map(ord, list('I am just a renegade hockey mom.')))))
# print(ord)

# phase_1
str1 = "0x21776f57      0x61724220      0x206c697a      0x62207369      0x804a014      0x002e6769"
# str1 = "0x6d612049	0x73756a20	0x20612074	0x656e6572      0x804a10c	0x65646167	0x636f6820	0x2079656b	0x2e6d6f6d"

strlist = str1.split()
# print(strlist)
strlist = [st[2:] for st in strlist]
for i in range(len(strlist)):
    if len(strlist[i]) != 8:
        strlist[i] = '0' * (8-len(strlist[i])) + strlist[i]

# print(strlist)
ans = ''
for item in strlist:
    for i in range(6, -1, -2):
        ans += chr(int('0x' + item[i:i+2], base=16))
print(ans)