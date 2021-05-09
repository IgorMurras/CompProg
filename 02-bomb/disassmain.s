// disass main
Dump of assembler code for function main:
16d5: <+0>:	   lea    0x4(%esp),%ecx      //ecx é referencia para volta do esp
16d9: <+4>:	   and    $0xfffffff0,%esp    //alinha esp em mult. de 16
16dc: <+7>:	   pushl  -0x4(%ecx)          //salva endereço para retorno de esp
16df: <+10>:	push   %ebp                //salva endereço para retorno de ebp
16e0: <+11>:	mov    %esp,%ebp           //insere ebp na pilha
16e2: <+13>:	push   %esi                //insere esi na pilha
16e3: <+14>:	push   %ebx                //insere ebx na pilha
16e4: <+15>:	push   %ecx                //insere ecx na pilha
16e5: <+16>:	sub    $0xc,%esp                             //abre 3 espaços
16e8: <+19>:	call   0x179a <__x86.get_pc_thunk.si>        //NÃO SEI!//
16ed: <+24>:	add    $0x2913,%esi                    //adiciona 0x2913 ao esi
16f3: <+30>:	mov    %ecx,%ebx                       //ebx é referenciapara volta do esp
16f5: <+32>:	mov    0x4(%ebx),%eax                  //eax 
16f8: <+35>:	mov    (%eax),%eax
16fa: <+37>:	sub    $0xc,%esp
16fd: <+40>:	push   %eax
16fe: <+41>:	call   0x125b <inicializa>
1703: <+46>:	add    $0x10,%esp
1706: <+49>:	cmpl   $0x1,(%ebx)
1709: <+52>:	jle    0x1785 <main+176>
170b: <+54>:	mov    0x4(%ebx),%eax
170e: <+57>:	add    $0x4,%eax
1711: <+60>:	mov    (%eax),%eax
1713: <+62>:	sub    $0xc,%esp
1716: <+65>:	push   %eax
1717: <+66>:	call   0x1329 <primeiraBomba>
171c: <+71>:	add    $0x10,%esp
171f: <+74>:	cmpl   $0x2,(%ebx)
1722: <+77>:	jle    0x1785 <main+176>
1724: <+79>:	mov    0x4(%ebx),%eax
1727: <+82>:	add    $0x8,%eax
172a: <+85>:	mov    (%eax),%eax
--Type <RET> for more, q to quit, c to continue without paging--RET
172c: <+87>:	sub      $0xc,%esp
172f: <+90>:	push      %eax
1730: <+91>:	call      0x1469 <segundaBomba>
1735: <+96>:	add       $0x10,%esp
1738: <+99>:	cmpl      $0x3,(%ebx)
173b: <+102>:	jle    0x1785 <main+176>
173d: <+104>:	mov    0x4(%ebx),%eax
1740: <+107>:	add    $0xc,%eax
1743: <+110>:	mov    (%eax),%eax
1745: <+112>:	sub    $0xc,%esp
1748: <+115>:	push   %eax
1749: <+116>:	call   0x1540 <terceiraBomba>
174e: <+121>:	add    $0x10,%esp
1751: <+124>:	cmpl   $0x4,(%ebx)
1754: <+127>:	jle    0x1785 <main+176>
1756: <+129>:	mov    0x4(%ebx),%eax
1759: <+132>:	add    $0x10,%eax
175c: <+135>:	mov    (%eax),%eax
175e: <+137>:	sub    $0xc,%esp
1761: <+140>:	push   %eax
1762: <+141>:	call   0x15ef <quartaBomba>
1767: <+146>:	add    $0x10,%esp
176a: <+149>:	sub    $0xc,%esp
176d: <+152>:	lea    -0x1e78(%esi),%eax
1773: <+158>:	push   %eax
1774 <+159>:	mov    %esi,%ebx
1776: <+161>:	call   0x10a0 <puts@plt>
177b: <+166>:	add    $0x10,%esp
177e: <+169>:	mov    $0x0,%eax
1783: <+174>:	jmp    0x178f <main+186>
1785: <+176>:	call   0x122d <boom>
178a: <+181>:	mov    $0x0,%eax
178f: <+186>:	lea    -0xc(%ebp),%esp
--Type <RET> for more, q to quit, c to continue without paging--RET
1792: <+189>:	pop    %ecx
1793: <+190>:	pop    %ebx
1794: <+191>:	pop    %esi
1795: <+192>:	pop    %ebp
1796: <+193>:	lea    -0x4(%ecx),%esp
1799: <+196>:	ret    
