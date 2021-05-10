// disass segundaBomba

Dump of assembler code for function segundaBomba:
   1469: <+0>:  	push   %ebp
   146a: <+1>:	   mov    %esp,%ebp
   146c: <+3>:	   push   %ebx
   146d: <+4>:	   sub    $0x64,%esp
   1470: <+7>:	   call   0x1130 <__x86.get_pc_thunk.bx>
   1475: <+12>:	add    $0x2b8b,%ebx            /* decimal: -11147 //// bin: -10101110001011*/
   147b: <+18>:	mov    0x8(%ebp),%eax
   147e: <+21>:	mov    %eax,-0x5c(%ebp)
   1481: <+24>:	mov    %gs:0x14,%eax
   1487: <+30>:	mov    %eax,-0xc(%ebp)
   148a: <+33>:	xor    %eax,%eax
   148c: <+35>: 	movl   $0x2062614c,-0x4c(%ebp) ----------------------------   ASCII: baL   invertido: "Lab "
   1493: <+42>:	movl   $0x42203a32,-0x48(%ebp) -----------------------------   ASCII: B :2  invertido: "2: B" 
   149a: <+49>:	movl   $0x626d6f,-0x44(%ebp)   ----------------------------       ASCII: bmo   invertido: "omb"
   14a1: <+56>:	movl   $0x0,-0x40(%ebp) 
   
   tudo concatenado em ASCII invertido: "Lab 2: Bomb"
   
   14a8: <+63>:	movl   $0x0,-0x3c(%ebp)
   14af: <+70>:	movl   $0x0,-0x38(%ebp)
   14b6: <+77>:	movl   $0x0,-0x34(%ebp)
   14bd: <+84>:	movl   $0x0,-0x30(%ebp)
   14c4: <+91>:	movl   $0x0,-0x2c(%ebp)
   14cb: <+98>: 	movl   $0x0,-0x28(%ebp)
   14d2: <+105>:	movl   $0x0,-0x24(%ebp)
   14d9: <+112>:	movl   $0x0,-0x20(%ebp)
   14e0: <+119>:	movl   $0x0,-0x1c(%ebp)
   14e7: <+126>:	movl   $0x0,-0x18(%ebp)
   14ee: <+133>:	movl   $0x0,-0x14(%ebp)
   14f5: <+140>:	movl   $0x0,-0x10(%ebp)
   14fc: <+147>:	sub    $0x8,%esp
   14ff: <+150>:	pushl  -0x5c(%ebp)
   1502: <+153>:	lea    -0x4c(%ebp),%eax          /* eax recebe conteudo de %ebp-76 , se conteudo for 0 então pulamos o boom*/
   1505: <+156>:	push   %eax
   1506: <+157>:	call   0x1040 <strcmp@plt>
--Type <RET> for more, q to quit, c to continue without paging--RET
   150b: <+162>:	add    $0x10,%esp
   150e: <+165>:	test   %eax,%eax           
   1510: <+167>:	je     0x1517 <segundaBomba+174>
   1512: <+169>:	call   0x122d <boom>
   1517: <+174>:	sub    $0xc,%esp
   151a: <+177>:	lea    -0x1f20(%ebx),%eax
   1520: <+183>:	push   %eax
   1521: <+184>:	call   0x10a0 <puts@plt>
   1526: <+189>:	add    $0x10,%esp
   1529: <+192>:	nop
   152a: <+193>:	mov    -0xc(%ebp),%eax
   152d: <+196>:	sub    %gs:0x14,%eax
   1534: <+203>:	je     0x153b <segundaBomba+210>
   1536: <+205>:	call   0x1820 <__stack_chk_fail_local>
   153b: <+210>:	mov    -0x4(%ebp),%ebx
   153e: <+213>:	leave  
   153f: <+214>:	ret    
