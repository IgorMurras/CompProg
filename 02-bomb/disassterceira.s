// disass terceiraBomba

Dump of assembler code for function terceiraBomba:
  1540: <+0>:	    push   %ebp
   1541: <+1>:	    mov    %esp,%ebp
   1543: <+3>:	    push   %ebx
   1544: <+4>:	    sub    $0x14,%esp
   1547: <+7>:	    call   0x1130 <__x86.get_pc_thunk.bx>
   154c: <+12>:	    add    $0x2ab4,%ebx
   1552: <+18>:	    lea    -0x1f00(%ebx),%eax
   1558: <+24>:	    mov    %eax,-0xc(%ebp)
   155b: <+27>:	    sub    $0x8,%esp
   155e: <+30>:	    pushl  0x8(%ebp)
   1561: <+33>:	    pushl  -0xc(%ebp)
   1564: <+36>:	    call   0x1040 <strcmp@plt>
   1569: <+41>:	    add    $0x10,%esp
   156c: <+44>:	    test   %eax,%eax
   156e: <+46>:	    jne    0x1577 <terceiraBomba+55>
   1570: <+48>:	    call   0x122d <boom>
   1575: <+53>:	    jmp    0x15e9 <terceiraBomba+169>
   1577: <+55>:	    sub    $0x8,%esp
   157a: <+58>:	    pushl  0x8(%ebp)
   157d: <+61>:	    lea    -0x1efa(%ebx),%eax
   1583: <+67>:	    push   %eax
   1584: <+68>:	    call   0x1040 <strcmp@plt>
   1589: <+73>:	    add    $0x10,%esp
   158c: <+76>:	    test   %eax,%eax
   158e: <+78>:	    jne    0x1597 <terceiraBomba+87>
   1590: <+80>:	    call   0x122d <boom>
   1595: <+85>:	    jmp    0x15e9 <terceiraBomba+169>
   1597: <+87>:	    sub    $0x8,%esp
   159a: <+90>:	    pushl  0x8(%ebp)
   159d: <+93>:	    lea    -0x1eec(%ebx),%eax
   15a3: <+99>:	    push   %eax
   15a4: <+100>:	call   0x1040 <strcmp@plt>
--Type <RET> for more, q to quit, c to continue without paging--RET
   15a9: <+105>:	add    $0x10,%esp
   15ac: <+108>:	test   %eax,%eax
   15ae: <+110>:	jne    0x15b7 <terceiraBomba+119>
   15b0: <+112>:	call   0x122d <boom>
   15b5: <+117>:	jmp    0x15e9 <terceiraBomba+169>
   15b7: <+119>:	sub    $0x8,%esp
   15ba: <+122>:	pushl  0x8(%ebp)
   15bd: <+125>:	lea    -0x1edc(%ebx),%eax
   15c3: <+131>:	push   %eax
   15c4: <+132>:	call   0x1040 <strcmp@plt>
   15c9: <+137>:	add    $0x10,%esp
   15cc: <+140>:	test   %eax,%eax
   15ce: <+142>:	jne    0x15e4 <terceiraBomba+164>
   15d0: <+144>:	sub    $0xc,%esp
   15d3: <+147>:	lea    -0x1ebc(%ebx),%eax
   15d9: <+153>:	push   %eax
   15da: <+154>:	call   0x10a0 <puts@plt>
   15df: <+159>:	add    $0x10,%esp
   15e2: <+162>:	jmp    0x15e9 <terceiraBomba+169>
   15e4: <+164>:	call   0x122d <boom>
   15e9: <+169>:	nop
   15ea: <+170>:	mov    -0x4(%ebp),%ebx
   15ed: <+173>:	leave  
   15ee: <+174>:	ret    
