// disass quartaBomba

Dump of assembler code for function quartaBomba:
   15ef: <+0>:	    push   %ebp
   15f0: <+1>:	    mov    %esp,%ebp
   15f2: <+3>:	    push   %ebx
   15f3: <+4>:	    sub    $0x824,%esp
   15f9: <+10>:	    call   0x1130 <__x86.get_pc_thunk.bx>
   15fe: <+15>:	    add    $0x2a02,%ebx
   1604: <+21>:	    mov    0x8(%ebp),%eax
   1607: <+24>:	    mov    %eax,-0x81c(%ebp)
   160d: <+30>:	    mov    %gs:0x14,%eax
   1613: <+36>:	    mov    %eax,-0xc(%ebp)
   1616: <+39>:	    xor    %eax,%eax
   1618: <+41>:	    sub    $0x8,%esp
   161b: <+44>:	    lea    -0x1e9b(%ebx),%eax --------------
   1621: <+50>:	    push   %eax
   1622: <+51>:	    lea    -0x1fe3(%ebx),%eax
   1628: <+57>:	    push   %eax
   1629: <+58>:	    call   0x10e0 <fopen@plt>
   162e: <+63>:	    add    $0x10,%esp
   1631: <+66>:	    mov    %eax,-0x810(%ebp)
   1637: <+72>:	    cmpl   $0x0,-0x810(%ebp)
   163e: <+79>:	    je     0x167a <quartaBomba+139>
   1640: <+81>:	    sub    $0x4,%esp
   1643: <+84>:	    pushl  -0x810(%ebp)
   1649: <+90>:	    push   $0x800
   164e: <+95>:	    lea    -0x80c(%ebp),%eax
   1654: <+101>:	push   %eax
   1655: <+102>:	call   0x1050 <fgets@plt>
   165a: <+107>:	add    $0x10,%esp
   165d: <+110>:	sub    $0xc,%esp
   1660: <+113>:	lea    -0x80c(%ebp),%eax
   1666: <+119>:	push   %eax
   1667: <+120>:	call   0x10c0 <strlen@plt>
--Type <RET> for more, q to quit, c to continue without paging--RET
   166c: <+125>:	add    $0x10,%esp
   166f: <+128>:	sub    $0x1,%eax
   1672: <+131>:	movb   $0x0,-0x80c(%ebp,%eax,1)
   167a: <+139>:	sub    $0xc,%esp
   167d: <+142>:	pushl  -0x810(%ebp)
   1683: <+148>:	call   0x1060 <fclose@plt>
   1688: <+153>:	add    $0x10,%esp
   168b: <+156>:	sub    $0x8,%esp
   168e: <+159>:	pushl  -0x81c(%ebp)
   1694: <+165>:	lea    -0x80c(%ebp),%eax
   169a: <+171>:	push   %eax
   169b: <+172>:	call    <strcmp@plt>
   16a0: <+177>:	add    $0x10,%esp
   16a3: <+180>:	test   %eax,%eax
   16a5: <+182>:	je     0x16ac <quartaBomba+189>
   16a7: <+184>:	call   0x122d <boom>
   16ac: <+189>:	sub    $0xc,%esp
   16af: <+192>:	lea    -0x1e98(%ebx),%eax
   16b5: <+198>:	push   %eax
   16b6: <+199>:	call   0x10a0 <puts@plt>
   16bb: <+204>:	add    $0x10,%esp
   16be: <+207>:	nop
   16bf: <+208>:	mov    -0xc(%ebp),%eax
   16c2: <+211>:	sub    %gs:0x14,%eax
   16c9: <+218>:	je     0x16d0 <quartaBomba+225>
   16cb: <+220>:	call   0x1820 <__stack_chk_fail_local>
   16d0: <+225>:	mov    -0x4(%ebp),%ebx
   16d3: <+228>:	leave  
   16d4: <+229>:	ret    
