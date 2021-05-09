0000125b <inicializa>:
    125b:	55                   	push   %ebp
    125c:	89 e5                	mov    %esp,%ebp
    125e:	53                   	push   %ebx
    125f:	81 ec 24 08 00 00    	sub    $0x824,%esp
    1265:	e8 c6 fe ff ff       	call   1130 <__x86.get_pc_thunk.bx>
    126a:	81 c3 96 2d 00 00    	add    $0x2d96,%ebx
    1270:	8b 45 08             	mov    0x8(%ebp),%eax
    1273:	89 85 e4 f7 ff ff    	mov    %eax,-0x81c(%ebp)
    1279:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    127f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1282:	31 c0                	xor    %eax,%eax
    1284:	83 ec 08             	sub    $0x8,%esp
    1287:	8d 83 1b e0 ff ff    	lea    -0x1fe5(%ebx),%eax
    128d:	50                   	push   %eax
    128e:	8d 83 1d e0 ff ff    	lea    -0x1fe3(%ebx),%eax
    1294:	50                   	push   %eax
    1295:	e8 46 fe ff ff       	call   10e0 <fopen@plt>
    129a:	83 c4 10             	add    $0x10,%esp
    129d:	89 85 f0 f7 ff ff    	mov    %eax,-0x810(%ebp)
    12a3:	83 bd f0 f7 ff ff 00 	cmpl   $0x0,-0x810(%ebp)
    12aa:	74 46                	je     12f2 <inicializa+0x97>
    12ac:	ff b5 f0 f7 ff ff    	pushl  -0x810(%ebp)
    12b2:	6a 1d                	push   $0x1d
    12b4:	6a 01                	push   $0x1
    12b6:	8d 83 28 e0 ff ff    	lea    -0x1fd8(%ebx),%eax
    12bc:	50                   	push   %eax
    12bd:	e8 ce fd ff ff       	call   1090 <fwrite@plt>
    12c2:	83 c4 10             	add    $0x10,%esp
    12c5:	83 ec 0c             	sub    $0xc,%esp
    12c8:	ff b5 f0 f7 ff ff    	pushl  -0x810(%ebp)
    12ce:	e8 8d fd ff ff       	call   1060 <fclose@plt>
    12d3:	83 c4 10             	add    $0x10,%esp
    12d6:	83 ec 0c             	sub    $0xc,%esp
    12d9:	6a 01                	push   $0x1
    12db:	e8 90 fd ff ff       	call   1070 <sleep@plt>
    12e0:	83 c4 10             	add    $0x10,%esp
    12e3:	90                   	nop
    12e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12e7:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    12ee:	74 34                	je     1324 <inicializa+0xc9>
    12f0:	eb 2d                	jmp    131f <inicializa+0xc4>
    12f2:	83 ec 0c             	sub    $0xc,%esp
    12f5:	8d 83 48 e0 ff ff    	lea    -0x1fb8(%ebx),%eax
    12fb:	50                   	push   %eax
    12fc:	e8 9f fd ff ff       	call   10a0 <puts@plt>
    1301:	83 c4 10             	add    $0x10,%esp
    1304:	83 ec 0c             	sub    $0xc,%esp
    1307:	ff b5 f0 f7 ff ff    	pushl  -0x810(%ebp)
    130d:	e8 4e fd ff ff       	call   1060 <fclose@plt>
    1312:	83 c4 10             	add    $0x10,%esp
    1315:	83 ec 0c             	sub    $0xc,%esp
    1318:	6a 01                	push   $0x1
    131a:	e8 91 fd ff ff       	call   10b0 <exit@plt>
    131f:	e8 fc 04 00 00       	call   1820 <__stack_chk_fail_local>
    1324:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1327:	c9                   	leave  
    1328:	c3                   	ret 