
encrypt:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <getc@plt+0x2f78>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <puts@plt-0x1e>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 7a 2f 00 00    	pushq  0x2f7a(%rip)        # 3fa0 <getc@plt+0x2f30>
    1026:	ff 25 7c 2f 00 00    	jmpq   *0x2f7c(%rip)        # 3fa8 <getc@plt+0x2f38>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 3fb0 <getc@plt+0x2f40>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001040 <strlen@plt>:
    1040:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 3fb8 <getc@plt+0x2f48>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001050 <putc@plt>:
    1050:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 3fc0 <getc@plt+0x2f50>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001060 <malloc@plt>:
    1060:	ff 25 62 2f 00 00    	jmpq   *0x2f62(%rip)        # 3fc8 <getc@plt+0x2f58>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

0000000000001070 <getc@plt>:
    1070:	ff 25 5a 2f 00 00    	jmpq   *0x2f5a(%rip)        # 3fd0 <getc@plt+0x2f60>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <puts@plt-0x10>

Disassembly of section .plt.got:

0000000000001080 <.plt.got>:
    1080:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 3ff8 <getc@plt+0x2f88>
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001090 <.text>:
    1090:	41 56                	push   %r14
    1092:	41 55                	push   %r13
    1094:	41 54                	push   %r12
    1096:	55                   	push   %rbp
    1097:	53                   	push   %rbx
    1098:	83 ff 02             	cmp    $0x2,%edi
    109b:	74 1a                	je     10b7 <getc@plt+0x47>
    109d:	48 8d 3d 60 0f 00 00 	lea    0xf60(%rip),%rdi        # 2004 <getc@plt+0xf94>
    10a4:	e8 87 ff ff ff       	callq  1030 <puts@plt>
    10a9:	b8 01 00 00 00       	mov    $0x1,%eax
    10ae:	5b                   	pop    %rbx
    10af:	5d                   	pop    %rbp
    10b0:	41 5c                	pop    %r12
    10b2:	41 5d                	pop    %r13
    10b4:	41 5e                	pop    %r14
    10b6:	c3                   	retq   
    10b7:	48 89 f3             	mov    %rsi,%rbx
    10ba:	bf 06 00 02 00       	mov    $0x20006,%edi
    10bf:	e8 9c ff ff ff       	callq  1060 <malloc@plt>
    10c4:	4c 8b 63 08          	mov    0x8(%rbx),%r12
    10c8:	48 89 c5             	mov    %rax,%rbp
    10cb:	4c 89 e7             	mov    %r12,%rdi
    10ce:	e8 6d ff ff ff       	callq  1040 <strlen@plt>
    10d3:	48 89 c6             	mov    %rax,%rsi
    10d6:	48 85 ed             	test   %rbp,%rbp
    10d9:	0f 84 36 03 00 00    	je     1415 <getc@plt+0x3a5>
    10df:	48 85 c0             	test   %rax,%rax
    10e2:	0f 84 2d 03 00 00    	je     1415 <getc@plt+0x3a5>
    10e8:	48 8d 5d 06          	lea    0x6(%rbp),%rbx
    10ec:	48 89 c1             	mov    %rax,%rcx
    10ef:	45 31 c0             	xor    %r8d,%r8d
    10f2:	48 89 c8             	mov    %rcx,%rax
    10f5:	45 89 c1             	mov    %r8d,%r9d
    10f8:	ba 00 01 00 00       	mov    $0x100,%edx
    10fd:	48 c1 e0 0d          	shl    $0xd,%rax
    1101:	48 31 c1             	xor    %rax,%rcx
    1104:	48 89 c8             	mov    %rcx,%rax
    1107:	48 c1 e8 07          	shr    $0x7,%rax
    110b:	48 31 c8             	xor    %rcx,%rax
    110e:	48 89 c1             	mov    %rax,%rcx
    1111:	48 c1 e1 11          	shl    $0x11,%rcx
    1115:	48 31 c1             	xor    %rax,%rcx
    1118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    111f:	00 
    1120:	48 8b 05 09 2f 00 00 	mov    0x2f09(%rip),%rax        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    1127:	48 8b 3d 02 2f 00 00 	mov    0x2f02(%rip),%rdi        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    112e:	48 01 f8             	add    %rdi,%rax
    1131:	48 89 05 f8 2e 00 00 	mov    %rax,0x2ef8(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    1138:	83 ea 01             	sub    $0x1,%edx
    113b:	75 e3                	jne    1120 <getc@plt+0xb0>
    113d:	44 89 c0             	mov    %r8d,%eax
    1140:	41 83 c0 01          	add    $0x1,%r8d
    1144:	66 44 89 0c 43       	mov    %r9w,(%rbx,%rax,2)
    1149:	41 81 f8 00 00 01 00 	cmp    $0x10000,%r8d
    1150:	75 a0                	jne    10f2 <getc@plt+0x82>
    1152:	45 31 c0             	xor    %r8d,%r8d
    1155:	45 31 c9             	xor    %r9d,%r9d
    1158:	31 ff                	xor    %edi,%edi
    115a:	48 89 c8             	mov    %rcx,%rax
    115d:	31 d2                	xor    %edx,%edx
    115f:	48 f7 f6             	div    %rsi
    1162:	48 89 c8             	mov    %rcx,%rax
    1165:	48 c1 e0 0d          	shl    $0xd,%rax
    1169:	48 31 c1             	xor    %rax,%rcx
    116c:	48 89 c8             	mov    %rcx,%rax
    116f:	48 c1 e8 07          	shr    $0x7,%rax
    1173:	48 31 c1             	xor    %rax,%rcx
    1176:	48 89 c8             	mov    %rcx,%rax
    1179:	48 c1 e0 11          	shl    $0x11,%rax
    117d:	48 31 c1             	xor    %rax,%rcx
    1180:	b8 00 01 00 00       	mov    $0x100,%eax
    1185:	66 41 0f be 14 14    	movsbw (%r12,%rdx,1),%dx
    118b:	0f b7 d2             	movzwl %dx,%edx
    118e:	c1 e2 08             	shl    $0x8,%edx
    1191:	41 89 d2             	mov    %edx,%r10d
    1194:	48 8b 15 95 2e 00 00 	mov    0x2e95(%rip),%rdx        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    119b:	4c 8b 1d 8e 2e 00 00 	mov    0x2e8e(%rip),%r11        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    11a2:	4c 01 da             	add    %r11,%rdx
    11a5:	48 89 15 84 2e 00 00 	mov    %rdx,0x2e84(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    11ac:	83 e8 01             	sub    $0x1,%eax
    11af:	75 e3                	jne    1194 <getc@plt+0x124>
    11b1:	48 89 c8             	mov    %rcx,%rax
    11b4:	31 d2                	xor    %edx,%edx
    11b6:	48 f7 f6             	div    %rsi
    11b9:	41 0f b6 04 14       	movzbl (%r12,%rdx,1),%eax
    11be:	44 09 d0             	or     %r10d,%eax
    11c1:	89 c2                	mov    %eax,%edx
    11c3:	48 89 c8             	mov    %rcx,%rax
    11c6:	48 c1 e0 0d          	shl    $0xd,%rax
    11ca:	48 31 c1             	xor    %rax,%rcx
    11cd:	48 89 c8             	mov    %rcx,%rax
    11d0:	48 c1 e8 07          	shr    $0x7,%rax
    11d4:	48 31 c1             	xor    %rax,%rcx
    11d7:	48 89 c8             	mov    %rcx,%rax
    11da:	48 c1 e0 11          	shl    $0x11,%rax
    11de:	48 31 c1             	xor    %rax,%rcx
    11e1:	b8 00 01 00 00       	mov    $0x100,%eax
    11e6:	4c 8b 15 43 2e 00 00 	mov    0x2e43(%rip),%r10        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    11ed:	4c 8b 1d 3c 2e 00 00 	mov    0x2e3c(%rip),%r11        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    11f4:	4d 01 da             	add    %r11,%r10
    11f7:	4c 89 15 32 2e 00 00 	mov    %r10,0x2e32(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    11fe:	83 e8 01             	sub    $0x1,%eax
    1201:	75 e3                	jne    11e6 <getc@plt+0x176>
    1203:	89 f8                	mov    %edi,%eax
    1205:	4c 8d 1c 43          	lea    (%rbx,%rax,2),%r11
    1209:	45 0f b7 13          	movzwl (%r11),%r10d
    120d:	42 8d 04 12          	lea    (%rdx,%r10,1),%eax
    1211:	41 01 c0             	add    %eax,%r8d
    1214:	41 0f b7 c0          	movzwl %r8w,%eax
    1218:	48 8d 04 43          	lea    (%rbx,%rax,2),%rax
    121c:	0f b7 10             	movzwl (%rax),%edx
    121f:	66 41 89 13          	mov    %dx,(%r11)
    1223:	66 44 89 10          	mov    %r10w,(%rax)
    1227:	b8 00 01 00 00       	mov    $0x100,%eax
    122c:	48 8b 15 fd 2d 00 00 	mov    0x2dfd(%rip),%rdx        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    1233:	4c 8b 15 f6 2d 00 00 	mov    0x2df6(%rip),%r10        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    123a:	49 0f af d2          	imul   %r10,%rdx
    123e:	48 89 15 eb 2d 00 00 	mov    %rdx,0x2deb(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    1245:	83 e8 01             	sub    $0x1,%eax
    1248:	75 e2                	jne    122c <getc@plt+0x1bc>
    124a:	83 c7 01             	add    $0x1,%edi
    124d:	81 ff 00 00 01 00    	cmp    $0x10000,%edi
    1253:	0f 85 01 ff ff ff    	jne    115a <getc@plt+0xea>
    1259:	49 83 c1 01          	add    $0x1,%r9
    125d:	4c 39 ce             	cmp    %r9,%rsi
    1260:	0f 87 f2 fe ff ff    	ja     1158 <getc@plt+0xe8>
    1266:	45 31 c0             	xor    %r8d,%r8d
    1269:	45 31 d2             	xor    %r10d,%r10d
    126c:	31 c0                	xor    %eax,%eax
    126e:	89 c2                	mov    %eax,%edx
    1270:	4c 8d 0c 53          	lea    (%rbx,%rdx,2),%r9
    1274:	41 0f b7 11          	movzwl (%r9),%edx
    1278:	41 01 d0             	add    %edx,%r8d
    127b:	41 0f b7 c8          	movzwl %r8w,%ecx
    127f:	48 8d 0c 4b          	lea    (%rbx,%rcx,2),%rcx
    1283:	0f b7 39             	movzwl (%rcx),%edi
    1286:	66 41 89 39          	mov    %di,(%r9)
    128a:	66 89 11             	mov    %dx,(%rcx)
    128d:	b9 00 01 00 00       	mov    $0x100,%ecx
    1292:	48 8b 3d 97 2d 00 00 	mov    0x2d97(%rip),%rdi        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    1299:	4c 8b 1d 90 2d 00 00 	mov    0x2d90(%rip),%r11        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    12a0:	49 0f af fb          	imul   %r11,%rdi
    12a4:	48 89 3d 85 2d 00 00 	mov    %rdi,0x2d85(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    12ab:	83 e9 01             	sub    $0x1,%ecx
    12ae:	75 e2                	jne    1292 <getc@plt+0x222>
    12b0:	83 c0 01             	add    $0x1,%eax
    12b3:	3d 00 00 01 00       	cmp    $0x10000,%eax
    12b8:	75 b4                	jne    126e <getc@plt+0x1fe>
    12ba:	49 83 c2 01          	add    $0x1,%r10
    12be:	4c 39 d6             	cmp    %r10,%rsi
    12c1:	77 a9                	ja     126c <getc@plt+0x1fc>
    12c3:	41 0f b7 01          	movzwl (%r9),%eax
    12c7:	01 d0                	add    %edx,%eax
    12c9:	0f b7 c0             	movzwl %ax,%eax
    12cc:	0f b7 04 43          	movzwl (%rbx,%rax,2),%eax
    12d0:	66 c7 45 00 00 00    	movw   $0x0,0x0(%rbp)
    12d6:	66 44 89 45 02       	mov    %r8w,0x2(%rbp)
    12db:	66 89 45 04          	mov    %ax,0x4(%rbp)
    12df:	48 8b 3d 3a 2d 00 00 	mov    0x2d3a(%rip),%rdi        # 4020 <stdin@@GLIBC_2.2.5>
    12e6:	e8 85 fd ff ff       	callq  1070 <getc@plt>
    12eb:	41 89 c3             	mov    %eax,%r11d
    12ee:	83 f8 ff             	cmp    $0xffffffff,%eax
    12f1:	0f 84 28 01 00 00    	je     141f <getc@plt+0x3af>
    12f7:	0f b7 45 04          	movzwl 0x4(%rbp),%eax
    12fb:	0f b7 75 00          	movzwl 0x0(%rbp),%esi
    12ff:	49 89 c1             	mov    %rax,%r9
    1302:	4c 8d 04 43          	lea    (%rbx,%rax,2),%r8
    1306:	44 8d 56 ff          	lea    -0x1(%rsi),%r10d
    130a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1310:	83 c6 01             	add    $0x1,%esi
    1313:	0f b7 c6             	movzwl %si,%eax
    1316:	48 8d 14 43          	lea    (%rbx,%rax,2),%rdx
    131a:	0f b7 02             	movzwl (%rdx),%eax
    131d:	48 89 c7             	mov    %rax,%rdi
    1320:	48 8d 04 43          	lea    (%rbx,%rax,2),%rax
    1324:	0f b7 08             	movzwl (%rax),%ecx
    1327:	41 89 fc             	mov    %edi,%r12d
    132a:	48 39 c2             	cmp    %rax,%rdx
    132d:	74 1b                	je     134a <getc@plt+0x2da>
    132f:	31 f9                	xor    %edi,%ecx
    1331:	66 89 0a             	mov    %cx,(%rdx)
    1334:	41 89 cc             	mov    %ecx,%r12d
    1337:	66 44 33 20          	xor    (%rax),%r12w
    133b:	66 44 89 20          	mov    %r12w,(%rax)
    133f:	66 44 33 22          	xor    (%rdx),%r12w
    1343:	66 44 89 22          	mov    %r12w,(%rdx)
    1347:	0f b7 08             	movzwl (%rax),%ecx
    134a:	41 bd 00 10 00 00    	mov    $0x1000,%r13d
    1350:	4c 8b 35 d9 2c 00 00 	mov    0x2cd9(%rip),%r14        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    1357:	48 8b 05 d2 2c 00 00 	mov    0x2cd2(%rip),%rax        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    135e:	49 83 ce 01          	or     $0x1,%r14
    1362:	48 99                	cqto   
    1364:	49 f7 fe             	idiv   %r14
    1367:	48 89 05 c2 2c 00 00 	mov    %rax,0x2cc2(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    136e:	41 83 ed 01          	sub    $0x1,%r13d
    1372:	75 dc                	jne    1350 <getc@plt+0x2e0>
    1374:	41 0f b7 10          	movzwl (%r8),%edx
    1378:	42 8d 04 22          	lea    (%rdx,%r12,1),%eax
    137c:	01 c8                	add    %ecx,%eax
    137e:	0f b7 c0             	movzwl %ax,%eax
    1381:	0f b7 04 43          	movzwl (%rbx,%rax,2),%eax
    1385:	48 8d 0c 43          	lea    (%rbx,%rax,2),%rcx
    1389:	49 89 c5             	mov    %rax,%r13
    138c:	49 39 c8             	cmp    %rcx,%r8
    138f:	74 13                	je     13a4 <getc@plt+0x334>
    1391:	0f b7 01             	movzwl (%rcx),%eax
    1394:	31 d0                	xor    %edx,%eax
    1396:	66 89 01             	mov    %ax,(%rcx)
    1399:	66 41 33 00          	xor    (%r8),%ax
    139d:	66 41 89 00          	mov    %ax,(%r8)
    13a1:	66 31 01             	xor    %ax,(%rcx)
    13a4:	41 bc 00 10 00 00    	mov    $0x1000,%r12d
    13aa:	48 8b 0d 7f 2c 00 00 	mov    0x2c7f(%rip),%rcx        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    13b1:	48 8b 05 78 2c 00 00 	mov    0x2c78(%rip),%rax        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    13b8:	48 83 c9 01          	or     $0x1,%rcx
    13bc:	48 99                	cqto   
    13be:	48 f7 f9             	idiv   %rcx
    13c1:	48 89 05 68 2c 00 00 	mov    %rax,0x2c68(%rip)        # 4030 <stdin@@GLIBC_2.2.5+0x10>
    13c8:	41 83 ec 01          	sub    $0x1,%r12d
    13cc:	75 dc                	jne    13aa <getc@plt+0x33a>
    13ce:	66 44 39 d6          	cmp    %r10w,%si
    13d2:	0f 85 38 ff ff ff    	jne    1310 <getc@plt+0x2a0>
    13d8:	44 89 c8             	mov    %r9d,%eax
    13db:	41 0f b6 d3          	movzbl %r11b,%edx
    13df:	66 89 75 00          	mov    %si,0x0(%rbp)
    13e3:	48 8b 35 26 2c 00 00 	mov    0x2c26(%rip),%rsi        # 4010 <stdout@@GLIBC_2.2.5>
    13ea:	c1 e0 08             	shl    $0x8,%eax
    13ed:	66 89 7d 02          	mov    %di,0x2(%rbp)
    13f1:	43 8d 3c 2b          	lea    (%r11,%r13,1),%edi
    13f5:	09 d0                	or     %edx,%eax
    13f7:	44 01 ea             	add    %r13d,%edx
    13fa:	40 0f b6 ff          	movzbl %dil,%edi
    13fe:	44 01 e8             	add    %r13d,%eax
    1401:	66 c1 c0 08          	rol    $0x8,%ax
    1405:	01 d0                	add    %edx,%eax
    1407:	66 89 45 04          	mov    %ax,0x4(%rbp)
    140b:	e8 40 fc ff ff       	callq  1050 <putc@plt>
    1410:	e9 ca fe ff ff       	jmpq   12df <getc@plt+0x26f>
    1415:	b8 01 00 00 00       	mov    $0x1,%eax
    141a:	e9 8f fc ff ff       	jmpq   10ae <getc@plt+0x3e>
    141f:	31 c0                	xor    %eax,%eax
    1421:	e9 88 fc ff ff       	jmpq   10ae <getc@plt+0x3e>
    1426:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    142d:	00 00 00 
    1430:	31 ed                	xor    %ebp,%ebp
    1432:	49 89 d1             	mov    %rdx,%r9
    1435:	5e                   	pop    %rsi
    1436:	48 89 e2             	mov    %rsp,%rdx
    1439:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    143d:	50                   	push   %rax
    143e:	54                   	push   %rsp
    143f:	4c 8d 05 3a 01 00 00 	lea    0x13a(%rip),%r8        # 1580 <getc@plt+0x510>
    1446:	48 8d 0d d3 00 00 00 	lea    0xd3(%rip),%rcx        # 1520 <getc@plt+0x4b0>
    144d:	48 8d 3d 3c fc ff ff 	lea    -0x3c4(%rip),%rdi        # 1090 <getc@plt+0x20>
    1454:	ff 15 86 2b 00 00    	callq  *0x2b86(%rip)        # 3fe0 <getc@plt+0x2f70>
    145a:	f4                   	hlt    
    145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1460:	48 8d 3d a9 2b 00 00 	lea    0x2ba9(%rip),%rdi        # 4010 <stdout@@GLIBC_2.2.5>
    1467:	48 8d 05 a2 2b 00 00 	lea    0x2ba2(%rip),%rax        # 4010 <stdout@@GLIBC_2.2.5>
    146e:	48 39 f8             	cmp    %rdi,%rax
    1471:	74 15                	je     1488 <getc@plt+0x418>
    1473:	48 8b 05 5e 2b 00 00 	mov    0x2b5e(%rip),%rax        # 3fd8 <getc@plt+0x2f68>
    147a:	48 85 c0             	test   %rax,%rax
    147d:	74 09                	je     1488 <getc@plt+0x418>
    147f:	ff e0                	jmpq   *%rax
    1481:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1488:	c3                   	retq   
    1489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1490:	48 8d 3d 79 2b 00 00 	lea    0x2b79(%rip),%rdi        # 4010 <stdout@@GLIBC_2.2.5>
    1497:	48 8d 35 72 2b 00 00 	lea    0x2b72(%rip),%rsi        # 4010 <stdout@@GLIBC_2.2.5>
    149e:	48 29 fe             	sub    %rdi,%rsi
    14a1:	48 89 f0             	mov    %rsi,%rax
    14a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    14a8:	48 c1 f8 03          	sar    $0x3,%rax
    14ac:	48 01 c6             	add    %rax,%rsi
    14af:	48 d1 fe             	sar    %rsi
    14b2:	74 14                	je     14c8 <getc@plt+0x458>
    14b4:	48 8b 05 35 2b 00 00 	mov    0x2b35(%rip),%rax        # 3ff0 <getc@plt+0x2f80>
    14bb:	48 85 c0             	test   %rax,%rax
    14be:	74 08                	je     14c8 <getc@plt+0x458>
    14c0:	ff e0                	jmpq   *%rax
    14c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14c8:	c3                   	retq   
    14c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    14d0:	80 3d 51 2b 00 00 00 	cmpb   $0x0,0x2b51(%rip)        # 4028 <stdin@@GLIBC_2.2.5+0x8>
    14d7:	75 2f                	jne    1508 <getc@plt+0x498>
    14d9:	55                   	push   %rbp
    14da:	48 83 3d 16 2b 00 00 	cmpq   $0x0,0x2b16(%rip)        # 3ff8 <getc@plt+0x2f88>
    14e1:	00 
    14e2:	48 89 e5             	mov    %rsp,%rbp
    14e5:	74 0c                	je     14f3 <getc@plt+0x483>
    14e7:	48 8b 3d 1a 2b 00 00 	mov    0x2b1a(%rip),%rdi        # 4008 <getc@plt+0x2f98>
    14ee:	e8 8d fb ff ff       	callq  1080 <getc@plt+0x10>
    14f3:	e8 68 ff ff ff       	callq  1460 <getc@plt+0x3f0>
    14f8:	c6 05 29 2b 00 00 01 	movb   $0x1,0x2b29(%rip)        # 4028 <stdin@@GLIBC_2.2.5+0x8>
    14ff:	5d                   	pop    %rbp
    1500:	c3                   	retq   
    1501:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1508:	c3                   	retq   
    1509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1510:	e9 7b ff ff ff       	jmpq   1490 <getc@plt+0x420>
    1515:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    151c:	00 00 00 
    151f:	90                   	nop
    1520:	41 57                	push   %r15
    1522:	4c 8d 3d 6f 28 00 00 	lea    0x286f(%rip),%r15        # 3d98 <getc@plt+0x2d28>
    1529:	41 56                	push   %r14
    152b:	49 89 d6             	mov    %rdx,%r14
    152e:	41 55                	push   %r13
    1530:	49 89 f5             	mov    %rsi,%r13
    1533:	41 54                	push   %r12
    1535:	41 89 fc             	mov    %edi,%r12d
    1538:	55                   	push   %rbp
    1539:	48 8d 2d 60 28 00 00 	lea    0x2860(%rip),%rbp        # 3da0 <getc@plt+0x2d30>
    1540:	53                   	push   %rbx
    1541:	4c 29 fd             	sub    %r15,%rbp
    1544:	48 83 ec 08          	sub    $0x8,%rsp
    1548:	e8 b3 fa ff ff       	callq  1000 <puts@plt-0x30>
    154d:	48 c1 fd 03          	sar    $0x3,%rbp
    1551:	74 1a                	je     156d <getc@plt+0x4fd>
    1553:	31 db                	xor    %ebx,%ebx
    1555:	0f 1f 00             	nopl   (%rax)
    1558:	4c 89 f2             	mov    %r14,%rdx
    155b:	4c 89 ee             	mov    %r13,%rsi
    155e:	44 89 e7             	mov    %r12d,%edi
    1561:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1565:	48 ff c3             	inc    %rbx
    1568:	48 39 dd             	cmp    %rbx,%rbp
    156b:	75 eb                	jne    1558 <getc@plt+0x4e8>
    156d:	48 83 c4 08          	add    $0x8,%rsp
    1571:	5b                   	pop    %rbx
    1572:	5d                   	pop    %rbp
    1573:	41 5c                	pop    %r12
    1575:	41 5d                	pop    %r13
    1577:	41 5e                	pop    %r14
    1579:	41 5f                	pop    %r15
    157b:	c3                   	retq   
    157c:	0f 1f 40 00          	nopl   0x0(%rax)
    1580:	c3                   	retq   

Disassembly of section .fini:

0000000000001584 <.fini>:
    1584:	48 83 ec 08          	sub    $0x8,%rsp
    1588:	48 83 c4 08          	add    $0x8,%rsp
    158c:	c3                   	retq   
