// disass boom


Dump of assembler code for function boom:
   122d: <+0>:	    push   %ebp
   122e: <+1>:	    mov    %esp,%ebp
   1230: <+3>: 	    push   %ebx
   1231: <+4>:	    sub    $0x4,%esp
   1234: <+7>:	    call   0x1130 <__x86.get_pc_thunk.bx>
   1239: <+12>:	    add    $0x2dc7,%ebx
   123f: <+18>: 	sub    $0xc,%esp
   1242: <+21>:	    lea    -0x1ff8(%ebx),%eax
   1248: <+27>:	    push   %eax
   1249: <+28>:	    call   0x10a0 <puts@plt>
   124e: <+33>:	    add    $0x10,%esp
   1251: <+36>:	    sub    $0xc,%esp
   1254: <+39>:	    push   $0x1
   1256: <+41>:	    call   0x10b0 <exit@plt>
