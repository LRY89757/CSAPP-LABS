
bomb:     file format elf32-i386


Disassembly of section .init:

080486f4 <_init>:
 80486f4:	53                   	push   %ebx
 80486f5:	83 ec 08             	sub    $0x8,%esp
 80486f8:	e8 13 02 00 00       	call   8048910 <__x86.get_pc_thunk.bx>
 80486fd:	81 c3 03 39 00 00    	add    $0x3903,%ebx
 8048703:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048709:	85 c0                	test   %eax,%eax
 804870b:	74 05                	je     8048712 <_init+0x1e>
 804870d:	e8 be 01 00 00       	call   80488d0 <__gmon_start__@plt>
 8048712:	83 c4 08             	add    $0x8,%esp
 8048715:	5b                   	pop    %ebx
 8048716:	c3                   	ret    

Disassembly of section .plt:

08048720 <.plt>:
 8048720:	ff 35 04 c0 04 08    	pushl  0x804c004
 8048726:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804872c:	00 00                	add    %al,(%eax)
	...

08048730 <read@plt>:
 8048730:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048736:	68 00 00 00 00       	push   $0x0
 804873b:	e9 e0 ff ff ff       	jmp    8048720 <.plt>

08048740 <fflush@plt>:
 8048740:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048746:	68 08 00 00 00       	push   $0x8
 804874b:	e9 d0 ff ff ff       	jmp    8048720 <.plt>

08048750 <fgets@plt>:
 8048750:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048756:	68 10 00 00 00       	push   $0x10
 804875b:	e9 c0 ff ff ff       	jmp    8048720 <.plt>

08048760 <signal@plt>:
 8048760:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048766:	68 18 00 00 00       	push   $0x18
 804876b:	e9 b0 ff ff ff       	jmp    8048720 <.plt>

08048770 <sleep@plt>:
 8048770:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048776:	68 20 00 00 00       	push   $0x20
 804877b:	e9 a0 ff ff ff       	jmp    8048720 <.plt>

08048780 <alarm@plt>:
 8048780:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048786:	68 28 00 00 00       	push   $0x28
 804878b:	e9 90 ff ff ff       	jmp    8048720 <.plt>

08048790 <__stack_chk_fail@plt>:
 8048790:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048796:	68 30 00 00 00       	push   $0x30
 804879b:	e9 80 ff ff ff       	jmp    8048720 <.plt>

080487a0 <strcpy@plt>:
 80487a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80487a6:	68 38 00 00 00       	push   $0x38
 80487ab:	e9 70 ff ff ff       	jmp    8048720 <.plt>

080487b0 <getenv@plt>:
 80487b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80487b6:	68 40 00 00 00       	push   $0x40
 80487bb:	e9 60 ff ff ff       	jmp    8048720 <.plt>

080487c0 <puts@plt>:
 80487c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80487c6:	68 48 00 00 00       	push   $0x48
 80487cb:	e9 50 ff ff ff       	jmp    8048720 <.plt>

080487d0 <__memmove_chk@plt>:
 80487d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80487d6:	68 50 00 00 00       	push   $0x50
 80487db:	e9 40 ff ff ff       	jmp    8048720 <.plt>

080487e0 <exit@plt>:
 80487e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80487e6:	68 58 00 00 00       	push   $0x58
 80487eb:	e9 30 ff ff ff       	jmp    8048720 <.plt>

080487f0 <__libc_start_main@plt>:
 80487f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80487f6:	68 60 00 00 00       	push   $0x60
 80487fb:	e9 20 ff ff ff       	jmp    8048720 <.plt>

08048800 <write@plt>:
 8048800:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048806:	68 68 00 00 00       	push   $0x68
 804880b:	e9 10 ff ff ff       	jmp    8048720 <.plt>

08048810 <__isoc99_sscanf@plt>:
 8048810:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048816:	68 70 00 00 00       	push   $0x70
 804881b:	e9 00 ff ff ff       	jmp    8048720 <.plt>

08048820 <fopen@plt>:
 8048820:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048826:	68 78 00 00 00       	push   $0x78
 804882b:	e9 f0 fe ff ff       	jmp    8048720 <.plt>

08048830 <__errno_location@plt>:
 8048830:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048836:	68 80 00 00 00       	push   $0x80
 804883b:	e9 e0 fe ff ff       	jmp    8048720 <.plt>

08048840 <__printf_chk@plt>:
 8048840:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048846:	68 88 00 00 00       	push   $0x88
 804884b:	e9 d0 fe ff ff       	jmp    8048720 <.plt>

08048850 <socket@plt>:
 8048850:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048856:	68 90 00 00 00       	push   $0x90
 804885b:	e9 c0 fe ff ff       	jmp    8048720 <.plt>

08048860 <__fprintf_chk@plt>:
 8048860:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048866:	68 98 00 00 00       	push   $0x98
 804886b:	e9 b0 fe ff ff       	jmp    8048720 <.plt>

08048870 <gethostbyname@plt>:
 8048870:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048876:	68 a0 00 00 00       	push   $0xa0
 804887b:	e9 a0 fe ff ff       	jmp    8048720 <.plt>

08048880 <strtol@plt>:
 8048880:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048886:	68 a8 00 00 00       	push   $0xa8
 804888b:	e9 90 fe ff ff       	jmp    8048720 <.plt>

08048890 <connect@plt>:
 8048890:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048896:	68 b0 00 00 00       	push   $0xb0
 804889b:	e9 80 fe ff ff       	jmp    8048720 <.plt>

080488a0 <close@plt>:
 80488a0:	ff 25 68 c0 04 08    	jmp    *0x804c068
 80488a6:	68 b8 00 00 00       	push   $0xb8
 80488ab:	e9 70 fe ff ff       	jmp    8048720 <.plt>

080488b0 <__ctype_b_loc@plt>:
 80488b0:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 80488b6:	68 c0 00 00 00       	push   $0xc0
 80488bb:	e9 60 fe ff ff       	jmp    8048720 <.plt>

080488c0 <__sprintf_chk@plt>:
 80488c0:	ff 25 70 c0 04 08    	jmp    *0x804c070
 80488c6:	68 c8 00 00 00       	push   $0xc8
 80488cb:	e9 50 fe ff ff       	jmp    8048720 <.plt>

Disassembly of section .plt.got:

080488d0 <__gmon_start__@plt>:
 80488d0:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80488d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080488e0 <_start>:
 80488e0:	31 ed                	xor    %ebp,%ebp
 80488e2:	5e                   	pop    %esi
 80488e3:	89 e1                	mov    %esp,%ecx
 80488e5:	83 e4 f0             	and    $0xfffffff0,%esp
 80488e8:	50                   	push   %eax
 80488e9:	54                   	push   %esp
 80488ea:	52                   	push   %edx
 80488eb:	68 90 9e 04 08       	push   $0x8049e90
 80488f0:	68 30 9e 04 08       	push   $0x8049e30
 80488f5:	51                   	push   %ecx
 80488f6:	56                   	push   %esi
 80488f7:	68 db 89 04 08       	push   $0x80489db
 80488fc:	e8 ef fe ff ff       	call   80487f0 <__libc_start_main@plt>
 8048901:	f4                   	hlt    
 8048902:	66 90                	xchg   %ax,%ax
 8048904:	66 90                	xchg   %ax,%ax
 8048906:	66 90                	xchg   %ax,%ax
 8048908:	66 90                	xchg   %ax,%ax
 804890a:	66 90                	xchg   %ax,%ax
 804890c:	66 90                	xchg   %ax,%ax
 804890e:	66 90                	xchg   %ax,%ax

08048910 <__x86.get_pc_thunk.bx>:
 8048910:	8b 1c 24             	mov    (%esp),%ebx
 8048913:	c3                   	ret    
 8048914:	66 90                	xchg   %ax,%ax
 8048916:	66 90                	xchg   %ax,%ax
 8048918:	66 90                	xchg   %ax,%ax
 804891a:	66 90                	xchg   %ax,%ax
 804891c:	66 90                	xchg   %ax,%ax
 804891e:	66 90                	xchg   %ax,%ax

08048920 <deregister_tm_clones>:
 8048920:	b8 a3 c3 04 08       	mov    $0x804c3a3,%eax
 8048925:	2d a0 c3 04 08       	sub    $0x804c3a0,%eax
 804892a:	83 f8 06             	cmp    $0x6,%eax
 804892d:	76 1a                	jbe    8048949 <deregister_tm_clones+0x29>
 804892f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048934:	85 c0                	test   %eax,%eax
 8048936:	74 11                	je     8048949 <deregister_tm_clones+0x29>
 8048938:	55                   	push   %ebp
 8048939:	89 e5                	mov    %esp,%ebp
 804893b:	83 ec 14             	sub    $0x14,%esp
 804893e:	68 a0 c3 04 08       	push   $0x804c3a0
 8048943:	ff d0                	call   *%eax
 8048945:	83 c4 10             	add    $0x10,%esp
 8048948:	c9                   	leave  
 8048949:	f3 c3                	repz ret 
 804894b:	90                   	nop
 804894c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048950 <register_tm_clones>:
 8048950:	b8 a0 c3 04 08       	mov    $0x804c3a0,%eax
 8048955:	2d a0 c3 04 08       	sub    $0x804c3a0,%eax
 804895a:	c1 f8 02             	sar    $0x2,%eax
 804895d:	89 c2                	mov    %eax,%edx
 804895f:	c1 ea 1f             	shr    $0x1f,%edx
 8048962:	01 d0                	add    %edx,%eax
 8048964:	d1 f8                	sar    %eax
 8048966:	74 1b                	je     8048983 <register_tm_clones+0x33>
 8048968:	ba 00 00 00 00       	mov    $0x0,%edx
 804896d:	85 d2                	test   %edx,%edx
 804896f:	74 12                	je     8048983 <register_tm_clones+0x33>
 8048971:	55                   	push   %ebp
 8048972:	89 e5                	mov    %esp,%ebp
 8048974:	83 ec 10             	sub    $0x10,%esp
 8048977:	50                   	push   %eax
 8048978:	68 a0 c3 04 08       	push   $0x804c3a0
 804897d:	ff d2                	call   *%edx
 804897f:	83 c4 10             	add    $0x10,%esp
 8048982:	c9                   	leave  
 8048983:	f3 c3                	repz ret 
 8048985:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048990 <__do_global_dtors_aux>:
 8048990:	80 3d c8 c3 04 08 00 	cmpb   $0x0,0x804c3c8
 8048997:	75 13                	jne    80489ac <__do_global_dtors_aux+0x1c>
 8048999:	55                   	push   %ebp
 804899a:	89 e5                	mov    %esp,%ebp
 804899c:	83 ec 08             	sub    $0x8,%esp
 804899f:	e8 7c ff ff ff       	call   8048920 <deregister_tm_clones>
 80489a4:	c6 05 c8 c3 04 08 01 	movb   $0x1,0x804c3c8
 80489ab:	c9                   	leave  
 80489ac:	f3 c3                	repz ret 
 80489ae:	66 90                	xchg   %ax,%ax

080489b0 <frame_dummy>:
 80489b0:	b8 10 bf 04 08       	mov    $0x804bf10,%eax
 80489b5:	8b 10                	mov    (%eax),%edx
 80489b7:	85 d2                	test   %edx,%edx
 80489b9:	75 05                	jne    80489c0 <frame_dummy+0x10>
 80489bb:	eb 93                	jmp    8048950 <register_tm_clones>
 80489bd:	8d 76 00             	lea    0x0(%esi),%esi
 80489c0:	ba 00 00 00 00       	mov    $0x0,%edx
 80489c5:	85 d2                	test   %edx,%edx
 80489c7:	74 f2                	je     80489bb <frame_dummy+0xb>
 80489c9:	55                   	push   %ebp
 80489ca:	89 e5                	mov    %esp,%ebp
 80489cc:	83 ec 14             	sub    $0x14,%esp
 80489cf:	50                   	push   %eax
 80489d0:	ff d2                	call   *%edx
 80489d2:	83 c4 10             	add    $0x10,%esp
 80489d5:	c9                   	leave  
 80489d6:	e9 75 ff ff ff       	jmp    8048950 <register_tm_clones>

080489db <main>:
 80489db:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80489df:	83 e4 f0             	and    $0xfffffff0,%esp
 80489e2:	ff 71 fc             	pushl  -0x4(%ecx)
 80489e5:	55                   	push   %ebp
 80489e6:	89 e5                	mov    %esp,%ebp
 80489e8:	53                   	push   %ebx
 80489e9:	51                   	push   %ecx
 80489ea:	8b 01                	mov    (%ecx),%eax
 80489ec:	8b 59 04             	mov    0x4(%ecx),%ebx
 80489ef:	83 f8 01             	cmp    $0x1,%eax
 80489f2:	75 0c                	jne    8048a00 <main+0x25>
 80489f4:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 80489f9:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 80489fe:	eb 5b                	jmp    8048a5b <main+0x80>
 8048a00:	83 f8 02             	cmp    $0x2,%eax
 8048a03:	75 39                	jne    8048a3e <main+0x63>
 8048a05:	83 ec 08             	sub    $0x8,%esp
 8048a08:	68 c8 9e 04 08       	push   $0x8049ec8
 8048a0d:	ff 73 04             	pushl  0x4(%ebx)
 8048a10:	e8 0b fe ff ff       	call   8048820 <fopen@plt>
 8048a15:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a1a:	83 c4 10             	add    $0x10,%esp
 8048a1d:	85 c0                	test   %eax,%eax
 8048a1f:	75 3a                	jne    8048a5b <main+0x80>
 8048a21:	ff 73 04             	pushl  0x4(%ebx)
 8048a24:	ff 33                	pushl  (%ebx)
 8048a26:	68 ca 9e 04 08       	push   $0x8049eca
 8048a2b:	6a 01                	push   $0x1
 8048a2d:	e8 0e fe ff ff       	call   8048840 <__printf_chk@plt>
 8048a32:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a39:	e8 a2 fd ff ff       	call   80487e0 <exit@plt>
 8048a3e:	83 ec 04             	sub    $0x4,%esp
 8048a41:	ff 33                	pushl  (%ebx)
 8048a43:	68 e7 9e 04 08       	push   $0x8049ee7
 8048a48:	6a 01                	push   $0x1
 8048a4a:	e8 f1 fd ff ff       	call   8048840 <__printf_chk@plt>
 8048a4f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a56:	e8 85 fd ff ff       	call   80487e0 <exit@plt>
 8048a5b:	e8 fc 05 00 00       	call   804905c <initialize_bomb>
 8048a60:	83 ec 0c             	sub    $0xc,%esp
 8048a63:	68 4c 9f 04 08       	push   $0x8049f4c
 8048a68:	e8 53 fd ff ff       	call   80487c0 <puts@plt>
 8048a6d:	c7 04 24 88 9f 04 08 	movl   $0x8049f88,(%esp)
 8048a74:	e8 47 fd ff ff       	call   80487c0 <puts@plt>
 8048a79:	e8 d0 06 00 00       	call   804914e <read_line>
 8048a7e:	89 04 24             	mov    %eax,(%esp)  ; 明显这里利用eax传递参数
 8048a81:	e8 ad 00 00 00       	call   8048b33 <phase_1>
 8048a86:	e8 bc 07 00 00       	call   8049247 <phase_defused>
 8048a8b:	c7 04 24 b4 9f 04 08 	movl   $0x8049fb4,(%esp)
 8048a92:	e8 29 fd ff ff       	call   80487c0 <puts@plt>
 8048a97:	e8 b2 06 00 00       	call   804914e <read_line>
 8048a9c:	89 04 24             	mov    %eax,(%esp)
 8048a9f:	e8 b0 00 00 00       	call   8048b54 <phase_2>
 8048aa4:	e8 9e 07 00 00       	call   8049247 <phase_defused>
 8048aa9:	c7 04 24 01 9f 04 08 	movl   $0x8049f01,(%esp)
 8048ab0:	e8 0b fd ff ff       	call   80487c0 <puts@plt>
 8048ab5:	e8 94 06 00 00       	call   804914e <read_line>
 8048aba:	89 04 24             	mov    %eax,(%esp)
 8048abd:	e8 f5 00 00 00       	call   8048bb7 <phase_3>
 8048ac2:	e8 80 07 00 00       	call   8049247 <phase_defused>
 8048ac7:	c7 04 24 1f 9f 04 08 	movl   $0x8049f1f,(%esp)
 8048ace:	e8 ed fc ff ff       	call   80487c0 <puts@plt>
 8048ad3:	e8 76 06 00 00       	call   804914e <read_line>
 8048ad8:	89 04 24             	mov    %eax,(%esp)
 8048adb:	e8 ed 01 00 00       	call   8048ccd <phase_4>
 8048ae0:	e8 62 07 00 00       	call   8049247 <phase_defused>
 8048ae5:	c7 04 24 e0 9f 04 08 	movl   $0x8049fe0,(%esp)
 8048aec:	e8 cf fc ff ff       	call   80487c0 <puts@plt>
 8048af1:	e8 58 06 00 00       	call   804914e <read_line>
 8048af6:	89 04 24             	mov    %eax,(%esp)
 8048af9:	e8 41 02 00 00       	call   8048d3f <phase_5>
 8048afe:	e8 44 07 00 00       	call   8049247 <phase_defused>
 8048b03:	c7 04 24 2e 9f 04 08 	movl   $0x8049f2e,(%esp)
 8048b0a:	e8 b1 fc ff ff       	call   80487c0 <puts@plt>
 8048b0f:	e8 3a 06 00 00       	call   804914e <read_line>
 8048b14:	89 04 24             	mov    %eax,(%esp)
 8048b17:	e8 b0 02 00 00       	call   8048dcc <phase_6>
 8048b1c:	e8 26 07 00 00       	call   8049247 <phase_defused>
 8048b21:	83 c4 10             	add    $0x10,%esp
 8048b24:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b29:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048b2c:	59                   	pop    %ecx
 8048b2d:	5b                   	pop    %ebx
 8048b2e:	5d                   	pop    %ebp
 8048b2f:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048b32:	c3                   	ret    

08048b33 <phase_1>:
 8048b33:	83 ec 14             	sub    $0x14,%esp
 8048b36:	68 04 a0 04 08       	push   $0x804a004  // 这个传参到了接下来的比较字符串的函数中，所以这里这个有可能就是变量的地址.
 8048b3b:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048b3f:	e8 b3 04 00 00       	call   8048ff7 <strings_not_equal>
 8048b44:	83 c4 10             	add    $0x10,%esp
 8048b47:	85 c0                	test   %eax,%eax
 8048b49:	74 05                	je     8048b50 <phase_1+0x1d>
 8048b4b:	e8 9e 05 00 00       	call   80490ee <explode_bomb>
 8048b50:	83 c4 0c             	add    $0xc,%esp
 8048b53:	c3                   	ret    

08048b54 <phase_2>:
 8048b54:	56                   	push   %esi
 8048b55:	53                   	push   %ebx
 8048b56:	83 ec 2c             	sub    $0x2c,%esp
 8048b59:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048b5f:	89 44 24 24          	mov    %eax,0x24(%esp)
 8048b63:	31 c0                	xor    %eax,%eax
 8048b65:	8d 44 24 0c          	lea    0xc(%esp),%eax
 8048b69:	50                   	push   %eax
 8048b6a:	ff 74 24 3c          	pushl  0x3c(%esp)
 8048b6e:	e8 a0 05 00 00       	call   8049113 <read_six_numbers>
 8048b73:	83 c4 10             	add    $0x10,%esp
 8048b76:	83 7c 24 04 01       	cmpl   $0x1,0x4(%esp)
 8048b7b:	74 05                	je     8048b82 <phase_2+0x2e>
 8048b7d:	e8 6c 05 00 00       	call   80490ee <explode_bomb>
 8048b82:	8d 5c 24 04          	lea    0x4(%esp),%ebx
 8048b86:	8d 74 24 18          	lea    0x18(%esp),%esi
 8048b8a:	8b 03                	mov    (%ebx),%eax
 8048b8c:	01 c0                	add    %eax,%eax
 8048b8e:	39 43 04             	cmp    %eax,0x4(%ebx)
 8048b91:	74 05                	je     8048b98 <phase_2+0x44>
 8048b93:	e8 56 05 00 00       	call   80490ee <explode_bomb>
 8048b98:	83 c3 04             	add    $0x4,%ebx
 8048b9b:	39 f3                	cmp    %esi,%ebx
 8048b9d:	75 eb                	jne    8048b8a <phase_2+0x36>
 8048b9f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048ba3:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048baa:	74 05                	je     8048bb1 <phase_2+0x5d>
 8048bac:	e8 df fb ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048bb1:	83 c4 24             	add    $0x24,%esp
 8048bb4:	5b                   	pop    %ebx
 8048bb5:	5e                   	pop    %esi
 8048bb6:	c3                   	ret    

08048bb7 <phase_3>:
 8048bb7:	83 ec 1c             	sub    $0x1c,%esp
 8048bba:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048bc0:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048bc4:	31 c0                	xor    %eax,%eax
 8048bc6:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048bca:	50                   	push   %eax
 8048bcb:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048bcf:	50                   	push   %eax
 8048bd0:	68 b7 a1 04 08       	push   $0x804a1b7
 8048bd5:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048bd9:	e8 32 fc ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048bde:	83 c4 10             	add    $0x10,%esp
 8048be1:	83 f8 01             	cmp    $0x1,%eax
 8048be4:	7f 05                	jg     8048beb <phase_3+0x34>
 8048be6:	e8 03 05 00 00       	call   80490ee <explode_bomb>
 8048beb:	83 7c 24 04 07       	cmpl   $0x7,0x4(%esp)
 8048bf0:	77 66                	ja     8048c58 <phase_3+0xa1>
 8048bf2:	8b 44 24 04          	mov    0x4(%esp),%eax
 8048bf6:	ff 24 85 20 a0 04 08 	jmp    *0x804a020(,%eax,4)
 8048bfd:	b8 5c 02 00 00       	mov    $0x25c,%eax
 8048c02:	eb 05                	jmp    8048c09 <phase_3+0x52>
 8048c04:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c09:	2d e4 03 00 00       	sub    $0x3e4,%eax
 8048c0e:	eb 05                	jmp    8048c15 <phase_3+0x5e>
 8048c10:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c15:	05 7e 03 00 00       	add    $0x37e,%eax
 8048c1a:	eb 05                	jmp    8048c21 <phase_3+0x6a>
 8048c1c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c21:	2d 9f 01 00 00       	sub    $0x19f,%eax
 8048c26:	eb 05                	jmp    8048c2d <phase_3+0x76>
 8048c28:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c2d:	05 9f 01 00 00       	add    $0x19f,%eax
 8048c32:	eb 05                	jmp    8048c39 <phase_3+0x82>
 8048c34:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c39:	2d 9f 01 00 00       	sub    $0x19f,%eax
 8048c3e:	eb 05                	jmp    8048c45 <phase_3+0x8e>
 8048c40:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c45:	05 9f 01 00 00       	add    $0x19f,%eax
 8048c4a:	eb 05                	jmp    8048c51 <phase_3+0x9a>
 8048c4c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c51:	2d 9f 01 00 00       	sub    $0x19f,%eax
 8048c56:	eb 0a                	jmp    8048c62 <phase_3+0xab>
 8048c58:	e8 91 04 00 00       	call   80490ee <explode_bomb>
 8048c5d:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c62:	83 7c 24 04 05       	cmpl   $0x5,0x4(%esp)
 8048c67:	7f 06                	jg     8048c6f <phase_3+0xb8>
 8048c69:	3b 44 24 08          	cmp    0x8(%esp),%eax
 8048c6d:	74 05                	je     8048c74 <phase_3+0xbd>
 8048c6f:	e8 7a 04 00 00       	call   80490ee <explode_bomb>
 8048c74:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048c78:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048c7f:	74 05                	je     8048c86 <phase_3+0xcf>
 8048c81:	e8 0a fb ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048c86:	83 c4 1c             	add    $0x1c,%esp
 8048c89:	c3                   	ret    

08048c8a <func4>:
 8048c8a:	57                   	push   %edi
 8048c8b:	56                   	push   %esi
 8048c8c:	53                   	push   %ebx
 8048c8d:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048c91:	8b 7c 24 14          	mov    0x14(%esp),%edi
 8048c95:	85 db                	test   %ebx,%ebx
 8048c97:	7e 2b                	jle    8048cc4 <func4+0x3a>
 8048c99:	89 f8                	mov    %edi,%eax
 8048c9b:	83 fb 01             	cmp    $0x1,%ebx
 8048c9e:	74 29                	je     8048cc9 <func4+0x3f>
 8048ca0:	83 ec 08             	sub    $0x8,%esp
 8048ca3:	57                   	push   %edi
 8048ca4:	8d 43 ff             	lea    -0x1(%ebx),%eax
 8048ca7:	50                   	push   %eax
 8048ca8:	e8 dd ff ff ff       	call   8048c8a <func4>
 8048cad:	83 c4 08             	add    $0x8,%esp
 8048cb0:	8d 34 07             	lea    (%edi,%eax,1),%esi
 8048cb3:	57                   	push   %edi
 8048cb4:	83 eb 02             	sub    $0x2,%ebx
 8048cb7:	53                   	push   %ebx
 8048cb8:	e8 cd ff ff ff       	call   8048c8a <func4>
 8048cbd:	83 c4 10             	add    $0x10,%esp
 8048cc0:	01 f0                	add    %esi,%eax
 8048cc2:	eb 05                	jmp    8048cc9 <func4+0x3f>
 8048cc4:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cc9:	5b                   	pop    %ebx
 8048cca:	5e                   	pop    %esi
 8048ccb:	5f                   	pop    %edi
 8048ccc:	c3                   	ret    

08048ccd <phase_4>:
 8048ccd:	83 ec 1c             	sub    $0x1c,%esp
 8048cd0:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048cd6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048cda:	31 c0                	xor    %eax,%eax
 8048cdc:	8d 44 24 04          	lea    0x4(%esp),%eax
 8048ce0:	50                   	push   %eax
 8048ce1:	8d 44 24 0c          	lea    0xc(%esp),%eax
 8048ce5:	50                   	push   %eax
 8048ce6:	68 b7 a1 04 08       	push   $0x804a1b7
 8048ceb:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048cef:	e8 1c fb ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048cf4:	83 c4 10             	add    $0x10,%esp
 8048cf7:	83 f8 02             	cmp    $0x2,%eax
 8048cfa:	75 0c                	jne    8048d08 <phase_4+0x3b>
 8048cfc:	8b 44 24 04          	mov    0x4(%esp),%eax
 8048d00:	83 e8 02             	sub    $0x2,%eax
 8048d03:	83 f8 02             	cmp    $0x2,%eax
 8048d06:	76 05                	jbe    8048d0d <phase_4+0x40>
 8048d08:	e8 e1 03 00 00       	call   80490ee <explode_bomb>
 8048d0d:	83 ec 08             	sub    $0x8,%esp
 8048d10:	ff 74 24 0c          	pushl  0xc(%esp)
 8048d14:	6a 09                	push   $0x9
 8048d16:	e8 6f ff ff ff       	call   8048c8a <func4>
 8048d1b:	83 c4 10             	add    $0x10,%esp
 8048d1e:	3b 44 24 08          	cmp    0x8(%esp),%eax
 8048d22:	74 05                	je     8048d29 <phase_4+0x5c>
 8048d24:	e8 c5 03 00 00       	call   80490ee <explode_bomb>
 8048d29:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048d2d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048d34:	74 05                	je     8048d3b <phase_4+0x6e>
 8048d36:	e8 55 fa ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048d3b:	83 c4 1c             	add    $0x1c,%esp
 8048d3e:	c3                   	ret    

08048d3f <phase_5>:
 8048d3f:	83 ec 1c             	sub    $0x1c,%esp
 8048d42:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048d48:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d4c:	31 c0                	xor    %eax,%eax
 8048d4e:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048d52:	50                   	push   %eax
 8048d53:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048d57:	50                   	push   %eax
 8048d58:	68 b7 a1 04 08       	push   $0x804a1b7
 8048d5d:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048d61:	e8 aa fa ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048d66:	83 c4 10             	add    $0x10,%esp
 8048d69:	83 f8 01             	cmp    $0x1,%eax
 8048d6c:	7f 05                	jg     8048d73 <phase_5+0x34>
 8048d6e:	e8 7b 03 00 00       	call   80490ee <explode_bomb>
 8048d73:	8b 44 24 04          	mov    0x4(%esp),%eax
 8048d77:	83 e0 0f             	and    $0xf,%eax
 8048d7a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d7e:	83 f8 0f             	cmp    $0xf,%eax
 8048d81:	74 2e                	je     8048db1 <phase_5+0x72>
 8048d83:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048d88:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d8d:	83 c2 01             	add    $0x1,%edx
 8048d90:	8b 04 85 40 a0 04 08 	mov    0x804a040(,%eax,4),%eax
 8048d97:	01 c1                	add    %eax,%ecx
 8048d99:	83 f8 0f             	cmp    $0xf,%eax
 8048d9c:	75 ef                	jne    8048d8d <phase_5+0x4e>
 8048d9e:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
 8048da5:	00 
 8048da6:	83 fa 0f             	cmp    $0xf,%edx
 8048da9:	75 06                	jne    8048db1 <phase_5+0x72>
 8048dab:	3b 4c 24 08          	cmp    0x8(%esp),%ecx
 8048daf:	74 05                	je     8048db6 <phase_5+0x77>
 8048db1:	e8 38 03 00 00       	call   80490ee <explode_bomb>
 8048db6:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048dba:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048dc1:	74 05                	je     8048dc8 <phase_5+0x89>
 8048dc3:	e8 c8 f9 ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048dc8:	83 c4 1c             	add    $0x1c,%esp
 8048dcb:	c3                   	ret    

08048dcc <phase_6>:
 8048dcc:	56                   	push   %esi
 8048dcd:	53                   	push   %ebx
 8048dce:	83 ec 4c             	sub    $0x4c,%esp
 8048dd1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048dd7:	89 44 24 44          	mov    %eax,0x44(%esp)
 8048ddb:	31 c0                	xor    %eax,%eax
 8048ddd:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048de1:	50                   	push   %eax
 8048de2:	ff 74 24 5c          	pushl  0x5c(%esp)
 8048de6:	e8 28 03 00 00       	call   8049113 <read_six_numbers>
 8048deb:	83 c4 10             	add    $0x10,%esp
 8048dee:	be 00 00 00 00       	mov    $0x0,%esi
 8048df3:	8b 44 b4 0c          	mov    0xc(%esp,%esi,4),%eax
 8048df7:	83 e8 01             	sub    $0x1,%eax
 8048dfa:	83 f8 05             	cmp    $0x5,%eax
 8048dfd:	76 05                	jbe    8048e04 <phase_6+0x38>
 8048dff:	e8 ea 02 00 00       	call   80490ee <explode_bomb>
 8048e04:	83 c6 01             	add    $0x1,%esi
 8048e07:	83 fe 06             	cmp    $0x6,%esi
 8048e0a:	74 33                	je     8048e3f <phase_6+0x73>
 8048e0c:	89 f3                	mov    %esi,%ebx
 8048e0e:	8b 44 9c 0c          	mov    0xc(%esp,%ebx,4),%eax
 8048e12:	39 44 b4 08          	cmp    %eax,0x8(%esp,%esi,4)
 8048e16:	75 05                	jne    8048e1d <phase_6+0x51>
 8048e18:	e8 d1 02 00 00       	call   80490ee <explode_bomb>
 8048e1d:	83 c3 01             	add    $0x1,%ebx
 8048e20:	83 fb 05             	cmp    $0x5,%ebx
 8048e23:	7e e9                	jle    8048e0e <phase_6+0x42>
 8048e25:	eb cc                	jmp    8048df3 <phase_6+0x27>
 8048e27:	8b 52 08             	mov    0x8(%edx),%edx
 8048e2a:	83 c0 01             	add    $0x1,%eax
 8048e2d:	39 c8                	cmp    %ecx,%eax
 8048e2f:	75 f6                	jne    8048e27 <phase_6+0x5b>
 8048e31:	89 54 b4 24          	mov    %edx,0x24(%esp,%esi,4)
 8048e35:	83 c3 01             	add    $0x1,%ebx
 8048e38:	83 fb 06             	cmp    $0x6,%ebx
 8048e3b:	75 07                	jne    8048e44 <phase_6+0x78>
 8048e3d:	eb 1c                	jmp    8048e5b <phase_6+0x8f>
 8048e3f:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048e44:	89 de                	mov    %ebx,%esi
 8048e46:	8b 4c 9c 0c          	mov    0xc(%esp,%ebx,4),%ecx
 8048e4a:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e4f:	ba 3c c1 04 08       	mov    $0x804c13c,%edx
 8048e54:	83 f9 01             	cmp    $0x1,%ecx
 8048e57:	7f ce                	jg     8048e27 <phase_6+0x5b>
 8048e59:	eb d6                	jmp    8048e31 <phase_6+0x65>
 8048e5b:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 8048e5f:	8d 44 24 24          	lea    0x24(%esp),%eax
 8048e63:	8d 74 24 38          	lea    0x38(%esp),%esi
 8048e67:	89 d9                	mov    %ebx,%ecx
 8048e69:	8b 50 04             	mov    0x4(%eax),%edx
 8048e6c:	89 51 08             	mov    %edx,0x8(%ecx)
 8048e6f:	83 c0 04             	add    $0x4,%eax
 8048e72:	89 d1                	mov    %edx,%ecx
 8048e74:	39 f0                	cmp    %esi,%eax
 8048e76:	75 f1                	jne    8048e69 <phase_6+0x9d>
 8048e78:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8048e7f:	be 05 00 00 00       	mov    $0x5,%esi
 8048e84:	8b 43 08             	mov    0x8(%ebx),%eax
 8048e87:	8b 00                	mov    (%eax),%eax
 8048e89:	39 03                	cmp    %eax,(%ebx)
 8048e8b:	7d 05                	jge    8048e92 <phase_6+0xc6>
 8048e8d:	e8 5c 02 00 00       	call   80490ee <explode_bomb>
 8048e92:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048e95:	83 ee 01             	sub    $0x1,%esi
 8048e98:	75 ea                	jne    8048e84 <phase_6+0xb8>
 8048e9a:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 8048e9e:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048ea5:	74 05                	je     8048eac <phase_6+0xe0>
 8048ea7:	e8 e4 f8 ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048eac:	83 c4 44             	add    $0x44,%esp
 8048eaf:	5b                   	pop    %ebx
 8048eb0:	5e                   	pop    %esi
 8048eb1:	c3                   	ret    

08048eb2 <fun7>:
 8048eb2:	53                   	push   %ebx
 8048eb3:	83 ec 08             	sub    $0x8,%esp
 8048eb6:	8b 54 24 10          	mov    0x10(%esp),%edx
 8048eba:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 8048ebe:	85 d2                	test   %edx,%edx
 8048ec0:	74 37                	je     8048ef9 <fun7+0x47>
 8048ec2:	8b 1a                	mov    (%edx),%ebx
 8048ec4:	39 cb                	cmp    %ecx,%ebx
 8048ec6:	7e 13                	jle    8048edb <fun7+0x29>
 8048ec8:	83 ec 08             	sub    $0x8,%esp
 8048ecb:	51                   	push   %ecx
 8048ecc:	ff 72 04             	pushl  0x4(%edx)
 8048ecf:	e8 de ff ff ff       	call   8048eb2 <fun7>
 8048ed4:	83 c4 10             	add    $0x10,%esp
 8048ed7:	01 c0                	add    %eax,%eax
 8048ed9:	eb 23                	jmp    8048efe <fun7+0x4c>
 8048edb:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ee0:	39 cb                	cmp    %ecx,%ebx
 8048ee2:	74 1a                	je     8048efe <fun7+0x4c>
 8048ee4:	83 ec 08             	sub    $0x8,%esp
 8048ee7:	51                   	push   %ecx
 8048ee8:	ff 72 08             	pushl  0x8(%edx)
 8048eeb:	e8 c2 ff ff ff       	call   8048eb2 <fun7>
 8048ef0:	83 c4 10             	add    $0x10,%esp
 8048ef3:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048ef7:	eb 05                	jmp    8048efe <fun7+0x4c>
 8048ef9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048efe:	83 c4 08             	add    $0x8,%esp
 8048f01:	5b                   	pop    %ebx
 8048f02:	c3                   	ret    

08048f03 <secret_phase>:
 8048f03:	53                   	push   %ebx
 8048f04:	83 ec 08             	sub    $0x8,%esp
 8048f07:	e8 42 02 00 00       	call   804914e <read_line>
 8048f0c:	83 ec 04             	sub    $0x4,%esp
 8048f0f:	6a 0a                	push   $0xa
 8048f11:	6a 00                	push   $0x0
 8048f13:	50                   	push   %eax
 8048f14:	e8 67 f9 ff ff       	call   8048880 <strtol@plt>
 8048f19:	89 c3                	mov    %eax,%ebx
 8048f1b:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048f1e:	83 c4 10             	add    $0x10,%esp
 8048f21:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048f26:	76 05                	jbe    8048f2d <secret_phase+0x2a>
 8048f28:	e8 c1 01 00 00       	call   80490ee <explode_bomb>
 8048f2d:	83 ec 08             	sub    $0x8,%esp
 8048f30:	53                   	push   %ebx
 8048f31:	68 88 c0 04 08       	push   $0x804c088
 8048f36:	e8 77 ff ff ff       	call   8048eb2 <fun7>
 8048f3b:	83 c4 10             	add    $0x10,%esp
 8048f3e:	83 f8 02             	cmp    $0x2,%eax
 8048f41:	74 05                	je     8048f48 <secret_phase+0x45>
 8048f43:	e8 a6 01 00 00       	call   80490ee <explode_bomb>
 8048f48:	83 ec 0c             	sub    $0xc,%esp
 8048f4b:	68 80 a0 04 08       	push   $0x804a080
 8048f50:	e8 6b f8 ff ff       	call   80487c0 <puts@plt>
 8048f55:	e8 ed 02 00 00       	call   8049247 <phase_defused>
 8048f5a:	83 c4 18             	add    $0x18,%esp
 8048f5d:	5b                   	pop    %ebx
 8048f5e:	c3                   	ret    

08048f5f <sig_handler>:
 8048f5f:	83 ec 18             	sub    $0x18,%esp
 8048f62:	68 a8 a0 04 08       	push   $0x804a0a8
 8048f67:	e8 54 f8 ff ff       	call   80487c0 <puts@plt>
 8048f6c:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048f73:	e8 f8 f7 ff ff       	call   8048770 <sleep@plt>
 8048f78:	83 c4 08             	add    $0x8,%esp
 8048f7b:	68 6a a1 04 08       	push   $0x804a16a
 8048f80:	6a 01                	push   $0x1
 8048f82:	e8 b9 f8 ff ff       	call   8048840 <__printf_chk@plt>
 8048f87:	83 c4 04             	add    $0x4,%esp
 8048f8a:	ff 35 c4 c3 04 08    	pushl  0x804c3c4
 8048f90:	e8 ab f7 ff ff       	call   8048740 <fflush@plt>
 8048f95:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f9c:	e8 cf f7 ff ff       	call   8048770 <sleep@plt>
 8048fa1:	c7 04 24 72 a1 04 08 	movl   $0x804a172,(%esp)
 8048fa8:	e8 13 f8 ff ff       	call   80487c0 <puts@plt>
 8048fad:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048fb4:	e8 27 f8 ff ff       	call   80487e0 <exit@plt>

08048fb9 <invalid_phase>:
 8048fb9:	83 ec 10             	sub    $0x10,%esp
 8048fbc:	ff 74 24 14          	pushl  0x14(%esp)
 8048fc0:	68 7a a1 04 08       	push   $0x804a17a
 8048fc5:	6a 01                	push   $0x1
 8048fc7:	e8 74 f8 ff ff       	call   8048840 <__printf_chk@plt>
 8048fcc:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048fd3:	e8 08 f8 ff ff       	call   80487e0 <exit@plt>

08048fd8 <string_length>:
 8048fd8:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048fdc:	80 3a 00             	cmpb   $0x0,(%edx)
 8048fdf:	74 10                	je     8048ff1 <string_length+0x19>
 8048fe1:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fe6:	83 c0 01             	add    $0x1,%eax
 8048fe9:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048fed:	75 f7                	jne    8048fe6 <string_length+0xe>
 8048fef:	f3 c3                	repz ret 
 8048ff1:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ff6:	c3                   	ret    

08048ff7 <strings_not_equal>:
 8048ff7:	57                   	push   %edi
 8048ff8:	56                   	push   %esi
 8048ff9:	53                   	push   %ebx
 8048ffa:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048ffe:	8b 74 24 14          	mov    0x14(%esp),%esi
 8049002:	53                   	push   %ebx
 8049003:	e8 d0 ff ff ff       	call   8048fd8 <string_length>
 8049008:	89 c7                	mov    %eax,%edi
 804900a:	89 34 24             	mov    %esi,(%esp)
 804900d:	e8 c6 ff ff ff       	call   8048fd8 <string_length>
 8049012:	83 c4 04             	add    $0x4,%esp
 8049015:	ba 01 00 00 00       	mov    $0x1,%edx
 804901a:	39 c7                	cmp    %eax,%edi
 804901c:	75 38                	jne    8049056 <strings_not_equal+0x5f>
 804901e:	0f b6 03             	movzbl (%ebx),%eax
 8049021:	84 c0                	test   %al,%al
 8049023:	74 1e                	je     8049043 <strings_not_equal+0x4c>
 8049025:	3a 06                	cmp    (%esi),%al
 8049027:	74 06                	je     804902f <strings_not_equal+0x38>
 8049029:	eb 1f                	jmp    804904a <strings_not_equal+0x53>
 804902b:	3a 06                	cmp    (%esi),%al
 804902d:	75 22                	jne    8049051 <strings_not_equal+0x5a>
 804902f:	83 c3 01             	add    $0x1,%ebx
 8049032:	83 c6 01             	add    $0x1,%esi
 8049035:	0f b6 03             	movzbl (%ebx),%eax
 8049038:	84 c0                	test   %al,%al
 804903a:	75 ef                	jne    804902b <strings_not_equal+0x34>
 804903c:	ba 00 00 00 00       	mov    $0x0,%edx
 8049041:	eb 13                	jmp    8049056 <strings_not_equal+0x5f>
 8049043:	ba 00 00 00 00       	mov    $0x0,%edx
 8049048:	eb 0c                	jmp    8049056 <strings_not_equal+0x5f>
 804904a:	ba 01 00 00 00       	mov    $0x1,%edx
 804904f:	eb 05                	jmp    8049056 <strings_not_equal+0x5f>
 8049051:	ba 01 00 00 00       	mov    $0x1,%edx
 8049056:	89 d0                	mov    %edx,%eax
 8049058:	5b                   	pop    %ebx
 8049059:	5e                   	pop    %esi
 804905a:	5f                   	pop    %edi
 804905b:	c3                   	ret    

0804905c <initialize_bomb>:
 804905c:	83 ec 14             	sub    $0x14,%esp
 804905f:	68 5f 8f 04 08       	push   $0x8048f5f
 8049064:	6a 02                	push   $0x2
 8049066:	e8 f5 f6 ff ff       	call   8048760 <signal@plt>
 804906b:	83 c4 1c             	add    $0x1c,%esp
 804906e:	c3                   	ret    

0804906f <initialize_bomb_solve>:
 804906f:	f3 c3                	repz ret 

08049071 <blank_line>:
 8049071:	56                   	push   %esi
 8049072:	53                   	push   %ebx
 8049073:	83 ec 04             	sub    $0x4,%esp
 8049076:	8b 74 24 10          	mov    0x10(%esp),%esi
 804907a:	eb 14                	jmp    8049090 <blank_line+0x1f>
 804907c:	e8 2f f8 ff ff       	call   80488b0 <__ctype_b_loc@plt>
 8049081:	83 c6 01             	add    $0x1,%esi
 8049084:	0f be db             	movsbl %bl,%ebx
 8049087:	8b 00                	mov    (%eax),%eax
 8049089:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 804908e:	74 0e                	je     804909e <blank_line+0x2d>
 8049090:	0f b6 1e             	movzbl (%esi),%ebx
 8049093:	84 db                	test   %bl,%bl
 8049095:	75 e5                	jne    804907c <blank_line+0xb>
 8049097:	b8 01 00 00 00       	mov    $0x1,%eax
 804909c:	eb 05                	jmp    80490a3 <blank_line+0x32>
 804909e:	b8 00 00 00 00       	mov    $0x0,%eax
 80490a3:	83 c4 04             	add    $0x4,%esp
 80490a6:	5b                   	pop    %ebx
 80490a7:	5e                   	pop    %esi
 80490a8:	c3                   	ret    

080490a9 <skip>:
 80490a9:	53                   	push   %ebx
 80490aa:	83 ec 08             	sub    $0x8,%esp
 80490ad:	83 ec 04             	sub    $0x4,%esp
 80490b0:	ff 35 d0 c3 04 08    	pushl  0x804c3d0
 80490b6:	6a 50                	push   $0x50
 80490b8:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 80490bd:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80490c0:	c1 e0 04             	shl    $0x4,%eax
 80490c3:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 80490c8:	50                   	push   %eax
 80490c9:	e8 82 f6 ff ff       	call   8048750 <fgets@plt>
 80490ce:	89 c3                	mov    %eax,%ebx
 80490d0:	83 c4 10             	add    $0x10,%esp
 80490d3:	85 c0                	test   %eax,%eax
 80490d5:	74 10                	je     80490e7 <skip+0x3e>
 80490d7:	83 ec 0c             	sub    $0xc,%esp
 80490da:	50                   	push   %eax
 80490db:	e8 91 ff ff ff       	call   8049071 <blank_line>
 80490e0:	83 c4 10             	add    $0x10,%esp
 80490e3:	85 c0                	test   %eax,%eax
 80490e5:	75 c6                	jne    80490ad <skip+0x4>
 80490e7:	89 d8                	mov    %ebx,%eax
 80490e9:	83 c4 08             	add    $0x8,%esp
 80490ec:	5b                   	pop    %ebx
 80490ed:	c3                   	ret    

080490ee <explode_bomb>:
 80490ee:	83 ec 18             	sub    $0x18,%esp
 80490f1:	68 8b a1 04 08       	push   $0x804a18b
 80490f6:	e8 c5 f6 ff ff       	call   80487c0 <puts@plt>
 80490fb:	c7 04 24 94 a1 04 08 	movl   $0x804a194,(%esp)
 8049102:	e8 b9 f6 ff ff       	call   80487c0 <puts@plt>
 8049107:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804910e:	e8 cd f6 ff ff       	call   80487e0 <exit@plt>

08049113 <read_six_numbers>:
 8049113:	83 ec 0c             	sub    $0xc,%esp
 8049116:	8b 44 24 14          	mov    0x14(%esp),%eax
 804911a:	8d 50 14             	lea    0x14(%eax),%edx
 804911d:	52                   	push   %edx
 804911e:	8d 50 10             	lea    0x10(%eax),%edx
 8049121:	52                   	push   %edx
 8049122:	8d 50 0c             	lea    0xc(%eax),%edx
 8049125:	52                   	push   %edx
 8049126:	8d 50 08             	lea    0x8(%eax),%edx
 8049129:	52                   	push   %edx
 804912a:	8d 50 04             	lea    0x4(%eax),%edx
 804912d:	52                   	push   %edx
 804912e:	50                   	push   %eax
 804912f:	68 ab a1 04 08       	push   $0x804a1ab
 8049134:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049138:	e8 d3 f6 ff ff       	call   8048810 <__isoc99_sscanf@plt>
 804913d:	83 c4 20             	add    $0x20,%esp
 8049140:	83 f8 05             	cmp    $0x5,%eax
 8049143:	7f 05                	jg     804914a <read_six_numbers+0x37>
 8049145:	e8 a4 ff ff ff       	call   80490ee <explode_bomb>
 804914a:	83 c4 0c             	add    $0xc,%esp
 804914d:	c3                   	ret    

0804914e <read_line>:
 804914e:	57                   	push   %edi
 804914f:	56                   	push   %esi
 8049150:	53                   	push   %ebx
 8049151:	e8 53 ff ff ff       	call   80490a9 <skip>
 8049156:	85 c0                	test   %eax,%eax
 8049158:	75 70                	jne    80491ca <read_line+0x7c>
 804915a:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 804915f:	39 05 d0 c3 04 08    	cmp    %eax,0x804c3d0
 8049165:	75 19                	jne    8049180 <read_line+0x32>
 8049167:	83 ec 0c             	sub    $0xc,%esp
 804916a:	68 bd a1 04 08       	push   $0x804a1bd
 804916f:	e8 4c f6 ff ff       	call   80487c0 <puts@plt>
 8049174:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804917b:	e8 60 f6 ff ff       	call   80487e0 <exit@plt>
 8049180:	83 ec 0c             	sub    $0xc,%esp
 8049183:	68 db a1 04 08       	push   $0x804a1db
 8049188:	e8 23 f6 ff ff       	call   80487b0 <getenv@plt>
 804918d:	83 c4 10             	add    $0x10,%esp
 8049190:	85 c0                	test   %eax,%eax
 8049192:	74 0a                	je     804919e <read_line+0x50>
 8049194:	83 ec 0c             	sub    $0xc,%esp
 8049197:	6a 00                	push   $0x0
 8049199:	e8 42 f6 ff ff       	call   80487e0 <exit@plt>
 804919e:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 80491a3:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 80491a8:	e8 fc fe ff ff       	call   80490a9 <skip>
 80491ad:	85 c0                	test   %eax,%eax
 80491af:	75 19                	jne    80491ca <read_line+0x7c>
 80491b1:	83 ec 0c             	sub    $0xc,%esp
 80491b4:	68 bd a1 04 08       	push   $0x804a1bd
 80491b9:	e8 02 f6 ff ff       	call   80487c0 <puts@plt>
 80491be:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491c5:	e8 16 f6 ff ff       	call   80487e0 <exit@plt>
 80491ca:	8b 15 cc c3 04 08    	mov    0x804c3cc,%edx
 80491d0:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 80491d3:	c1 e3 04             	shl    $0x4,%ebx
 80491d6:	81 c3 e0 c3 04 08    	add    $0x804c3e0,%ebx
 80491dc:	b8 00 00 00 00       	mov    $0x0,%eax
 80491e1:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80491e6:	89 df                	mov    %ebx,%edi
 80491e8:	f2 ae                	repnz scas %es:(%edi),%al
 80491ea:	f7 d1                	not    %ecx
 80491ec:	83 e9 01             	sub    $0x1,%ecx
 80491ef:	83 f9 4e             	cmp    $0x4e,%ecx
 80491f2:	7e 36                	jle    804922a <read_line+0xdc>
 80491f4:	83 ec 0c             	sub    $0xc,%esp
 80491f7:	68 e6 a1 04 08       	push   $0x804a1e6
 80491fc:	e8 bf f5 ff ff       	call   80487c0 <puts@plt>
 8049201:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 8049206:	8d 50 01             	lea    0x1(%eax),%edx
 8049209:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 804920f:	6b c0 50             	imul   $0x50,%eax,%eax
 8049212:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 8049217:	be 01 a2 04 08       	mov    $0x804a201,%esi
 804921c:	b9 04 00 00 00       	mov    $0x4,%ecx
 8049221:	89 c7                	mov    %eax,%edi
 8049223:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049225:	e8 c4 fe ff ff       	call   80490ee <explode_bomb>
 804922a:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804922d:	c1 e0 04             	shl    $0x4,%eax
 8049230:	c6 84 01 df c3 04 08 	movb   $0x0,0x804c3df(%ecx,%eax,1)
 8049237:	00 
 8049238:	83 c2 01             	add    $0x1,%edx
 804923b:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 8049241:	89 d8                	mov    %ebx,%eax
 8049243:	5b                   	pop    %ebx
 8049244:	5e                   	pop    %esi
 8049245:	5f                   	pop    %edi
 8049246:	c3                   	ret    

08049247 <phase_defused>:
 8049247:	83 ec 6c             	sub    $0x6c,%esp
 804924a:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049250:	89 44 24 5c          	mov    %eax,0x5c(%esp)
 8049254:	31 c0                	xor    %eax,%eax
 8049256:	83 3d cc c3 04 08 06 	cmpl   $0x6,0x804c3cc
 804925d:	75 73                	jne    80492d2 <phase_defused+0x8b>
 804925f:	83 ec 0c             	sub    $0xc,%esp
 8049262:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049266:	50                   	push   %eax
 8049267:	8d 44 24 18          	lea    0x18(%esp),%eax
 804926b:	50                   	push   %eax
 804926c:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049270:	50                   	push   %eax
 8049271:	68 11 a2 04 08       	push   $0x804a211
 8049276:	68 d0 c4 04 08       	push   $0x804c4d0
 804927b:	e8 90 f5 ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8049280:	83 c4 20             	add    $0x20,%esp
 8049283:	83 f8 03             	cmp    $0x3,%eax
 8049286:	75 3a                	jne    80492c2 <phase_defused+0x7b>
 8049288:	83 ec 08             	sub    $0x8,%esp
 804928b:	68 1a a2 04 08       	push   $0x804a21a
 8049290:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049294:	50                   	push   %eax
 8049295:	e8 5d fd ff ff       	call   8048ff7 <strings_not_equal>
 804929a:	83 c4 10             	add    $0x10,%esp
 804929d:	85 c0                	test   %eax,%eax
 804929f:	75 21                	jne    80492c2 <phase_defused+0x7b>
 80492a1:	83 ec 0c             	sub    $0xc,%esp
 80492a4:	68 e0 a0 04 08       	push   $0x804a0e0
 80492a9:	e8 12 f5 ff ff       	call   80487c0 <puts@plt>
 80492ae:	c7 04 24 08 a1 04 08 	movl   $0x804a108,(%esp)
 80492b5:	e8 06 f5 ff ff       	call   80487c0 <puts@plt>
 80492ba:	e8 44 fc ff ff       	call   8048f03 <secret_phase>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	68 40 a1 04 08       	push   $0x804a140
 80492ca:	e8 f1 f4 ff ff       	call   80487c0 <puts@plt>
 80492cf:	83 c4 10             	add    $0x10,%esp
 80492d2:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 80492d6:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80492dd:	74 05                	je     80492e4 <phase_defused+0x9d>
 80492df:	e8 ac f4 ff ff       	call   8048790 <__stack_chk_fail@plt>
 80492e4:	83 c4 6c             	add    $0x6c,%esp
 80492e7:	c3                   	ret    

080492e8 <sigalrm_handler>:
 80492e8:	83 ec 0c             	sub    $0xc,%esp
 80492eb:	6a 00                	push   $0x0
 80492ed:	68 70 a2 04 08       	push   $0x804a270
 80492f2:	6a 01                	push   $0x1
 80492f4:	ff 35 a0 c3 04 08    	pushl  0x804c3a0
 80492fa:	e8 61 f5 ff ff       	call   8048860 <__fprintf_chk@plt>
 80492ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049306:	e8 d5 f4 ff ff       	call   80487e0 <exit@plt>

0804930b <rio_readlineb>:
 804930b:	55                   	push   %ebp
 804930c:	57                   	push   %edi
 804930d:	56                   	push   %esi
 804930e:	53                   	push   %ebx
 804930f:	83 ec 2c             	sub    $0x2c,%esp
 8049312:	89 d7                	mov    %edx,%edi
 8049314:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049318:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 804931f:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8049323:	31 d2                	xor    %edx,%edx
 8049325:	83 f9 01             	cmp    $0x1,%ecx
 8049328:	76 79                	jbe    80493a3 <rio_readlineb+0x98>
 804932a:	89 c3                	mov    %eax,%ebx
 804932c:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8049330:	bd 01 00 00 00       	mov    $0x1,%ebp
 8049335:	8d 73 0c             	lea    0xc(%ebx),%esi
 8049338:	eb 2d                	jmp    8049367 <rio_readlineb+0x5c>
 804933a:	83 ec 04             	sub    $0x4,%esp
 804933d:	68 00 20 00 00       	push   $0x2000
 8049342:	56                   	push   %esi
 8049343:	ff 33                	pushl  (%ebx)
 8049345:	e8 e6 f3 ff ff       	call   8048730 <read@plt>
 804934a:	89 43 04             	mov    %eax,0x4(%ebx)
 804934d:	83 c4 10             	add    $0x10,%esp
 8049350:	85 c0                	test   %eax,%eax
 8049352:	79 0c                	jns    8049360 <rio_readlineb+0x55>
 8049354:	e8 d7 f4 ff ff       	call   8048830 <__errno_location@plt>
 8049359:	83 38 04             	cmpl   $0x4,(%eax)
 804935c:	74 09                	je     8049367 <rio_readlineb+0x5c>
 804935e:	eb 62                	jmp    80493c2 <rio_readlineb+0xb7>
 8049360:	85 c0                	test   %eax,%eax
 8049362:	74 63                	je     80493c7 <rio_readlineb+0xbc>
 8049364:	89 73 08             	mov    %esi,0x8(%ebx)
 8049367:	8b 43 04             	mov    0x4(%ebx),%eax
 804936a:	85 c0                	test   %eax,%eax
 804936c:	7e cc                	jle    804933a <rio_readlineb+0x2f>
 804936e:	8b 4b 08             	mov    0x8(%ebx),%ecx
 8049371:	0f b6 11             	movzbl (%ecx),%edx
 8049374:	88 54 24 1b          	mov    %dl,0x1b(%esp)
 8049378:	83 c1 01             	add    $0x1,%ecx
 804937b:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804937e:	83 e8 01             	sub    $0x1,%eax
 8049381:	89 43 04             	mov    %eax,0x4(%ebx)
 8049384:	83 c7 01             	add    $0x1,%edi
 8049387:	88 57 ff             	mov    %dl,-0x1(%edi)
 804938a:	80 fa 0a             	cmp    $0xa,%dl
 804938d:	75 09                	jne    8049398 <rio_readlineb+0x8d>
 804938f:	eb 1d                	jmp    80493ae <rio_readlineb+0xa3>
 8049391:	83 fd 01             	cmp    $0x1,%ebp
 8049394:	75 18                	jne    80493ae <rio_readlineb+0xa3>
 8049396:	eb 1b                	jmp    80493b3 <rio_readlineb+0xa8>
 8049398:	83 c5 01             	add    $0x1,%ebp
 804939b:	3b 6c 24 08          	cmp    0x8(%esp),%ebp
 804939f:	74 09                	je     80493aa <rio_readlineb+0x9f>
 80493a1:	eb c4                	jmp    8049367 <rio_readlineb+0x5c>
 80493a3:	bd 01 00 00 00       	mov    $0x1,%ebp
 80493a8:	eb 04                	jmp    80493ae <rio_readlineb+0xa3>
 80493aa:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
 80493ae:	c6 07 00             	movb   $0x0,(%edi)
 80493b1:	89 e8                	mov    %ebp,%eax
 80493b3:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 80493b7:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80493be:	74 17                	je     80493d7 <rio_readlineb+0xcc>
 80493c0:	eb 10                	jmp    80493d2 <rio_readlineb+0xc7>
 80493c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80493c7:	85 c0                	test   %eax,%eax
 80493c9:	74 c6                	je     8049391 <rio_readlineb+0x86>
 80493cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80493d0:	eb e1                	jmp    80493b3 <rio_readlineb+0xa8>
 80493d2:	e8 b9 f3 ff ff       	call   8048790 <__stack_chk_fail@plt>
 80493d7:	83 c4 2c             	add    $0x2c,%esp
 80493da:	5b                   	pop    %ebx
 80493db:	5e                   	pop    %esi
 80493dc:	5f                   	pop    %edi
 80493dd:	5d                   	pop    %ebp
 80493de:	c3                   	ret    

080493df <submitr>:
 80493df:	55                   	push   %ebp
 80493e0:	57                   	push   %edi
 80493e1:	56                   	push   %esi
 80493e2:	53                   	push   %ebx
 80493e3:	81 ec 60 a0 00 00    	sub    $0xa060,%esp
 80493e9:	8b b4 24 74 a0 00 00 	mov    0xa074(%esp),%esi
 80493f0:	8b 84 24 7c a0 00 00 	mov    0xa07c(%esp),%eax
 80493f7:	89 44 24 10          	mov    %eax,0x10(%esp)
 80493fb:	8b 84 24 80 a0 00 00 	mov    0xa080(%esp),%eax
 8049402:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049406:	8b 84 24 84 a0 00 00 	mov    0xa084(%esp),%eax
 804940d:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049411:	8b 9c 24 88 a0 00 00 	mov    0xa088(%esp),%ebx
 8049418:	8b 84 24 8c a0 00 00 	mov    0xa08c(%esp),%eax
 804941f:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049423:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049429:	89 84 24 50 a0 00 00 	mov    %eax,0xa050(%esp)
 8049430:	31 c0                	xor    %eax,%eax
 8049432:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 8049439:	00 
 804943a:	6a 00                	push   $0x0
 804943c:	6a 01                	push   $0x1
 804943e:	6a 02                	push   $0x2
 8049440:	e8 0b f4 ff ff       	call   8048850 <socket@plt>
 8049445:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049449:	83 c4 10             	add    $0x10,%esp
 804944c:	85 c0                	test   %eax,%eax
 804944e:	79 52                	jns    80494a2 <submitr+0xc3>
 8049450:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049454:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804945a:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049461:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049468:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804946f:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049476:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804947d:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049484:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804948b:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049492:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049498:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804949d:	e9 3f 06 00 00       	jmp    8049ae1 <submitr+0x702>
 80494a2:	83 ec 0c             	sub    $0xc,%esp
 80494a5:	56                   	push   %esi
 80494a6:	e8 c5 f3 ff ff       	call   8048870 <gethostbyname@plt>
 80494ab:	83 c4 10             	add    $0x10,%esp
 80494ae:	85 c0                	test   %eax,%eax
 80494b0:	75 73                	jne    8049525 <submitr+0x146>
 80494b2:	8b 44 24 18          	mov    0x18(%esp),%eax
 80494b6:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80494bc:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 80494c3:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 80494ca:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 80494d1:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80494d8:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80494df:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 80494e6:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 80494ed:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80494f4:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 80494fb:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 8049502:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 8049508:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 804950c:	83 ec 0c             	sub    $0xc,%esp
 804950f:	ff 74 24 14          	pushl  0x14(%esp)
 8049513:	e8 88 f3 ff ff       	call   80488a0 <close@plt>
 8049518:	83 c4 10             	add    $0x10,%esp
 804951b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049520:	e9 bc 05 00 00       	jmp    8049ae1 <submitr+0x702>
 8049525:	8d 74 24 30          	lea    0x30(%esp),%esi
 8049529:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 8049530:	00 
 8049531:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 8049538:	00 
 8049539:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 8049540:	00 
 8049541:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 8049548:	00 
 8049549:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%esp)
 8049550:	6a 0c                	push   $0xc
 8049552:	ff 70 0c             	pushl  0xc(%eax)
 8049555:	8b 40 10             	mov    0x10(%eax),%eax
 8049558:	ff 30                	pushl  (%eax)
 804955a:	8d 44 24 40          	lea    0x40(%esp),%eax
 804955e:	50                   	push   %eax
 804955f:	e8 6c f2 ff ff       	call   80487d0 <__memmove_chk@plt>
 8049564:	0f b7 84 24 84 a0 00 	movzwl 0xa084(%esp),%eax
 804956b:	00 
 804956c:	66 c1 c8 08          	ror    $0x8,%ax
 8049570:	66 89 44 24 42       	mov    %ax,0x42(%esp)
 8049575:	83 c4 0c             	add    $0xc,%esp
 8049578:	6a 10                	push   $0x10
 804957a:	56                   	push   %esi
 804957b:	ff 74 24 14          	pushl  0x14(%esp)
 804957f:	e8 0c f3 ff ff       	call   8048890 <connect@plt>
 8049584:	83 c4 10             	add    $0x10,%esp
 8049587:	85 c0                	test   %eax,%eax
 8049589:	79 65                	jns    80495f0 <submitr+0x211>
 804958b:	8b 44 24 18          	mov    0x18(%esp),%eax
 804958f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049595:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
 804959c:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
 80495a3:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
 80495aa:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
 80495b1:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
 80495b8:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
 80495bf:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
 80495c6:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80495cd:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
 80495d3:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 80495d7:	83 ec 0c             	sub    $0xc,%esp
 80495da:	ff 74 24 14          	pushl  0x14(%esp)
 80495de:	e8 bd f2 ff ff       	call   80488a0 <close@plt>
 80495e3:	83 c4 10             	add    $0x10,%esp
 80495e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495eb:	e9 f1 04 00 00       	jmp    8049ae1 <submitr+0x702>
 80495f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 80495f5:	b8 00 00 00 00       	mov    $0x0,%eax
 80495fa:	89 f1                	mov    %esi,%ecx
 80495fc:	89 df                	mov    %ebx,%edi
 80495fe:	f2 ae                	repnz scas %es:(%edi),%al
 8049600:	f7 d1                	not    %ecx
 8049602:	89 cd                	mov    %ecx,%ebp
 8049604:	89 f1                	mov    %esi,%ecx
 8049606:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 804960a:	f2 ae                	repnz scas %es:(%edi),%al
 804960c:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 8049610:	89 f1                	mov    %esi,%ecx
 8049612:	8b 7c 24 10          	mov    0x10(%esp),%edi
 8049616:	f2 ae                	repnz scas %es:(%edi),%al
 8049618:	89 ca                	mov    %ecx,%edx
 804961a:	f7 d2                	not    %edx
 804961c:	89 f1                	mov    %esi,%ecx
 804961e:	8b 7c 24 14          	mov    0x14(%esp),%edi
 8049622:	f2 ae                	repnz scas %es:(%edi),%al
 8049624:	2b 54 24 1c          	sub    0x1c(%esp),%edx
 8049628:	29 ca                	sub    %ecx,%edx
 804962a:	8d 44 6d fd          	lea    -0x3(%ebp,%ebp,2),%eax
 804962e:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 8049632:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049637:	76 7e                	jbe    80496b7 <submitr+0x2d8>
 8049639:	8b 44 24 18          	mov    0x18(%esp),%eax
 804963d:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049643:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804964a:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049651:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049658:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804965f:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049666:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804966d:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049674:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804967b:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049682:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049689:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049690:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049697:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804969e:	83 ec 0c             	sub    $0xc,%esp
 80496a1:	ff 74 24 14          	pushl  0x14(%esp)
 80496a5:	e8 f6 f1 ff ff       	call   80488a0 <close@plt>
 80496aa:	83 c4 10             	add    $0x10,%esp
 80496ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496b2:	e9 2a 04 00 00       	jmp    8049ae1 <submitr+0x702>
 80496b7:	8d 94 24 4c 40 00 00 	lea    0x404c(%esp),%edx
 80496be:	b9 00 08 00 00       	mov    $0x800,%ecx
 80496c3:	b8 00 00 00 00       	mov    $0x0,%eax
 80496c8:	89 d7                	mov    %edx,%edi
 80496ca:	f3 ab                	rep stos %eax,%es:(%edi)
 80496cc:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80496d1:	89 df                	mov    %ebx,%edi
 80496d3:	f2 ae                	repnz scas %es:(%edi),%al
 80496d5:	f7 d1                	not    %ecx
 80496d7:	89 ce                	mov    %ecx,%esi
 80496d9:	83 ee 01             	sub    $0x1,%esi
 80496dc:	0f 84 5c 04 00 00    	je     8049b3e <submitr+0x75f>
 80496e2:	89 d5                	mov    %edx,%ebp
 80496e4:	bf d9 ff 00 00       	mov    $0xffd9,%edi
 80496e9:	0f b6 13             	movzbl (%ebx),%edx
 80496ec:	8d 4a d6             	lea    -0x2a(%edx),%ecx
 80496ef:	b8 01 00 00 00       	mov    $0x1,%eax
 80496f4:	80 f9 0f             	cmp    $0xf,%cl
 80496f7:	77 0a                	ja     8049703 <submitr+0x324>
 80496f9:	89 f8                	mov    %edi,%eax
 80496fb:	d3 e8                	shr    %cl,%eax
 80496fd:	83 f0 01             	xor    $0x1,%eax
 8049700:	83 e0 01             	and    $0x1,%eax
 8049703:	80 fa 5f             	cmp    $0x5f,%dl
 8049706:	0f 94 c1             	sete   %cl
 8049709:	38 c1                	cmp    %al,%cl
 804970b:	73 0c                	jae    8049719 <submitr+0x33a>
 804970d:	89 d0                	mov    %edx,%eax
 804970f:	83 e0 df             	and    $0xffffffdf,%eax
 8049712:	83 e8 41             	sub    $0x41,%eax
 8049715:	3c 19                	cmp    $0x19,%al
 8049717:	77 08                	ja     8049721 <submitr+0x342>
 8049719:	88 55 00             	mov    %dl,0x0(%ebp)
 804971c:	8d 6d 01             	lea    0x1(%ebp),%ebp
 804971f:	eb 62                	jmp    8049783 <submitr+0x3a4>
 8049721:	80 fa 20             	cmp    $0x20,%dl
 8049724:	75 09                	jne    804972f <submitr+0x350>
 8049726:	c6 45 00 2b          	movb   $0x2b,0x0(%ebp)
 804972a:	8d 6d 01             	lea    0x1(%ebp),%ebp
 804972d:	eb 54                	jmp    8049783 <submitr+0x3a4>
 804972f:	8d 42 e0             	lea    -0x20(%edx),%eax
 8049732:	3c 5f                	cmp    $0x5f,%al
 8049734:	76 09                	jbe    804973f <submitr+0x360>
 8049736:	80 fa 09             	cmp    $0x9,%dl
 8049739:	0f 85 bb 03 00 00    	jne    8049afa <submitr+0x71b>
 804973f:	83 ec 0c             	sub    $0xc,%esp
 8049742:	0f b6 d2             	movzbl %dl,%edx
 8049745:	52                   	push   %edx
 8049746:	68 7c a3 04 08       	push   $0x804a37c
 804974b:	6a 08                	push   $0x8
 804974d:	6a 01                	push   $0x1
 804974f:	8d 84 24 68 80 00 00 	lea    0x8068(%esp),%eax
 8049756:	50                   	push   %eax
 8049757:	e8 64 f1 ff ff       	call   80488c0 <__sprintf_chk@plt>
 804975c:	0f b6 84 24 6c 80 00 	movzbl 0x806c(%esp),%eax
 8049763:	00 
 8049764:	88 45 00             	mov    %al,0x0(%ebp)
 8049767:	0f b6 84 24 6d 80 00 	movzbl 0x806d(%esp),%eax
 804976e:	00 
 804976f:	88 45 01             	mov    %al,0x1(%ebp)
 8049772:	0f b6 84 24 6e 80 00 	movzbl 0x806e(%esp),%eax
 8049779:	00 
 804977a:	88 45 02             	mov    %al,0x2(%ebp)
 804977d:	83 c4 20             	add    $0x20,%esp
 8049780:	8d 6d 03             	lea    0x3(%ebp),%ebp
 8049783:	83 c3 01             	add    $0x1,%ebx
 8049786:	83 ee 01             	sub    $0x1,%esi
 8049789:	0f 85 5a ff ff ff    	jne    80496e9 <submitr+0x30a>
 804978f:	e9 aa 03 00 00       	jmp    8049b3e <submitr+0x75f>
 8049794:	83 ec 04             	sub    $0x4,%esp
 8049797:	53                   	push   %ebx
 8049798:	56                   	push   %esi
 8049799:	55                   	push   %ebp
 804979a:	e8 61 f0 ff ff       	call   8048800 <write@plt>
 804979f:	83 c4 10             	add    $0x10,%esp
 80497a2:	85 c0                	test   %eax,%eax
 80497a4:	7f 0f                	jg     80497b5 <submitr+0x3d6>
 80497a6:	e8 85 f0 ff ff       	call   8048830 <__errno_location@plt>
 80497ab:	83 38 04             	cmpl   $0x4,(%eax)
 80497ae:	75 0f                	jne    80497bf <submitr+0x3e0>
 80497b0:	b8 00 00 00 00       	mov    $0x0,%eax
 80497b5:	01 c6                	add    %eax,%esi
 80497b7:	29 c3                	sub    %eax,%ebx
 80497b9:	75 d9                	jne    8049794 <submitr+0x3b5>
 80497bb:	85 ff                	test   %edi,%edi
 80497bd:	79 69                	jns    8049828 <submitr+0x449>
 80497bf:	8b 44 24 18          	mov    0x18(%esp),%eax
 80497c3:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80497c9:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80497d0:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80497d7:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80497de:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80497e5:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80497ec:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 80497f3:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 80497fa:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049801:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 8049808:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 804980f:	83 ec 0c             	sub    $0xc,%esp
 8049812:	ff 74 24 14          	pushl  0x14(%esp)
 8049816:	e8 85 f0 ff ff       	call   80488a0 <close@plt>
 804981b:	83 c4 10             	add    $0x10,%esp
 804981e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049823:	e9 b9 02 00 00       	jmp    8049ae1 <submitr+0x702>
 8049828:	8b 44 24 08          	mov    0x8(%esp),%eax
 804982c:	89 44 24 40          	mov    %eax,0x40(%esp)
 8049830:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 8049837:	00 
 8049838:	8d 44 24 4c          	lea    0x4c(%esp),%eax
 804983c:	89 44 24 48          	mov    %eax,0x48(%esp)
 8049840:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049845:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 804984c:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049850:	e8 b6 fa ff ff       	call   804930b <rio_readlineb>
 8049855:	85 c0                	test   %eax,%eax
 8049857:	7f 7d                	jg     80498d6 <submitr+0x4f7>
 8049859:	8b 44 24 18          	mov    0x18(%esp),%eax
 804985d:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049863:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804986a:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049871:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049878:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804987f:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049886:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804988d:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049894:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 804989b:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 80498a2:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 80498a9:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 80498b0:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 80498b7:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 80498bd:	83 ec 0c             	sub    $0xc,%esp
 80498c0:	ff 74 24 14          	pushl  0x14(%esp)
 80498c4:	e8 d7 ef ff ff       	call   80488a0 <close@plt>
 80498c9:	83 c4 10             	add    $0x10,%esp
 80498cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498d1:	e9 0b 02 00 00       	jmp    8049ae1 <submitr+0x702>
 80498d6:	83 ec 0c             	sub    $0xc,%esp
 80498d9:	8d 84 24 58 80 00 00 	lea    0x8058(%esp),%eax
 80498e0:	50                   	push   %eax
 80498e1:	8d 44 24 3c          	lea    0x3c(%esp),%eax
 80498e5:	50                   	push   %eax
 80498e6:	8d 84 24 60 60 00 00 	lea    0x6060(%esp),%eax
 80498ed:	50                   	push   %eax
 80498ee:	68 83 a3 04 08       	push   $0x804a383
 80498f3:	8d 84 24 68 20 00 00 	lea    0x2068(%esp),%eax
 80498fa:	50                   	push   %eax
 80498fb:	e8 10 ef ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8049900:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 8049904:	83 c4 20             	add    $0x20,%esp
 8049907:	3d c8 00 00 00       	cmp    $0xc8,%eax
 804990c:	0f 84 c4 00 00 00    	je     80499d6 <submitr+0x5f7>
 8049912:	83 ec 08             	sub    $0x8,%esp
 8049915:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
 804991c:	52                   	push   %edx
 804991d:	50                   	push   %eax
 804991e:	68 94 a2 04 08       	push   $0x804a294
 8049923:	6a ff                	push   $0xffffffff
 8049925:	6a 01                	push   $0x1
 8049927:	ff 74 24 34          	pushl  0x34(%esp)
 804992b:	e8 90 ef ff ff       	call   80488c0 <__sprintf_chk@plt>
 8049930:	83 c4 14             	add    $0x14,%esp
 8049933:	ff 74 24 14          	pushl  0x14(%esp)
 8049937:	e8 64 ef ff ff       	call   80488a0 <close@plt>
 804993c:	83 c4 10             	add    $0x10,%esp
 804993f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049944:	e9 98 01 00 00       	jmp    8049ae1 <submitr+0x702>
 8049949:	b9 00 20 00 00       	mov    $0x2000,%ecx
 804994e:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 8049955:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049959:	e8 ad f9 ff ff       	call   804930b <rio_readlineb>
 804995e:	85 c0                	test   %eax,%eax
 8049960:	7f 74                	jg     80499d6 <submitr+0x5f7>
 8049962:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049966:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804996c:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049973:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804997a:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049981:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049988:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804998f:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049996:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 804999d:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 80499a4:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 80499ab:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 80499b2:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 80499b9:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 80499bd:	83 ec 0c             	sub    $0xc,%esp
 80499c0:	ff 74 24 14          	pushl  0x14(%esp)
 80499c4:	e8 d7 ee ff ff       	call   80488a0 <close@plt>
 80499c9:	83 c4 10             	add    $0x10,%esp
 80499cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499d1:	e9 0b 01 00 00       	jmp    8049ae1 <submitr+0x702>
 80499d6:	80 bc 24 4c 20 00 00 	cmpb   $0xd,0x204c(%esp)
 80499dd:	0d 
 80499de:	0f 85 65 ff ff ff    	jne    8049949 <submitr+0x56a>
 80499e4:	80 bc 24 4d 20 00 00 	cmpb   $0xa,0x204d(%esp)
 80499eb:	0a 
 80499ec:	0f 85 57 ff ff ff    	jne    8049949 <submitr+0x56a>
 80499f2:	80 bc 24 4e 20 00 00 	cmpb   $0x0,0x204e(%esp)
 80499f9:	00 
 80499fa:	0f 85 49 ff ff ff    	jne    8049949 <submitr+0x56a>
 8049a00:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049a05:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 8049a0c:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049a10:	e8 f6 f8 ff ff       	call   804930b <rio_readlineb>
 8049a15:	85 c0                	test   %eax,%eax
 8049a17:	7f 7b                	jg     8049a94 <submitr+0x6b5>
 8049a19:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049a1d:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049a23:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049a2a:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049a31:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049a38:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049a3f:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049a46:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049a4d:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049a54:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049a5b:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049a62:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049a69:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049a70:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049a77:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049a7e:	83 ec 0c             	sub    $0xc,%esp
 8049a81:	ff 74 24 14          	pushl  0x14(%esp)
 8049a85:	e8 16 ee ff ff       	call   80488a0 <close@plt>
 8049a8a:	83 c4 10             	add    $0x10,%esp
 8049a8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a92:	eb 4d                	jmp    8049ae1 <submitr+0x702>
 8049a94:	83 ec 08             	sub    $0x8,%esp
 8049a97:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049a9e:	50                   	push   %eax
 8049a9f:	8b 7c 24 24          	mov    0x24(%esp),%edi
 8049aa3:	57                   	push   %edi
 8049aa4:	e8 f7 ec ff ff       	call   80487a0 <strcpy@plt>
 8049aa9:	83 c4 04             	add    $0x4,%esp
 8049aac:	ff 74 24 14          	pushl  0x14(%esp)
 8049ab0:	e8 eb ed ff ff       	call   80488a0 <close@plt>
 8049ab5:	0f b6 17             	movzbl (%edi),%edx
 8049ab8:	b8 4f 00 00 00       	mov    $0x4f,%eax
 8049abd:	83 c4 10             	add    $0x10,%esp
 8049ac0:	29 d0                	sub    %edx,%eax
 8049ac2:	75 13                	jne    8049ad7 <submitr+0x6f8>
 8049ac4:	0f b6 57 01          	movzbl 0x1(%edi),%edx
 8049ac8:	b8 4b 00 00 00       	mov    $0x4b,%eax
 8049acd:	29 d0                	sub    %edx,%eax
 8049acf:	75 06                	jne    8049ad7 <submitr+0x6f8>
 8049ad1:	0f b6 47 02          	movzbl 0x2(%edi),%eax
 8049ad5:	f7 d8                	neg    %eax
 8049ad7:	85 c0                	test   %eax,%eax
 8049ad9:	0f 95 c0             	setne  %al
 8049adc:	0f b6 c0             	movzbl %al,%eax
 8049adf:	f7 d8                	neg    %eax
 8049ae1:	8b bc 24 4c a0 00 00 	mov    0xa04c(%esp),%edi
 8049ae8:	65 33 3d 14 00 00 00 	xor    %gs:0x14,%edi
 8049aef:	0f 84 a9 00 00 00    	je     8049b9e <submitr+0x7bf>
 8049af5:	e9 9f 00 00 00       	jmp    8049b99 <submitr+0x7ba>
 8049afa:	a1 c4 a2 04 08       	mov    0x804a2c4,%eax
 8049aff:	8b 7c 24 18          	mov    0x18(%esp),%edi
 8049b03:	89 07                	mov    %eax,(%edi)
 8049b05:	a1 03 a3 04 08       	mov    0x804a303,%eax
 8049b0a:	89 47 3f             	mov    %eax,0x3f(%edi)
 8049b0d:	89 f8                	mov    %edi,%eax
 8049b0f:	83 c7 04             	add    $0x4,%edi
 8049b12:	83 e7 fc             	and    $0xfffffffc,%edi
 8049b15:	29 f8                	sub    %edi,%eax
 8049b17:	be c4 a2 04 08       	mov    $0x804a2c4,%esi
 8049b1c:	29 c6                	sub    %eax,%esi
 8049b1e:	83 c0 43             	add    $0x43,%eax
 8049b21:	c1 e8 02             	shr    $0x2,%eax
 8049b24:	89 c1                	mov    %eax,%ecx
 8049b26:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049b28:	83 ec 0c             	sub    $0xc,%esp
 8049b2b:	ff 74 24 14          	pushl  0x14(%esp)
 8049b2f:	e8 6c ed ff ff       	call   80488a0 <close@plt>
 8049b34:	83 c4 10             	add    $0x10,%esp
 8049b37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b3c:	eb a3                	jmp    8049ae1 <submitr+0x702>
 8049b3e:	8d 84 24 4c 40 00 00 	lea    0x404c(%esp),%eax
 8049b45:	50                   	push   %eax
 8049b46:	ff 74 24 18          	pushl  0x18(%esp)
 8049b4a:	ff 74 24 18          	pushl  0x18(%esp)
 8049b4e:	ff 74 24 18          	pushl  0x18(%esp)
 8049b52:	68 08 a3 04 08       	push   $0x804a308
 8049b57:	68 00 20 00 00       	push   $0x2000
 8049b5c:	6a 01                	push   $0x1
 8049b5e:	8d bc 24 68 20 00 00 	lea    0x2068(%esp),%edi
 8049b65:	57                   	push   %edi
 8049b66:	e8 55 ed ff ff       	call   80488c0 <__sprintf_chk@plt>
 8049b6b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b70:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049b75:	f2 ae                	repnz scas %es:(%edi),%al
 8049b77:	f7 d1                	not    %ecx
 8049b79:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049b7c:	83 c4 20             	add    $0x20,%esp
 8049b7f:	89 fb                	mov    %edi,%ebx
 8049b81:	8d b4 24 4c 20 00 00 	lea    0x204c(%esp),%esi
 8049b88:	8b 6c 24 08          	mov    0x8(%esp),%ebp
 8049b8c:	85 ff                	test   %edi,%edi
 8049b8e:	0f 85 00 fc ff ff    	jne    8049794 <submitr+0x3b5>
 8049b94:	e9 8f fc ff ff       	jmp    8049828 <submitr+0x449>
 8049b99:	e8 f2 eb ff ff       	call   8048790 <__stack_chk_fail@plt>
 8049b9e:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049ba4:	5b                   	pop    %ebx
 8049ba5:	5e                   	pop    %esi
 8049ba6:	5f                   	pop    %edi
 8049ba7:	5d                   	pop    %ebp
 8049ba8:	c3                   	ret    

08049ba9 <init_timeout>:
 8049ba9:	53                   	push   %ebx
 8049baa:	83 ec 08             	sub    $0x8,%esp
 8049bad:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8049bb1:	85 db                	test   %ebx,%ebx
 8049bb3:	74 24                	je     8049bd9 <init_timeout+0x30>
 8049bb5:	83 ec 08             	sub    $0x8,%esp
 8049bb8:	68 e8 92 04 08       	push   $0x80492e8
 8049bbd:	6a 0e                	push   $0xe
 8049bbf:	e8 9c eb ff ff       	call   8048760 <signal@plt>
 8049bc4:	85 db                	test   %ebx,%ebx
 8049bc6:	b8 00 00 00 00       	mov    $0x0,%eax
 8049bcb:	0f 48 d8             	cmovs  %eax,%ebx
 8049bce:	89 1c 24             	mov    %ebx,(%esp)
 8049bd1:	e8 aa eb ff ff       	call   8048780 <alarm@plt>
 8049bd6:	83 c4 10             	add    $0x10,%esp
 8049bd9:	83 c4 08             	add    $0x8,%esp
 8049bdc:	5b                   	pop    %ebx
 8049bdd:	c3                   	ret    

08049bde <init_driver>:
 8049bde:	57                   	push   %edi
 8049bdf:	56                   	push   %esi
 8049be0:	53                   	push   %ebx
 8049be1:	83 ec 28             	sub    $0x28,%esp
 8049be4:	8b 74 24 38          	mov    0x38(%esp),%esi
 8049be8:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049bee:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049bf2:	31 c0                	xor    %eax,%eax
 8049bf4:	6a 01                	push   $0x1
 8049bf6:	6a 0d                	push   $0xd
 8049bf8:	e8 63 eb ff ff       	call   8048760 <signal@plt>
 8049bfd:	83 c4 08             	add    $0x8,%esp
 8049c00:	6a 01                	push   $0x1
 8049c02:	6a 1d                	push   $0x1d
 8049c04:	e8 57 eb ff ff       	call   8048760 <signal@plt>
 8049c09:	83 c4 08             	add    $0x8,%esp
 8049c0c:	6a 01                	push   $0x1
 8049c0e:	6a 1d                	push   $0x1d
 8049c10:	e8 4b eb ff ff       	call   8048760 <signal@plt>
 8049c15:	83 c4 0c             	add    $0xc,%esp
 8049c18:	6a 00                	push   $0x0
 8049c1a:	6a 01                	push   $0x1
 8049c1c:	6a 02                	push   $0x2
 8049c1e:	e8 2d ec ff ff       	call   8048850 <socket@plt>
 8049c23:	83 c4 10             	add    $0x10,%esp
 8049c26:	85 c0                	test   %eax,%eax
 8049c28:	79 4e                	jns    8049c78 <init_driver+0x9a>
 8049c2a:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049c30:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049c37:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049c3e:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049c45:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049c4c:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049c53:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049c5a:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049c61:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049c68:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049c6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c73:	e9 1f 01 00 00       	jmp    8049d97 <init_driver+0x1b9>
 8049c78:	89 c3                	mov    %eax,%ebx
 8049c7a:	83 ec 0c             	sub    $0xc,%esp
 8049c7d:	68 94 a3 04 08       	push   $0x804a394
 8049c82:	e8 e9 eb ff ff       	call   8048870 <gethostbyname@plt>
 8049c87:	83 c4 10             	add    $0x10,%esp
 8049c8a:	85 c0                	test   %eax,%eax
 8049c8c:	75 6c                	jne    8049cfa <init_driver+0x11c>
 8049c8e:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049c94:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049c9b:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049ca2:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049ca9:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049cb0:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049cb7:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049cbe:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049cc5:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049ccc:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049cd3:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049cda:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049ce0:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049ce4:	83 ec 0c             	sub    $0xc,%esp
 8049ce7:	53                   	push   %ebx
 8049ce8:	e8 b3 eb ff ff       	call   80488a0 <close@plt>
 8049ced:	83 c4 10             	add    $0x10,%esp
 8049cf0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049cf5:	e9 9d 00 00 00       	jmp    8049d97 <init_driver+0x1b9>
 8049cfa:	8d 7c 24 0c          	lea    0xc(%esp),%edi
 8049cfe:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049d05:	00 
 8049d06:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8049d0d:	00 
 8049d0e:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8049d15:	00 
 8049d16:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8049d1d:	00 
 8049d1e:	66 c7 44 24 0c 02 00 	movw   $0x2,0xc(%esp)
 8049d25:	6a 0c                	push   $0xc
 8049d27:	ff 70 0c             	pushl  0xc(%eax)
 8049d2a:	8b 40 10             	mov    0x10(%eax),%eax
 8049d2d:	ff 30                	pushl  (%eax)
 8049d2f:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8049d33:	50                   	push   %eax
 8049d34:	e8 97 ea ff ff       	call   80487d0 <__memmove_chk@plt>
 8049d39:	66 c7 44 24 1e 3b 6e 	movw   $0x6e3b,0x1e(%esp)
 8049d40:	83 c4 0c             	add    $0xc,%esp
 8049d43:	6a 10                	push   $0x10
 8049d45:	57                   	push   %edi
 8049d46:	53                   	push   %ebx
 8049d47:	e8 44 eb ff ff       	call   8048890 <connect@plt>
 8049d4c:	83 c4 10             	add    $0x10,%esp
 8049d4f:	85 c0                	test   %eax,%eax
 8049d51:	79 2a                	jns    8049d7d <init_driver+0x19f>
 8049d53:	83 ec 0c             	sub    $0xc,%esp
 8049d56:	68 94 a3 04 08       	push   $0x804a394
 8049d5b:	68 54 a3 04 08       	push   $0x804a354
 8049d60:	6a ff                	push   $0xffffffff
 8049d62:	6a 01                	push   $0x1
 8049d64:	56                   	push   %esi
 8049d65:	e8 56 eb ff ff       	call   80488c0 <__sprintf_chk@plt>
 8049d6a:	83 c4 14             	add    $0x14,%esp
 8049d6d:	53                   	push   %ebx
 8049d6e:	e8 2d eb ff ff       	call   80488a0 <close@plt>
 8049d73:	83 c4 10             	add    $0x10,%esp
 8049d76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d7b:	eb 1a                	jmp    8049d97 <init_driver+0x1b9>
 8049d7d:	83 ec 0c             	sub    $0xc,%esp
 8049d80:	53                   	push   %ebx
 8049d81:	e8 1a eb ff ff       	call   80488a0 <close@plt>
 8049d86:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049d8b:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049d8f:	83 c4 10             	add    $0x10,%esp
 8049d92:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d97:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049d9b:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049da2:	74 05                	je     8049da9 <init_driver+0x1cb>
 8049da4:	e8 e7 e9 ff ff       	call   8048790 <__stack_chk_fail@plt>
 8049da9:	83 c4 20             	add    $0x20,%esp
 8049dac:	5b                   	pop    %ebx
 8049dad:	5e                   	pop    %esi
 8049dae:	5f                   	pop    %edi
 8049daf:	c3                   	ret    

08049db0 <driver_post>:
 8049db0:	53                   	push   %ebx
 8049db1:	83 ec 08             	sub    $0x8,%esp
 8049db4:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049db8:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
 8049dbc:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8049dc1:	74 26                	je     8049de9 <driver_post+0x39>
 8049dc3:	83 ec 04             	sub    $0x4,%esp
 8049dc6:	ff 74 24 18          	pushl  0x18(%esp)
 8049dca:	68 a2 a3 04 08       	push   $0x804a3a2
 8049dcf:	6a 01                	push   $0x1
 8049dd1:	e8 6a ea ff ff       	call   8048840 <__printf_chk@plt>
 8049dd6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049ddb:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049ddf:	83 c4 10             	add    $0x10,%esp
 8049de2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049de7:	eb 3e                	jmp    8049e27 <driver_post+0x77>
 8049de9:	85 c0                	test   %eax,%eax
 8049deb:	74 2c                	je     8049e19 <driver_post+0x69>
 8049ded:	80 38 00             	cmpb   $0x0,(%eax)
 8049df0:	74 27                	je     8049e19 <driver_post+0x69>
 8049df2:	83 ec 04             	sub    $0x4,%esp
 8049df5:	53                   	push   %ebx
 8049df6:	ff 74 24 1c          	pushl  0x1c(%esp)
 8049dfa:	68 b9 a3 04 08       	push   $0x804a3b9
 8049dff:	50                   	push   %eax
 8049e00:	68 c1 a3 04 08       	push   $0x804a3c1
 8049e05:	68 6e 3b 00 00       	push   $0x3b6e
 8049e0a:	68 94 a3 04 08       	push   $0x804a394
 8049e0f:	e8 cb f5 ff ff       	call   80493df <submitr>
 8049e14:	83 c4 20             	add    $0x20,%esp
 8049e17:	eb 0e                	jmp    8049e27 <driver_post+0x77>
 8049e19:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049e1e:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049e22:	b8 00 00 00 00       	mov    $0x0,%eax
 8049e27:	83 c4 08             	add    $0x8,%esp
 8049e2a:	5b                   	pop    %ebx
 8049e2b:	c3                   	ret    
 8049e2c:	66 90                	xchg   %ax,%ax
 8049e2e:	66 90                	xchg   %ax,%ax

08049e30 <__libc_csu_init>:
 8049e30:	55                   	push   %ebp
 8049e31:	57                   	push   %edi
 8049e32:	56                   	push   %esi
 8049e33:	53                   	push   %ebx
 8049e34:	e8 d7 ea ff ff       	call   8048910 <__x86.get_pc_thunk.bx>
 8049e39:	81 c3 c7 21 00 00    	add    $0x21c7,%ebx
 8049e3f:	83 ec 0c             	sub    $0xc,%esp
 8049e42:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8049e46:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8049e4c:	e8 a3 e8 ff ff       	call   80486f4 <_init>
 8049e51:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049e57:	29 c6                	sub    %eax,%esi
 8049e59:	c1 fe 02             	sar    $0x2,%esi
 8049e5c:	85 f6                	test   %esi,%esi
 8049e5e:	74 25                	je     8049e85 <__libc_csu_init+0x55>
 8049e60:	31 ff                	xor    %edi,%edi
 8049e62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049e68:	83 ec 04             	sub    $0x4,%esp
 8049e6b:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049e6f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049e73:	55                   	push   %ebp
 8049e74:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049e7b:	83 c7 01             	add    $0x1,%edi
 8049e7e:	83 c4 10             	add    $0x10,%esp
 8049e81:	39 f7                	cmp    %esi,%edi
 8049e83:	75 e3                	jne    8049e68 <__libc_csu_init+0x38>
 8049e85:	83 c4 0c             	add    $0xc,%esp
 8049e88:	5b                   	pop    %ebx
 8049e89:	5e                   	pop    %esi
 8049e8a:	5f                   	pop    %edi
 8049e8b:	5d                   	pop    %ebp
 8049e8c:	c3                   	ret    
 8049e8d:	8d 76 00             	lea    0x0(%esi),%esi

08049e90 <__libc_csu_fini>:
 8049e90:	f3 c3                	repz ret 

Disassembly of section .fini:

08049e94 <_fini>:
 8049e94:	53                   	push   %ebx
 8049e95:	83 ec 08             	sub    $0x8,%esp
 8049e98:	e8 73 ea ff ff       	call   8048910 <__x86.get_pc_thunk.bx>
 8049e9d:	81 c3 63 21 00 00    	add    $0x2163,%ebx
 8049ea3:	83 c4 08             	add    $0x8,%esp
 8049ea6:	5b                   	pop    %ebx
 8049ea7:	c3                   	ret    
