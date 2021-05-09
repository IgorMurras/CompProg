    // disass primeiraBomba

Dump of assembler code for function primeiraBomba:
1329: <+0>:     push   %ebp                  /*cria registro de ativação*/
132a: <+1>:	    mov    %esp,%ebp              /*coloca ebp na base da pilha*/  
132c: <+3>:	    push   %ebx                     /*insere ebx*/
132d: <+4>:	    sub    $0x4,%esp                /*abre espaço*/
1330: <+7>:	    call   0x1130 <__x86.get_pc_thunk.bx>               /*CHAMA ROTINA*/
1335: <+12>:	add    $0x2ccb,%ebx                     /*faz soma em ebx*/
133b: <+18>:	mov    0x8(%ebp),%eax           /*passa conteúdo de ebp+8 para eax*/
133e: <+21>:	movzbl (%eax),%eax                  /*move conteúdo de eax para o endereço de eax*/
1341: <+24>:	cmp    $0x4d,%al                    /*compara al*/
1343: <+26>:	je     0x1353 <primeiraBomba+42>                /**/
1345: <+28>:	mov    0x8(%ebp),%eax               /**/
1348: <+31>:	movzbl (%eax),%eax              /**/
134b: <+34>:	cmp    $0x6d,%al                /**/
134d: <+36>:	jne    0x144c <primeiraBomba+291>                   /**/
1353: <+42>:	mov    0x8(%ebp),%eax               /**/
1356: <+45>:	add    $0x1,%eax                /**/
1359: <+48>:	movzbl (%eax),%eax                  /**/
135c: <+51>:	cmp    $0x61,%al            /**/
135e: <+53>:	jne    0x144c <primeiraBomba+291>           /**/
1364: <+59>:	mov    0x8(%ebp),%eax               /**/
1367: <+62>:	add    $0x2,%eax            /**/
136a: <+65>:	movzbl (%eax),%eax              /**/
136d: <+68>:	cmp    $0x62,%al                    /**/
136f: <+70>:	jne    0x144c <primeiraBomba+291>           /**/
1375: <+76>:	mov    0x8(%ebp),%eax                   /**/
1378: <+79>:	add    $0x3,%eax                        /**/
137b: <+82>:	movzbl (%eax),%eax                  /**/
137e: <+85>:	cmp    $0x20,%al                        /**/
1380: <+87>:	jne    0x144c <primeiraBomba+291>               /**/
1386: <+93>:	mov    0x8(%ebp),%eax                       /**/
1389: <+96>:	add    $0x4,%eax                        /**/
138c: <+99>:	movzbl (%eax),%eax                              /**/
--Type <RET> for more, q to quit, c to continue without paging--RET
138f: <+102>:	cmp    $0x2d,%al                              /**/
1391: <+104>:	jne    0x144c <primeiraBomba+291>                              /**/
1397: <+110>:	mov    0x8(%ebp),%eax                              /**/
139a: <+113>:	add    $0x5,%eax
139d: <+116>:	movzbl (%eax),%eax                              /**/
13a0: <+119>:	cmp    $0x20,%al                              /**/
13a2: <+121>:	jne    0x144c <primeiraBomba+291>                              /**/
13a8: <+127>:	mov    0x8(%ebp),%eax                              /**/
13ab: <+130>:	add    $0x6,%eax                              /**/
13ae: <+133>:	movzbl (%eax),%eax                              /**/
13b1: <+136>:	cmp    $0x33,%al                              /**/
13b3: <+138>:	jne    0x144c <primeiraBomba+291>                              /**/
13b9: <+144>:	mov    0x8(%ebp),%eax                              /**/
13bc: <+147>:	add    $0x7,%eax                              /**/
13bf: <+150>:	movzbl (%eax),%eax                              /**/
13c2: <+153>:	cmp    $0x35,%al                              /**/
13c4: <+155>:	jne    0x144c <primeiraBomba+291>                              /**/
13ca: <+161>:	mov    0x8(%ebp),%eax                              /**/
13cd: <+164>:	add    $0x8,%eax                              /**/
13d0: <+167>:	movzbl (%eax),%eax                              /**/
13d3: <+170>:	cmp    $0x33,%al                              /**/
13d5: <+172>:	jne    0x144c <primeiraBomba+291>                              /**/
13d7: <+174>:	mov    0x8(%ebp),%eax                              /**/
13da: <+177>:	add    $0x9,%eax                              /**/
13dd: <+180>:	movzbl (%eax),%eax                              /**/
13e0: <+183>:	cmp    $0x20,%al                              /**/
13e2: <+185>:	jne    0x144c <primeiraBomba+291>                              /**/
13e4: <+187>:	mov    0x8(%ebp),%eax                              /**/
13e7: <+190>:	add    $0xa,%eax                              /**/
13ea: <+193>:	movzbl (%eax),%eax                              /**/
13ed: <+196>:	cmp    $0x2d,%al                              /**/
13ef: <+198>:	jne    0x144c <primeiraBomba+291>                              /**/
13f1: <+200>:	mov    0x8(%ebp),%eax                              /**/ 
--Type <RET> for more, q to quit, c to continue without paging--RET/**/
13f4: <+203>:	add    $0xb,%eax/**/
13f7: <+206>:	movzbl (%eax),%eax/**/
13fa: <+209>:	cmp    $0x20,%al/**/
13fc: <+211>:	jne    0x144c <primeiraBomba+291>/**/
13fe: <+213>:	mov    0x8(%ebp),%eax/**/
1401: <+216>:	add    $0xc,%eax/**/
1404: <+219>:	movzbl (%eax),%eax/**/
1407: <+222>:	cmp    $0x32,%al/**/
1409: <+224>:	jne    0x144c <primeiraBomba+291>/**/
140b: <+226>:	mov    0x8(%ebp),%eax/**/
140e: <+229>:	add    $0xd,%eax/**/
1411: <+232>:	movzbl (%eax),%eax/**/
1414: <+235>:	cmp    $0x30,%al/**/
1416: <+237>:	jne    0x144c <primeiraBomba+291>/**/
1418: <+239>:	mov    0x8(%ebp),%eax/**/
141b: <+242>:	add    $0xe,%eax/**/
141e: <+245>:	movzbl (%eax),%eax/**/
1421: <+248>:	cmp    $0x32,%al/**/
1423: <+250>:	jne    0x144c <primeiraBomba+291>/**/
1425: <+252>:	mov    0x8(%ebp),%eax/**/
1428: <+255>:	add    $0xf,%eax/**/
142b: <+258>:	movzbl (%eax),%eax/**/
142e: <+261>:	cmp    $0x30,%al/**/
1430: <+263>:	jne    0x144c <primeiraBomba+291>/**/
1432: <+265>:	mov    0x8(%ebp),%eax/**/
1435: <+268>:	add    $0x10,%eax/**/
1438: <+271>:	movzbl (%eax),%eax/**/
143b: <+274>:	cmp    $0x2e,%al/**/
143d: <+276>:	jne    0x144c <primeiraBomba+291>/**/
143f: <+278>:	mov    0x8(%ebp),%eax/**/
1442: <+281>:	add    $0x11,%eax/**/
1445: <+284>:	movzbl (%eax),%eax/**/
1448: <+287>:	cmp    $0x32,%al/**/
--Type <RET> for more, q to quit, c to continue without paging--RET/**/
144a: <+289>:	je     0x1451 <primeiraBomba+296>/**/
144c: <+291>:	call   0x122d <boom>/**/
1451: <+296>:	sub    $0xc,%esp/**/
1454: <+299>:	lea    -0x1f44(%ebx),%eax/**/
145a: <+305>:	push   %eax/**/
145b: <+306>:	call   0x10a0 <puts@plt>/**/
1460: <+311>:	add    $0x10,%esp/**/
1463: <+314>:	nop/**/
1464: <+315>:	mov    -0x4(%ebp),%ebx/**/
1467: <+318>:	leave  /**/
1468: <+319>:	ret    /**/
