
chess:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <.init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 2f 00 00 	mov    0x2fed(%rip),%rax        # 403ff8 <exit@plt+0x2f28>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <puts@plt-0x1e>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <puts@plt-0x10>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <exit@plt+0x2f38>
  401026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 404010 <exit@plt+0x2f40>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 404018 <exit@plt+0x2f48>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <puts@plt-0x10>

0000000000401040 <strlen@plt>:
  401040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 404020 <exit@plt+0x2f50>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <puts@plt-0x10>

0000000000401050 <system@plt>:
  401050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 404028 <exit@plt+0x2f58>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <puts@plt-0x10>

0000000000401060 <printf@plt>:
  401060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 404030 <exit@plt+0x2f60>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <puts@plt-0x10>

0000000000401070 <memset@plt>:
  401070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 404038 <exit@plt+0x2f68>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <puts@plt-0x10>

0000000000401080 <fgets@plt>:
  401080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 404040 <exit@plt+0x2f70>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <puts@plt-0x10>

0000000000401090 <strcmp@plt>:
  401090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 404048 <exit@plt+0x2f78>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <puts@plt-0x10>

00000000004010a0 <fflush@plt>:
  4010a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 404050 <exit@plt+0x2f80>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <puts@plt-0x10>

00000000004010b0 <__isoc99_sscanf@plt>:
  4010b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 404058 <exit@plt+0x2f88>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <puts@plt-0x10>

00000000004010c0 <strcat@plt>:
  4010c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 404060 <exit@plt+0x2f90>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <puts@plt-0x10>

00000000004010d0 <exit@plt>:
  4010d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 404068 <exit@plt+0x2f98>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <puts@plt-0x10>

Disassembly of section .text:

00000000004010e0 <.text>:
  4010e0:	31 ed                	xor    %ebp,%ebp
  4010e2:	49 89 d1             	mov    %rdx,%r9
  4010e5:	5e                   	pop    %rsi
  4010e6:	48 89 e2             	mov    %rsp,%rdx
  4010e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4010ed:	50                   	push   %rax
  4010ee:	54                   	push   %rsp
  4010ef:	49 c7 c0 40 1d 40 00 	mov    $0x401d40,%r8
  4010f6:	48 c7 c1 e0 1c 40 00 	mov    $0x401ce0,%rcx
  4010fd:	48 c7 c7 c6 17 40 00 	mov    $0x4017c6,%rdi
  401104:	ff 15 e6 2e 00 00    	callq  *0x2ee6(%rip)        # 403ff0 <exit@plt+0x2f20>
  40110a:	f4                   	hlt    
  40110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401110:	c3                   	retq   
  401111:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401118:	00 00 00 
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401120:	b8 60 41 40 00       	mov    $0x404160,%eax
  401125:	48 3d 60 41 40 00    	cmp    $0x404160,%rax
  40112b:	74 13                	je     401140 <exit@plt+0x70>
  40112d:	b8 00 00 00 00       	mov    $0x0,%eax
  401132:	48 85 c0             	test   %rax,%rax
  401135:	74 09                	je     401140 <exit@plt+0x70>
  401137:	bf 60 41 40 00       	mov    $0x404160,%edi
  40113c:	ff e0                	jmpq   *%rax
  40113e:	66 90                	xchg   %ax,%ax
  401140:	c3                   	retq   
  401141:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401148:	00 00 00 00 
  40114c:	0f 1f 40 00          	nopl   0x0(%rax)
  401150:	be 60 41 40 00       	mov    $0x404160,%esi
  401155:	48 81 ee 60 41 40 00 	sub    $0x404160,%rsi
  40115c:	48 89 f0             	mov    %rsi,%rax
  40115f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401163:	48 c1 f8 03          	sar    $0x3,%rax
  401167:	48 01 c6             	add    %rax,%rsi
  40116a:	48 d1 fe             	sar    %rsi
  40116d:	74 11                	je     401180 <exit@plt+0xb0>
  40116f:	b8 00 00 00 00       	mov    $0x0,%eax
  401174:	48 85 c0             	test   %rax,%rax
  401177:	74 07                	je     401180 <exit@plt+0xb0>
  401179:	bf 60 41 40 00       	mov    $0x404160,%edi
  40117e:	ff e0                	jmpq   *%rax
  401180:	c3                   	retq   
  401181:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401188:	00 00 00 00 
  40118c:	0f 1f 40 00          	nopl   0x0(%rax)
  401190:	80 3d e1 2f 00 00 00 	cmpb   $0x0,0x2fe1(%rip)        # 404178 <stdin@@GLIBC_2.2.5+0x8>
  401197:	75 17                	jne    4011b0 <exit@plt+0xe0>
  401199:	55                   	push   %rbp
  40119a:	48 89 e5             	mov    %rsp,%rbp
  40119d:	e8 7e ff ff ff       	callq  401120 <exit@plt+0x50>
  4011a2:	c6 05 cf 2f 00 00 01 	movb   $0x1,0x2fcf(%rip)        # 404178 <stdin@@GLIBC_2.2.5+0x8>
  4011a9:	5d                   	pop    %rbp
  4011aa:	c3                   	retq   
  4011ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011b0:	c3                   	retq   
  4011b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011b8:	00 00 00 00 
  4011bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4011c0:	eb 8e                	jmp    401150 <exit@plt+0x80>
  4011c2:	55                   	push   %rbp
  4011c3:	48 89 e5             	mov    %rsp,%rbp
  4011c6:	48 8d 3d 3b 0e 00 00 	lea    0xe3b(%rip),%rdi        # 402008 <exit@plt+0xf38>
  4011cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d2:	e8 89 fe ff ff       	callq  401060 <printf@plt>
  4011d7:	48 8b 05 82 2f 00 00 	mov    0x2f82(%rip),%rax        # 404160 <stdout@@GLIBC_2.2.5>
  4011de:	48 89 c7             	mov    %rax,%rdi
  4011e1:	e8 ba fe ff ff       	callq  4010a0 <fflush@plt>
  4011e6:	48 8d 3d 35 0e 00 00 	lea    0xe35(%rip),%rdi        # 402022 <exit@plt+0xf52>
  4011ed:	e8 5e fe ff ff       	callq  401050 <system@plt>
  4011f2:	90                   	nop
  4011f3:	5d                   	pop    %rbp
  4011f4:	c3                   	retq   
  4011f5:	55                   	push   %rbp
  4011f6:	48 89 e5             	mov    %rsp,%rbp
  4011f9:	48 8d 3d 30 0e 00 00 	lea    0xe30(%rip),%rdi        # 402030 <exit@plt+0xf60>
  401200:	e8 2b fe ff ff       	callq  401030 <puts@plt>
  401205:	48 8d 3d 51 0e 00 00 	lea    0xe51(%rip),%rdi        # 40205d <exit@plt+0xf8d>
  40120c:	b8 00 00 00 00       	mov    $0x0,%eax
  401211:	e8 4a fe ff ff       	callq  401060 <printf@plt>
  401216:	48 8d 3d 53 0e 00 00 	lea    0xe53(%rip),%rdi        # 402070 <exit@plt+0xfa0>
  40121d:	e8 0e fe ff ff       	callq  401030 <puts@plt>
  401222:	bf 00 00 00 00       	mov    $0x0,%edi
  401227:	e8 a4 fe ff ff       	callq  4010d0 <exit@plt>
  40122c:	55                   	push   %rbp
  40122d:	48 89 e5             	mov    %rsp,%rbp
  401230:	48 83 ec 10          	sub    $0x10,%rsp
  401234:	48 8d 3d 6d 0e 00 00 	lea    0xe6d(%rip),%rdi        # 4020a8 <exit@plt+0xfd8>
  40123b:	e8 f0 fd ff ff       	callq  401030 <puts@plt>
  401240:	48 8d 3d 91 0e 00 00 	lea    0xe91(%rip),%rdi        # 4020d8 <exit@plt+0x1008>
  401247:	b8 00 00 00 00       	mov    $0x0,%eax
  40124c:	e8 0f fe ff ff       	callq  401060 <printf@plt>
  401251:	48 8d 3d 48 2e 00 00 	lea    0x2e48(%rip),%rdi        # 4040a0 <exit@plt+0x2fd0>
  401258:	b8 00 00 00 00       	mov    $0x0,%eax
  40125d:	e8 fe fd ff ff       	callq  401060 <printf@plt>
  401262:	48 8d 3d 9f 0e 00 00 	lea    0xe9f(%rip),%rdi        # 402108 <exit@plt+0x1038>
  401269:	b8 00 00 00 00       	mov    $0x0,%eax
  40126e:	e8 ed fd ff ff       	callq  401060 <printf@plt>
  401273:	48 8d 3d a6 2e 00 00 	lea    0x2ea6(%rip),%rdi        # 404120 <exit@plt+0x3050>
  40127a:	b8 00 00 00 00       	mov    $0x0,%eax
  40127f:	e8 dc fd ff ff       	callq  401060 <printf@plt>
  401284:	48 8d 3d ad 0e 00 00 	lea    0xead(%rip),%rdi        # 402138 <exit@plt+0x1068>
  40128b:	b8 00 00 00 00       	mov    $0x0,%eax
  401290:	e8 cb fd ff ff       	callq  401060 <printf@plt>
  401295:	48 8d 3d 84 2e 00 00 	lea    0x2e84(%rip),%rdi        # 404120 <exit@plt+0x3050>
  40129c:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a1:	e8 ba fd ff ff       	callq  401060 <printf@plt>
  4012a6:	48 8d 3d bb 0e 00 00 	lea    0xebb(%rip),%rdi        # 402168 <exit@plt+0x1098>
  4012ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4012b2:	e8 a9 fd ff ff       	callq  401060 <printf@plt>
  4012b7:	48 8d 3d 62 2e 00 00 	lea    0x2e62(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4012be:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c3:	e8 98 fd ff ff       	callq  401060 <printf@plt>
  4012c8:	48 8d 3d c9 0e 00 00 	lea    0xec9(%rip),%rdi        # 402198 <exit@plt+0x10c8>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	e8 87 fd ff ff       	callq  401060 <printf@plt>
  4012d9:	48 8d 3d 40 2e 00 00 	lea    0x2e40(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4012e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4012e5:	e8 76 fd ff ff       	callq  401060 <printf@plt>
  4012ea:	48 8d 3d d7 0e 00 00 	lea    0xed7(%rip),%rdi        # 4021c8 <exit@plt+0x10f8>
  4012f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f6:	e8 65 fd ff ff       	callq  401060 <printf@plt>
  4012fb:	48 8d 3d 1e 2e 00 00 	lea    0x2e1e(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401302:	b8 00 00 00 00       	mov    $0x0,%eax
  401307:	e8 54 fd ff ff       	callq  401060 <printf@plt>
  40130c:	48 8d 3d cd 2d 00 00 	lea    0x2dcd(%rip),%rdi        # 4040e0 <exit@plt+0x3010>
  401313:	b8 00 00 00 00       	mov    $0x0,%eax
  401318:	e8 43 fd ff ff       	callq  401060 <printf@plt>
  40131d:	48 8d 3d d0 0e 00 00 	lea    0xed0(%rip),%rdi        # 4021f4 <exit@plt+0x1124>
  401324:	b8 00 00 00 00       	mov    $0x0,%eax
  401329:	e8 32 fd ff ff       	callq  401060 <printf@plt>
  40132e:	48 8d 3d eb 2d 00 00 	lea    0x2deb(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401335:	b8 00 00 00 00       	mov    $0x0,%eax
  40133a:	e8 21 fd ff ff       	callq  401060 <printf@plt>
  40133f:	48 8d 3d 9a 2d 00 00 	lea    0x2d9a(%rip),%rdi        # 4040e0 <exit@plt+0x3010>
  401346:	b8 00 00 00 00       	mov    $0x0,%eax
  40134b:	e8 10 fd ff ff       	callq  401060 <printf@plt>
  401350:	48 8d 3d a0 0e 00 00 	lea    0xea0(%rip),%rdi        # 4021f7 <exit@plt+0x1127>
  401357:	b8 00 00 00 00       	mov    $0x0,%eax
  40135c:	e8 ff fc ff ff       	callq  401060 <printf@plt>
  401361:	48 8d 3d b8 2d 00 00 	lea    0x2db8(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401368:	b8 00 00 00 00       	mov    $0x0,%eax
  40136d:	e8 ee fc ff ff       	callq  401060 <printf@plt>
  401372:	48 8d 3d 67 2d 00 00 	lea    0x2d67(%rip),%rdi        # 4040e0 <exit@plt+0x3010>
  401379:	b8 00 00 00 00       	mov    $0x0,%eax
  40137e:	e8 dd fc ff ff       	callq  401060 <printf@plt>
  401383:	48 8d 3d 70 0e 00 00 	lea    0xe70(%rip),%rdi        # 4021fa <exit@plt+0x112a>
  40138a:	b8 00 00 00 00       	mov    $0x0,%eax
  40138f:	e8 cc fc ff ff       	callq  401060 <printf@plt>
  401394:	48 8d 3d 85 2d 00 00 	lea    0x2d85(%rip),%rdi        # 404120 <exit@plt+0x3050>
  40139b:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a0:	e8 bb fc ff ff       	callq  401060 <printf@plt>
  4013a5:	48 8d 3d 54 0e 00 00 	lea    0xe54(%rip),%rdi        # 402200 <exit@plt+0x1130>
  4013ac:	e8 7f fc ff ff       	callq  401030 <puts@plt>
  4013b1:	48 8d 3d 7a 0e 00 00 	lea    0xe7a(%rip),%rdi        # 402232 <exit@plt+0x1162>
  4013b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bd:	e8 9e fc ff ff       	callq  401060 <printf@plt>
  4013c2:	48 8b 05 a7 2d 00 00 	mov    0x2da7(%rip),%rax        # 404170 <stdin@@GLIBC_2.2.5>
  4013c9:	48 89 c2             	mov    %rax,%rdx
  4013cc:	be 80 00 00 00       	mov    $0x80,%esi
  4013d1:	48 8d 3d a8 2d 00 00 	lea    0x2da8(%rip),%rdi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  4013d8:	e8 a3 fc ff ff       	callq  401080 <fgets@plt>
  4013dd:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4013e1:	48 89 c2             	mov    %rax,%rdx
  4013e4:	48 8d 35 5d 0e 00 00 	lea    0xe5d(%rip),%rsi        # 402248 <exit@plt+0x1178>
  4013eb:	48 8d 3d 8e 2d 00 00 	lea    0x2d8e(%rip),%rdi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  4013f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f7:	e8 b4 fc ff ff       	callq  4010b0 <__isoc99_sscanf@plt>
  4013fc:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401400:	48 8d 35 44 0e 00 00 	lea    0xe44(%rip),%rsi        # 40224b <exit@plt+0x117b>
  401407:	48 89 c7             	mov    %rax,%rdi
  40140a:	e8 81 fc ff ff       	callq  401090 <strcmp@plt>
  40140f:	85 c0                	test   %eax,%eax
  401411:	74 16                	je     401429 <exit@plt+0x359>
  401413:	48 8d 3d 35 0e 00 00 	lea    0xe35(%rip),%rdi        # 40224f <exit@plt+0x117f>
  40141a:	e8 11 fc ff ff       	callq  401030 <puts@plt>
  40141f:	bf 00 00 00 00       	mov    $0x0,%edi
  401424:	e8 a7 fc ff ff       	callq  4010d0 <exit@plt>
  401429:	90                   	nop
  40142a:	c9                   	leaveq 
  40142b:	c3                   	retq   
  40142c:	55                   	push   %rbp
  40142d:	48 89 e5             	mov    %rsp,%rbp
  401430:	48 83 ec 50          	sub    $0x50,%rsp
  401434:	48 8d 3d 25 0e 00 00 	lea    0xe25(%rip),%rdi        # 402260 <exit@plt+0x1190>
  40143b:	e8 f0 fb ff ff       	callq  401030 <puts@plt>
  401440:	48 8d 3d 49 0e 00 00 	lea    0xe49(%rip),%rdi        # 402290 <exit@plt+0x11c0>
  401447:	b8 00 00 00 00       	mov    $0x0,%eax
  40144c:	e8 0f fc ff ff       	callq  401060 <printf@plt>
  401451:	48 8d 3d 48 2c 00 00 	lea    0x2c48(%rip),%rdi        # 4040a0 <exit@plt+0x2fd0>
  401458:	b8 00 00 00 00       	mov    $0x0,%eax
  40145d:	e8 fe fb ff ff       	callq  401060 <printf@plt>
  401462:	48 8d 3d 57 0e 00 00 	lea    0xe57(%rip),%rdi        # 4022c0 <exit@plt+0x11f0>
  401469:	b8 00 00 00 00       	mov    $0x0,%eax
  40146e:	e8 ed fb ff ff       	callq  401060 <printf@plt>
  401473:	48 8d 3d a6 2c 00 00 	lea    0x2ca6(%rip),%rdi        # 404120 <exit@plt+0x3050>
  40147a:	b8 00 00 00 00       	mov    $0x0,%eax
  40147f:	e8 dc fb ff ff       	callq  401060 <printf@plt>
  401484:	48 8d 3d 65 0e 00 00 	lea    0xe65(%rip),%rdi        # 4022f0 <exit@plt+0x1220>
  40148b:	b8 00 00 00 00       	mov    $0x0,%eax
  401490:	e8 cb fb ff ff       	callq  401060 <printf@plt>
  401495:	48 8d 3d 84 2c 00 00 	lea    0x2c84(%rip),%rdi        # 404120 <exit@plt+0x3050>
  40149c:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a1:	e8 ba fb ff ff       	callq  401060 <printf@plt>
  4014a6:	48 8d 3d 73 0e 00 00 	lea    0xe73(%rip),%rdi        # 402320 <exit@plt+0x1250>
  4014ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4014b2:	e8 a9 fb ff ff       	callq  401060 <printf@plt>
  4014b7:	48 8d 3d 62 2c 00 00 	lea    0x2c62(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 98 fb ff ff       	callq  401060 <printf@plt>
  4014c8:	48 8d 3d 81 0e 00 00 	lea    0xe81(%rip),%rdi        # 402350 <exit@plt+0x1280>
  4014cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4014d4:	e8 87 fb ff ff       	callq  401060 <printf@plt>
  4014d9:	48 8d 3d 40 2c 00 00 	lea    0x2c40(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4014e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e5:	e8 76 fb ff ff       	callq  401060 <printf@plt>
  4014ea:	48 8d 3d 8f 0e 00 00 	lea    0xe8f(%rip),%rdi        # 402380 <exit@plt+0x12b0>
  4014f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4014f6:	e8 65 fb ff ff       	callq  401060 <printf@plt>
  4014fb:	48 8d 3d 1e 2c 00 00 	lea    0x2c1e(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401502:	b8 00 00 00 00       	mov    $0x0,%eax
  401507:	e8 54 fb ff ff       	callq  401060 <printf@plt>
  40150c:	48 8d 3d 9d 0e 00 00 	lea    0xe9d(%rip),%rdi        # 4023b0 <exit@plt+0x12e0>
  401513:	b8 00 00 00 00       	mov    $0x0,%eax
  401518:	e8 43 fb ff ff       	callq  401060 <printf@plt>
  40151d:	48 8d 3d fc 2b 00 00 	lea    0x2bfc(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401524:	b8 00 00 00 00       	mov    $0x0,%eax
  401529:	e8 32 fb ff ff       	callq  401060 <printf@plt>
  40152e:	48 8d 3d ab 0e 00 00 	lea    0xeab(%rip),%rdi        # 4023e0 <exit@plt+0x1310>
  401535:	b8 00 00 00 00       	mov    $0x0,%eax
  40153a:	e8 21 fb ff ff       	callq  401060 <printf@plt>
  40153f:	48 8d 3d da 2b 00 00 	lea    0x2bda(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401546:	b8 00 00 00 00       	mov    $0x0,%eax
  40154b:	e8 10 fb ff ff       	callq  401060 <printf@plt>
  401550:	48 8d 3d b9 0e 00 00 	lea    0xeb9(%rip),%rdi        # 402410 <exit@plt+0x1340>
  401557:	b8 00 00 00 00       	mov    $0x0,%eax
  40155c:	e8 ff fa ff ff       	callq  401060 <printf@plt>
  401561:	48 8d 3d b8 2b 00 00 	lea    0x2bb8(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401568:	b8 00 00 00 00       	mov    $0x0,%eax
  40156d:	e8 ee fa ff ff       	callq  401060 <printf@plt>
  401572:	48 8d 3d c7 0e 00 00 	lea    0xec7(%rip),%rdi        # 402440 <exit@plt+0x1370>
  401579:	e8 b2 fa ff ff       	callq  401030 <puts@plt>
  40157e:	48 8d 3d e3 0e 00 00 	lea    0xee3(%rip),%rdi        # 402468 <exit@plt+0x1398>
  401585:	b8 00 00 00 00       	mov    $0x0,%eax
  40158a:	e8 d1 fa ff ff       	callq  401060 <printf@plt>
  40158f:	48 8b 05 da 2b 00 00 	mov    0x2bda(%rip),%rax        # 404170 <stdin@@GLIBC_2.2.5>
  401596:	48 89 c2             	mov    %rax,%rdx
  401599:	be 80 00 00 00       	mov    $0x80,%esi
  40159e:	48 8d 3d db 2b 00 00 	lea    0x2bdb(%rip),%rdi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  4015a5:	e8 d6 fa ff ff       	callq  401080 <fgets@plt>
  4015aa:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4015ae:	48 89 c2             	mov    %rax,%rdx
  4015b1:	48 8d 35 90 0c 00 00 	lea    0xc90(%rip),%rsi        # 402248 <exit@plt+0x1178>
  4015b8:	48 8d 3d c1 2b 00 00 	lea    0x2bc1(%rip),%rdi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  4015bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c4:	e8 e7 fa ff ff       	callq  4010b0 <__isoc99_sscanf@plt>
  4015c9:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4015cd:	48 8d 35 ac 0e 00 00 	lea    0xeac(%rip),%rsi        # 402480 <exit@plt+0x13b0>
  4015d4:	48 89 c7             	mov    %rax,%rdi
  4015d7:	e8 b4 fa ff ff       	callq  401090 <strcmp@plt>
  4015dc:	85 c0                	test   %eax,%eax
  4015de:	74 16                	je     4015f6 <exit@plt+0x526>
  4015e0:	48 8d 3d 68 0c 00 00 	lea    0xc68(%rip),%rdi        # 40224f <exit@plt+0x117f>
  4015e7:	e8 44 fa ff ff       	callq  401030 <puts@plt>
  4015ec:	bf 00 00 00 00       	mov    $0x0,%edi
  4015f1:	e8 da fa ff ff       	callq  4010d0 <exit@plt>
  4015f6:	90                   	nop
  4015f7:	c9                   	leaveq 
  4015f8:	c3                   	retq   
  4015f9:	55                   	push   %rbp
  4015fa:	48 89 e5             	mov    %rsp,%rbp
  4015fd:	48 83 ec 50          	sub    $0x50,%rsp
  401601:	48 8d 3d 80 0e 00 00 	lea    0xe80(%rip),%rdi        # 402488 <exit@plt+0x13b8>
  401608:	e8 23 fa ff ff       	callq  401030 <puts@plt>
  40160d:	48 8d 3d 7c 0c 00 00 	lea    0xc7c(%rip),%rdi        # 402290 <exit@plt+0x11c0>
  401614:	b8 00 00 00 00       	mov    $0x0,%eax
  401619:	e8 42 fa ff ff       	callq  401060 <printf@plt>
  40161e:	48 8d 3d 7b 2a 00 00 	lea    0x2a7b(%rip),%rdi        # 4040a0 <exit@plt+0x2fd0>
  401625:	b8 00 00 00 00       	mov    $0x0,%eax
  40162a:	e8 31 fa ff ff       	callq  401060 <printf@plt>
  40162f:	48 8d 3d 82 0e 00 00 	lea    0xe82(%rip),%rdi        # 4024b8 <exit@plt+0x13e8>
  401636:	b8 00 00 00 00       	mov    $0x0,%eax
  40163b:	e8 20 fa ff ff       	callq  401060 <printf@plt>
  401640:	48 8d 3d d9 2a 00 00 	lea    0x2ad9(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401647:	b8 00 00 00 00       	mov    $0x0,%eax
  40164c:	e8 0f fa ff ff       	callq  401060 <printf@plt>
  401651:	48 8d 3d 90 0e 00 00 	lea    0xe90(%rip),%rdi        # 4024e8 <exit@plt+0x1418>
  401658:	b8 00 00 00 00       	mov    $0x0,%eax
  40165d:	e8 fe f9 ff ff       	callq  401060 <printf@plt>
  401662:	48 8d 3d b7 2a 00 00 	lea    0x2ab7(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401669:	b8 00 00 00 00       	mov    $0x0,%eax
  40166e:	e8 ed f9 ff ff       	callq  401060 <printf@plt>
  401673:	48 8d 3d 9e 0e 00 00 	lea    0xe9e(%rip),%rdi        # 402518 <exit@plt+0x1448>
  40167a:	b8 00 00 00 00       	mov    $0x0,%eax
  40167f:	e8 dc f9 ff ff       	callq  401060 <printf@plt>
  401684:	48 8d 3d 95 2a 00 00 	lea    0x2a95(%rip),%rdi        # 404120 <exit@plt+0x3050>
  40168b:	b8 00 00 00 00       	mov    $0x0,%eax
  401690:	e8 cb f9 ff ff       	callq  401060 <printf@plt>
  401695:	48 8d 3d ac 0e 00 00 	lea    0xeac(%rip),%rdi        # 402548 <exit@plt+0x1478>
  40169c:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a1:	e8 ba f9 ff ff       	callq  401060 <printf@plt>
  4016a6:	48 8d 3d 73 2a 00 00 	lea    0x2a73(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4016ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4016b2:	e8 a9 f9 ff ff       	callq  401060 <printf@plt>
  4016b7:	48 8d 3d ba 0e 00 00 	lea    0xeba(%rip),%rdi        # 402578 <exit@plt+0x14a8>
  4016be:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c3:	e8 98 f9 ff ff       	callq  401060 <printf@plt>
  4016c8:	48 8d 3d 51 2a 00 00 	lea    0x2a51(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4016cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d4:	e8 87 f9 ff ff       	callq  401060 <printf@plt>
  4016d9:	48 8d 3d c8 0e 00 00 	lea    0xec8(%rip),%rdi        # 4025a8 <exit@plt+0x14d8>
  4016e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e5:	e8 76 f9 ff ff       	callq  401060 <printf@plt>
  4016ea:	48 8d 3d 2f 2a 00 00 	lea    0x2a2f(%rip),%rdi        # 404120 <exit@plt+0x3050>
  4016f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f6:	e8 65 f9 ff ff       	callq  401060 <printf@plt>
  4016fb:	48 8d 3d d6 0e 00 00 	lea    0xed6(%rip),%rdi        # 4025d8 <exit@plt+0x1508>
  401702:	b8 00 00 00 00       	mov    $0x0,%eax
  401707:	e8 54 f9 ff ff       	callq  401060 <printf@plt>
  40170c:	48 8d 3d 0d 2a 00 00 	lea    0x2a0d(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401713:	b8 00 00 00 00       	mov    $0x0,%eax
  401718:	e8 43 f9 ff ff       	callq  401060 <printf@plt>
  40171d:	48 8d 3d e4 0e 00 00 	lea    0xee4(%rip),%rdi        # 402608 <exit@plt+0x1538>
  401724:	b8 00 00 00 00       	mov    $0x0,%eax
  401729:	e8 32 f9 ff ff       	callq  401060 <printf@plt>
  40172e:	48 8d 3d eb 29 00 00 	lea    0x29eb(%rip),%rdi        # 404120 <exit@plt+0x3050>
  401735:	b8 00 00 00 00       	mov    $0x0,%eax
  40173a:	e8 21 f9 ff ff       	callq  401060 <printf@plt>
  40173f:	48 8d 3d fa 0c 00 00 	lea    0xcfa(%rip),%rdi        # 402440 <exit@plt+0x1370>
  401746:	e8 e5 f8 ff ff       	callq  401030 <puts@plt>
  40174b:	48 8d 3d e2 0e 00 00 	lea    0xee2(%rip),%rdi        # 402634 <exit@plt+0x1564>
  401752:	b8 00 00 00 00       	mov    $0x0,%eax
  401757:	e8 04 f9 ff ff       	callq  401060 <printf@plt>
  40175c:	48 8b 05 0d 2a 00 00 	mov    0x2a0d(%rip),%rax        # 404170 <stdin@@GLIBC_2.2.5>
  401763:	48 89 c2             	mov    %rax,%rdx
  401766:	be 80 00 00 00       	mov    $0x80,%esi
  40176b:	48 8d 3d 0e 2a 00 00 	lea    0x2a0e(%rip),%rdi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  401772:	e8 09 f9 ff ff       	callq  401080 <fgets@plt>
  401777:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  40177b:	48 89 c2             	mov    %rax,%rdx
  40177e:	48 8d 35 c3 0a 00 00 	lea    0xac3(%rip),%rsi        # 402248 <exit@plt+0x1178>
  401785:	48 8d 3d f4 29 00 00 	lea    0x29f4(%rip),%rdi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  40178c:	b8 00 00 00 00       	mov    $0x0,%eax
  401791:	e8 1a f9 ff ff       	callq  4010b0 <__isoc99_sscanf@plt>
  401796:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  40179a:	48 8d 35 aa 0e 00 00 	lea    0xeaa(%rip),%rsi        # 40264b <exit@plt+0x157b>
  4017a1:	48 89 c7             	mov    %rax,%rdi
  4017a4:	e8 e7 f8 ff ff       	callq  401090 <strcmp@plt>
  4017a9:	85 c0                	test   %eax,%eax
  4017ab:	74 16                	je     4017c3 <exit@plt+0x6f3>
  4017ad:	48 8d 3d 9b 0a 00 00 	lea    0xa9b(%rip),%rdi        # 40224f <exit@plt+0x117f>
  4017b4:	e8 77 f8 ff ff       	callq  401030 <puts@plt>
  4017b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4017be:	e8 0d f9 ff ff       	callq  4010d0 <exit@plt>
  4017c3:	90                   	nop
  4017c4:	c9                   	leaveq 
  4017c5:	c3                   	retq   
  4017c6:	55                   	push   %rbp
  4017c7:	48 89 e5             	mov    %rsp,%rbp
  4017ca:	41 57                	push   %r15
  4017cc:	41 56                	push   %r14
  4017ce:	41 55                	push   %r13
  4017d0:	41 54                	push   %r12
  4017d2:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  4017d9:	48 8d 3d 70 0e 00 00 	lea    0xe70(%rip),%rdi        # 402650 <exit@plt+0x1580>
  4017e0:	e8 4b f8 ff ff       	callq  401030 <puts@plt>
  4017e5:	48 8d 3d ac 0e 00 00 	lea    0xeac(%rip),%rdi        # 402698 <exit@plt+0x15c8>
  4017ec:	e8 3f f8 ff ff       	callq  401030 <puts@plt>
  4017f1:	48 8d 3d e8 0e 00 00 	lea    0xee8(%rip),%rdi        # 4026e0 <exit@plt+0x1610>
  4017f8:	e8 33 f8 ff ff       	callq  401030 <puts@plt>
  4017fd:	48 8d 3d 24 0f 00 00 	lea    0xf24(%rip),%rdi        # 402728 <exit@plt+0x1658>
  401804:	e8 27 f8 ff ff       	callq  401030 <puts@plt>
  401809:	48 8d 3d 40 0f 00 00 	lea    0xf40(%rip),%rdi        # 402750 <exit@plt+0x1680>
  401810:	e8 1b f8 ff ff       	callq  401030 <puts@plt>
  401815:	48 8d 3d 5c 0f 00 00 	lea    0xf5c(%rip),%rdi        # 402778 <exit@plt+0x16a8>
  40181c:	e8 0f f8 ff ff       	callq  401030 <puts@plt>
  401821:	48 8d 3d 78 0f 00 00 	lea    0xf78(%rip),%rdi        # 4027a0 <exit@plt+0x16d0>
  401828:	e8 03 f8 ff ff       	callq  401030 <puts@plt>
  40182d:	48 8d 3d 94 0f 00 00 	lea    0xf94(%rip),%rdi        # 4027c8 <exit@plt+0x16f8>
  401834:	e8 f7 f7 ff ff       	callq  401030 <puts@plt>
  401839:	48 8d 3d b0 0f 00 00 	lea    0xfb0(%rip),%rdi        # 4027f0 <exit@plt+0x1720>
  401840:	e8 eb f7 ff ff       	callq  401030 <puts@plt>
  401845:	48 8d 3d cc 0f 00 00 	lea    0xfcc(%rip),%rdi        # 402818 <exit@plt+0x1748>
  40184c:	e8 df f7 ff ff       	callq  401030 <puts@plt>
  401851:	48 8d 3d 98 0f 00 00 	lea    0xf98(%rip),%rdi        # 4027f0 <exit@plt+0x1720>
  401858:	e8 d3 f7 ff ff       	callq  401030 <puts@plt>
  40185d:	48 8d 3d dc 0f 00 00 	lea    0xfdc(%rip),%rdi        # 402840 <exit@plt+0x1770>
  401864:	e8 c7 f7 ff ff       	callq  401030 <puts@plt>
  401869:	48 8d 3d f8 0f 00 00 	lea    0xff8(%rip),%rdi        # 402868 <exit@plt+0x1798>
  401870:	e8 bb f7 ff ff       	callq  401030 <puts@plt>
  401875:	48 8d 3d 14 10 00 00 	lea    0x1014(%rip),%rdi        # 402890 <exit@plt+0x17c0>
  40187c:	e8 af f7 ff ff       	callq  401030 <puts@plt>
  401881:	48 8d 3d c8 0d 00 00 	lea    0xdc8(%rip),%rdi        # 402650 <exit@plt+0x1580>
  401888:	e8 a3 f7 ff ff       	callq  401030 <puts@plt>
  40188d:	48 8d 3d 24 10 00 00 	lea    0x1024(%rip),%rdi        # 4028b8 <exit@plt+0x17e8>
  401894:	e8 97 f7 ff ff       	callq  401030 <puts@plt>
  401899:	48 8d 3d 58 10 00 00 	lea    0x1058(%rip),%rdi        # 4028f8 <exit@plt+0x1828>
  4018a0:	e8 8b f7 ff ff       	callq  401030 <puts@plt>
  4018a5:	48 8d 3d 8f 10 00 00 	lea    0x108f(%rip),%rdi        # 40293b <exit@plt+0x186b>
  4018ac:	e8 7f f7 ff ff       	callq  401030 <puts@plt>
  4018b1:	48 8d 3d 8b 10 00 00 	lea    0x108b(%rip),%rdi        # 402943 <exit@plt+0x1873>
  4018b8:	e8 73 f7 ff ff       	callq  401030 <puts@plt>
  4018bd:	48 8d 3d 95 10 00 00 	lea    0x1095(%rip),%rdi        # 402959 <exit@plt+0x1889>
  4018c4:	e8 67 f7 ff ff       	callq  401030 <puts@plt>
  4018c9:	48 8d 3d 91 10 00 00 	lea    0x1091(%rip),%rdi        # 402961 <exit@plt+0x1891>
  4018d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d5:	e8 86 f7 ff ff       	callq  401060 <printf@plt>
  4018da:	48 8b 15 8f 28 00 00 	mov    0x288f(%rip),%rdx        # 404170 <stdin@@GLIBC_2.2.5>
  4018e1:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
  4018e8:	be 08 00 00 00       	mov    $0x8,%esi
  4018ed:	48 89 c7             	mov    %rax,%rdi
  4018f0:	e8 8b f7 ff ff       	callq  401080 <fgets@plt>
  4018f5:	48 8d 95 3c ff ff ff 	lea    -0xc4(%rbp),%rdx
  4018fc:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
  401903:	48 8d 35 5c 10 00 00 	lea    0x105c(%rip),%rsi        # 402966 <exit@plt+0x1896>
  40190a:	48 89 c7             	mov    %rax,%rdi
  40190d:	b8 00 00 00 00       	mov    $0x0,%eax
  401912:	e8 99 f7 ff ff       	callq  4010b0 <__isoc99_sscanf@plt>
  401917:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  40191d:	83 f8 01             	cmp    $0x1,%eax
  401920:	0f 85 7a 03 00 00    	jne    401ca0 <exit@plt+0xbd0>
  401926:	48 8d 3d 3c 10 00 00 	lea    0x103c(%rip),%rdi        # 402969 <exit@plt+0x1899>
  40192d:	b8 00 00 00 00       	mov    $0x0,%eax
  401932:	e8 29 f7 ff ff       	callq  401060 <printf@plt>
  401937:	48 8b 15 32 28 00 00 	mov    0x2832(%rip),%rdx        # 404170 <stdin@@GLIBC_2.2.5>
  40193e:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  401945:	be 10 00 00 00       	mov    $0x10,%esi
  40194a:	48 89 c7             	mov    %rax,%rdi
  40194d:	e8 2e f7 ff ff       	callq  401080 <fgets@plt>
  401952:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  401959:	48 89 c7             	mov    %rax,%rdi
  40195c:	e8 df f6 ff ff       	callq  401040 <strlen@plt>
  401961:	48 83 e8 01          	sub    $0x1,%rax
  401965:	c6 84 05 40 ff ff ff 	movb   $0x0,-0xc0(%rbp,%rax,1)
  40196c:	00 
  40196d:	b8 00 00 00 00       	mov    $0x0,%eax
  401972:	e8 b5 f8 ff ff       	callq  40122c <exit@plt+0x15c>
  401977:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  40197e:	48 89 c7             	mov    %rax,%rdi
  401981:	e8 ba f6 ff ff       	callq  401040 <strlen@plt>
  401986:	48 89 c2             	mov    %rax,%rdx
  401989:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401990:	48 01 d0             	add    %rdx,%rax
  401993:	49 be 0a 43 6f 6e 67 	movabs $0x746172676e6f430a,%r14
  40199a:	72 61 74 
  40199d:	49 bf 75 6c 61 74 69 	movabs $0x736e6f6974616c75,%r15
  4019a4:	6f 6e 73 
  4019a7:	4c 89 30             	mov    %r14,(%rax)
  4019aa:	4c 89 78 08          	mov    %r15,0x8(%rax)
  4019ae:	66 c7 40 10 20 00    	movw   $0x20,0x10(%rax)
  4019b4:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
  4019bb:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019c2:	48 89 d6             	mov    %rdx,%rsi
  4019c5:	48 89 c7             	mov    %rax,%rdi
  4019c8:	e8 f3 f6 ff ff       	callq  4010c0 <strcat@plt>
  4019cd:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019d4:	48 89 c7             	mov    %rax,%rdi
  4019d7:	e8 64 f6 ff ff       	callq  401040 <strlen@plt>
  4019dc:	48 89 c2             	mov    %rax,%rdx
  4019df:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019e6:	48 01 d0             	add    %rdx,%rax
  4019e9:	49 bc 21 20 59 6f 75 	movabs $0x612072756f592021,%r12
  4019f0:	72 20 61 
  4019f3:	49 bd 6e 73 77 65 72 	movabs $0x617720726577736e,%r13
  4019fa:	20 77 61 
  4019fd:	4c 89 20             	mov    %r12,(%rax)
  401a00:	4c 89 68 08          	mov    %r13,0x8(%rax)
  401a04:	48 be 73 20 63 6f 72 	movabs $0x636572726f632073,%rsi
  401a0b:	72 65 63 
  401a0e:	48 bf 74 21 0a 0a 59 	movabs $0x72756f590a0a2174,%rdi
  401a15:	6f 75 72 
  401a18:	48 89 70 10          	mov    %rsi,0x10(%rax)
  401a1c:	48 89 78 18          	mov    %rdi,0x18(%rax)
  401a20:	48 ba 20 77 69 6e 6e 	movabs $0x676e696e6e697720,%rdx
  401a27:	69 6e 67 
  401a2a:	48 b9 20 6d 6f 76 65 	movabs $0x61772065766f6d20,%rcx
  401a31:	20 77 61 
  401a34:	48 89 50 20          	mov    %rdx,0x20(%rax)
  401a38:	48 89 48 28          	mov    %rcx,0x28(%rax)
  401a3c:	c7 40 30 73 3a 20 0a 	movl   $0xa203a73,0x30(%rax)
  401a43:	c6 40 34 00          	movb   $0x0,0x34(%rax)
  401a47:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a4e:	48 8d 35 2b 27 00 00 	lea    0x272b(%rip),%rsi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  401a55:	48 89 c7             	mov    %rax,%rdi
  401a58:	e8 63 f6 ff ff       	callq  4010c0 <strcat@plt>
  401a5d:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a64:	48 89 c7             	mov    %rax,%rdi
  401a67:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6c:	e8 ef f5 ff ff       	callq  401060 <printf@plt>
  401a71:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a78:	48 89 c7             	mov    %rax,%rdi
  401a7b:	e8 c0 f5 ff ff       	callq  401040 <strlen@plt>
  401a80:	48 89 c2             	mov    %rax,%rdx
  401a83:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a8a:	be 00 00 00 00       	mov    $0x0,%esi
  401a8f:	48 89 c7             	mov    %rax,%rdi
  401a92:	e8 d9 f5 ff ff       	callq  401070 <memset@plt>
  401a97:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9c:	e8 8b f9 ff ff       	callq  40142c <exit@plt+0x35c>
  401aa1:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401aa8:	48 89 c7             	mov    %rax,%rdi
  401aab:	e8 90 f5 ff ff       	callq  401040 <strlen@plt>
  401ab0:	48 89 c2             	mov    %rax,%rdx
  401ab3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401aba:	48 01 d0             	add    %rdx,%rax
  401abd:	4c 89 30             	mov    %r14,(%rax)
  401ac0:	4c 89 78 08          	mov    %r15,0x8(%rax)
  401ac4:	66 c7 40 10 20 00    	movw   $0x20,0x10(%rax)
  401aca:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
  401ad1:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401ad8:	48 89 d6             	mov    %rdx,%rsi
  401adb:	48 89 c7             	mov    %rax,%rdi
  401ade:	e8 dd f5 ff ff       	callq  4010c0 <strcat@plt>
  401ae3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401aea:	48 89 c7             	mov    %rax,%rdi
  401aed:	e8 4e f5 ff ff       	callq  401040 <strlen@plt>
  401af2:	48 89 c2             	mov    %rax,%rdx
  401af5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401afc:	48 01 d0             	add    %rdx,%rax
  401aff:	4c 89 20             	mov    %r12,(%rax)
  401b02:	4c 89 68 08          	mov    %r13,0x8(%rax)
  401b06:	48 be 73 20 63 6f 72 	movabs $0x636572726f632073,%rsi
  401b0d:	72 65 63 
  401b10:	48 bf 74 21 0a 0a 59 	movabs $0x72756f590a0a2174,%rdi
  401b17:	6f 75 72 
  401b1a:	48 89 70 10          	mov    %rsi,0x10(%rax)
  401b1e:	48 89 78 18          	mov    %rdi,0x18(%rax)
  401b22:	48 ba 20 77 69 6e 6e 	movabs $0x676e696e6e697720,%rdx
  401b29:	69 6e 67 
  401b2c:	48 b9 20 6d 6f 76 65 	movabs $0x61772065766f6d20,%rcx
  401b33:	20 77 61 
  401b36:	48 89 50 20          	mov    %rdx,0x20(%rax)
  401b3a:	48 89 48 28          	mov    %rcx,0x28(%rax)
  401b3e:	c7 40 30 73 3a 20 0a 	movl   $0xa203a73,0x30(%rax)
  401b45:	c6 40 34 00          	movb   $0x0,0x34(%rax)
  401b49:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401b50:	48 8d 35 29 26 00 00 	lea    0x2629(%rip),%rsi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  401b57:	48 89 c7             	mov    %rax,%rdi
  401b5a:	e8 61 f5 ff ff       	callq  4010c0 <strcat@plt>
  401b5f:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401b66:	48 89 c7             	mov    %rax,%rdi
  401b69:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6e:	e8 ed f4 ff ff       	callq  401060 <printf@plt>
  401b73:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401b7a:	48 89 c7             	mov    %rax,%rdi
  401b7d:	e8 be f4 ff ff       	callq  401040 <strlen@plt>
  401b82:	48 89 c2             	mov    %rax,%rdx
  401b85:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401b8c:	be 00 00 00 00       	mov    $0x0,%esi
  401b91:	48 89 c7             	mov    %rax,%rdi
  401b94:	e8 d7 f4 ff ff       	callq  401070 <memset@plt>
  401b99:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9e:	e8 56 fa ff ff       	callq  4015f9 <exit@plt+0x529>
  401ba3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401baa:	48 89 c7             	mov    %rax,%rdi
  401bad:	e8 8e f4 ff ff       	callq  401040 <strlen@plt>
  401bb2:	48 89 c2             	mov    %rax,%rdx
  401bb5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bbc:	48 01 d0             	add    %rdx,%rax
  401bbf:	4c 89 30             	mov    %r14,(%rax)
  401bc2:	4c 89 78 08          	mov    %r15,0x8(%rax)
  401bc6:	66 c7 40 10 20 00    	movw   $0x20,0x10(%rax)
  401bcc:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
  401bd3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bda:	48 89 d6             	mov    %rdx,%rsi
  401bdd:	48 89 c7             	mov    %rax,%rdi
  401be0:	e8 db f4 ff ff       	callq  4010c0 <strcat@plt>
  401be5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bec:	48 89 c7             	mov    %rax,%rdi
  401bef:	e8 4c f4 ff ff       	callq  401040 <strlen@plt>
  401bf4:	48 89 c2             	mov    %rax,%rdx
  401bf7:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bfe:	48 01 d0             	add    %rdx,%rax
  401c01:	48 be 21 0a 54 68 61 	movabs $0x7720746168540a21,%rsi
  401c08:	74 20 77 
  401c0b:	48 bf 61 73 20 74 68 	movabs $0x6620656874207361,%rdi
  401c12:	65 20 66 
  401c15:	48 89 30             	mov    %rsi,(%rax)
  401c18:	48 89 78 08          	mov    %rdi,0x8(%rax)
  401c1c:	48 be 69 6e 61 6c 20 	movabs $0x7a7570206c616e69,%rsi
  401c23:	70 75 7a 
  401c26:	48 bf 7a 6c 65 21 21 	movabs $0xa0a212121656c7a,%rdi
  401c2d:	21 0a 0a 
  401c30:	48 89 70 10          	mov    %rsi,0x10(%rax)
  401c34:	48 89 78 18          	mov    %rdi,0x18(%rax)
  401c38:	48 be 59 6f 75 72 20 	movabs $0x6e69572072756f59,%rsi
  401c3f:	57 69 6e 
  401c42:	48 bf 6e 69 6e 67 20 	movabs $0x766f6d20676e696e,%rdi
  401c49:	6d 6f 76 
  401c4c:	48 89 70 20          	mov    %rsi,0x20(%rax)
  401c50:	48 89 78 28          	mov    %rdi,0x28(%rax)
  401c54:	48 b9 65 73 20 77 61 	movabs $0x203a736177207365,%rcx
  401c5b:	73 3a 20 
  401c5e:	48 89 48 30          	mov    %rcx,0x30(%rax)
  401c62:	66 c7 40 38 0a 00    	movw   $0xa,0x38(%rax)
  401c68:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401c6f:	48 8d 35 0a 25 00 00 	lea    0x250a(%rip),%rsi        # 404180 <stdin@@GLIBC_2.2.5+0x10>
  401c76:	48 89 c7             	mov    %rax,%rdi
  401c79:	e8 42 f4 ff ff       	callq  4010c0 <strcat@plt>
  401c7e:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401c85:	48 89 c7             	mov    %rax,%rdi
  401c88:	b8 00 00 00 00       	mov    $0x0,%eax
  401c8d:	e8 ce f3 ff ff       	callq  401060 <printf@plt>
  401c92:	48 8d 3d e7 0c 00 00 	lea    0xce7(%rip),%rdi        # 402980 <exit@plt+0x18b0>
  401c99:	e8 92 f3 ff ff       	callq  401030 <puts@plt>
  401c9e:	eb 24                	jmp    401cc4 <exit@plt+0xbf4>
  401ca0:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  401ca6:	83 f8 02             	cmp    $0x2,%eax
  401ca9:	75 0c                	jne    401cb7 <exit@plt+0xbe7>
  401cab:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb0:	e8 40 f5 ff ff       	callq  4011f5 <exit@plt+0x125>
  401cb5:	eb 0d                	jmp    401cc4 <exit@plt+0xbf4>
  401cb7:	48 8d 3d 1c 0d 00 00 	lea    0xd1c(%rip),%rdi        # 4029da <exit@plt+0x190a>
  401cbe:	e8 6d f3 ff ff       	callq  401030 <puts@plt>
  401cc3:	90                   	nop
  401cc4:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  401ccb:	41 5c                	pop    %r12
  401ccd:	41 5d                	pop    %r13
  401ccf:	41 5e                	pop    %r14
  401cd1:	41 5f                	pop    %r15
  401cd3:	5d                   	pop    %rbp
  401cd4:	c3                   	retq   
  401cd5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401cdc:	00 00 00 
  401cdf:	90                   	nop
  401ce0:	41 57                	push   %r15
  401ce2:	4c 8d 3d 27 21 00 00 	lea    0x2127(%rip),%r15        # 403e10 <exit@plt+0x2d40>
  401ce9:	41 56                	push   %r14
  401ceb:	49 89 d6             	mov    %rdx,%r14
  401cee:	41 55                	push   %r13
  401cf0:	49 89 f5             	mov    %rsi,%r13
  401cf3:	41 54                	push   %r12
  401cf5:	41 89 fc             	mov    %edi,%r12d
  401cf8:	55                   	push   %rbp
  401cf9:	48 8d 2d 18 21 00 00 	lea    0x2118(%rip),%rbp        # 403e18 <exit@plt+0x2d48>
  401d00:	53                   	push   %rbx
  401d01:	4c 29 fd             	sub    %r15,%rbp
  401d04:	48 83 ec 08          	sub    $0x8,%rsp
  401d08:	e8 f3 f2 ff ff       	callq  401000 <puts@plt-0x30>
  401d0d:	48 c1 fd 03          	sar    $0x3,%rbp
  401d11:	74 1b                	je     401d2e <exit@plt+0xc5e>
  401d13:	31 db                	xor    %ebx,%ebx
  401d15:	0f 1f 00             	nopl   (%rax)
  401d18:	4c 89 f2             	mov    %r14,%rdx
  401d1b:	4c 89 ee             	mov    %r13,%rsi
  401d1e:	44 89 e7             	mov    %r12d,%edi
  401d21:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  401d25:	48 83 c3 01          	add    $0x1,%rbx
  401d29:	48 39 dd             	cmp    %rbx,%rbp
  401d2c:	75 ea                	jne    401d18 <exit@plt+0xc48>
  401d2e:	48 83 c4 08          	add    $0x8,%rsp
  401d32:	5b                   	pop    %rbx
  401d33:	5d                   	pop    %rbp
  401d34:	41 5c                	pop    %r12
  401d36:	41 5d                	pop    %r13
  401d38:	41 5e                	pop    %r14
  401d3a:	41 5f                	pop    %r15
  401d3c:	c3                   	retq   
  401d3d:	0f 1f 00             	nopl   (%rax)
  401d40:	c3                   	retq   

Disassembly of section .fini:

0000000000401d44 <.fini>:
  401d44:	48 83 ec 08          	sub    $0x8,%rsp
  401d48:	48 83 c4 08          	add    $0x8,%rsp
  401d4c:	c3                   	retq   