
D:/workspace/clion/stmh743/cmake-build-release_arm_gcc/stmh743.elf:     file format elf32-littlearm


Disassembly of section .text:

080002a0 <__do_global_dtors_aux>:
 80002a0:	b510      	push	{r4, lr}
 80002a2:	4c05      	ldr	r4, [pc, #20]	@ (80002b8 <__do_global_dtors_aux+0x18>)
 80002a4:	7823      	ldrb	r3, [r4, #0]
 80002a6:	b933      	cbnz	r3, 80002b6 <__do_global_dtors_aux+0x16>
 80002a8:	4b04      	ldr	r3, [pc, #16]	@ (80002bc <__do_global_dtors_aux+0x1c>)
 80002aa:	b113      	cbz	r3, 80002b2 <__do_global_dtors_aux+0x12>
 80002ac:	4804      	ldr	r0, [pc, #16]	@ (80002c0 <__do_global_dtors_aux+0x20>)
 80002ae:	f3af 8000 	nop.w
 80002b2:	2301      	movs	r3, #1
 80002b4:	7023      	strb	r3, [r4, #0]
 80002b6:	bd10      	pop	{r4, pc}
 80002b8:	20000258 	.word	0x20000258
 80002bc:	00000000 	.word	0x00000000
 80002c0:	0800d5c0 	.word	0x0800d5c0

080002c4 <frame_dummy>:
 80002c4:	b508      	push	{r3, lr}
 80002c6:	4b03      	ldr	r3, [pc, #12]	@ (80002d4 <frame_dummy+0x10>)
 80002c8:	b11b      	cbz	r3, 80002d2 <frame_dummy+0xe>
 80002ca:	4903      	ldr	r1, [pc, #12]	@ (80002d8 <frame_dummy+0x14>)
 80002cc:	4803      	ldr	r0, [pc, #12]	@ (80002dc <frame_dummy+0x18>)
 80002ce:	f3af 8000 	nop.w
 80002d2:	bd08      	pop	{r3, pc}
 80002d4:	00000000 	.word	0x00000000
 80002d8:	2000025c 	.word	0x2000025c
 80002dc:	0800d5c0 	.word	0x0800d5c0

080002e0 <__aeabi_uldivmod>:
 80002e0:	b953      	cbnz	r3, 80002f8 <__aeabi_uldivmod+0x18>
 80002e2:	b94a      	cbnz	r2, 80002f8 <__aeabi_uldivmod+0x18>
 80002e4:	2900      	cmp	r1, #0
 80002e6:	bf08      	it	eq
 80002e8:	2800      	cmpeq	r0, #0
 80002ea:	bf1c      	itt	ne
 80002ec:	f04f 31ff 	movne.w	r1, #4294967295
 80002f0:	f04f 30ff 	movne.w	r0, #4294967295
 80002f4:	f000 b988 	b.w	8000608 <__aeabi_idiv0>
 80002f8:	f1ad 0c08 	sub.w	ip, sp, #8
 80002fc:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000300:	f000 f806 	bl	8000310 <__udivmoddi4>
 8000304:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000308:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800030c:	b004      	add	sp, #16
 800030e:	4770      	bx	lr

08000310 <__udivmoddi4>:
 8000310:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000314:	9d08      	ldr	r5, [sp, #32]
 8000316:	468e      	mov	lr, r1
 8000318:	4604      	mov	r4, r0
 800031a:	4688      	mov	r8, r1
 800031c:	2b00      	cmp	r3, #0
 800031e:	d14a      	bne.n	80003b6 <__udivmoddi4+0xa6>
 8000320:	428a      	cmp	r2, r1
 8000322:	4617      	mov	r7, r2
 8000324:	d962      	bls.n	80003ec <__udivmoddi4+0xdc>
 8000326:	fab2 f682 	clz	r6, r2
 800032a:	b14e      	cbz	r6, 8000340 <__udivmoddi4+0x30>
 800032c:	f1c6 0320 	rsb	r3, r6, #32
 8000330:	fa01 f806 	lsl.w	r8, r1, r6
 8000334:	fa20 f303 	lsr.w	r3, r0, r3
 8000338:	40b7      	lsls	r7, r6
 800033a:	ea43 0808 	orr.w	r8, r3, r8
 800033e:	40b4      	lsls	r4, r6
 8000340:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000344:	fa1f fc87 	uxth.w	ip, r7
 8000348:	fbb8 f1fe 	udiv	r1, r8, lr
 800034c:	0c23      	lsrs	r3, r4, #16
 800034e:	fb0e 8811 	mls	r8, lr, r1, r8
 8000352:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000356:	fb01 f20c 	mul.w	r2, r1, ip
 800035a:	429a      	cmp	r2, r3
 800035c:	d909      	bls.n	8000372 <__udivmoddi4+0x62>
 800035e:	18fb      	adds	r3, r7, r3
 8000360:	f101 30ff 	add.w	r0, r1, #4294967295
 8000364:	f080 80ea 	bcs.w	800053c <__udivmoddi4+0x22c>
 8000368:	429a      	cmp	r2, r3
 800036a:	f240 80e7 	bls.w	800053c <__udivmoddi4+0x22c>
 800036e:	3902      	subs	r1, #2
 8000370:	443b      	add	r3, r7
 8000372:	1a9a      	subs	r2, r3, r2
 8000374:	b2a3      	uxth	r3, r4
 8000376:	fbb2 f0fe 	udiv	r0, r2, lr
 800037a:	fb0e 2210 	mls	r2, lr, r0, r2
 800037e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 8000382:	fb00 fc0c 	mul.w	ip, r0, ip
 8000386:	459c      	cmp	ip, r3
 8000388:	d909      	bls.n	800039e <__udivmoddi4+0x8e>
 800038a:	18fb      	adds	r3, r7, r3
 800038c:	f100 32ff 	add.w	r2, r0, #4294967295
 8000390:	f080 80d6 	bcs.w	8000540 <__udivmoddi4+0x230>
 8000394:	459c      	cmp	ip, r3
 8000396:	f240 80d3 	bls.w	8000540 <__udivmoddi4+0x230>
 800039a:	443b      	add	r3, r7
 800039c:	3802      	subs	r0, #2
 800039e:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
 80003a2:	eba3 030c 	sub.w	r3, r3, ip
 80003a6:	2100      	movs	r1, #0
 80003a8:	b11d      	cbz	r5, 80003b2 <__udivmoddi4+0xa2>
 80003aa:	40f3      	lsrs	r3, r6
 80003ac:	2200      	movs	r2, #0
 80003ae:	e9c5 3200 	strd	r3, r2, [r5]
 80003b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80003b6:	428b      	cmp	r3, r1
 80003b8:	d905      	bls.n	80003c6 <__udivmoddi4+0xb6>
 80003ba:	b10d      	cbz	r5, 80003c0 <__udivmoddi4+0xb0>
 80003bc:	e9c5 0100 	strd	r0, r1, [r5]
 80003c0:	2100      	movs	r1, #0
 80003c2:	4608      	mov	r0, r1
 80003c4:	e7f5      	b.n	80003b2 <__udivmoddi4+0xa2>
 80003c6:	fab3 f183 	clz	r1, r3
 80003ca:	2900      	cmp	r1, #0
 80003cc:	d146      	bne.n	800045c <__udivmoddi4+0x14c>
 80003ce:	4573      	cmp	r3, lr
 80003d0:	d302      	bcc.n	80003d8 <__udivmoddi4+0xc8>
 80003d2:	4282      	cmp	r2, r0
 80003d4:	f200 8105 	bhi.w	80005e2 <__udivmoddi4+0x2d2>
 80003d8:	1a84      	subs	r4, r0, r2
 80003da:	eb6e 0203 	sbc.w	r2, lr, r3
 80003de:	2001      	movs	r0, #1
 80003e0:	4690      	mov	r8, r2
 80003e2:	2d00      	cmp	r5, #0
 80003e4:	d0e5      	beq.n	80003b2 <__udivmoddi4+0xa2>
 80003e6:	e9c5 4800 	strd	r4, r8, [r5]
 80003ea:	e7e2      	b.n	80003b2 <__udivmoddi4+0xa2>
 80003ec:	2a00      	cmp	r2, #0
 80003ee:	f000 8090 	beq.w	8000512 <__udivmoddi4+0x202>
 80003f2:	fab2 f682 	clz	r6, r2
 80003f6:	2e00      	cmp	r6, #0
 80003f8:	f040 80a4 	bne.w	8000544 <__udivmoddi4+0x234>
 80003fc:	1a8a      	subs	r2, r1, r2
 80003fe:	0c03      	lsrs	r3, r0, #16
 8000400:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000404:	b280      	uxth	r0, r0
 8000406:	b2bc      	uxth	r4, r7
 8000408:	2101      	movs	r1, #1
 800040a:	fbb2 fcfe 	udiv	ip, r2, lr
 800040e:	fb0e 221c 	mls	r2, lr, ip, r2
 8000412:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 8000416:	fb04 f20c 	mul.w	r2, r4, ip
 800041a:	429a      	cmp	r2, r3
 800041c:	d907      	bls.n	800042e <__udivmoddi4+0x11e>
 800041e:	18fb      	adds	r3, r7, r3
 8000420:	f10c 38ff 	add.w	r8, ip, #4294967295
 8000424:	d202      	bcs.n	800042c <__udivmoddi4+0x11c>
 8000426:	429a      	cmp	r2, r3
 8000428:	f200 80e0 	bhi.w	80005ec <__udivmoddi4+0x2dc>
 800042c:	46c4      	mov	ip, r8
 800042e:	1a9b      	subs	r3, r3, r2
 8000430:	fbb3 f2fe 	udiv	r2, r3, lr
 8000434:	fb0e 3312 	mls	r3, lr, r2, r3
 8000438:	ea40 4303 	orr.w	r3, r0, r3, lsl #16
 800043c:	fb02 f404 	mul.w	r4, r2, r4
 8000440:	429c      	cmp	r4, r3
 8000442:	d907      	bls.n	8000454 <__udivmoddi4+0x144>
 8000444:	18fb      	adds	r3, r7, r3
 8000446:	f102 30ff 	add.w	r0, r2, #4294967295
 800044a:	d202      	bcs.n	8000452 <__udivmoddi4+0x142>
 800044c:	429c      	cmp	r4, r3
 800044e:	f200 80ca 	bhi.w	80005e6 <__udivmoddi4+0x2d6>
 8000452:	4602      	mov	r2, r0
 8000454:	1b1b      	subs	r3, r3, r4
 8000456:	ea42 400c 	orr.w	r0, r2, ip, lsl #16
 800045a:	e7a5      	b.n	80003a8 <__udivmoddi4+0x98>
 800045c:	f1c1 0620 	rsb	r6, r1, #32
 8000460:	408b      	lsls	r3, r1
 8000462:	fa22 f706 	lsr.w	r7, r2, r6
 8000466:	431f      	orrs	r7, r3
 8000468:	fa0e f401 	lsl.w	r4, lr, r1
 800046c:	fa20 f306 	lsr.w	r3, r0, r6
 8000470:	fa2e fe06 	lsr.w	lr, lr, r6
 8000474:	ea4f 4917 	mov.w	r9, r7, lsr #16
 8000478:	4323      	orrs	r3, r4
 800047a:	fa00 f801 	lsl.w	r8, r0, r1
 800047e:	fa1f fc87 	uxth.w	ip, r7
 8000482:	fbbe f0f9 	udiv	r0, lr, r9
 8000486:	0c1c      	lsrs	r4, r3, #16
 8000488:	fb09 ee10 	mls	lr, r9, r0, lr
 800048c:	ea44 440e 	orr.w	r4, r4, lr, lsl #16
 8000490:	fb00 fe0c 	mul.w	lr, r0, ip
 8000494:	45a6      	cmp	lr, r4
 8000496:	fa02 f201 	lsl.w	r2, r2, r1
 800049a:	d909      	bls.n	80004b0 <__udivmoddi4+0x1a0>
 800049c:	193c      	adds	r4, r7, r4
 800049e:	f100 3aff 	add.w	sl, r0, #4294967295
 80004a2:	f080 809c 	bcs.w	80005de <__udivmoddi4+0x2ce>
 80004a6:	45a6      	cmp	lr, r4
 80004a8:	f240 8099 	bls.w	80005de <__udivmoddi4+0x2ce>
 80004ac:	3802      	subs	r0, #2
 80004ae:	443c      	add	r4, r7
 80004b0:	eba4 040e 	sub.w	r4, r4, lr
 80004b4:	fa1f fe83 	uxth.w	lr, r3
 80004b8:	fbb4 f3f9 	udiv	r3, r4, r9
 80004bc:	fb09 4413 	mls	r4, r9, r3, r4
 80004c0:	ea4e 4404 	orr.w	r4, lr, r4, lsl #16
 80004c4:	fb03 fc0c 	mul.w	ip, r3, ip
 80004c8:	45a4      	cmp	ip, r4
 80004ca:	d908      	bls.n	80004de <__udivmoddi4+0x1ce>
 80004cc:	193c      	adds	r4, r7, r4
 80004ce:	f103 3eff 	add.w	lr, r3, #4294967295
 80004d2:	f080 8082 	bcs.w	80005da <__udivmoddi4+0x2ca>
 80004d6:	45a4      	cmp	ip, r4
 80004d8:	d97f      	bls.n	80005da <__udivmoddi4+0x2ca>
 80004da:	3b02      	subs	r3, #2
 80004dc:	443c      	add	r4, r7
 80004de:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 80004e2:	eba4 040c 	sub.w	r4, r4, ip
 80004e6:	fba0 ec02 	umull	lr, ip, r0, r2
 80004ea:	4564      	cmp	r4, ip
 80004ec:	4673      	mov	r3, lr
 80004ee:	46e1      	mov	r9, ip
 80004f0:	d362      	bcc.n	80005b8 <__udivmoddi4+0x2a8>
 80004f2:	d05f      	beq.n	80005b4 <__udivmoddi4+0x2a4>
 80004f4:	b15d      	cbz	r5, 800050e <__udivmoddi4+0x1fe>
 80004f6:	ebb8 0203 	subs.w	r2, r8, r3
 80004fa:	eb64 0409 	sbc.w	r4, r4, r9
 80004fe:	fa04 f606 	lsl.w	r6, r4, r6
 8000502:	fa22 f301 	lsr.w	r3, r2, r1
 8000506:	431e      	orrs	r6, r3
 8000508:	40cc      	lsrs	r4, r1
 800050a:	e9c5 6400 	strd	r6, r4, [r5]
 800050e:	2100      	movs	r1, #0
 8000510:	e74f      	b.n	80003b2 <__udivmoddi4+0xa2>
 8000512:	fbb1 fcf2 	udiv	ip, r1, r2
 8000516:	0c01      	lsrs	r1, r0, #16
 8000518:	ea41 410e 	orr.w	r1, r1, lr, lsl #16
 800051c:	b280      	uxth	r0, r0
 800051e:	ea40 4201 	orr.w	r2, r0, r1, lsl #16
 8000522:	463b      	mov	r3, r7
 8000524:	4638      	mov	r0, r7
 8000526:	463c      	mov	r4, r7
 8000528:	46b8      	mov	r8, r7
 800052a:	46be      	mov	lr, r7
 800052c:	2620      	movs	r6, #32
 800052e:	fbb1 f1f7 	udiv	r1, r1, r7
 8000532:	eba2 0208 	sub.w	r2, r2, r8
 8000536:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
 800053a:	e766      	b.n	800040a <__udivmoddi4+0xfa>
 800053c:	4601      	mov	r1, r0
 800053e:	e718      	b.n	8000372 <__udivmoddi4+0x62>
 8000540:	4610      	mov	r0, r2
 8000542:	e72c      	b.n	800039e <__udivmoddi4+0x8e>
 8000544:	f1c6 0220 	rsb	r2, r6, #32
 8000548:	fa2e f302 	lsr.w	r3, lr, r2
 800054c:	40b7      	lsls	r7, r6
 800054e:	40b1      	lsls	r1, r6
 8000550:	fa20 f202 	lsr.w	r2, r0, r2
 8000554:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000558:	430a      	orrs	r2, r1
 800055a:	fbb3 f8fe 	udiv	r8, r3, lr
 800055e:	b2bc      	uxth	r4, r7
 8000560:	fb0e 3318 	mls	r3, lr, r8, r3
 8000564:	0c11      	lsrs	r1, r2, #16
 8000566:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 800056a:	fb08 f904 	mul.w	r9, r8, r4
 800056e:	40b0      	lsls	r0, r6
 8000570:	4589      	cmp	r9, r1
 8000572:	ea4f 4310 	mov.w	r3, r0, lsr #16
 8000576:	b280      	uxth	r0, r0
 8000578:	d93e      	bls.n	80005f8 <__udivmoddi4+0x2e8>
 800057a:	1879      	adds	r1, r7, r1
 800057c:	f108 3cff 	add.w	ip, r8, #4294967295
 8000580:	d201      	bcs.n	8000586 <__udivmoddi4+0x276>
 8000582:	4589      	cmp	r9, r1
 8000584:	d81f      	bhi.n	80005c6 <__udivmoddi4+0x2b6>
 8000586:	eba1 0109 	sub.w	r1, r1, r9
 800058a:	fbb1 f9fe 	udiv	r9, r1, lr
 800058e:	fb09 f804 	mul.w	r8, r9, r4
 8000592:	fb0e 1119 	mls	r1, lr, r9, r1
 8000596:	b292      	uxth	r2, r2
 8000598:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 800059c:	4542      	cmp	r2, r8
 800059e:	d229      	bcs.n	80005f4 <__udivmoddi4+0x2e4>
 80005a0:	18ba      	adds	r2, r7, r2
 80005a2:	f109 31ff 	add.w	r1, r9, #4294967295
 80005a6:	d2c4      	bcs.n	8000532 <__udivmoddi4+0x222>
 80005a8:	4542      	cmp	r2, r8
 80005aa:	d2c2      	bcs.n	8000532 <__udivmoddi4+0x222>
 80005ac:	f1a9 0102 	sub.w	r1, r9, #2
 80005b0:	443a      	add	r2, r7
 80005b2:	e7be      	b.n	8000532 <__udivmoddi4+0x222>
 80005b4:	45f0      	cmp	r8, lr
 80005b6:	d29d      	bcs.n	80004f4 <__udivmoddi4+0x1e4>
 80005b8:	ebbe 0302 	subs.w	r3, lr, r2
 80005bc:	eb6c 0c07 	sbc.w	ip, ip, r7
 80005c0:	3801      	subs	r0, #1
 80005c2:	46e1      	mov	r9, ip
 80005c4:	e796      	b.n	80004f4 <__udivmoddi4+0x1e4>
 80005c6:	eba7 0909 	sub.w	r9, r7, r9
 80005ca:	4449      	add	r1, r9
 80005cc:	f1a8 0c02 	sub.w	ip, r8, #2
 80005d0:	fbb1 f9fe 	udiv	r9, r1, lr
 80005d4:	fb09 f804 	mul.w	r8, r9, r4
 80005d8:	e7db      	b.n	8000592 <__udivmoddi4+0x282>
 80005da:	4673      	mov	r3, lr
 80005dc:	e77f      	b.n	80004de <__udivmoddi4+0x1ce>
 80005de:	4650      	mov	r0, sl
 80005e0:	e766      	b.n	80004b0 <__udivmoddi4+0x1a0>
 80005e2:	4608      	mov	r0, r1
 80005e4:	e6fd      	b.n	80003e2 <__udivmoddi4+0xd2>
 80005e6:	443b      	add	r3, r7
 80005e8:	3a02      	subs	r2, #2
 80005ea:	e733      	b.n	8000454 <__udivmoddi4+0x144>
 80005ec:	f1ac 0c02 	sub.w	ip, ip, #2
 80005f0:	443b      	add	r3, r7
 80005f2:	e71c      	b.n	800042e <__udivmoddi4+0x11e>
 80005f4:	4649      	mov	r1, r9
 80005f6:	e79c      	b.n	8000532 <__udivmoddi4+0x222>
 80005f8:	eba1 0109 	sub.w	r1, r1, r9
 80005fc:	46c4      	mov	ip, r8
 80005fe:	fbb1 f9fe 	udiv	r9, r1, lr
 8000602:	fb09 f804 	mul.w	r8, r9, r4
 8000606:	e7c4      	b.n	8000592 <__udivmoddi4+0x282>

08000608 <__aeabi_idiv0>:
 8000608:	4770      	bx	lr
 800060a:	bf00      	nop
 800060c:	0000      	movs	r0, r0
	...

08000610 <memchr>:
 8000610:	f001 01ff 	and.w	r1, r1, #255	@ 0xff
 8000614:	2a10      	cmp	r2, #16
 8000616:	db2b      	blt.n	8000670 <memchr+0x60>
 8000618:	f010 0f07 	tst.w	r0, #7
 800061c:	d008      	beq.n	8000630 <memchr+0x20>
 800061e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000622:	3a01      	subs	r2, #1
 8000624:	428b      	cmp	r3, r1
 8000626:	d02d      	beq.n	8000684 <memchr+0x74>
 8000628:	f010 0f07 	tst.w	r0, #7
 800062c:	b342      	cbz	r2, 8000680 <memchr+0x70>
 800062e:	d1f6      	bne.n	800061e <memchr+0xe>
 8000630:	b4f0      	push	{r4, r5, r6, r7}
 8000632:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000636:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800063a:	f022 0407 	bic.w	r4, r2, #7
 800063e:	f07f 0700 	mvns.w	r7, #0
 8000642:	2300      	movs	r3, #0
 8000644:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000648:	3c08      	subs	r4, #8
 800064a:	ea85 0501 	eor.w	r5, r5, r1
 800064e:	ea86 0601 	eor.w	r6, r6, r1
 8000652:	fa85 f547 	uadd8	r5, r5, r7
 8000656:	faa3 f587 	sel	r5, r3, r7
 800065a:	fa86 f647 	uadd8	r6, r6, r7
 800065e:	faa5 f687 	sel	r6, r5, r7
 8000662:	b98e      	cbnz	r6, 8000688 <memchr+0x78>
 8000664:	d1ee      	bne.n	8000644 <memchr+0x34>
 8000666:	bcf0      	pop	{r4, r5, r6, r7}
 8000668:	f001 01ff 	and.w	r1, r1, #255	@ 0xff
 800066c:	f002 0207 	and.w	r2, r2, #7
 8000670:	b132      	cbz	r2, 8000680 <memchr+0x70>
 8000672:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000676:	3a01      	subs	r2, #1
 8000678:	ea83 0301 	eor.w	r3, r3, r1
 800067c:	b113      	cbz	r3, 8000684 <memchr+0x74>
 800067e:	d1f8      	bne.n	8000672 <memchr+0x62>
 8000680:	2000      	movs	r0, #0
 8000682:	4770      	bx	lr
 8000684:	3801      	subs	r0, #1
 8000686:	4770      	bx	lr
 8000688:	2d00      	cmp	r5, #0
 800068a:	bf06      	itte	eq
 800068c:	4635      	moveq	r5, r6
 800068e:	3803      	subeq	r0, #3
 8000690:	3807      	subne	r0, #7
 8000692:	f015 0f01 	tst.w	r5, #1
 8000696:	d107      	bne.n	80006a8 <memchr+0x98>
 8000698:	3001      	adds	r0, #1
 800069a:	f415 7f80 	tst.w	r5, #256	@ 0x100
 800069e:	bf02      	ittt	eq
 80006a0:	3001      	addeq	r0, #1
 80006a2:	f415 3fc0 	tsteq.w	r5, #98304	@ 0x18000
 80006a6:	3001      	addeq	r0, #1
 80006a8:	bcf0      	pop	{r4, r5, r6, r7}
 80006aa:	3801      	subs	r0, #1
 80006ac:	4770      	bx	lr
 80006ae:	bf00      	nop

080006b0 <strlen>:
 80006b0:	4603      	mov	r3, r0
 80006b2:	f813 2b01 	ldrb.w	r2, [r3], #1
 80006b6:	2a00      	cmp	r2, #0
 80006b8:	d1fb      	bne.n	80006b2 <strlen+0x2>
 80006ba:	1a18      	subs	r0, r3, r0
 80006bc:	3801      	subs	r0, #1
 80006be:	4770      	bx	lr

080006c0 <SystemInit>:
 80006c0:	4930      	ldr	r1, [pc, #192]	@ (8000784 <SystemInit+0xc4>)
 80006c2:	4a31      	ldr	r2, [pc, #196]	@ (8000788 <SystemInit+0xc8>)
 80006c4:	f8d1 3088 	ldr.w	r3, [r1, #136]	@ 0x88
 80006c8:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 80006cc:	b410      	push	{r4}
 80006ce:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80006d2:	6813      	ldr	r3, [r2, #0]
 80006d4:	f003 030f 	and.w	r3, r3, #15
 80006d8:	2b06      	cmp	r3, #6
 80006da:	d805      	bhi.n	80006e8 <SystemInit+0x28>
 80006dc:	6813      	ldr	r3, [r2, #0]
 80006de:	f023 030f 	bic.w	r3, r3, #15
 80006e2:	f043 0307 	orr.w	r3, r3, #7
 80006e6:	6013      	str	r3, [r2, #0]
 80006e8:	4b28      	ldr	r3, [pc, #160]	@ (800078c <SystemInit+0xcc>)
 80006ea:	2400      	movs	r4, #0
 80006ec:	4a28      	ldr	r2, [pc, #160]	@ (8000790 <SystemInit+0xd0>)
 80006ee:	6819      	ldr	r1, [r3, #0]
 80006f0:	4825      	ldr	r0, [pc, #148]	@ (8000788 <SystemInit+0xc8>)
 80006f2:	f041 0101 	orr.w	r1, r1, #1
 80006f6:	6019      	str	r1, [r3, #0]
 80006f8:	611c      	str	r4, [r3, #16]
 80006fa:	6819      	ldr	r1, [r3, #0]
 80006fc:	400a      	ands	r2, r1
 80006fe:	601a      	str	r2, [r3, #0]
 8000700:	6803      	ldr	r3, [r0, #0]
 8000702:	0719      	lsls	r1, r3, #28
 8000704:	d505      	bpl.n	8000712 <SystemInit+0x52>
 8000706:	6803      	ldr	r3, [r0, #0]
 8000708:	f023 030f 	bic.w	r3, r3, #15
 800070c:	f043 0307 	orr.w	r3, r3, #7
 8000710:	6003      	str	r3, [r0, #0]
 8000712:	4b1e      	ldr	r3, [pc, #120]	@ (800078c <SystemInit+0xcc>)
 8000714:	2200      	movs	r2, #0
 8000716:	491f      	ldr	r1, [pc, #124]	@ (8000794 <SystemInit+0xd4>)
 8000718:	481f      	ldr	r0, [pc, #124]	@ (8000798 <SystemInit+0xd8>)
 800071a:	4c20      	ldr	r4, [pc, #128]	@ (800079c <SystemInit+0xdc>)
 800071c:	619a      	str	r2, [r3, #24]
 800071e:	61da      	str	r2, [r3, #28]
 8000720:	621a      	str	r2, [r3, #32]
 8000722:	629c      	str	r4, [r3, #40]	@ 0x28
 8000724:	62d8      	str	r0, [r3, #44]	@ 0x2c
 8000726:	6319      	str	r1, [r3, #48]	@ 0x30
 8000728:	635a      	str	r2, [r3, #52]	@ 0x34
 800072a:	6399      	str	r1, [r3, #56]	@ 0x38
 800072c:	63da      	str	r2, [r3, #60]	@ 0x3c
 800072e:	6419      	str	r1, [r3, #64]	@ 0x40
 8000730:	645a      	str	r2, [r3, #68]	@ 0x44
 8000732:	6819      	ldr	r1, [r3, #0]
 8000734:	481a      	ldr	r0, [pc, #104]	@ (80007a0 <SystemInit+0xe0>)
 8000736:	f421 2180 	bic.w	r1, r1, #262144	@ 0x40000
 800073a:	6019      	str	r1, [r3, #0]
 800073c:	661a      	str	r2, [r3, #96]	@ 0x60
 800073e:	6803      	ldr	r3, [r0, #0]
 8000740:	f36f 030f 	bfc	r3, #0, #16
 8000744:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 8000748:	d203      	bcs.n	8000752 <SystemInit+0x92>
 800074a:	4b16      	ldr	r3, [pc, #88]	@ (80007a4 <SystemInit+0xe4>)
 800074c:	2201      	movs	r2, #1
 800074e:	f8c3 2108 	str.w	r2, [r3, #264]	@ 0x108
 8000752:	4b0e      	ldr	r3, [pc, #56]	@ (800078c <SystemInit+0xcc>)
 8000754:	f8d3 20d4 	ldr.w	r2, [r3, #212]	@ 0xd4
 8000758:	04d2      	lsls	r2, r2, #19
 800075a:	d40f      	bmi.n	800077c <SystemInit+0xbc>
 800075c:	f8d3 20d4 	ldr.w	r2, [r3, #212]	@ 0xd4
 8000760:	f243 00d2 	movw	r0, #12498	@ 0x30d2
 8000764:	4910      	ldr	r1, [pc, #64]	@ (80007a8 <SystemInit+0xe8>)
 8000766:	f442 5280 	orr.w	r2, r2, #4096	@ 0x1000
 800076a:	f8c3 20d4 	str.w	r2, [r3, #212]	@ 0xd4
 800076e:	6008      	str	r0, [r1, #0]
 8000770:	f8d3 20d4 	ldr.w	r2, [r3, #212]	@ 0xd4
 8000774:	f422 5280 	bic.w	r2, r2, #4096	@ 0x1000
 8000778:	f8c3 20d4 	str.w	r2, [r3, #212]	@ 0xd4
 800077c:	f85d 4b04 	ldr.w	r4, [sp], #4
 8000780:	4770      	bx	lr
 8000782:	bf00      	nop
 8000784:	e000ed00 	.word	0xe000ed00
 8000788:	52002000 	.word	0x52002000
 800078c:	58024400 	.word	0x58024400
 8000790:	eaf6ed7f 	.word	0xeaf6ed7f
 8000794:	01010280 	.word	0x01010280
 8000798:	01ff0000 	.word	0x01ff0000
 800079c:	02020200 	.word	0x02020200
 80007a0:	5c001000 	.word	0x5c001000
 80007a4:	51008000 	.word	0x51008000
 80007a8:	52004000 	.word	0x52004000

080007ac <ExitRun0Mode>:
 80007ac:	4a04      	ldr	r2, [pc, #16]	@ (80007c0 <ExitRun0Mode+0x14>)
 80007ae:	68d3      	ldr	r3, [r2, #12]
 80007b0:	f043 0302 	orr.w	r3, r3, #2
 80007b4:	60d3      	str	r3, [r2, #12]
 80007b6:	6853      	ldr	r3, [r2, #4]
 80007b8:	049b      	lsls	r3, r3, #18
 80007ba:	d5fc      	bpl.n	80007b6 <ExitRun0Mode+0xa>
 80007bc:	4770      	bx	lr
 80007be:	bf00      	nop
 80007c0:	58024800 	.word	0x58024800

080007c4 <HAL_TIM_Base_Start>:
 80007c4:	f890 303d 	ldrb.w	r3, [r0, #61]	@ 0x3d
 80007c8:	2b01      	cmp	r3, #1
 80007ca:	d139      	bne.n	8000840 <HAL_TIM_Base_Start+0x7c>
 80007cc:	6802      	ldr	r2, [r0, #0]
 80007ce:	4b1d      	ldr	r3, [pc, #116]	@ (8000844 <HAL_TIM_Base_Start+0x80>)
 80007d0:	491d      	ldr	r1, [pc, #116]	@ (8000848 <HAL_TIM_Base_Start+0x84>)
 80007d2:	f1b2 4f80 	cmp.w	r2, #1073741824	@ 0x40000000
 80007d6:	bf18      	it	ne
 80007d8:	429a      	cmpne	r2, r3
 80007da:	b430      	push	{r4, r5}
 80007dc:	bf0c      	ite	eq
 80007de:	2301      	moveq	r3, #1
 80007e0:	2300      	movne	r3, #0
 80007e2:	4d1a      	ldr	r5, [pc, #104]	@ (800084c <HAL_TIM_Base_Start+0x88>)
 80007e4:	2402      	movs	r4, #2
 80007e6:	42aa      	cmp	r2, r5
 80007e8:	bf08      	it	eq
 80007ea:	f043 0301 	orreq.w	r3, r3, #1
 80007ee:	f880 403d 	strb.w	r4, [r0, #61]	@ 0x3d
 80007f2:	4c17      	ldr	r4, [pc, #92]	@ (8000850 <HAL_TIM_Base_Start+0x8c>)
 80007f4:	428a      	cmp	r2, r1
 80007f6:	bf08      	it	eq
 80007f8:	f043 0301 	orreq.w	r3, r3, #1
 80007fc:	4815      	ldr	r0, [pc, #84]	@ (8000854 <HAL_TIM_Base_Start+0x90>)
 80007fe:	f501 5180 	add.w	r1, r1, #4096	@ 0x1000
 8000802:	42a2      	cmp	r2, r4
 8000804:	bf08      	it	eq
 8000806:	f043 0301 	orreq.w	r3, r3, #1
 800080a:	4282      	cmp	r2, r0
 800080c:	bf08      	it	eq
 800080e:	f043 0301 	orreq.w	r3, r3, #1
 8000812:	428a      	cmp	r2, r1
 8000814:	bf08      	it	eq
 8000816:	f043 0301 	orreq.w	r3, r3, #1
 800081a:	b913      	cbnz	r3, 8000822 <HAL_TIM_Base_Start+0x5e>
 800081c:	4b0e      	ldr	r3, [pc, #56]	@ (8000858 <HAL_TIM_Base_Start+0x94>)
 800081e:	429a      	cmp	r2, r3
 8000820:	d107      	bne.n	8000832 <HAL_TIM_Base_Start+0x6e>
 8000822:	6891      	ldr	r1, [r2, #8]
 8000824:	4b0d      	ldr	r3, [pc, #52]	@ (800085c <HAL_TIM_Base_Start+0x98>)
 8000826:	400b      	ands	r3, r1
 8000828:	2b06      	cmp	r3, #6
 800082a:	d006      	beq.n	800083a <HAL_TIM_Base_Start+0x76>
 800082c:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8000830:	d003      	beq.n	800083a <HAL_TIM_Base_Start+0x76>
 8000832:	6813      	ldr	r3, [r2, #0]
 8000834:	f043 0301 	orr.w	r3, r3, #1
 8000838:	6013      	str	r3, [r2, #0]
 800083a:	2000      	movs	r0, #0
 800083c:	bc30      	pop	{r4, r5}
 800083e:	4770      	bx	lr
 8000840:	2001      	movs	r0, #1
 8000842:	4770      	bx	lr
 8000844:	40010000 	.word	0x40010000
 8000848:	40000800 	.word	0x40000800
 800084c:	40000400 	.word	0x40000400
 8000850:	40000c00 	.word	0x40000c00
 8000854:	40010400 	.word	0x40010400
 8000858:	40014000 	.word	0x40014000
 800085c:	00010007 	.word	0x00010007

08000860 <HAL_TIM_Base_Start_IT>:
 8000860:	f890 303d 	ldrb.w	r3, [r0, #61]	@ 0x3d
 8000864:	2b01      	cmp	r3, #1
 8000866:	d13d      	bne.n	80008e4 <HAL_TIM_Base_Start_IT+0x84>
 8000868:	6802      	ldr	r2, [r0, #0]
 800086a:	2102      	movs	r1, #2
 800086c:	4b1e      	ldr	r3, [pc, #120]	@ (80008e8 <HAL_TIM_Base_Start_IT+0x88>)
 800086e:	f1b2 4f80 	cmp.w	r2, #1073741824	@ 0x40000000
 8000872:	bf18      	it	ne
 8000874:	429a      	cmpne	r2, r3
 8000876:	b430      	push	{r4, r5}
 8000878:	bf0c      	ite	eq
 800087a:	2301      	moveq	r3, #1
 800087c:	2300      	movne	r3, #0
 800087e:	4d1b      	ldr	r5, [pc, #108]	@ (80008ec <HAL_TIM_Base_Start_IT+0x8c>)
 8000880:	4c1b      	ldr	r4, [pc, #108]	@ (80008f0 <HAL_TIM_Base_Start_IT+0x90>)
 8000882:	42aa      	cmp	r2, r5
 8000884:	bf08      	it	eq
 8000886:	f043 0301 	orreq.w	r3, r3, #1
 800088a:	f880 103d 	strb.w	r1, [r0, #61]	@ 0x3d
 800088e:	68d1      	ldr	r1, [r2, #12]
 8000890:	42a2      	cmp	r2, r4
 8000892:	bf08      	it	eq
 8000894:	f043 0301 	orreq.w	r3, r3, #1
 8000898:	f504 6480 	add.w	r4, r4, #1024	@ 0x400
 800089c:	f041 0101 	orr.w	r1, r1, #1
 80008a0:	4814      	ldr	r0, [pc, #80]	@ (80008f4 <HAL_TIM_Base_Start_IT+0x94>)
 80008a2:	42a2      	cmp	r2, r4
 80008a4:	bf08      	it	eq
 80008a6:	f043 0301 	orreq.w	r3, r3, #1
 80008aa:	60d1      	str	r1, [r2, #12]
 80008ac:	4282      	cmp	r2, r0
 80008ae:	bf08      	it	eq
 80008b0:	f043 0301 	orreq.w	r3, r3, #1
 80008b4:	4910      	ldr	r1, [pc, #64]	@ (80008f8 <HAL_TIM_Base_Start_IT+0x98>)
 80008b6:	428a      	cmp	r2, r1
 80008b8:	bf08      	it	eq
 80008ba:	f043 0301 	orreq.w	r3, r3, #1
 80008be:	b913      	cbnz	r3, 80008c6 <HAL_TIM_Base_Start_IT+0x66>
 80008c0:	4b0e      	ldr	r3, [pc, #56]	@ (80008fc <HAL_TIM_Base_Start_IT+0x9c>)
 80008c2:	429a      	cmp	r2, r3
 80008c4:	d107      	bne.n	80008d6 <HAL_TIM_Base_Start_IT+0x76>
 80008c6:	6891      	ldr	r1, [r2, #8]
 80008c8:	4b0d      	ldr	r3, [pc, #52]	@ (8000900 <HAL_TIM_Base_Start_IT+0xa0>)
 80008ca:	400b      	ands	r3, r1
 80008cc:	2b06      	cmp	r3, #6
 80008ce:	d006      	beq.n	80008de <HAL_TIM_Base_Start_IT+0x7e>
 80008d0:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 80008d4:	d003      	beq.n	80008de <HAL_TIM_Base_Start_IT+0x7e>
 80008d6:	6813      	ldr	r3, [r2, #0]
 80008d8:	f043 0301 	orr.w	r3, r3, #1
 80008dc:	6013      	str	r3, [r2, #0]
 80008de:	2000      	movs	r0, #0
 80008e0:	bc30      	pop	{r4, r5}
 80008e2:	4770      	bx	lr
 80008e4:	2001      	movs	r0, #1
 80008e6:	4770      	bx	lr
 80008e8:	40010000 	.word	0x40010000
 80008ec:	40000400 	.word	0x40000400
 80008f0:	40000800 	.word	0x40000800
 80008f4:	40010400 	.word	0x40010400
 80008f8:	40001800 	.word	0x40001800
 80008fc:	40014000 	.word	0x40014000
 8000900:	00010007 	.word	0x00010007

08000904 <HAL_TIM_ConfigClockSource>:
 8000904:	f890 203c 	ldrb.w	r2, [r0, #60]	@ 0x3c
 8000908:	2a01      	cmp	r2, #1
 800090a:	d06d      	beq.n	80009e8 <HAL_TIM_ConfigClockSource+0xe4>
 800090c:	6802      	ldr	r2, [r0, #0]
 800090e:	4603      	mov	r3, r0
 8000910:	2001      	movs	r0, #1
 8000912:	b430      	push	{r4, r5}
 8000914:	2402      	movs	r4, #2
 8000916:	f883 003c 	strb.w	r0, [r3, #60]	@ 0x3c
 800091a:	f883 403d 	strb.w	r4, [r3, #61]	@ 0x3d
 800091e:	4c59      	ldr	r4, [pc, #356]	@ (8000a84 <HAL_TIM_ConfigClockSource+0x180>)
 8000920:	6895      	ldr	r5, [r2, #8]
 8000922:	402c      	ands	r4, r5
 8000924:	6094      	str	r4, [r2, #8]
 8000926:	680c      	ldr	r4, [r1, #0]
 8000928:	2c70      	cmp	r4, #112	@ 0x70
 800092a:	f000 8087 	beq.w	8000a3c <HAL_TIM_ConfigClockSource+0x138>
 800092e:	d825      	bhi.n	800097c <HAL_TIM_ConfigClockSource+0x78>
 8000930:	2c50      	cmp	r4, #80	@ 0x50
 8000932:	d05b      	beq.n	80009ec <HAL_TIM_ConfigClockSource+0xe8>
 8000934:	d82b      	bhi.n	800098e <HAL_TIM_ConfigClockSource+0x8a>
 8000936:	2c40      	cmp	r4, #64	@ 0x40
 8000938:	f040 8090 	bne.w	8000a5c <HAL_TIM_ConfigClockSource+0x158>
 800093c:	684c      	ldr	r4, [r1, #4]
 800093e:	68cd      	ldr	r5, [r1, #12]
 8000940:	6a11      	ldr	r1, [r2, #32]
 8000942:	6a10      	ldr	r0, [r2, #32]
 8000944:	f021 010a 	bic.w	r1, r1, #10
 8000948:	f020 0001 	bic.w	r0, r0, #1
 800094c:	430c      	orrs	r4, r1
 800094e:	494e      	ldr	r1, [pc, #312]	@ (8000a88 <HAL_TIM_ConfigClockSource+0x184>)
 8000950:	6210      	str	r0, [r2, #32]
 8000952:	6990      	ldr	r0, [r2, #24]
 8000954:	f020 00f0 	bic.w	r0, r0, #240	@ 0xf0
 8000958:	ea40 1005 	orr.w	r0, r0, r5, lsl #4
 800095c:	6190      	str	r0, [r2, #24]
 800095e:	6214      	str	r4, [r2, #32]
 8000960:	6890      	ldr	r0, [r2, #8]
 8000962:	4001      	ands	r1, r0
 8000964:	f041 0147 	orr.w	r1, r1, #71	@ 0x47
 8000968:	6091      	str	r1, [r2, #8]
 800096a:	2000      	movs	r0, #0
 800096c:	2101      	movs	r1, #1
 800096e:	2200      	movs	r2, #0
 8000970:	f883 103d 	strb.w	r1, [r3, #61]	@ 0x3d
 8000974:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8000978:	bc30      	pop	{r4, r5}
 800097a:	4770      	bx	lr
 800097c:	f5b4 5f00 	cmp.w	r4, #8192	@ 0x2000
 8000980:	d04c      	beq.n	8000a1c <HAL_TIM_ConfigClockSource+0x118>
 8000982:	d81f      	bhi.n	80009c4 <HAL_TIM_ConfigClockSource+0xc0>
 8000984:	f5b4 5080 	subs.w	r0, r4, #4096	@ 0x1000
 8000988:	bf18      	it	ne
 800098a:	2001      	movne	r0, #1
 800098c:	e7ee      	b.n	800096c <HAL_TIM_ConfigClockSource+0x68>
 800098e:	2c60      	cmp	r4, #96	@ 0x60
 8000990:	d1ec      	bne.n	800096c <HAL_TIM_ConfigClockSource+0x68>
 8000992:	6a10      	ldr	r0, [r2, #32]
 8000994:	684c      	ldr	r4, [r1, #4]
 8000996:	f020 00a0 	bic.w	r0, r0, #160	@ 0xa0
 800099a:	68cd      	ldr	r5, [r1, #12]
 800099c:	493a      	ldr	r1, [pc, #232]	@ (8000a88 <HAL_TIM_ConfigClockSource+0x184>)
 800099e:	ea40 1004 	orr.w	r0, r0, r4, lsl #4
 80009a2:	6a14      	ldr	r4, [r2, #32]
 80009a4:	f024 0410 	bic.w	r4, r4, #16
 80009a8:	6214      	str	r4, [r2, #32]
 80009aa:	6994      	ldr	r4, [r2, #24]
 80009ac:	f424 4470 	bic.w	r4, r4, #61440	@ 0xf000
 80009b0:	ea44 3405 	orr.w	r4, r4, r5, lsl #12
 80009b4:	6194      	str	r4, [r2, #24]
 80009b6:	6210      	str	r0, [r2, #32]
 80009b8:	6890      	ldr	r0, [r2, #8]
 80009ba:	4001      	ands	r1, r0
 80009bc:	f041 0167 	orr.w	r1, r1, #103	@ 0x67
 80009c0:	6091      	str	r1, [r2, #8]
 80009c2:	e7d2      	b.n	800096a <HAL_TIM_ConfigClockSource+0x66>
 80009c4:	4931      	ldr	r1, [pc, #196]	@ (8000a8c <HAL_TIM_ConfigClockSource+0x188>)
 80009c6:	428c      	cmp	r4, r1
 80009c8:	d006      	beq.n	80009d8 <HAL_TIM_ConfigClockSource+0xd4>
 80009ca:	d94f      	bls.n	8000a6c <HAL_TIM_ConfigClockSource+0x168>
 80009cc:	4930      	ldr	r1, [pc, #192]	@ (8000a90 <HAL_TIM_ConfigClockSource+0x18c>)
 80009ce:	428c      	cmp	r4, r1
 80009d0:	d002      	beq.n	80009d8 <HAL_TIM_ConfigClockSource+0xd4>
 80009d2:	3110      	adds	r1, #16
 80009d4:	428c      	cmp	r4, r1
 80009d6:	d1c9      	bne.n	800096c <HAL_TIM_ConfigClockSource+0x68>
 80009d8:	6890      	ldr	r0, [r2, #8]
 80009da:	492b      	ldr	r1, [pc, #172]	@ (8000a88 <HAL_TIM_ConfigClockSource+0x184>)
 80009dc:	4001      	ands	r1, r0
 80009de:	4321      	orrs	r1, r4
 80009e0:	f041 0107 	orr.w	r1, r1, #7
 80009e4:	6091      	str	r1, [r2, #8]
 80009e6:	e7c0      	b.n	800096a <HAL_TIM_ConfigClockSource+0x66>
 80009e8:	2002      	movs	r0, #2
 80009ea:	4770      	bx	lr
 80009ec:	684c      	ldr	r4, [r1, #4]
 80009ee:	68cd      	ldr	r5, [r1, #12]
 80009f0:	6a11      	ldr	r1, [r2, #32]
 80009f2:	6a10      	ldr	r0, [r2, #32]
 80009f4:	f021 010a 	bic.w	r1, r1, #10
 80009f8:	f020 0001 	bic.w	r0, r0, #1
 80009fc:	430c      	orrs	r4, r1
 80009fe:	4922      	ldr	r1, [pc, #136]	@ (8000a88 <HAL_TIM_ConfigClockSource+0x184>)
 8000a00:	6210      	str	r0, [r2, #32]
 8000a02:	6990      	ldr	r0, [r2, #24]
 8000a04:	f020 00f0 	bic.w	r0, r0, #240	@ 0xf0
 8000a08:	ea40 1005 	orr.w	r0, r0, r5, lsl #4
 8000a0c:	6190      	str	r0, [r2, #24]
 8000a0e:	6214      	str	r4, [r2, #32]
 8000a10:	6890      	ldr	r0, [r2, #8]
 8000a12:	4001      	ands	r1, r0
 8000a14:	f041 0157 	orr.w	r1, r1, #87	@ 0x57
 8000a18:	6091      	str	r1, [r2, #8]
 8000a1a:	e7a6      	b.n	800096a <HAL_TIM_ConfigClockSource+0x66>
 8000a1c:	e9d1 5001 	ldrd	r5, r0, [r1, #4]
 8000a20:	6894      	ldr	r4, [r2, #8]
 8000a22:	4328      	orrs	r0, r5
 8000a24:	68cd      	ldr	r5, [r1, #12]
 8000a26:	f424 417f 	bic.w	r1, r4, #65280	@ 0xff00
 8000a2a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 8000a2e:	4308      	orrs	r0, r1
 8000a30:	6090      	str	r0, [r2, #8]
 8000a32:	6891      	ldr	r1, [r2, #8]
 8000a34:	f441 4180 	orr.w	r1, r1, #16384	@ 0x4000
 8000a38:	6091      	str	r1, [r2, #8]
 8000a3a:	e796      	b.n	800096a <HAL_TIM_ConfigClockSource+0x66>
 8000a3c:	e9d1 5001 	ldrd	r5, r0, [r1, #4]
 8000a40:	6894      	ldr	r4, [r2, #8]
 8000a42:	4328      	orrs	r0, r5
 8000a44:	68cd      	ldr	r5, [r1, #12]
 8000a46:	f424 417f 	bic.w	r1, r4, #65280	@ 0xff00
 8000a4a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 8000a4e:	4308      	orrs	r0, r1
 8000a50:	6090      	str	r0, [r2, #8]
 8000a52:	6891      	ldr	r1, [r2, #8]
 8000a54:	f041 0177 	orr.w	r1, r1, #119	@ 0x77
 8000a58:	6091      	str	r1, [r2, #8]
 8000a5a:	e786      	b.n	800096a <HAL_TIM_ConfigClockSource+0x66>
 8000a5c:	d886      	bhi.n	800096c <HAL_TIM_ConfigClockSource+0x68>
 8000a5e:	2c20      	cmp	r4, #32
 8000a60:	d0ba      	beq.n	80009d8 <HAL_TIM_ConfigClockSource+0xd4>
 8000a62:	d80a      	bhi.n	8000a7a <HAL_TIM_ConfigClockSource+0x176>
 8000a64:	f034 0110 	bics.w	r1, r4, #16
 8000a68:	d180      	bne.n	800096c <HAL_TIM_ConfigClockSource+0x68>
 8000a6a:	e7b5      	b.n	80009d8 <HAL_TIM_ConfigClockSource+0xd4>
 8000a6c:	f024 0110 	bic.w	r1, r4, #16
 8000a70:	f5b1 1f80 	cmp.w	r1, #1048576	@ 0x100000
 8000a74:	f47f af7a 	bne.w	800096c <HAL_TIM_ConfigClockSource+0x68>
 8000a78:	e7ae      	b.n	80009d8 <HAL_TIM_ConfigClockSource+0xd4>
 8000a7a:	2c30      	cmp	r4, #48	@ 0x30
 8000a7c:	d0ac      	beq.n	80009d8 <HAL_TIM_ConfigClockSource+0xd4>
 8000a7e:	2001      	movs	r0, #1
 8000a80:	e774      	b.n	800096c <HAL_TIM_ConfigClockSource+0x68>
 8000a82:	bf00      	nop
 8000a84:	ffce0088 	.word	0xffce0088
 8000a88:	ffcfff8f 	.word	0xffcfff8f
 8000a8c:	00100020 	.word	0x00100020
 8000a90:	00100030 	.word	0x00100030

08000a94 <HAL_TIM_OC_DelayElapsedCallback>:
 8000a94:	4770      	bx	lr
 8000a96:	bf00      	nop

08000a98 <HAL_TIM_IC_CaptureCallback>:
 8000a98:	4770      	bx	lr
 8000a9a:	bf00      	nop

08000a9c <HAL_TIM_PWM_PulseFinishedCallback>:
 8000a9c:	4770      	bx	lr
 8000a9e:	bf00      	nop

08000aa0 <HAL_TIM_TriggerCallback>:
 8000aa0:	4770      	bx	lr
 8000aa2:	bf00      	nop

08000aa4 <HAL_TIM_IRQHandler>:
 8000aa4:	6803      	ldr	r3, [r0, #0]
 8000aa6:	b570      	push	{r4, r5, r6, lr}
 8000aa8:	68de      	ldr	r6, [r3, #12]
 8000aaa:	4604      	mov	r4, r0
 8000aac:	691d      	ldr	r5, [r3, #16]
 8000aae:	07aa      	lsls	r2, r5, #30
 8000ab0:	d501      	bpl.n	8000ab6 <HAL_TIM_IRQHandler+0x12>
 8000ab2:	07b1      	lsls	r1, r6, #30
 8000ab4:	d452      	bmi.n	8000b5c <HAL_TIM_IRQHandler+0xb8>
 8000ab6:	076b      	lsls	r3, r5, #29
 8000ab8:	d501      	bpl.n	8000abe <HAL_TIM_IRQHandler+0x1a>
 8000aba:	0770      	lsls	r0, r6, #29
 8000abc:	d43b      	bmi.n	8000b36 <HAL_TIM_IRQHandler+0x92>
 8000abe:	0729      	lsls	r1, r5, #28
 8000ac0:	d501      	bpl.n	8000ac6 <HAL_TIM_IRQHandler+0x22>
 8000ac2:	0732      	lsls	r2, r6, #28
 8000ac4:	d425      	bmi.n	8000b12 <HAL_TIM_IRQHandler+0x6e>
 8000ac6:	06e8      	lsls	r0, r5, #27
 8000ac8:	d501      	bpl.n	8000ace <HAL_TIM_IRQHandler+0x2a>
 8000aca:	06f1      	lsls	r1, r6, #27
 8000acc:	d411      	bmi.n	8000af2 <HAL_TIM_IRQHandler+0x4e>
 8000ace:	07ea      	lsls	r2, r5, #31
 8000ad0:	d501      	bpl.n	8000ad6 <HAL_TIM_IRQHandler+0x32>
 8000ad2:	07f3      	lsls	r3, r6, #31
 8000ad4:	d464      	bmi.n	8000ba0 <HAL_TIM_IRQHandler+0xfc>
 8000ad6:	f415 5f02 	tst.w	r5, #8320	@ 0x2080
 8000ada:	d04c      	beq.n	8000b76 <HAL_TIM_IRQHandler+0xd2>
 8000adc:	0630      	lsls	r0, r6, #24
 8000ade:	d467      	bmi.n	8000bb0 <HAL_TIM_IRQHandler+0x10c>
 8000ae0:	0668      	lsls	r0, r5, #25
 8000ae2:	d501      	bpl.n	8000ae8 <HAL_TIM_IRQHandler+0x44>
 8000ae4:	0671      	lsls	r1, r6, #25
 8000ae6:	d46d      	bmi.n	8000bc4 <HAL_TIM_IRQHandler+0x120>
 8000ae8:	06aa      	lsls	r2, r5, #26
 8000aea:	d501      	bpl.n	8000af0 <HAL_TIM_IRQHandler+0x4c>
 8000aec:	06b3      	lsls	r3, r6, #26
 8000aee:	d44e      	bmi.n	8000b8e <HAL_TIM_IRQHandler+0xea>
 8000af0:	bd70      	pop	{r4, r5, r6, pc}
 8000af2:	6823      	ldr	r3, [r4, #0]
 8000af4:	f06f 0210 	mvn.w	r2, #16
 8000af8:	4620      	mov	r0, r4
 8000afa:	611a      	str	r2, [r3, #16]
 8000afc:	2208      	movs	r2, #8
 8000afe:	7722      	strb	r2, [r4, #28]
 8000b00:	69db      	ldr	r3, [r3, #28]
 8000b02:	f413 7f40 	tst.w	r3, #768	@ 0x300
 8000b06:	d071      	beq.n	8000bec <HAL_TIM_IRQHandler+0x148>
 8000b08:	f7ff ffc6 	bl	8000a98 <HAL_TIM_IC_CaptureCallback>
 8000b0c:	2300      	movs	r3, #0
 8000b0e:	7723      	strb	r3, [r4, #28]
 8000b10:	e7dd      	b.n	8000ace <HAL_TIM_IRQHandler+0x2a>
 8000b12:	6823      	ldr	r3, [r4, #0]
 8000b14:	f06f 0208 	mvn.w	r2, #8
 8000b18:	4620      	mov	r0, r4
 8000b1a:	611a      	str	r2, [r3, #16]
 8000b1c:	2204      	movs	r2, #4
 8000b1e:	7722      	strb	r2, [r4, #28]
 8000b20:	69db      	ldr	r3, [r3, #28]
 8000b22:	079b      	lsls	r3, r3, #30
 8000b24:	d15f      	bne.n	8000be6 <HAL_TIM_IRQHandler+0x142>
 8000b26:	f7ff ffb5 	bl	8000a94 <HAL_TIM_OC_DelayElapsedCallback>
 8000b2a:	4620      	mov	r0, r4
 8000b2c:	f7ff ffb6 	bl	8000a9c <HAL_TIM_PWM_PulseFinishedCallback>
 8000b30:	2300      	movs	r3, #0
 8000b32:	7723      	strb	r3, [r4, #28]
 8000b34:	e7c7      	b.n	8000ac6 <HAL_TIM_IRQHandler+0x22>
 8000b36:	6823      	ldr	r3, [r4, #0]
 8000b38:	f06f 0204 	mvn.w	r2, #4
 8000b3c:	4620      	mov	r0, r4
 8000b3e:	611a      	str	r2, [r3, #16]
 8000b40:	2202      	movs	r2, #2
 8000b42:	7722      	strb	r2, [r4, #28]
 8000b44:	699b      	ldr	r3, [r3, #24]
 8000b46:	f413 7f40 	tst.w	r3, #768	@ 0x300
 8000b4a:	d149      	bne.n	8000be0 <HAL_TIM_IRQHandler+0x13c>
 8000b4c:	f7ff ffa2 	bl	8000a94 <HAL_TIM_OC_DelayElapsedCallback>
 8000b50:	4620      	mov	r0, r4
 8000b52:	f7ff ffa3 	bl	8000a9c <HAL_TIM_PWM_PulseFinishedCallback>
 8000b56:	2300      	movs	r3, #0
 8000b58:	7723      	strb	r3, [r4, #28]
 8000b5a:	e7b0      	b.n	8000abe <HAL_TIM_IRQHandler+0x1a>
 8000b5c:	f06f 0202 	mvn.w	r2, #2
 8000b60:	611a      	str	r2, [r3, #16]
 8000b62:	2201      	movs	r2, #1
 8000b64:	7702      	strb	r2, [r0, #28]
 8000b66:	699b      	ldr	r3, [r3, #24]
 8000b68:	079a      	lsls	r2, r3, #30
 8000b6a:	d033      	beq.n	8000bd4 <HAL_TIM_IRQHandler+0x130>
 8000b6c:	f7ff ff94 	bl	8000a98 <HAL_TIM_IC_CaptureCallback>
 8000b70:	2300      	movs	r3, #0
 8000b72:	7723      	strb	r3, [r4, #28]
 8000b74:	e79f      	b.n	8000ab6 <HAL_TIM_IRQHandler+0x12>
 8000b76:	05ea      	lsls	r2, r5, #23
 8000b78:	d5b2      	bpl.n	8000ae0 <HAL_TIM_IRQHandler+0x3c>
 8000b7a:	0633      	lsls	r3, r6, #24
 8000b7c:	d5b0      	bpl.n	8000ae0 <HAL_TIM_IRQHandler+0x3c>
 8000b7e:	6823      	ldr	r3, [r4, #0]
 8000b80:	f46f 7280 	mvn.w	r2, #256	@ 0x100
 8000b84:	4620      	mov	r0, r4
 8000b86:	611a      	str	r2, [r3, #16]
 8000b88:	f000 f93c 	bl	8000e04 <HAL_TIMEx_Break2Callback>
 8000b8c:	e7a8      	b.n	8000ae0 <HAL_TIM_IRQHandler+0x3c>
 8000b8e:	6823      	ldr	r3, [r4, #0]
 8000b90:	f06f 0220 	mvn.w	r2, #32
 8000b94:	4620      	mov	r0, r4
 8000b96:	611a      	str	r2, [r3, #16]
 8000b98:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b9c:	f000 b92e 	b.w	8000dfc <HAL_TIMEx_CommutCallback>
 8000ba0:	6823      	ldr	r3, [r4, #0]
 8000ba2:	f06f 0201 	mvn.w	r2, #1
 8000ba6:	4620      	mov	r0, r4
 8000ba8:	611a      	str	r2, [r3, #16]
 8000baa:	f007 fcf7 	bl	800859c <HAL_TIM_PeriodElapsedCallback>
 8000bae:	e792      	b.n	8000ad6 <HAL_TIM_IRQHandler+0x32>
 8000bb0:	6823      	ldr	r3, [r4, #0]
 8000bb2:	f46f 5202 	mvn.w	r2, #8320	@ 0x2080
 8000bb6:	4620      	mov	r0, r4
 8000bb8:	611a      	str	r2, [r3, #16]
 8000bba:	f000 f921 	bl	8000e00 <HAL_TIMEx_BreakCallback>
 8000bbe:	05e9      	lsls	r1, r5, #23
 8000bc0:	d58e      	bpl.n	8000ae0 <HAL_TIM_IRQHandler+0x3c>
 8000bc2:	e7dc      	b.n	8000b7e <HAL_TIM_IRQHandler+0xda>
 8000bc4:	6823      	ldr	r3, [r4, #0]
 8000bc6:	f06f 0240 	mvn.w	r2, #64	@ 0x40
 8000bca:	4620      	mov	r0, r4
 8000bcc:	611a      	str	r2, [r3, #16]
 8000bce:	f7ff ff67 	bl	8000aa0 <HAL_TIM_TriggerCallback>
 8000bd2:	e789      	b.n	8000ae8 <HAL_TIM_IRQHandler+0x44>
 8000bd4:	f7ff ff5e 	bl	8000a94 <HAL_TIM_OC_DelayElapsedCallback>
 8000bd8:	4620      	mov	r0, r4
 8000bda:	f7ff ff5f 	bl	8000a9c <HAL_TIM_PWM_PulseFinishedCallback>
 8000bde:	e7c7      	b.n	8000b70 <HAL_TIM_IRQHandler+0xcc>
 8000be0:	f7ff ff5a 	bl	8000a98 <HAL_TIM_IC_CaptureCallback>
 8000be4:	e7b7      	b.n	8000b56 <HAL_TIM_IRQHandler+0xb2>
 8000be6:	f7ff ff57 	bl	8000a98 <HAL_TIM_IC_CaptureCallback>
 8000bea:	e7a1      	b.n	8000b30 <HAL_TIM_IRQHandler+0x8c>
 8000bec:	f7ff ff52 	bl	8000a94 <HAL_TIM_OC_DelayElapsedCallback>
 8000bf0:	4620      	mov	r0, r4
 8000bf2:	f7ff ff53 	bl	8000a9c <HAL_TIM_PWM_PulseFinishedCallback>
 8000bf6:	e789      	b.n	8000b0c <HAL_TIM_IRQHandler+0x68>

08000bf8 <TIM_Base_SetConfig>:
 8000bf8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000bfa:	4a35      	ldr	r2, [pc, #212]	@ (8000cd0 <TIM_Base_SetConfig+0xd8>)
 8000bfc:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
 8000c00:	4d34      	ldr	r5, [pc, #208]	@ (8000cd4 <TIM_Base_SetConfig+0xdc>)
 8000c02:	eba0 0202 	sub.w	r2, r0, r2
 8000c06:	6803      	ldr	r3, [r0, #0]
 8000c08:	eba0 0e05 	sub.w	lr, r0, r5
 8000c0c:	694c      	ldr	r4, [r1, #20]
 8000c0e:	fab2 f282 	clz	r2, r2
 8000c12:	688f      	ldr	r7, [r1, #8]
 8000c14:	fabe fe8e 	clz	lr, lr
 8000c18:	680e      	ldr	r6, [r1, #0]
 8000c1a:	ea4f 1252 	mov.w	r2, r2, lsr #5
 8000c1e:	ea4f 1e5e 	mov.w	lr, lr, lsr #5
 8000c22:	d01f      	beq.n	8000c64 <TIM_Base_SetConfig+0x6c>
 8000c24:	b9f2      	cbnz	r2, 8000c64 <TIM_Base_SetConfig+0x6c>
 8000c26:	f8df c0b8 	ldr.w	ip, [pc, #184]	@ 8000ce0 <TIM_Base_SetConfig+0xe8>
 8000c2a:	4560      	cmp	r0, ip
 8000c2c:	d037      	beq.n	8000c9e <TIM_Base_SetConfig+0xa6>
 8000c2e:	f50c 6c80 	add.w	ip, ip, #1024	@ 0x400
 8000c32:	4560      	cmp	r0, ip
 8000c34:	d033      	beq.n	8000c9e <TIM_Base_SetConfig+0xa6>
 8000c36:	f50c 6c80 	add.w	ip, ip, #1024	@ 0x400
 8000c3a:	4560      	cmp	r0, ip
 8000c3c:	d012      	beq.n	8000c64 <TIM_Base_SetConfig+0x6c>
 8000c3e:	f1be 0f00 	cmp.w	lr, #0
 8000c42:	d10f      	bne.n	8000c64 <TIM_Base_SetConfig+0x6c>
 8000c44:	4d24      	ldr	r5, [pc, #144]	@ (8000cd8 <TIM_Base_SetConfig+0xe0>)
 8000c46:	4a25      	ldr	r2, [pc, #148]	@ (8000cdc <TIM_Base_SetConfig+0xe4>)
 8000c48:	4290      	cmp	r0, r2
 8000c4a:	bf18      	it	ne
 8000c4c:	42a8      	cmpne	r0, r5
 8000c4e:	d02a      	beq.n	8000ca6 <TIM_Base_SetConfig+0xae>
 8000c50:	f502 6280 	add.w	r2, r2, #1024	@ 0x400
 8000c54:	4290      	cmp	r0, r2
 8000c56:	d026      	beq.n	8000ca6 <TIM_Base_SetConfig+0xae>
 8000c58:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8000c5c:	62c7      	str	r7, [r0, #44]	@ 0x2c
 8000c5e:	6286      	str	r6, [r0, #40]	@ 0x28
 8000c60:	431c      	orrs	r4, r3
 8000c62:	e014      	b.n	8000c8e <TIM_Base_SetConfig+0x96>
 8000c64:	684d      	ldr	r5, [r1, #4]
 8000c66:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8000c6a:	f8d1 c00c 	ldr.w	ip, [r1, #12]
 8000c6e:	432b      	orrs	r3, r5
 8000c70:	62c7      	str	r7, [r0, #44]	@ 0x2c
 8000c72:	6286      	str	r6, [r0, #40]	@ 0x28
 8000c74:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8000c78:	ea43 030c 	orr.w	r3, r3, ip
 8000c7c:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8000c80:	431c      	orrs	r4, r3
 8000c82:	b912      	cbnz	r2, 8000c8a <TIM_Base_SetConfig+0x92>
 8000c84:	f1be 0f00 	cmp.w	lr, #0
 8000c88:	d016      	beq.n	8000cb8 <TIM_Base_SetConfig+0xc0>
 8000c8a:	690b      	ldr	r3, [r1, #16]
 8000c8c:	6303      	str	r3, [r0, #48]	@ 0x30
 8000c8e:	6803      	ldr	r3, [r0, #0]
 8000c90:	2201      	movs	r2, #1
 8000c92:	f043 0304 	orr.w	r3, r3, #4
 8000c96:	6003      	str	r3, [r0, #0]
 8000c98:	6142      	str	r2, [r0, #20]
 8000c9a:	6004      	str	r4, [r0, #0]
 8000c9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c9e:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8000ca2:	684a      	ldr	r2, [r1, #4]
 8000ca4:	4313      	orrs	r3, r2
 8000ca6:	68ca      	ldr	r2, [r1, #12]
 8000ca8:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8000cac:	62c7      	str	r7, [r0, #44]	@ 0x2c
 8000cae:	4313      	orrs	r3, r2
 8000cb0:	6286      	str	r6, [r0, #40]	@ 0x28
 8000cb2:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8000cb6:	431c      	orrs	r4, r3
 8000cb8:	4a07      	ldr	r2, [pc, #28]	@ (8000cd8 <TIM_Base_SetConfig+0xe0>)
 8000cba:	4b08      	ldr	r3, [pc, #32]	@ (8000cdc <TIM_Base_SetConfig+0xe4>)
 8000cbc:	4298      	cmp	r0, r3
 8000cbe:	bf18      	it	ne
 8000cc0:	4290      	cmpne	r0, r2
 8000cc2:	d0e2      	beq.n	8000c8a <TIM_Base_SetConfig+0x92>
 8000cc4:	f503 6380 	add.w	r3, r3, #1024	@ 0x400
 8000cc8:	4298      	cmp	r0, r3
 8000cca:	d0de      	beq.n	8000c8a <TIM_Base_SetConfig+0x92>
 8000ccc:	e7df      	b.n	8000c8e <TIM_Base_SetConfig+0x96>
 8000cce:	bf00      	nop
 8000cd0:	40010000 	.word	0x40010000
 8000cd4:	40010400 	.word	0x40010400
 8000cd8:	40014000 	.word	0x40014000
 8000cdc:	40014400 	.word	0x40014400
 8000ce0:	40000400 	.word	0x40000400

08000ce4 <HAL_TIM_Base_Init>:
 8000ce4:	b370      	cbz	r0, 8000d44 <HAL_TIM_Base_Init+0x60>
 8000ce6:	b510      	push	{r4, lr}
 8000ce8:	f890 303d 	ldrb.w	r3, [r0, #61]	@ 0x3d
 8000cec:	4604      	mov	r4, r0
 8000cee:	f003 02ff 	and.w	r2, r3, #255	@ 0xff
 8000cf2:	b313      	cbz	r3, 8000d3a <HAL_TIM_Base_Init+0x56>
 8000cf4:	4621      	mov	r1, r4
 8000cf6:	2302      	movs	r3, #2
 8000cf8:	f884 303d 	strb.w	r3, [r4, #61]	@ 0x3d
 8000cfc:	f851 0b04 	ldr.w	r0, [r1], #4
 8000d00:	f7ff ff7a 	bl	8000bf8 <TIM_Base_SetConfig>
 8000d04:	2301      	movs	r3, #1
 8000d06:	2000      	movs	r0, #0
 8000d08:	f884 3048 	strb.w	r3, [r4, #72]	@ 0x48
 8000d0c:	f884 303e 	strb.w	r3, [r4, #62]	@ 0x3e
 8000d10:	f884 303f 	strb.w	r3, [r4, #63]	@ 0x3f
 8000d14:	f884 3040 	strb.w	r3, [r4, #64]	@ 0x40
 8000d18:	f884 3041 	strb.w	r3, [r4, #65]	@ 0x41
 8000d1c:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
 8000d20:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 8000d24:	f884 3044 	strb.w	r3, [r4, #68]	@ 0x44
 8000d28:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
 8000d2c:	f884 3046 	strb.w	r3, [r4, #70]	@ 0x46
 8000d30:	f884 3047 	strb.w	r3, [r4, #71]	@ 0x47
 8000d34:	f884 303d 	strb.w	r3, [r4, #61]	@ 0x3d
 8000d38:	bd10      	pop	{r4, pc}
 8000d3a:	f880 203c 	strb.w	r2, [r0, #60]	@ 0x3c
 8000d3e:	f007 ff59 	bl	8008bf4 <HAL_TIM_Base_MspInit>
 8000d42:	e7d7      	b.n	8000cf4 <HAL_TIM_Base_Init+0x10>
 8000d44:	2001      	movs	r0, #1
 8000d46:	4770      	bx	lr

08000d48 <HAL_TIMEx_MasterConfigSynchronization>:
 8000d48:	f890 303c 	ldrb.w	r3, [r0, #60]	@ 0x3c
 8000d4c:	2b01      	cmp	r3, #1
 8000d4e:	d04b      	beq.n	8000de8 <HAL_TIMEx_MasterConfigSynchronization+0xa0>
 8000d50:	6803      	ldr	r3, [r0, #0]
 8000d52:	4602      	mov	r2, r0
 8000d54:	2002      	movs	r0, #2
 8000d56:	b430      	push	{r4, r5}
 8000d58:	4d24      	ldr	r5, [pc, #144]	@ (8000dec <HAL_TIMEx_MasterConfigSynchronization+0xa4>)
 8000d5a:	f882 003d 	strb.w	r0, [r2, #61]	@ 0x3d
 8000d5e:	42ab      	cmp	r3, r5
 8000d60:	6858      	ldr	r0, [r3, #4]
 8000d62:	689c      	ldr	r4, [r3, #8]
 8000d64:	d029      	beq.n	8000dba <HAL_TIMEx_MasterConfigSynchronization+0x72>
 8000d66:	f505 6580 	add.w	r5, r5, #1024	@ 0x400
 8000d6a:	42ab      	cmp	r3, r5
 8000d6c:	d025      	beq.n	8000dba <HAL_TIMEx_MasterConfigSynchronization+0x72>
 8000d6e:	4d20      	ldr	r5, [pc, #128]	@ (8000df0 <HAL_TIMEx_MasterConfigSynchronization+0xa8>)
 8000d70:	f020 0070 	bic.w	r0, r0, #112	@ 0x70
 8000d74:	42ab      	cmp	r3, r5
 8000d76:	bf18      	it	ne
 8000d78:	f1b3 4f80 	cmpne.w	r3, #1073741824	@ 0x40000000
 8000d7c:	f505 6580 	add.w	r5, r5, #1024	@ 0x400
 8000d80:	bf0c      	ite	eq
 8000d82:	f04f 0c01 	moveq.w	ip, #1
 8000d86:	f04f 0c00 	movne.w	ip, #0
 8000d8a:	42ab      	cmp	r3, r5
 8000d8c:	bf08      	it	eq
 8000d8e:	f04c 0c01 	orreq.w	ip, ip, #1
 8000d92:	f505 6580 	add.w	r5, r5, #1024	@ 0x400
 8000d96:	42ab      	cmp	r3, r5
 8000d98:	bf08      	it	eq
 8000d9a:	f04c 0c01 	orreq.w	ip, ip, #1
 8000d9e:	680d      	ldr	r5, [r1, #0]
 8000da0:	4328      	orrs	r0, r5
 8000da2:	4d14      	ldr	r5, [pc, #80]	@ (8000df4 <HAL_TIMEx_MasterConfigSynchronization+0xac>)
 8000da4:	6058      	str	r0, [r3, #4]
 8000da6:	42ab      	cmp	r3, r5
 8000da8:	bf14      	ite	ne
 8000daa:	4660      	movne	r0, ip
 8000dac:	f04c 0001 	orreq.w	r0, ip, #1
 8000db0:	b960      	cbnz	r0, 8000dcc <HAL_TIMEx_MasterConfigSynchronization+0x84>
 8000db2:	4811      	ldr	r0, [pc, #68]	@ (8000df8 <HAL_TIMEx_MasterConfigSynchronization+0xb0>)
 8000db4:	4283      	cmp	r3, r0
 8000db6:	d009      	beq.n	8000dcc <HAL_TIMEx_MasterConfigSynchronization+0x84>
 8000db8:	e00d      	b.n	8000dd6 <HAL_TIMEx_MasterConfigSynchronization+0x8e>
 8000dba:	684d      	ldr	r5, [r1, #4]
 8000dbc:	f420 0070 	bic.w	r0, r0, #15728640	@ 0xf00000
 8000dc0:	4328      	orrs	r0, r5
 8000dc2:	680d      	ldr	r5, [r1, #0]
 8000dc4:	f020 0070 	bic.w	r0, r0, #112	@ 0x70
 8000dc8:	4328      	orrs	r0, r5
 8000dca:	6058      	str	r0, [r3, #4]
 8000dcc:	6889      	ldr	r1, [r1, #8]
 8000dce:	f024 0480 	bic.w	r4, r4, #128	@ 0x80
 8000dd2:	430c      	orrs	r4, r1
 8000dd4:	609c      	str	r4, [r3, #8]
 8000dd6:	2300      	movs	r3, #0
 8000dd8:	2101      	movs	r1, #1
 8000dda:	4618      	mov	r0, r3
 8000ddc:	f882 103d 	strb.w	r1, [r2, #61]	@ 0x3d
 8000de0:	f882 303c 	strb.w	r3, [r2, #60]	@ 0x3c
 8000de4:	bc30      	pop	{r4, r5}
 8000de6:	4770      	bx	lr
 8000de8:	2002      	movs	r0, #2
 8000dea:	4770      	bx	lr
 8000dec:	40010000 	.word	0x40010000
 8000df0:	40000400 	.word	0x40000400
 8000df4:	40001800 	.word	0x40001800
 8000df8:	40014000 	.word	0x40014000

08000dfc <HAL_TIMEx_CommutCallback>:
 8000dfc:	4770      	bx	lr
 8000dfe:	bf00      	nop

08000e00 <HAL_TIMEx_BreakCallback>:
 8000e00:	4770      	bx	lr
 8000e02:	bf00      	nop

08000e04 <HAL_TIMEx_Break2Callback>:
 8000e04:	4770      	bx	lr
 8000e06:	bf00      	nop

08000e08 <HAL_ADC_ConfigChannel>:
 8000e08:	b570      	push	{r4, r5, r6, lr}
 8000e0a:	2200      	movs	r2, #0
 8000e0c:	b082      	sub	sp, #8
 8000e0e:	9201      	str	r2, [sp, #4]
 8000e10:	f890 2050 	ldrb.w	r2, [r0, #80]	@ 0x50
 8000e14:	2a01      	cmp	r2, #1
 8000e16:	f000 80ea 	beq.w	8000fee <HAL_ADC_ConfigChannel+0x1e6>
 8000e1a:	2401      	movs	r4, #1
 8000e1c:	6802      	ldr	r2, [r0, #0]
 8000e1e:	4603      	mov	r3, r0
 8000e20:	f880 4050 	strb.w	r4, [r0, #80]	@ 0x50
 8000e24:	6890      	ldr	r0, [r2, #8]
 8000e26:	0745      	lsls	r5, r0, #29
 8000e28:	d509      	bpl.n	8000e3e <HAL_ADC_ConfigChannel+0x36>
 8000e2a:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8000e2c:	2001      	movs	r0, #1
 8000e2e:	f042 0220 	orr.w	r2, r2, #32
 8000e32:	655a      	str	r2, [r3, #84]	@ 0x54
 8000e34:	2200      	movs	r2, #0
 8000e36:	f883 2050 	strb.w	r2, [r3, #80]	@ 0x50
 8000e3a:	b002      	add	sp, #8
 8000e3c:	bd70      	pop	{r4, r5, r6, pc}
 8000e3e:	680d      	ldr	r5, [r1, #0]
 8000e40:	2d00      	cmp	r5, #0
 8000e42:	ea4f 6095 	mov.w	r0, r5, lsr #26
 8000e46:	db0c      	blt.n	8000e62 <HAL_ADC_ConfigChannel+0x5a>
 8000e48:	f3c5 0613 	ubfx	r6, r5, #0, #20
 8000e4c:	2e00      	cmp	r6, #0
 8000e4e:	d069      	beq.n	8000f24 <HAL_ADC_ConfigChannel+0x11c>
 8000e50:	fa95 f5a5 	rbit	r5, r5
 8000e54:	b115      	cbz	r5, 8000e5c <HAL_ADC_ConfigChannel+0x54>
 8000e56:	fab5 f585 	clz	r5, r5
 8000e5a:	40ac      	lsls	r4, r5
 8000e5c:	69d5      	ldr	r5, [r2, #28]
 8000e5e:	432c      	orrs	r4, r5
 8000e60:	61d4      	str	r4, [r2, #28]
 8000e62:	684c      	ldr	r4, [r1, #4]
 8000e64:	f04f 0c1f 	mov.w	ip, #31
 8000e68:	f102 0e30 	add.w	lr, r2, #48	@ 0x30
 8000e6c:	f000 001f 	and.w	r0, r0, #31
 8000e70:	09a5      	lsrs	r5, r4, #6
 8000e72:	ea04 040c 	and.w	r4, r4, ip
 8000e76:	f005 050c 	and.w	r5, r5, #12
 8000e7a:	fa0c fc04 	lsl.w	ip, ip, r4
 8000e7e:	40a0      	lsls	r0, r4
 8000e80:	f85e 4005 	ldr.w	r4, [lr, r5]
 8000e84:	ea24 0c0c 	bic.w	ip, r4, ip
 8000e88:	ea4c 0000 	orr.w	r0, ip, r0
 8000e8c:	f84e 0005 	str.w	r0, [lr, r5]
 8000e90:	6890      	ldr	r0, [r2, #8]
 8000e92:	f010 0f04 	tst.w	r0, #4
 8000e96:	6890      	ldr	r0, [r2, #8]
 8000e98:	d101      	bne.n	8000e9e <HAL_ADC_ConfigChannel+0x96>
 8000e9a:	0700      	lsls	r0, r0, #28
 8000e9c:	d544      	bpl.n	8000f28 <HAL_ADC_ConfigChannel+0x120>
 8000e9e:	6890      	ldr	r0, [r2, #8]
 8000ea0:	07c6      	lsls	r6, r0, #31
 8000ea2:	d43d      	bmi.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 8000ea4:	68cd      	ldr	r5, [r1, #12]
 8000ea6:	680c      	ldr	r4, [r1, #0]
 8000ea8:	f005 0618 	and.w	r6, r5, #24
 8000eac:	48a8      	ldr	r0, [pc, #672]	@ (8001150 <HAL_ADC_ConfigChannel+0x348>)
 8000eae:	f8d2 10c0 	ldr.w	r1, [r2, #192]	@ 0xc0
 8000eb2:	40f0      	lsrs	r0, r6
 8000eb4:	f3c4 0613 	ubfx	r6, r4, #0, #20
 8000eb8:	4020      	ands	r0, r4
 8000eba:	ea21 0106 	bic.w	r1, r1, r6
 8000ebe:	4301      	orrs	r1, r0
 8000ec0:	f8c2 10c0 	str.w	r1, [r2, #192]	@ 0xc0
 8000ec4:	49a3      	ldr	r1, [pc, #652]	@ (8001154 <HAL_ADC_ConfigChannel+0x34c>)
 8000ec6:	428d      	cmp	r5, r1
 8000ec8:	f000 8086 	beq.w	8000fd8 <HAL_ADC_ConfigChannel+0x1d0>
 8000ecc:	2c00      	cmp	r4, #0
 8000ece:	da27      	bge.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 8000ed0:	49a1      	ldr	r1, [pc, #644]	@ (8001158 <HAL_ADC_ConfigChannel+0x350>)
 8000ed2:	428a      	cmp	r2, r1
 8000ed4:	f000 8093 	beq.w	8000ffe <HAL_ADC_ConfigChannel+0x1f6>
 8000ed8:	f501 7180 	add.w	r1, r1, #256	@ 0x100
 8000edc:	428a      	cmp	r2, r1
 8000ede:	f000 808e 	beq.w	8000ffe <HAL_ADC_ConfigChannel+0x1f6>
 8000ee2:	489e      	ldr	r0, [pc, #632]	@ (800115c <HAL_ADC_ConfigChannel+0x354>)
 8000ee4:	499e      	ldr	r1, [pc, #632]	@ (8001160 <HAL_ADC_ConfigChannel+0x358>)
 8000ee6:	6886      	ldr	r6, [r0, #8]
 8000ee8:	688d      	ldr	r5, [r1, #8]
 8000eea:	07ed      	lsls	r5, r5, #31
 8000eec:	d49d      	bmi.n	8000e2a <HAL_ADC_ConfigChannel+0x22>
 8000eee:	4d9d      	ldr	r5, [pc, #628]	@ (8001164 <HAL_ADC_ConfigChannel+0x35c>)
 8000ef0:	f006 7ce0 	and.w	ip, r6, #29360128	@ 0x1c00000
 8000ef4:	42ac      	cmp	r4, r5
 8000ef6:	f000 8155 	beq.w	80011a4 <HAL_ADC_ConfigChannel+0x39c>
 8000efa:	4d9b      	ldr	r5, [pc, #620]	@ (8001168 <HAL_ADC_ConfigChannel+0x360>)
 8000efc:	42ac      	cmp	r4, r5
 8000efe:	f000 8117 	beq.w	8001130 <HAL_ADC_ConfigChannel+0x328>
 8000f02:	4d9a      	ldr	r5, [pc, #616]	@ (800116c <HAL_ADC_ConfigChannel+0x364>)
 8000f04:	42ac      	cmp	r4, r5
 8000f06:	d10b      	bne.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 8000f08:	0274      	lsls	r4, r6, #9
 8000f0a:	d409      	bmi.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 8000f0c:	428a      	cmp	r2, r1
 8000f0e:	d107      	bne.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 8000f10:	6882      	ldr	r2, [r0, #8]
 8000f12:	f022 72e0 	bic.w	r2, r2, #29360128	@ 0x1c00000
 8000f16:	ea42 020c 	orr.w	r2, r2, ip
 8000f1a:	f442 0280 	orr.w	r2, r2, #4194304	@ 0x400000
 8000f1e:	6082      	str	r2, [r0, #8]
 8000f20:	2000      	movs	r0, #0
 8000f22:	e787      	b.n	8000e34 <HAL_ADC_ConfigChannel+0x2c>
 8000f24:	4084      	lsls	r4, r0
 8000f26:	e799      	b.n	8000e5c <HAL_ADC_ConfigChannel+0x54>
 8000f28:	680c      	ldr	r4, [r1, #0]
 8000f2a:	f102 0c14 	add.w	ip, r2, #20
 8000f2e:	f04f 0e07 	mov.w	lr, #7
 8000f32:	688e      	ldr	r6, [r1, #8]
 8000f34:	0de5      	lsrs	r5, r4, #23
 8000f36:	f3c4 5404 	ubfx	r4, r4, #20, #5
 8000f3a:	f005 0504 	and.w	r5, r5, #4
 8000f3e:	fa0e fe04 	lsl.w	lr, lr, r4
 8000f42:	fa06 f404 	lsl.w	r4, r6, r4
 8000f46:	f85c 0005 	ldr.w	r0, [ip, r5]
 8000f4a:	ea20 000e 	bic.w	r0, r0, lr
 8000f4e:	4320      	orrs	r0, r4
 8000f50:	f84c 0005 	str.w	r0, [ip, r5]
 8000f54:	4886      	ldr	r0, [pc, #536]	@ (8001170 <HAL_ADC_ConfigChannel+0x368>)
 8000f56:	694d      	ldr	r5, [r1, #20]
 8000f58:	6800      	ldr	r0, [r0, #0]
 8000f5a:	f000 4070 	and.w	r0, r0, #4026531840	@ 0xf0000000
 8000f5e:	f1b0 5f80 	cmp.w	r0, #268435456	@ 0x10000000
 8000f62:	68d0      	ldr	r0, [r2, #12]
 8000f64:	d003      	beq.n	8000f6e <HAL_ADC_ConfigChannel+0x166>
 8000f66:	f010 0f10 	tst.w	r0, #16
 8000f6a:	68d0      	ldr	r0, [r2, #12]
 8000f6c:	d142      	bne.n	8000ff4 <HAL_ADC_ConfigChannel+0x1ec>
 8000f6e:	f3c0 0082 	ubfx	r0, r0, #2, #3
 8000f72:	0040      	lsls	r0, r0, #1
 8000f74:	4085      	lsls	r5, r0
 8000f76:	690e      	ldr	r6, [r1, #16]
 8000f78:	6808      	ldr	r0, [r1, #0]
 8000f7a:	2e04      	cmp	r6, #4
 8000f7c:	f000 8085 	beq.w	800108a <HAL_ADC_ConfigChannel+0x282>
 8000f80:	f102 0c60 	add.w	ip, r2, #96	@ 0x60
 8000f84:	f000 44f8 	and.w	r4, r0, #2080374784	@ 0x7c000000
 8000f88:	f85c 0026 	ldr.w	r0, [ip, r6, lsl #2]
 8000f8c:	f000 4000 	and.w	r0, r0, #2147483648	@ 0x80000000
 8000f90:	4320      	orrs	r0, r4
 8000f92:	4328      	orrs	r0, r5
 8000f94:	f84c 0026 	str.w	r0, [ip, r6, lsl #2]
 8000f98:	7e4c      	ldrb	r4, [r1, #25]
 8000f9a:	690d      	ldr	r5, [r1, #16]
 8000f9c:	f1a4 0401 	sub.w	r4, r4, #1
 8000fa0:	f85c 0025 	ldr.w	r0, [ip, r5, lsl #2]
 8000fa4:	fab4 f484 	clz	r4, r4
 8000fa8:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8000fac:	0964      	lsrs	r4, r4, #5
 8000fae:	ea40 70c4 	orr.w	r0, r0, r4, lsl #31
 8000fb2:	f84c 0025 	str.w	r0, [ip, r5, lsl #2]
 8000fb6:	7e08      	ldrb	r0, [r1, #24]
 8000fb8:	690d      	ldr	r5, [r1, #16]
 8000fba:	f1a0 0001 	sub.w	r0, r0, #1
 8000fbe:	6914      	ldr	r4, [r2, #16]
 8000fc0:	f005 051f 	and.w	r5, r5, #31
 8000fc4:	fab0 f080 	clz	r0, r0
 8000fc8:	f424 44f0 	bic.w	r4, r4, #30720	@ 0x7800
 8000fcc:	0940      	lsrs	r0, r0, #5
 8000fce:	02c0      	lsls	r0, r0, #11
 8000fd0:	40a8      	lsls	r0, r5
 8000fd2:	4320      	orrs	r0, r4
 8000fd4:	6110      	str	r0, [r2, #16]
 8000fd6:	e762      	b.n	8000e9e <HAL_ADC_ConfigChannel+0x96>
 8000fd8:	495f      	ldr	r1, [pc, #380]	@ (8001158 <HAL_ADC_ConfigChannel+0x350>)
 8000fda:	428a      	cmp	r2, r1
 8000fdc:	d07d      	beq.n	80010da <HAL_ADC_ConfigChannel+0x2d2>
 8000fde:	4965      	ldr	r1, [pc, #404]	@ (8001174 <HAL_ADC_ConfigChannel+0x36c>)
 8000fe0:	428a      	cmp	r2, r1
 8000fe2:	d01a      	beq.n	800101a <HAL_ADC_ConfigChannel+0x212>
 8000fe4:	69d1      	ldr	r1, [r2, #28]
 8000fe6:	f041 0101 	orr.w	r1, r1, #1
 8000fea:	61d1      	str	r1, [r2, #28]
 8000fec:	e76e      	b.n	8000ecc <HAL_ADC_ConfigChannel+0xc4>
 8000fee:	2002      	movs	r0, #2
 8000ff0:	b002      	add	sp, #8
 8000ff2:	bd70      	pop	{r4, r5, r6, pc}
 8000ff4:	0840      	lsrs	r0, r0, #1
 8000ff6:	f000 0008 	and.w	r0, r0, #8
 8000ffa:	4085      	lsls	r5, r0
 8000ffc:	e7bb      	b.n	8000f76 <HAL_ADC_ConfigChannel+0x16e>
 8000ffe:	495e      	ldr	r1, [pc, #376]	@ (8001178 <HAL_ADC_ConfigChannel+0x370>)
 8001000:	4a55      	ldr	r2, [pc, #340]	@ (8001158 <HAL_ADC_ConfigChannel+0x350>)
 8001002:	6889      	ldr	r1, [r1, #8]
 8001004:	6892      	ldr	r2, [r2, #8]
 8001006:	f012 0f01 	tst.w	r2, #1
 800100a:	4a5a      	ldr	r2, [pc, #360]	@ (8001174 <HAL_ADC_ConfigChannel+0x36c>)
 800100c:	6892      	ldr	r2, [r2, #8]
 800100e:	f47f af0c 	bne.w	8000e2a <HAL_ADC_ConfigChannel+0x22>
 8001012:	07d2      	lsls	r2, r2, #31
 8001014:	f53f af09 	bmi.w	8000e2a <HAL_ADC_ConfigChannel+0x22>
 8001018:	e782      	b.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 800101a:	4958      	ldr	r1, [pc, #352]	@ (800117c <HAL_ADC_ConfigChannel+0x374>)
 800101c:	428c      	cmp	r4, r1
 800101e:	f000 8081 	beq.w	8001124 <HAL_ADC_ConfigChannel+0x31c>
 8001022:	4957      	ldr	r1, [pc, #348]	@ (8001180 <HAL_ADC_ConfigChannel+0x378>)
 8001024:	428c      	cmp	r4, r1
 8001026:	d07f      	beq.n	8001128 <HAL_ADC_ConfigChannel+0x320>
 8001028:	4956      	ldr	r1, [pc, #344]	@ (8001184 <HAL_ADC_ConfigChannel+0x37c>)
 800102a:	428c      	cmp	r4, r1
 800102c:	f000 80dd 	beq.w	80011ea <HAL_ADC_ConfigChannel+0x3e2>
 8001030:	4955      	ldr	r1, [pc, #340]	@ (8001188 <HAL_ADC_ConfigChannel+0x380>)
 8001032:	428c      	cmp	r4, r1
 8001034:	f000 80db 	beq.w	80011ee <HAL_ADC_ConfigChannel+0x3e6>
 8001038:	f101 6186 	add.w	r1, r1, #70254592	@ 0x4300000
 800103c:	3110      	adds	r1, #16
 800103e:	428c      	cmp	r4, r1
 8001040:	f000 80d7 	beq.w	80011f2 <HAL_ADC_ConfigChannel+0x3ea>
 8001044:	4951      	ldr	r1, [pc, #324]	@ (800118c <HAL_ADC_ConfigChannel+0x384>)
 8001046:	428c      	cmp	r4, r1
 8001048:	f000 80d5 	beq.w	80011f6 <HAL_ADC_ConfigChannel+0x3ee>
 800104c:	f101 2104 	add.w	r1, r1, #67109888	@ 0x4000400
 8001050:	f501 1140 	add.w	r1, r1, #3145728	@ 0x300000
 8001054:	428c      	cmp	r4, r1
 8001056:	f000 80d0 	beq.w	80011fa <HAL_ADC_ConfigChannel+0x3f2>
 800105a:	f101 6186 	add.w	r1, r1, #70254592	@ 0x4300000
 800105e:	f501 6100 	add.w	r1, r1, #2048	@ 0x800
 8001062:	428c      	cmp	r4, r1
 8001064:	f000 80cb 	beq.w	80011fe <HAL_ADC_ConfigChannel+0x3f6>
 8001068:	4949      	ldr	r1, [pc, #292]	@ (8001190 <HAL_ADC_ConfigChannel+0x388>)
 800106a:	428c      	cmp	r4, r1
 800106c:	d1ba      	bne.n	8000fe4 <HAL_ADC_ConfigChannel+0x1dc>
 800106e:	4949      	ldr	r1, [pc, #292]	@ (8001194 <HAL_ADC_ConfigChannel+0x38c>)
 8001070:	fa91 f1a1 	rbit	r1, r1
 8001074:	2900      	cmp	r1, #0
 8001076:	d059      	beq.n	800112c <HAL_ADC_ConfigChannel+0x324>
 8001078:	fab1 f181 	clz	r1, r1
 800107c:	2001      	movs	r0, #1
 800107e:	fa00 f101 	lsl.w	r1, r0, r1
 8001082:	69d0      	ldr	r0, [r2, #28]
 8001084:	4301      	orrs	r1, r0
 8001086:	61d1      	str	r1, [r2, #28]
 8001088:	e74a      	b.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 800108a:	6e15      	ldr	r5, [r2, #96]	@ 0x60
 800108c:	0684      	lsls	r4, r0, #26
 800108e:	f005 45f8 	and.w	r5, r5, #2080374784	@ 0x7c000000
 8001092:	ebb5 6f80 	cmp.w	r5, r0, lsl #26
 8001096:	d103      	bne.n	80010a0 <HAL_ADC_ConfigChannel+0x298>
 8001098:	6e10      	ldr	r0, [r2, #96]	@ 0x60
 800109a:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 800109e:	6610      	str	r0, [r2, #96]	@ 0x60
 80010a0:	6e50      	ldr	r0, [r2, #100]	@ 0x64
 80010a2:	f000 40f8 	and.w	r0, r0, #2080374784	@ 0x7c000000
 80010a6:	4284      	cmp	r4, r0
 80010a8:	d103      	bne.n	80010b2 <HAL_ADC_ConfigChannel+0x2aa>
 80010aa:	6e50      	ldr	r0, [r2, #100]	@ 0x64
 80010ac:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 80010b0:	6650      	str	r0, [r2, #100]	@ 0x64
 80010b2:	6e90      	ldr	r0, [r2, #104]	@ 0x68
 80010b4:	f000 40f8 	and.w	r0, r0, #2080374784	@ 0x7c000000
 80010b8:	4284      	cmp	r4, r0
 80010ba:	d103      	bne.n	80010c4 <HAL_ADC_ConfigChannel+0x2bc>
 80010bc:	6e90      	ldr	r0, [r2, #104]	@ 0x68
 80010be:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 80010c2:	6690      	str	r0, [r2, #104]	@ 0x68
 80010c4:	6ed0      	ldr	r0, [r2, #108]	@ 0x6c
 80010c6:	f000 40f8 	and.w	r0, r0, #2080374784	@ 0x7c000000
 80010ca:	4284      	cmp	r4, r0
 80010cc:	f47f aee7 	bne.w	8000e9e <HAL_ADC_ConfigChannel+0x96>
 80010d0:	6ed0      	ldr	r0, [r2, #108]	@ 0x6c
 80010d2:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 80010d6:	66d0      	str	r0, [r2, #108]	@ 0x6c
 80010d8:	e6e1      	b.n	8000e9e <HAL_ADC_ConfigChannel+0x96>
 80010da:	4928      	ldr	r1, [pc, #160]	@ (800117c <HAL_ADC_ConfigChannel+0x374>)
 80010dc:	428c      	cmp	r4, r1
 80010de:	d021      	beq.n	8001124 <HAL_ADC_ConfigChannel+0x31c>
 80010e0:	4927      	ldr	r1, [pc, #156]	@ (8001180 <HAL_ADC_ConfigChannel+0x378>)
 80010e2:	428c      	cmp	r4, r1
 80010e4:	d020      	beq.n	8001128 <HAL_ADC_ConfigChannel+0x320>
 80010e6:	4927      	ldr	r1, [pc, #156]	@ (8001184 <HAL_ADC_ConfigChannel+0x37c>)
 80010e8:	428c      	cmp	r4, r1
 80010ea:	d07e      	beq.n	80011ea <HAL_ADC_ConfigChannel+0x3e2>
 80010ec:	4926      	ldr	r1, [pc, #152]	@ (8001188 <HAL_ADC_ConfigChannel+0x380>)
 80010ee:	428c      	cmp	r4, r1
 80010f0:	d07d      	beq.n	80011ee <HAL_ADC_ConfigChannel+0x3e6>
 80010f2:	f101 6186 	add.w	r1, r1, #70254592	@ 0x4300000
 80010f6:	3110      	adds	r1, #16
 80010f8:	428c      	cmp	r4, r1
 80010fa:	d07a      	beq.n	80011f2 <HAL_ADC_ConfigChannel+0x3ea>
 80010fc:	4923      	ldr	r1, [pc, #140]	@ (800118c <HAL_ADC_ConfigChannel+0x384>)
 80010fe:	428c      	cmp	r4, r1
 8001100:	d079      	beq.n	80011f6 <HAL_ADC_ConfigChannel+0x3ee>
 8001102:	f101 2104 	add.w	r1, r1, #67109888	@ 0x4000400
 8001106:	f501 1140 	add.w	r1, r1, #3145728	@ 0x300000
 800110a:	428c      	cmp	r4, r1
 800110c:	d075      	beq.n	80011fa <HAL_ADC_ConfigChannel+0x3f2>
 800110e:	f101 6186 	add.w	r1, r1, #70254592	@ 0x4300000
 8001112:	f501 6100 	add.w	r1, r1, #2048	@ 0x800
 8001116:	428c      	cmp	r4, r1
 8001118:	d071      	beq.n	80011fe <HAL_ADC_ConfigChannel+0x3f6>
 800111a:	491f      	ldr	r1, [pc, #124]	@ (8001198 <HAL_ADC_ConfigChannel+0x390>)
 800111c:	428c      	cmp	r4, r1
 800111e:	d1a3      	bne.n	8001068 <HAL_ADC_ConfigChannel+0x260>
 8001120:	491e      	ldr	r1, [pc, #120]	@ (800119c <HAL_ADC_ConfigChannel+0x394>)
 8001122:	e7a5      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 8001124:	2101      	movs	r1, #1
 8001126:	e7a3      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 8001128:	491d      	ldr	r1, [pc, #116]	@ (80011a0 <HAL_ADC_ConfigChannel+0x398>)
 800112a:	e7a1      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 800112c:	2101      	movs	r1, #1
 800112e:	e7a8      	b.n	8001082 <HAL_ADC_ConfigChannel+0x27a>
 8001130:	01f5      	lsls	r5, r6, #7
 8001132:	f53f aef5 	bmi.w	8000f20 <HAL_ADC_ConfigChannel+0x118>
 8001136:	428a      	cmp	r2, r1
 8001138:	f47f aef2 	bne.w	8000f20 <HAL_ADC_ConfigChannel+0x118>
 800113c:	6882      	ldr	r2, [r0, #8]
 800113e:	f022 72e0 	bic.w	r2, r2, #29360128	@ 0x1c00000
 8001142:	ea42 020c 	orr.w	r2, r2, ip
 8001146:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
 800114a:	6082      	str	r2, [r0, #8]
 800114c:	e6e8      	b.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 800114e:	bf00      	nop
 8001150:	000fffff 	.word	0x000fffff
 8001154:	47ff0000 	.word	0x47ff0000
 8001158:	40022000 	.word	0x40022000
 800115c:	58026300 	.word	0x58026300
 8001160:	58026000 	.word	0x58026000
 8001164:	cb840000 	.word	0xcb840000
 8001168:	c7520000 	.word	0xc7520000
 800116c:	cfb80000 	.word	0xcfb80000
 8001170:	5c001000 	.word	0x5c001000
 8001174:	40022100 	.word	0x40022100
 8001178:	40022300 	.word	0x40022300
 800117c:	04300002 	.word	0x04300002
 8001180:	08600004 	.word	0x08600004
 8001184:	0c900008 	.word	0x0c900008
 8001188:	10c00010 	.word	0x10c00010
 800118c:	2a000400 	.word	0x2a000400
 8001190:	4b840000 	.word	0x4b840000
 8001194:	4fb80000 	.word	0x4fb80000
 8001198:	43210000 	.word	0x43210000
 800119c:	47520000 	.word	0x47520000
 80011a0:	19200040 	.word	0x19200040
 80011a4:	0236      	lsls	r6, r6, #8
 80011a6:	f53f aebb 	bmi.w	8000f20 <HAL_ADC_ConfigChannel+0x118>
 80011aa:	428a      	cmp	r2, r1
 80011ac:	f47f aeb8 	bne.w	8000f20 <HAL_ADC_ConfigChannel+0x118>
 80011b0:	6882      	ldr	r2, [r0, #8]
 80011b2:	4914      	ldr	r1, [pc, #80]	@ (8001204 <HAL_ADC_ConfigChannel+0x3fc>)
 80011b4:	f022 72e0 	bic.w	r2, r2, #29360128	@ 0x1c00000
 80011b8:	ea42 020c 	orr.w	r2, r2, ip
 80011bc:	f442 0200 	orr.w	r2, r2, #8388608	@ 0x800000
 80011c0:	6082      	str	r2, [r0, #8]
 80011c2:	680a      	ldr	r2, [r1, #0]
 80011c4:	4910      	ldr	r1, [pc, #64]	@ (8001208 <HAL_ADC_ConfigChannel+0x400>)
 80011c6:	0992      	lsrs	r2, r2, #6
 80011c8:	fba1 1202 	umull	r1, r2, r1, r2
 80011cc:	0992      	lsrs	r2, r2, #6
 80011ce:	3201      	adds	r2, #1
 80011d0:	0052      	lsls	r2, r2, #1
 80011d2:	9201      	str	r2, [sp, #4]
 80011d4:	9a01      	ldr	r2, [sp, #4]
 80011d6:	2a00      	cmp	r2, #0
 80011d8:	f43f aea2 	beq.w	8000f20 <HAL_ADC_ConfigChannel+0x118>
 80011dc:	9a01      	ldr	r2, [sp, #4]
 80011de:	3a01      	subs	r2, #1
 80011e0:	9201      	str	r2, [sp, #4]
 80011e2:	9a01      	ldr	r2, [sp, #4]
 80011e4:	2a00      	cmp	r2, #0
 80011e6:	d1f9      	bne.n	80011dc <HAL_ADC_ConfigChannel+0x3d4>
 80011e8:	e69a      	b.n	8000f20 <HAL_ADC_ConfigChannel+0x118>
 80011ea:	4908      	ldr	r1, [pc, #32]	@ (800120c <HAL_ADC_ConfigChannel+0x404>)
 80011ec:	e740      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 80011ee:	4908      	ldr	r1, [pc, #32]	@ (8001210 <HAL_ADC_ConfigChannel+0x408>)
 80011f0:	e73e      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 80011f2:	4908      	ldr	r1, [pc, #32]	@ (8001214 <HAL_ADC_ConfigChannel+0x40c>)
 80011f4:	e73c      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 80011f6:	4908      	ldr	r1, [pc, #32]	@ (8001218 <HAL_ADC_ConfigChannel+0x410>)
 80011f8:	e73a      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 80011fa:	4908      	ldr	r1, [pc, #32]	@ (800121c <HAL_ADC_ConfigChannel+0x414>)
 80011fc:	e738      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 80011fe:	4908      	ldr	r1, [pc, #32]	@ (8001220 <HAL_ADC_ConfigChannel+0x418>)
 8001200:	e736      	b.n	8001070 <HAL_ADC_ConfigChannel+0x268>
 8001202:	bf00      	nop
 8001204:	20000004 	.word	0x20000004
 8001208:	053e2d63 	.word	0x053e2d63
 800120c:	1d500080 	.word	0x1d500080
 8001210:	21800100 	.word	0x21800100
 8001214:	25b00200 	.word	0x25b00200
 8001218:	2e300800 	.word	0x2e300800
 800121c:	32601000 	.word	0x32601000
 8001220:	36902000 	.word	0x36902000

08001224 <ADC_ConfigureBoostMode>:
 8001224:	b538      	push	{r3, r4, r5, lr}
 8001226:	4a4f      	ldr	r2, [pc, #316]	@ (8001364 <ADC_ConfigureBoostMode+0x140>)
 8001228:	4604      	mov	r4, r0
 800122a:	6803      	ldr	r3, [r0, #0]
 800122c:	4293      	cmp	r3, r2
 800122e:	d024      	beq.n	800127a <ADC_ConfigureBoostMode+0x56>
 8001230:	f502 7280 	add.w	r2, r2, #256	@ 0x100
 8001234:	4293      	cmp	r3, r2
 8001236:	d020      	beq.n	800127a <ADC_ConfigureBoostMode+0x56>
 8001238:	4b4b      	ldr	r3, [pc, #300]	@ (8001368 <ADC_ConfigureBoostMode+0x144>)
 800123a:	689b      	ldr	r3, [r3, #8]
 800123c:	f413 3f40 	tst.w	r3, #196608	@ 0x30000
 8001240:	d020      	beq.n	8001284 <ADC_ConfigureBoostMode+0x60>
 8001242:	f000 fe55 	bl	8001ef0 <HAL_RCC_GetHCLKFreq>
 8001246:	6863      	ldr	r3, [r4, #4]
 8001248:	4605      	mov	r5, r0
 800124a:	f5b3 3f00 	cmp.w	r3, #131072	@ 0x20000
 800124e:	d06d      	beq.n	800132c <ADC_ConfigureBoostMode+0x108>
 8001250:	f5b3 3f40 	cmp.w	r3, #196608	@ 0x30000
 8001254:	d072      	beq.n	800133c <ADC_ConfigureBoostMode+0x118>
 8001256:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 800125a:	d067      	beq.n	800132c <ADC_ConfigureBoostMode+0x108>
 800125c:	f003 ffc6 	bl	80051ec <HAL_GetREVID>
 8001260:	f241 0303 	movw	r3, #4099	@ 0x1003
 8001264:	4298      	cmp	r0, r3
 8001266:	d82d      	bhi.n	80012c4 <ADC_ConfigureBoostMode+0xa0>
 8001268:	4a40      	ldr	r2, [pc, #256]	@ (800136c <ADC_ConfigureBoostMode+0x148>)
 800126a:	6823      	ldr	r3, [r4, #0]
 800126c:	4295      	cmp	r5, r2
 800126e:	d947      	bls.n	8001300 <ADC_ConfigureBoostMode+0xdc>
 8001270:	689a      	ldr	r2, [r3, #8]
 8001272:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8001276:	609a      	str	r2, [r3, #8]
 8001278:	bd38      	pop	{r3, r4, r5, pc}
 800127a:	4b3d      	ldr	r3, [pc, #244]	@ (8001370 <ADC_ConfigureBoostMode+0x14c>)
 800127c:	689b      	ldr	r3, [r3, #8]
 800127e:	f413 3f40 	tst.w	r3, #196608	@ 0x30000
 8001282:	d1de      	bne.n	8001242 <ADC_ConfigureBoostMode+0x1e>
 8001284:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
 8001288:	2100      	movs	r1, #0
 800128a:	f002 f8d3 	bl	8003434 <HAL_RCCEx_GetPeriphCLKFreq>
 800128e:	6863      	ldr	r3, [r4, #4]
 8001290:	4605      	mov	r5, r0
 8001292:	f5b3 1f10 	cmp.w	r3, #2359296	@ 0x240000
 8001296:	d04d      	beq.n	8001334 <ADC_ConfigureBoostMode+0x110>
 8001298:	d825      	bhi.n	80012e6 <ADC_ConfigureBoostMode+0xc2>
 800129a:	f5b3 1fe0 	cmp.w	r3, #1835008	@ 0x1c0000
 800129e:	d04b      	beq.n	8001338 <ADC_ConfigureBoostMode+0x114>
 80012a0:	d84e      	bhi.n	8001340 <ADC_ConfigureBoostMode+0x11c>
 80012a2:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 80012a6:	d008      	beq.n	80012ba <ADC_ConfigureBoostMode+0x96>
 80012a8:	d855      	bhi.n	8001356 <ADC_ConfigureBoostMode+0x132>
 80012aa:	f5b3 2f00 	cmp.w	r3, #524288	@ 0x80000
 80012ae:	d004      	beq.n	80012ba <ADC_ConfigureBoostMode+0x96>
 80012b0:	f423 2200 	bic.w	r2, r3, #524288	@ 0x80000
 80012b4:	f5b2 2f80 	cmp.w	r2, #262144	@ 0x40000
 80012b8:	d1d0      	bne.n	800125c <ADC_ConfigureBoostMode+0x38>
 80012ba:	0c9b      	lsrs	r3, r3, #18
 80012bc:	005b      	lsls	r3, r3, #1
 80012be:	fbb5 f5f3 	udiv	r5, r5, r3
 80012c2:	e7cb      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 80012c4:	4a2b      	ldr	r2, [pc, #172]	@ (8001374 <ADC_ConfigureBoostMode+0x150>)
 80012c6:	6823      	ldr	r3, [r4, #0]
 80012c8:	4295      	cmp	r5, r2
 80012ca:	d923      	bls.n	8001314 <ADC_ConfigureBoostMode+0xf0>
 80012cc:	4a2a      	ldr	r2, [pc, #168]	@ (8001378 <ADC_ConfigureBoostMode+0x154>)
 80012ce:	4295      	cmp	r5, r2
 80012d0:	d925      	bls.n	800131e <ADC_ConfigureBoostMode+0xfa>
 80012d2:	4a2a      	ldr	r2, [pc, #168]	@ (800137c <ADC_ConfigureBoostMode+0x158>)
 80012d4:	4295      	cmp	r5, r2
 80012d6:	689a      	ldr	r2, [r3, #8]
 80012d8:	d839      	bhi.n	800134e <ADC_ConfigureBoostMode+0x12a>
 80012da:	f422 7240 	bic.w	r2, r2, #768	@ 0x300
 80012de:	f442 7200 	orr.w	r2, r2, #512	@ 0x200
 80012e2:	609a      	str	r2, [r3, #8]
 80012e4:	bd38      	pop	{r3, r4, r5, pc}
 80012e6:	f5b3 1f20 	cmp.w	r3, #2621440	@ 0x280000
 80012ea:	d02e      	beq.n	800134a <ADC_ConfigureBoostMode+0x126>
 80012ec:	f5b3 1f30 	cmp.w	r3, #2883584	@ 0x2c0000
 80012f0:	d1b4      	bne.n	800125c <ADC_ConfigureBoostMode+0x38>
 80012f2:	f003 ff7b 	bl	80051ec <HAL_GetREVID>
 80012f6:	f241 0303 	movw	r3, #4099	@ 0x1003
 80012fa:	4298      	cmp	r0, r3
 80012fc:	d805      	bhi.n	800130a <ADC_ConfigureBoostMode+0xe6>
 80012fe:	6823      	ldr	r3, [r4, #0]
 8001300:	689a      	ldr	r2, [r3, #8]
 8001302:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8001306:	609a      	str	r2, [r3, #8]
 8001308:	bd38      	pop	{r3, r4, r5, pc}
 800130a:	4b1a      	ldr	r3, [pc, #104]	@ (8001374 <ADC_ConfigureBoostMode+0x150>)
 800130c:	ebb3 2f15 	cmp.w	r3, r5, lsr #8
 8001310:	6823      	ldr	r3, [r4, #0]
 8001312:	d304      	bcc.n	800131e <ADC_ConfigureBoostMode+0xfa>
 8001314:	689a      	ldr	r2, [r3, #8]
 8001316:	f422 7240 	bic.w	r2, r2, #768	@ 0x300
 800131a:	609a      	str	r2, [r3, #8]
 800131c:	bd38      	pop	{r3, r4, r5, pc}
 800131e:	689a      	ldr	r2, [r3, #8]
 8001320:	f422 7240 	bic.w	r2, r2, #768	@ 0x300
 8001324:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8001328:	609a      	str	r2, [r3, #8]
 800132a:	bd38      	pop	{r3, r4, r5, pc}
 800132c:	0c1b      	lsrs	r3, r3, #16
 800132e:	fbb5 f5f3 	udiv	r5, r5, r3
 8001332:	e793      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 8001334:	0985      	lsrs	r5, r0, #6
 8001336:	e791      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 8001338:	0905      	lsrs	r5, r0, #4
 800133a:	e78f      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 800133c:	0885      	lsrs	r5, r0, #2
 800133e:	e78d      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 8001340:	f5b3 1f00 	cmp.w	r3, #2097152	@ 0x200000
 8001344:	d18a      	bne.n	800125c <ADC_ConfigureBoostMode+0x38>
 8001346:	0945      	lsrs	r5, r0, #5
 8001348:	e788      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 800134a:	09c5      	lsrs	r5, r0, #7
 800134c:	e786      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 800134e:	f442 7240 	orr.w	r2, r2, #768	@ 0x300
 8001352:	609a      	str	r2, [r3, #8]
 8001354:	bd38      	pop	{r3, r4, r5, pc}
 8001356:	f5b3 1fa0 	cmp.w	r3, #1310720	@ 0x140000
 800135a:	d0ae      	beq.n	80012ba <ADC_ConfigureBoostMode+0x96>
 800135c:	f5b3 1fc0 	cmp.w	r3, #1572864	@ 0x180000
 8001360:	d0ab      	beq.n	80012ba <ADC_ConfigureBoostMode+0x96>
 8001362:	e77b      	b.n	800125c <ADC_ConfigureBoostMode+0x38>
 8001364:	40022000 	.word	0x40022000
 8001368:	58026300 	.word	0x58026300
 800136c:	01312d00 	.word	0x01312d00
 8001370:	40022300 	.word	0x40022300
 8001374:	00bebc21 	.word	0x00bebc21
 8001378:	017d7841 	.word	0x017d7841
 800137c:	02faf081 	.word	0x02faf081

08001380 <HAL_ADC_Init>:
 8001380:	b570      	push	{r4, r5, r6, lr}
 8001382:	2300      	movs	r3, #0
 8001384:	b082      	sub	sp, #8
 8001386:	9301      	str	r3, [sp, #4]
 8001388:	2800      	cmp	r0, #0
 800138a:	f000 80a9 	beq.w	80014e0 <HAL_ADC_Init+0x160>
 800138e:	6d45      	ldr	r5, [r0, #84]	@ 0x54
 8001390:	4604      	mov	r4, r0
 8001392:	2d00      	cmp	r5, #0
 8001394:	f000 80aa 	beq.w	80014ec <HAL_ADC_Init+0x16c>
 8001398:	6822      	ldr	r2, [r4, #0]
 800139a:	6893      	ldr	r3, [r2, #8]
 800139c:	009d      	lsls	r5, r3, #2
 800139e:	d503      	bpl.n	80013a8 <HAL_ADC_Init+0x28>
 80013a0:	6891      	ldr	r1, [r2, #8]
 80013a2:	4b71      	ldr	r3, [pc, #452]	@ (8001568 <HAL_ADC_Init+0x1e8>)
 80013a4:	400b      	ands	r3, r1
 80013a6:	6093      	str	r3, [r2, #8]
 80013a8:	6893      	ldr	r3, [r2, #8]
 80013aa:	00d8      	lsls	r0, r3, #3
 80013ac:	d416      	bmi.n	80013dc <HAL_ADC_Init+0x5c>
 80013ae:	4b6f      	ldr	r3, [pc, #444]	@ (800156c <HAL_ADC_Init+0x1ec>)
 80013b0:	496f      	ldr	r1, [pc, #444]	@ (8001570 <HAL_ADC_Init+0x1f0>)
 80013b2:	681b      	ldr	r3, [r3, #0]
 80013b4:	6890      	ldr	r0, [r2, #8]
 80013b6:	099b      	lsrs	r3, r3, #6
 80013b8:	fba1 1303 	umull	r1, r3, r1, r3
 80013bc:	496d      	ldr	r1, [pc, #436]	@ (8001574 <HAL_ADC_Init+0x1f4>)
 80013be:	099b      	lsrs	r3, r3, #6
 80013c0:	4001      	ands	r1, r0
 80013c2:	3301      	adds	r3, #1
 80013c4:	f041 5180 	orr.w	r1, r1, #268435456	@ 0x10000000
 80013c8:	6091      	str	r1, [r2, #8]
 80013ca:	9301      	str	r3, [sp, #4]
 80013cc:	9b01      	ldr	r3, [sp, #4]
 80013ce:	b12b      	cbz	r3, 80013dc <HAL_ADC_Init+0x5c>
 80013d0:	9b01      	ldr	r3, [sp, #4]
 80013d2:	3b01      	subs	r3, #1
 80013d4:	9301      	str	r3, [sp, #4]
 80013d6:	9b01      	ldr	r3, [sp, #4]
 80013d8:	2b00      	cmp	r3, #0
 80013da:	d1f9      	bne.n	80013d0 <HAL_ADC_Init+0x50>
 80013dc:	6893      	ldr	r3, [r2, #8]
 80013de:	00d9      	lsls	r1, r3, #3
 80013e0:	f100 8082 	bmi.w	80014e8 <HAL_ADC_Init+0x168>
 80013e4:	6d63      	ldr	r3, [r4, #84]	@ 0x54
 80013e6:	2501      	movs	r5, #1
 80013e8:	f043 0310 	orr.w	r3, r3, #16
 80013ec:	6563      	str	r3, [r4, #84]	@ 0x54
 80013ee:	6da3      	ldr	r3, [r4, #88]	@ 0x58
 80013f0:	432b      	orrs	r3, r5
 80013f2:	65a3      	str	r3, [r4, #88]	@ 0x58
 80013f4:	6893      	ldr	r3, [r2, #8]
 80013f6:	f013 0f04 	tst.w	r3, #4
 80013fa:	6d63      	ldr	r3, [r4, #84]	@ 0x54
 80013fc:	d16c      	bne.n	80014d8 <HAL_ADC_Init+0x158>
 80013fe:	06db      	lsls	r3, r3, #27
 8001400:	d46a      	bmi.n	80014d8 <HAL_ADC_Init+0x158>
 8001402:	6d63      	ldr	r3, [r4, #84]	@ 0x54
 8001404:	f423 7381 	bic.w	r3, r3, #258	@ 0x102
 8001408:	f043 0302 	orr.w	r3, r3, #2
 800140c:	6563      	str	r3, [r4, #84]	@ 0x54
 800140e:	6893      	ldr	r3, [r2, #8]
 8001410:	07de      	lsls	r6, r3, #31
 8001412:	d40c      	bmi.n	800142e <HAL_ADC_Init+0xae>
 8001414:	4b58      	ldr	r3, [pc, #352]	@ (8001578 <HAL_ADC_Init+0x1f8>)
 8001416:	429a      	cmp	r2, r3
 8001418:	f000 8081 	beq.w	800151e <HAL_ADC_Init+0x19e>
 800141c:	f503 7380 	add.w	r3, r3, #256	@ 0x100
 8001420:	429a      	cmp	r2, r3
 8001422:	d07c      	beq.n	800151e <HAL_ADC_Init+0x19e>
 8001424:	4b55      	ldr	r3, [pc, #340]	@ (800157c <HAL_ADC_Init+0x1fc>)
 8001426:	689b      	ldr	r3, [r3, #8]
 8001428:	07d9      	lsls	r1, r3, #31
 800142a:	f140 808a 	bpl.w	8001542 <HAL_ADC_Init+0x1c2>
 800142e:	f003 fedd 	bl	80051ec <HAL_GetREVID>
 8001432:	f241 0303 	movw	r3, #4099	@ 0x1003
 8001436:	68a1      	ldr	r1, [r4, #8]
 8001438:	4298      	cmp	r0, r3
 800143a:	7f23      	ldrb	r3, [r4, #28]
 800143c:	d85c      	bhi.n	80014f8 <HAL_ADC_Init+0x178>
 800143e:	f894 c015 	ldrb.w	ip, [r4, #21]
 8001442:	041a      	lsls	r2, r3, #16
 8001444:	6b20      	ldr	r0, [r4, #48]	@ 0x30
 8001446:	ea42 324c 	orr.w	r2, r2, ip, lsl #13
 800144a:	4302      	orrs	r2, r0
 800144c:	430a      	orrs	r2, r1
 800144e:	2b01      	cmp	r3, #1
 8001450:	d103      	bne.n	800145a <HAL_ADC_Init+0xda>
 8001452:	6a23      	ldr	r3, [r4, #32]
 8001454:	3b01      	subs	r3, #1
 8001456:	ea42 4243 	orr.w	r2, r2, r3, lsl #17
 800145a:	6a63      	ldr	r3, [r4, #36]	@ 0x24
 800145c:	b123      	cbz	r3, 8001468 <HAL_ADC_Init+0xe8>
 800145e:	f403 7378 	and.w	r3, r3, #992	@ 0x3e0
 8001462:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 8001464:	430b      	orrs	r3, r1
 8001466:	431a      	orrs	r2, r3
 8001468:	6823      	ldr	r3, [r4, #0]
 800146a:	4945      	ldr	r1, [pc, #276]	@ (8001580 <HAL_ADC_Init+0x200>)
 800146c:	68d8      	ldr	r0, [r3, #12]
 800146e:	4001      	ands	r1, r0
 8001470:	4311      	orrs	r1, r2
 8001472:	60d9      	str	r1, [r3, #12]
 8001474:	689a      	ldr	r2, [r3, #8]
 8001476:	f012 0f04 	tst.w	r2, #4
 800147a:	689a      	ldr	r2, [r3, #8]
 800147c:	d11c      	bne.n	80014b8 <HAL_ADC_Init+0x138>
 800147e:	0712      	lsls	r2, r2, #28
 8001480:	d41a      	bmi.n	80014b8 <HAL_ADC_Init+0x138>
 8001482:	68d8      	ldr	r0, [r3, #12]
 8001484:	4a3f      	ldr	r2, [pc, #252]	@ (8001584 <HAL_ADC_Init+0x204>)
 8001486:	7d21      	ldrb	r1, [r4, #20]
 8001488:	4002      	ands	r2, r0
 800148a:	ea42 3281 	orr.w	r2, r2, r1, lsl #14
 800148e:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
 8001490:	430a      	orrs	r2, r1
 8001492:	60da      	str	r2, [r3, #12]
 8001494:	f894 2038 	ldrb.w	r2, [r4, #56]	@ 0x38
 8001498:	2a01      	cmp	r2, #1
 800149a:	d054      	beq.n	8001546 <HAL_ADC_Init+0x1c6>
 800149c:	691a      	ldr	r2, [r3, #16]
 800149e:	f022 0201 	bic.w	r2, r2, #1
 80014a2:	611a      	str	r2, [r3, #16]
 80014a4:	691a      	ldr	r2, [r3, #16]
 80014a6:	4620      	mov	r0, r4
 80014a8:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 80014aa:	f022 4270 	bic.w	r2, r2, #4026531840	@ 0xf0000000
 80014ae:	430a      	orrs	r2, r1
 80014b0:	611a      	str	r2, [r3, #16]
 80014b2:	f7ff feb7 	bl	8001224 <ADC_ConfigureBoostMode>
 80014b6:	6823      	ldr	r3, [r4, #0]
 80014b8:	68e2      	ldr	r2, [r4, #12]
 80014ba:	2a01      	cmp	r2, #1
 80014bc:	d027      	beq.n	800150e <HAL_ADC_Init+0x18e>
 80014be:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 80014c0:	f022 020f 	bic.w	r2, r2, #15
 80014c4:	631a      	str	r2, [r3, #48]	@ 0x30
 80014c6:	6d63      	ldr	r3, [r4, #84]	@ 0x54
 80014c8:	4628      	mov	r0, r5
 80014ca:	f023 0303 	bic.w	r3, r3, #3
 80014ce:	f043 0301 	orr.w	r3, r3, #1
 80014d2:	6563      	str	r3, [r4, #84]	@ 0x54
 80014d4:	b002      	add	sp, #8
 80014d6:	bd70      	pop	{r4, r5, r6, pc}
 80014d8:	6d63      	ldr	r3, [r4, #84]	@ 0x54
 80014da:	f043 0310 	orr.w	r3, r3, #16
 80014de:	6563      	str	r3, [r4, #84]	@ 0x54
 80014e0:	2501      	movs	r5, #1
 80014e2:	4628      	mov	r0, r5
 80014e4:	b002      	add	sp, #8
 80014e6:	bd70      	pop	{r4, r5, r6, pc}
 80014e8:	2500      	movs	r5, #0
 80014ea:	e783      	b.n	80013f4 <HAL_ADC_Init+0x74>
 80014ec:	f007 f934 	bl	8008758 <HAL_ADC_MspInit>
 80014f0:	65a5      	str	r5, [r4, #88]	@ 0x58
 80014f2:	f884 5050 	strb.w	r5, [r4, #80]	@ 0x50
 80014f6:	e74f      	b.n	8001398 <HAL_ADC_Init+0x18>
 80014f8:	2910      	cmp	r1, #16
 80014fa:	d1a0      	bne.n	800143e <HAL_ADC_Init+0xbe>
 80014fc:	7d61      	ldrb	r1, [r4, #21]
 80014fe:	041a      	lsls	r2, r3, #16
 8001500:	ea42 3241 	orr.w	r2, r2, r1, lsl #13
 8001504:	6b21      	ldr	r1, [r4, #48]	@ 0x30
 8001506:	430a      	orrs	r2, r1
 8001508:	f042 021c 	orr.w	r2, r2, #28
 800150c:	e79f      	b.n	800144e <HAL_ADC_Init+0xce>
 800150e:	6b19      	ldr	r1, [r3, #48]	@ 0x30
 8001510:	69a2      	ldr	r2, [r4, #24]
 8001512:	f021 010f 	bic.w	r1, r1, #15
 8001516:	3a01      	subs	r2, #1
 8001518:	430a      	orrs	r2, r1
 800151a:	631a      	str	r2, [r3, #48]	@ 0x30
 800151c:	e7d3      	b.n	80014c6 <HAL_ADC_Init+0x146>
 800151e:	4b16      	ldr	r3, [pc, #88]	@ (8001578 <HAL_ADC_Init+0x1f8>)
 8001520:	689b      	ldr	r3, [r3, #8]
 8001522:	f013 0f01 	tst.w	r3, #1
 8001526:	4b18      	ldr	r3, [pc, #96]	@ (8001588 <HAL_ADC_Init+0x208>)
 8001528:	689b      	ldr	r3, [r3, #8]
 800152a:	d180      	bne.n	800142e <HAL_ADC_Init+0xae>
 800152c:	07d8      	lsls	r0, r3, #31
 800152e:	f53f af7e 	bmi.w	800142e <HAL_ADC_Init+0xae>
 8001532:	4a16      	ldr	r2, [pc, #88]	@ (800158c <HAL_ADC_Init+0x20c>)
 8001534:	6893      	ldr	r3, [r2, #8]
 8001536:	6861      	ldr	r1, [r4, #4]
 8001538:	f423 137c 	bic.w	r3, r3, #4128768	@ 0x3f0000
 800153c:	430b      	orrs	r3, r1
 800153e:	6093      	str	r3, [r2, #8]
 8001540:	e775      	b.n	800142e <HAL_ADC_Init+0xae>
 8001542:	4a13      	ldr	r2, [pc, #76]	@ (8001590 <HAL_ADC_Init+0x210>)
 8001544:	e7f6      	b.n	8001534 <HAL_ADC_Init+0x1b4>
 8001546:	e9d4 120f 	ldrd	r1, r2, [r4, #60]	@ 0x3c
 800154a:	6c66      	ldr	r6, [r4, #68]	@ 0x44
 800154c:	3901      	subs	r1, #1
 800154e:	6918      	ldr	r0, [r3, #16]
 8001550:	4332      	orrs	r2, r6
 8001552:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8001556:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
 8001558:	430a      	orrs	r2, r1
 800155a:	490e      	ldr	r1, [pc, #56]	@ (8001594 <HAL_ADC_Init+0x214>)
 800155c:	4001      	ands	r1, r0
 800155e:	430a      	orrs	r2, r1
 8001560:	f042 0201 	orr.w	r2, r2, #1
 8001564:	611a      	str	r2, [r3, #16]
 8001566:	e79d      	b.n	80014a4 <HAL_ADC_Init+0x124>
 8001568:	5fffffc0 	.word	0x5fffffc0
 800156c:	20000004 	.word	0x20000004
 8001570:	053e2d63 	.word	0x053e2d63
 8001574:	6fffffc0 	.word	0x6fffffc0
 8001578:	40022000 	.word	0x40022000
 800157c:	58026000 	.word	0x58026000
 8001580:	fff0c003 	.word	0xfff0c003
 8001584:	ffffbffc 	.word	0xffffbffc
 8001588:	40022100 	.word	0x40022100
 800158c:	40022300 	.word	0x40022300
 8001590:	58026300 	.word	0x58026300
 8001594:	fc00f81e 	.word	0xfc00f81e

08001598 <HAL_RCC_GetSysClockFreq.part.0>:
 8001598:	4b33      	ldr	r3, [pc, #204]	@ (8001668 <HAL_RCC_GetSysClockFreq.part.0+0xd0>)
 800159a:	b430      	push	{r4, r5}
 800159c:	6a99      	ldr	r1, [r3, #40]	@ 0x28
 800159e:	6a9c      	ldr	r4, [r3, #40]	@ 0x28
 80015a0:	6add      	ldr	r5, [r3, #44]	@ 0x2c
 80015a2:	f414 7f7c 	tst.w	r4, #1008	@ 0x3f0
 80015a6:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 80015a8:	f3c4 1005 	ubfx	r0, r4, #4, #6
 80015ac:	d036      	beq.n	800161c <HAL_RCC_GetSysClockFreq.part.0+0x84>
 80015ae:	f3c2 02cc 	ubfx	r2, r2, #3, #13
 80015b2:	f005 0501 	and.w	r5, r5, #1
 80015b6:	f001 0103 	and.w	r1, r1, #3
 80015ba:	ee07 0a90 	vmov	s15, r0
 80015be:	fb05 f202 	mul.w	r2, r5, r2
 80015c2:	2901      	cmp	r1, #1
 80015c4:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 80015c8:	ee06 2a90 	vmov	s13, r2
 80015cc:	eefa 6ae9 	vcvt.f32.s32	s13, s13, #13
 80015d0:	d002      	beq.n	80015d8 <HAL_RCC_GetSysClockFreq.part.0+0x40>
 80015d2:	2902      	cmp	r1, #2
 80015d4:	d042      	beq.n	800165c <HAL_RCC_GetSysClockFreq.part.0+0xc4>
 80015d6:	b319      	cbz	r1, 8001620 <HAL_RCC_GetSysClockFreq.part.0+0x88>
 80015d8:	eddf 7a24 	vldr	s15, [pc, #144]	@ 800166c <HAL_RCC_GetSysClockFreq.part.0+0xd4>
 80015dc:	ee87 6a87 	vdiv.f32	s12, s15, s14
 80015e0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80015e2:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80015e6:	ee07 3a90 	vmov	s15, r3
 80015ea:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 80015ee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80015f2:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80015f6:	ee77 7aa5 	vadd.f32	s15, s15, s11
 80015fa:	ee67 7a86 	vmul.f32	s15, s15, s12
 80015fe:	4b1a      	ldr	r3, [pc, #104]	@ (8001668 <HAL_RCC_GetSysClockFreq.part.0+0xd0>)
 8001600:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001602:	f3c3 2346 	ubfx	r3, r3, #9, #7
 8001606:	3301      	adds	r3, #1
 8001608:	ee07 3a10 	vmov	s14, r3
 800160c:	eef8 6ac7 	vcvt.f32.s32	s13, s14
 8001610:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 8001614:	eefc 7ac7 	vcvt.u32.f32	s15, s14
 8001618:	ee17 0a90 	vmov	r0, s15
 800161c:	bc30      	pop	{r4, r5}
 800161e:	4770      	bx	lr
 8001620:	681a      	ldr	r2, [r3, #0]
 8001622:	0692      	lsls	r2, r2, #26
 8001624:	d51d      	bpl.n	8001662 <HAL_RCC_GetSysClockFreq.part.0+0xca>
 8001626:	6819      	ldr	r1, [r3, #0]
 8001628:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 800162c:	4a10      	ldr	r2, [pc, #64]	@ (8001670 <HAL_RCC_GetSysClockFreq.part.0+0xd8>)
 800162e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001630:	f3c1 01c1 	ubfx	r1, r1, #3, #2
 8001634:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8001638:	40ca      	lsrs	r2, r1
 800163a:	ee07 3a90 	vmov	s15, r3
 800163e:	ee06 2a10 	vmov	s12, r2
 8001642:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001646:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
 800164a:	ee77 6aa6 	vadd.f32	s13, s15, s13
 800164e:	eec6 7a07 	vdiv.f32	s15, s12, s14
 8001652:	ee36 7aa5 	vadd.f32	s14, s13, s11
 8001656:	ee67 7a87 	vmul.f32	s15, s15, s14
 800165a:	e7d0      	b.n	80015fe <HAL_RCC_GetSysClockFreq.part.0+0x66>
 800165c:	eddf 7a05 	vldr	s15, [pc, #20]	@ 8001674 <HAL_RCC_GetSysClockFreq.part.0+0xdc>
 8001660:	e7bc      	b.n	80015dc <HAL_RCC_GetSysClockFreq.part.0+0x44>
 8001662:	eddf 7a05 	vldr	s15, [pc, #20]	@ 8001678 <HAL_RCC_GetSysClockFreq.part.0+0xe0>
 8001666:	e7b9      	b.n	80015dc <HAL_RCC_GetSysClockFreq.part.0+0x44>
 8001668:	58024400 	.word	0x58024400
 800166c:	4a742400 	.word	0x4a742400
 8001670:	03d09000 	.word	0x03d09000
 8001674:	4bbebc20 	.word	0x4bbebc20
 8001678:	4c742400 	.word	0x4c742400

0800167c <HAL_RCC_OscConfig>:
 800167c:	2800      	cmp	r0, #0
 800167e:	f000 82e7 	beq.w	8001c50 <HAL_RCC_OscConfig+0x5d4>
 8001682:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001684:	6803      	ldr	r3, [r0, #0]
 8001686:	4604      	mov	r4, r0
 8001688:	07d9      	lsls	r1, r3, #31
 800168a:	d52e      	bpl.n	80016ea <HAL_RCC_OscConfig+0x6e>
 800168c:	4997      	ldr	r1, [pc, #604]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 800168e:	690a      	ldr	r2, [r1, #16]
 8001690:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8001692:	f002 0238 	and.w	r2, r2, #56	@ 0x38
 8001696:	2a10      	cmp	r2, #16
 8001698:	f000 80ee 	beq.w	8001878 <HAL_RCC_OscConfig+0x1fc>
 800169c:	2a18      	cmp	r2, #24
 800169e:	f000 80e6 	beq.w	800186e <HAL_RCC_OscConfig+0x1f2>
 80016a2:	6863      	ldr	r3, [r4, #4]
 80016a4:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 80016a8:	f000 8111 	beq.w	80018ce <HAL_RCC_OscConfig+0x252>
 80016ac:	2b00      	cmp	r3, #0
 80016ae:	f000 8167 	beq.w	8001980 <HAL_RCC_OscConfig+0x304>
 80016b2:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 80016b6:	4b8d      	ldr	r3, [pc, #564]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80016b8:	681a      	ldr	r2, [r3, #0]
 80016ba:	f000 8288 	beq.w	8001bce <HAL_RCC_OscConfig+0x552>
 80016be:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
 80016c2:	601a      	str	r2, [r3, #0]
 80016c4:	681a      	ldr	r2, [r3, #0]
 80016c6:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
 80016ca:	601a      	str	r2, [r3, #0]
 80016cc:	f003 fd88 	bl	80051e0 <HAL_GetTick>
 80016d0:	4e86      	ldr	r6, [pc, #536]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80016d2:	4605      	mov	r5, r0
 80016d4:	e005      	b.n	80016e2 <HAL_RCC_OscConfig+0x66>
 80016d6:	f003 fd83 	bl	80051e0 <HAL_GetTick>
 80016da:	1b40      	subs	r0, r0, r5
 80016dc:	2864      	cmp	r0, #100	@ 0x64
 80016de:	f200 814d 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 80016e2:	6833      	ldr	r3, [r6, #0]
 80016e4:	039b      	lsls	r3, r3, #14
 80016e6:	d5f6      	bpl.n	80016d6 <HAL_RCC_OscConfig+0x5a>
 80016e8:	6823      	ldr	r3, [r4, #0]
 80016ea:	079d      	lsls	r5, r3, #30
 80016ec:	d470      	bmi.n	80017d0 <HAL_RCC_OscConfig+0x154>
 80016ee:	06d9      	lsls	r1, r3, #27
 80016f0:	d533      	bpl.n	800175a <HAL_RCC_OscConfig+0xde>
 80016f2:	4a7e      	ldr	r2, [pc, #504]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80016f4:	6913      	ldr	r3, [r2, #16]
 80016f6:	6a92      	ldr	r2, [r2, #40]	@ 0x28
 80016f8:	f003 0338 	and.w	r3, r3, #56	@ 0x38
 80016fc:	2b08      	cmp	r3, #8
 80016fe:	f000 80cb 	beq.w	8001898 <HAL_RCC_OscConfig+0x21c>
 8001702:	2b18      	cmp	r3, #24
 8001704:	f000 80c3 	beq.w	800188e <HAL_RCC_OscConfig+0x212>
 8001708:	69e3      	ldr	r3, [r4, #28]
 800170a:	4d78      	ldr	r5, [pc, #480]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 800170c:	2b00      	cmp	r3, #0
 800170e:	f000 816f 	beq.w	80019f0 <HAL_RCC_OscConfig+0x374>
 8001712:	682b      	ldr	r3, [r5, #0]
 8001714:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8001718:	602b      	str	r3, [r5, #0]
 800171a:	f003 fd61 	bl	80051e0 <HAL_GetTick>
 800171e:	4606      	mov	r6, r0
 8001720:	e005      	b.n	800172e <HAL_RCC_OscConfig+0xb2>
 8001722:	f003 fd5d 	bl	80051e0 <HAL_GetTick>
 8001726:	1b80      	subs	r0, r0, r6
 8001728:	2802      	cmp	r0, #2
 800172a:	f200 8127 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 800172e:	682b      	ldr	r3, [r5, #0]
 8001730:	05db      	lsls	r3, r3, #23
 8001732:	d5f6      	bpl.n	8001722 <HAL_RCC_OscConfig+0xa6>
 8001734:	f003 fd5a 	bl	80051ec <HAL_GetREVID>
 8001738:	f241 0303 	movw	r3, #4099	@ 0x1003
 800173c:	4298      	cmp	r0, r3
 800173e:	f200 8267 	bhi.w	8001c10 <HAL_RCC_OscConfig+0x594>
 8001742:	6a22      	ldr	r2, [r4, #32]
 8001744:	686b      	ldr	r3, [r5, #4]
 8001746:	2a20      	cmp	r2, #32
 8001748:	f023 43f8 	bic.w	r3, r3, #2080374784	@ 0x7c000000
 800174c:	bf0c      	ite	eq
 800174e:	f043 4380 	orreq.w	r3, r3, #1073741824	@ 0x40000000
 8001752:	ea43 6382 	orrne.w	r3, r3, r2, lsl #26
 8001756:	606b      	str	r3, [r5, #4]
 8001758:	6823      	ldr	r3, [r4, #0]
 800175a:	071d      	lsls	r5, r3, #28
 800175c:	d516      	bpl.n	800178c <HAL_RCC_OscConfig+0x110>
 800175e:	6963      	ldr	r3, [r4, #20]
 8001760:	4d62      	ldr	r5, [pc, #392]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 8001762:	2b00      	cmp	r3, #0
 8001764:	f000 8122 	beq.w	80019ac <HAL_RCC_OscConfig+0x330>
 8001768:	6f6b      	ldr	r3, [r5, #116]	@ 0x74
 800176a:	f043 0301 	orr.w	r3, r3, #1
 800176e:	676b      	str	r3, [r5, #116]	@ 0x74
 8001770:	f003 fd36 	bl	80051e0 <HAL_GetTick>
 8001774:	4606      	mov	r6, r0
 8001776:	e005      	b.n	8001784 <HAL_RCC_OscConfig+0x108>
 8001778:	f003 fd32 	bl	80051e0 <HAL_GetTick>
 800177c:	1b80      	subs	r0, r0, r6
 800177e:	2802      	cmp	r0, #2
 8001780:	f200 80fc 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 8001784:	6f6b      	ldr	r3, [r5, #116]	@ 0x74
 8001786:	0798      	lsls	r0, r3, #30
 8001788:	d5f6      	bpl.n	8001778 <HAL_RCC_OscConfig+0xfc>
 800178a:	6823      	ldr	r3, [r4, #0]
 800178c:	069a      	lsls	r2, r3, #26
 800178e:	d516      	bpl.n	80017be <HAL_RCC_OscConfig+0x142>
 8001790:	69a3      	ldr	r3, [r4, #24]
 8001792:	4d56      	ldr	r5, [pc, #344]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 8001794:	2b00      	cmp	r3, #0
 8001796:	f000 811a 	beq.w	80019ce <HAL_RCC_OscConfig+0x352>
 800179a:	682b      	ldr	r3, [r5, #0]
 800179c:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
 80017a0:	602b      	str	r3, [r5, #0]
 80017a2:	f003 fd1d 	bl	80051e0 <HAL_GetTick>
 80017a6:	4606      	mov	r6, r0
 80017a8:	e005      	b.n	80017b6 <HAL_RCC_OscConfig+0x13a>
 80017aa:	f003 fd19 	bl	80051e0 <HAL_GetTick>
 80017ae:	1b80      	subs	r0, r0, r6
 80017b0:	2802      	cmp	r0, #2
 80017b2:	f200 80e3 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 80017b6:	682b      	ldr	r3, [r5, #0]
 80017b8:	049f      	lsls	r7, r3, #18
 80017ba:	d5f6      	bpl.n	80017aa <HAL_RCC_OscConfig+0x12e>
 80017bc:	6823      	ldr	r3, [r4, #0]
 80017be:	0759      	lsls	r1, r3, #29
 80017c0:	f100 808b 	bmi.w	80018da <HAL_RCC_OscConfig+0x25e>
 80017c4:	6a63      	ldr	r3, [r4, #36]	@ 0x24
 80017c6:	2b00      	cmp	r3, #0
 80017c8:	f040 80bf 	bne.w	800194a <HAL_RCC_OscConfig+0x2ce>
 80017cc:	2000      	movs	r0, #0
 80017ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80017d0:	4a46      	ldr	r2, [pc, #280]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80017d2:	6913      	ldr	r3, [r2, #16]
 80017d4:	6a92      	ldr	r2, [r2, #40]	@ 0x28
 80017d6:	f013 0338 	ands.w	r3, r3, #56	@ 0x38
 80017da:	d12d      	bne.n	8001838 <HAL_RCC_OscConfig+0x1bc>
 80017dc:	4b43      	ldr	r3, [pc, #268]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80017de:	68e2      	ldr	r2, [r4, #12]
 80017e0:	681b      	ldr	r3, [r3, #0]
 80017e2:	0759      	lsls	r1, r3, #29
 80017e4:	d501      	bpl.n	80017ea <HAL_RCC_OscConfig+0x16e>
 80017e6:	2a00      	cmp	r2, #0
 80017e8:	d04f      	beq.n	800188a <HAL_RCC_OscConfig+0x20e>
 80017ea:	4d40      	ldr	r5, [pc, #256]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80017ec:	682b      	ldr	r3, [r5, #0]
 80017ee:	f023 0319 	bic.w	r3, r3, #25
 80017f2:	4313      	orrs	r3, r2
 80017f4:	602b      	str	r3, [r5, #0]
 80017f6:	f003 fcf3 	bl	80051e0 <HAL_GetTick>
 80017fa:	4606      	mov	r6, r0
 80017fc:	e005      	b.n	800180a <HAL_RCC_OscConfig+0x18e>
 80017fe:	f003 fcef 	bl	80051e0 <HAL_GetTick>
 8001802:	1b80      	subs	r0, r0, r6
 8001804:	2802      	cmp	r0, #2
 8001806:	f200 80b9 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 800180a:	682b      	ldr	r3, [r5, #0]
 800180c:	075b      	lsls	r3, r3, #29
 800180e:	d5f6      	bpl.n	80017fe <HAL_RCC_OscConfig+0x182>
 8001810:	f003 fcec 	bl	80051ec <HAL_GetREVID>
 8001814:	f241 0303 	movw	r3, #4099	@ 0x1003
 8001818:	4298      	cmp	r0, r3
 800181a:	f200 8110 	bhi.w	8001a3e <HAL_RCC_OscConfig+0x3c2>
 800181e:	6922      	ldr	r2, [r4, #16]
 8001820:	686b      	ldr	r3, [r5, #4]
 8001822:	2a40      	cmp	r2, #64	@ 0x40
 8001824:	f423 337c 	bic.w	r3, r3, #258048	@ 0x3f000
 8001828:	bf0c      	ite	eq
 800182a:	f443 3300 	orreq.w	r3, r3, #131072	@ 0x20000
 800182e:	ea43 3302 	orrne.w	r3, r3, r2, lsl #12
 8001832:	606b      	str	r3, [r5, #4]
 8001834:	6823      	ldr	r3, [r4, #0]
 8001836:	e75a      	b.n	80016ee <HAL_RCC_OscConfig+0x72>
 8001838:	2b18      	cmp	r3, #24
 800183a:	f000 80fc 	beq.w	8001a36 <HAL_RCC_OscConfig+0x3ba>
 800183e:	4d2b      	ldr	r5, [pc, #172]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 8001840:	68e2      	ldr	r2, [r4, #12]
 8001842:	682b      	ldr	r3, [r5, #0]
 8001844:	2a00      	cmp	r2, #0
 8001846:	f000 80e5 	beq.w	8001a14 <HAL_RCC_OscConfig+0x398>
 800184a:	f023 0319 	bic.w	r3, r3, #25
 800184e:	4313      	orrs	r3, r2
 8001850:	602b      	str	r3, [r5, #0]
 8001852:	f003 fcc5 	bl	80051e0 <HAL_GetTick>
 8001856:	4606      	mov	r6, r0
 8001858:	e005      	b.n	8001866 <HAL_RCC_OscConfig+0x1ea>
 800185a:	f003 fcc1 	bl	80051e0 <HAL_GetTick>
 800185e:	1b80      	subs	r0, r0, r6
 8001860:	2802      	cmp	r0, #2
 8001862:	f200 808b 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 8001866:	682b      	ldr	r3, [r5, #0]
 8001868:	075f      	lsls	r7, r3, #29
 800186a:	d5f6      	bpl.n	800185a <HAL_RCC_OscConfig+0x1de>
 800186c:	e7d0      	b.n	8001810 <HAL_RCC_OscConfig+0x194>
 800186e:	f001 0103 	and.w	r1, r1, #3
 8001872:	2902      	cmp	r1, #2
 8001874:	f47f af15 	bne.w	80016a2 <HAL_RCC_OscConfig+0x26>
 8001878:	4a1c      	ldr	r2, [pc, #112]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 800187a:	6812      	ldr	r2, [r2, #0]
 800187c:	0392      	lsls	r2, r2, #14
 800187e:	f57f af34 	bpl.w	80016ea <HAL_RCC_OscConfig+0x6e>
 8001882:	6862      	ldr	r2, [r4, #4]
 8001884:	2a00      	cmp	r2, #0
 8001886:	f47f af30 	bne.w	80016ea <HAL_RCC_OscConfig+0x6e>
 800188a:	2001      	movs	r0, #1
 800188c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800188e:	f002 0203 	and.w	r2, r2, #3
 8001892:	2a01      	cmp	r2, #1
 8001894:	f47f af38 	bne.w	8001708 <HAL_RCC_OscConfig+0x8c>
 8001898:	4b14      	ldr	r3, [pc, #80]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 800189a:	681b      	ldr	r3, [r3, #0]
 800189c:	05da      	lsls	r2, r3, #23
 800189e:	d502      	bpl.n	80018a6 <HAL_RCC_OscConfig+0x22a>
 80018a0:	69e3      	ldr	r3, [r4, #28]
 80018a2:	2b80      	cmp	r3, #128	@ 0x80
 80018a4:	d1f1      	bne.n	800188a <HAL_RCC_OscConfig+0x20e>
 80018a6:	f003 fca1 	bl	80051ec <HAL_GetREVID>
 80018aa:	f241 0303 	movw	r3, #4099	@ 0x1003
 80018ae:	4298      	cmp	r0, r3
 80018b0:	f200 80ce 	bhi.w	8001a50 <HAL_RCC_OscConfig+0x3d4>
 80018b4:	6a22      	ldr	r2, [r4, #32]
 80018b6:	2a20      	cmp	r2, #32
 80018b8:	f000 81b9 	beq.w	8001c2e <HAL_RCC_OscConfig+0x5b2>
 80018bc:	490b      	ldr	r1, [pc, #44]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80018be:	684b      	ldr	r3, [r1, #4]
 80018c0:	f023 43f8 	bic.w	r3, r3, #2080374784	@ 0x7c000000
 80018c4:	ea43 6382 	orr.w	r3, r3, r2, lsl #26
 80018c8:	604b      	str	r3, [r1, #4]
 80018ca:	6823      	ldr	r3, [r4, #0]
 80018cc:	e745      	b.n	800175a <HAL_RCC_OscConfig+0xde>
 80018ce:	4a07      	ldr	r2, [pc, #28]	@ (80018ec <HAL_RCC_OscConfig+0x270>)
 80018d0:	6813      	ldr	r3, [r2, #0]
 80018d2:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 80018d6:	6013      	str	r3, [r2, #0]
 80018d8:	e6f8      	b.n	80016cc <HAL_RCC_OscConfig+0x50>
 80018da:	4d05      	ldr	r5, [pc, #20]	@ (80018f0 <HAL_RCC_OscConfig+0x274>)
 80018dc:	682b      	ldr	r3, [r5, #0]
 80018de:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80018e2:	602b      	str	r3, [r5, #0]
 80018e4:	f003 fc7c 	bl	80051e0 <HAL_GetTick>
 80018e8:	4606      	mov	r6, r0
 80018ea:	e008      	b.n	80018fe <HAL_RCC_OscConfig+0x282>
 80018ec:	58024400 	.word	0x58024400
 80018f0:	58024800 	.word	0x58024800
 80018f4:	f003 fc74 	bl	80051e0 <HAL_GetTick>
 80018f8:	1b80      	subs	r0, r0, r6
 80018fa:	2864      	cmp	r0, #100	@ 0x64
 80018fc:	d83e      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 80018fe:	682b      	ldr	r3, [r5, #0]
 8001900:	05da      	lsls	r2, r3, #23
 8001902:	d5f7      	bpl.n	80018f4 <HAL_RCC_OscConfig+0x278>
 8001904:	68a3      	ldr	r3, [r4, #8]
 8001906:	2b01      	cmp	r3, #1
 8001908:	f000 818b 	beq.w	8001c22 <HAL_RCC_OscConfig+0x5a6>
 800190c:	2b00      	cmp	r3, #0
 800190e:	f000 8166 	beq.w	8001bde <HAL_RCC_OscConfig+0x562>
 8001912:	2b05      	cmp	r3, #5
 8001914:	4b85      	ldr	r3, [pc, #532]	@ (8001b2c <HAL_RCC_OscConfig+0x4b0>)
 8001916:	6f1a      	ldr	r2, [r3, #112]	@ 0x70
 8001918:	f000 8192 	beq.w	8001c40 <HAL_RCC_OscConfig+0x5c4>
 800191c:	f022 0201 	bic.w	r2, r2, #1
 8001920:	671a      	str	r2, [r3, #112]	@ 0x70
 8001922:	6f1a      	ldr	r2, [r3, #112]	@ 0x70
 8001924:	f022 0204 	bic.w	r2, r2, #4
 8001928:	671a      	str	r2, [r3, #112]	@ 0x70
 800192a:	f003 fc59 	bl	80051e0 <HAL_GetTick>
 800192e:	4e7f      	ldr	r6, [pc, #508]	@ (8001b2c <HAL_RCC_OscConfig+0x4b0>)
 8001930:	f241 3788 	movw	r7, #5000	@ 0x1388
 8001934:	4605      	mov	r5, r0
 8001936:	e004      	b.n	8001942 <HAL_RCC_OscConfig+0x2c6>
 8001938:	f003 fc52 	bl	80051e0 <HAL_GetTick>
 800193c:	1b40      	subs	r0, r0, r5
 800193e:	42b8      	cmp	r0, r7
 8001940:	d81c      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 8001942:	6f33      	ldr	r3, [r6, #112]	@ 0x70
 8001944:	079b      	lsls	r3, r3, #30
 8001946:	d5f7      	bpl.n	8001938 <HAL_RCC_OscConfig+0x2bc>
 8001948:	e73c      	b.n	80017c4 <HAL_RCC_OscConfig+0x148>
 800194a:	4d78      	ldr	r5, [pc, #480]	@ (8001b2c <HAL_RCC_OscConfig+0x4b0>)
 800194c:	692a      	ldr	r2, [r5, #16]
 800194e:	f002 0238 	and.w	r2, r2, #56	@ 0x38
 8001952:	2a18      	cmp	r2, #24
 8001954:	f000 80ee 	beq.w	8001b34 <HAL_RCC_OscConfig+0x4b8>
 8001958:	2b02      	cmp	r3, #2
 800195a:	682b      	ldr	r3, [r5, #0]
 800195c:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8001960:	602b      	str	r3, [r5, #0]
 8001962:	d07f      	beq.n	8001a64 <HAL_RCC_OscConfig+0x3e8>
 8001964:	f003 fc3c 	bl	80051e0 <HAL_GetTick>
 8001968:	4604      	mov	r4, r0
 800196a:	682b      	ldr	r3, [r5, #0]
 800196c:	019b      	lsls	r3, r3, #6
 800196e:	f57f af2d 	bpl.w	80017cc <HAL_RCC_OscConfig+0x150>
 8001972:	f003 fc35 	bl	80051e0 <HAL_GetTick>
 8001976:	1b00      	subs	r0, r0, r4
 8001978:	2802      	cmp	r0, #2
 800197a:	d9f6      	bls.n	800196a <HAL_RCC_OscConfig+0x2ee>
 800197c:	2003      	movs	r0, #3
 800197e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001980:	4d6a      	ldr	r5, [pc, #424]	@ (8001b2c <HAL_RCC_OscConfig+0x4b0>)
 8001982:	682b      	ldr	r3, [r5, #0]
 8001984:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8001988:	602b      	str	r3, [r5, #0]
 800198a:	682b      	ldr	r3, [r5, #0]
 800198c:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 8001990:	602b      	str	r3, [r5, #0]
 8001992:	f003 fc25 	bl	80051e0 <HAL_GetTick>
 8001996:	4606      	mov	r6, r0
 8001998:	e004      	b.n	80019a4 <HAL_RCC_OscConfig+0x328>
 800199a:	f003 fc21 	bl	80051e0 <HAL_GetTick>
 800199e:	1b80      	subs	r0, r0, r6
 80019a0:	2864      	cmp	r0, #100	@ 0x64
 80019a2:	d8eb      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 80019a4:	682b      	ldr	r3, [r5, #0]
 80019a6:	039f      	lsls	r7, r3, #14
 80019a8:	d4f7      	bmi.n	800199a <HAL_RCC_OscConfig+0x31e>
 80019aa:	e69d      	b.n	80016e8 <HAL_RCC_OscConfig+0x6c>
 80019ac:	6f6b      	ldr	r3, [r5, #116]	@ 0x74
 80019ae:	f023 0301 	bic.w	r3, r3, #1
 80019b2:	676b      	str	r3, [r5, #116]	@ 0x74
 80019b4:	f003 fc14 	bl	80051e0 <HAL_GetTick>
 80019b8:	4606      	mov	r6, r0
 80019ba:	e004      	b.n	80019c6 <HAL_RCC_OscConfig+0x34a>
 80019bc:	f003 fc10 	bl	80051e0 <HAL_GetTick>
 80019c0:	1b80      	subs	r0, r0, r6
 80019c2:	2802      	cmp	r0, #2
 80019c4:	d8da      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 80019c6:	6f6b      	ldr	r3, [r5, #116]	@ 0x74
 80019c8:	0799      	lsls	r1, r3, #30
 80019ca:	d4f7      	bmi.n	80019bc <HAL_RCC_OscConfig+0x340>
 80019cc:	e6dd      	b.n	800178a <HAL_RCC_OscConfig+0x10e>
 80019ce:	682b      	ldr	r3, [r5, #0]
 80019d0:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 80019d4:	602b      	str	r3, [r5, #0]
 80019d6:	f003 fc03 	bl	80051e0 <HAL_GetTick>
 80019da:	4606      	mov	r6, r0
 80019dc:	e004      	b.n	80019e8 <HAL_RCC_OscConfig+0x36c>
 80019de:	f003 fbff 	bl	80051e0 <HAL_GetTick>
 80019e2:	1b80      	subs	r0, r0, r6
 80019e4:	2802      	cmp	r0, #2
 80019e6:	d8c9      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 80019e8:	682b      	ldr	r3, [r5, #0]
 80019ea:	0498      	lsls	r0, r3, #18
 80019ec:	d4f7      	bmi.n	80019de <HAL_RCC_OscConfig+0x362>
 80019ee:	e6e5      	b.n	80017bc <HAL_RCC_OscConfig+0x140>
 80019f0:	682b      	ldr	r3, [r5, #0]
 80019f2:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 80019f6:	602b      	str	r3, [r5, #0]
 80019f8:	f003 fbf2 	bl	80051e0 <HAL_GetTick>
 80019fc:	4606      	mov	r6, r0
 80019fe:	e004      	b.n	8001a0a <HAL_RCC_OscConfig+0x38e>
 8001a00:	f003 fbee 	bl	80051e0 <HAL_GetTick>
 8001a04:	1b80      	subs	r0, r0, r6
 8001a06:	2802      	cmp	r0, #2
 8001a08:	d8b8      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 8001a0a:	682b      	ldr	r3, [r5, #0]
 8001a0c:	05df      	lsls	r7, r3, #23
 8001a0e:	d4f7      	bmi.n	8001a00 <HAL_RCC_OscConfig+0x384>
 8001a10:	6823      	ldr	r3, [r4, #0]
 8001a12:	e6a2      	b.n	800175a <HAL_RCC_OscConfig+0xde>
 8001a14:	f023 0301 	bic.w	r3, r3, #1
 8001a18:	602b      	str	r3, [r5, #0]
 8001a1a:	f003 fbe1 	bl	80051e0 <HAL_GetTick>
 8001a1e:	4606      	mov	r6, r0
 8001a20:	e004      	b.n	8001a2c <HAL_RCC_OscConfig+0x3b0>
 8001a22:	f003 fbdd 	bl	80051e0 <HAL_GetTick>
 8001a26:	1b80      	subs	r0, r0, r6
 8001a28:	2802      	cmp	r0, #2
 8001a2a:	d8a7      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 8001a2c:	682b      	ldr	r3, [r5, #0]
 8001a2e:	0758      	lsls	r0, r3, #29
 8001a30:	d4f7      	bmi.n	8001a22 <HAL_RCC_OscConfig+0x3a6>
 8001a32:	6823      	ldr	r3, [r4, #0]
 8001a34:	e65b      	b.n	80016ee <HAL_RCC_OscConfig+0x72>
 8001a36:	0790      	lsls	r0, r2, #30
 8001a38:	f47f af01 	bne.w	800183e <HAL_RCC_OscConfig+0x1c2>
 8001a3c:	e6ce      	b.n	80017dc <HAL_RCC_OscConfig+0x160>
 8001a3e:	686b      	ldr	r3, [r5, #4]
 8001a40:	6922      	ldr	r2, [r4, #16]
 8001a42:	f023 43fe 	bic.w	r3, r3, #2130706432	@ 0x7f000000
 8001a46:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
 8001a4a:	606b      	str	r3, [r5, #4]
 8001a4c:	6823      	ldr	r3, [r4, #0]
 8001a4e:	e64e      	b.n	80016ee <HAL_RCC_OscConfig+0x72>
 8001a50:	4a36      	ldr	r2, [pc, #216]	@ (8001b2c <HAL_RCC_OscConfig+0x4b0>)
 8001a52:	6a21      	ldr	r1, [r4, #32]
 8001a54:	68d3      	ldr	r3, [r2, #12]
 8001a56:	f023 537c 	bic.w	r3, r3, #1056964608	@ 0x3f000000
 8001a5a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
 8001a5e:	60d3      	str	r3, [r2, #12]
 8001a60:	6823      	ldr	r3, [r4, #0]
 8001a62:	e67a      	b.n	800175a <HAL_RCC_OscConfig+0xde>
 8001a64:	f003 fbbc 	bl	80051e0 <HAL_GetTick>
 8001a68:	4606      	mov	r6, r0
 8001a6a:	e004      	b.n	8001a76 <HAL_RCC_OscConfig+0x3fa>
 8001a6c:	f003 fbb8 	bl	80051e0 <HAL_GetTick>
 8001a70:	1b80      	subs	r0, r0, r6
 8001a72:	2802      	cmp	r0, #2
 8001a74:	d882      	bhi.n	800197c <HAL_RCC_OscConfig+0x300>
 8001a76:	682b      	ldr	r3, [r5, #0]
 8001a78:	0199      	lsls	r1, r3, #6
 8001a7a:	d4f7      	bmi.n	8001a6c <HAL_RCC_OscConfig+0x3f0>
 8001a7c:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
 8001a7e:	4b2c      	ldr	r3, [pc, #176]	@ (8001b30 <HAL_RCC_OscConfig+0x4b4>)
 8001a80:	6aa2      	ldr	r2, [r4, #40]	@ 0x28
 8001a82:	400b      	ands	r3, r1
 8001a84:	4313      	orrs	r3, r2
 8001a86:	6ae2      	ldr	r2, [r4, #44]	@ 0x2c
 8001a88:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001a8c:	62ab      	str	r3, [r5, #40]	@ 0x28
 8001a8e:	6b21      	ldr	r1, [r4, #48]	@ 0x30
 8001a90:	e9d4 320d 	ldrd	r3, r2, [r4, #52]	@ 0x34
 8001a94:	3901      	subs	r1, #1
 8001a96:	3b01      	subs	r3, #1
 8001a98:	3a01      	subs	r2, #1
 8001a9a:	f3c1 0108 	ubfx	r1, r1, #0, #9
 8001a9e:	025b      	lsls	r3, r3, #9
 8001aa0:	0412      	lsls	r2, r2, #16
 8001aa2:	b29b      	uxth	r3, r3
 8001aa4:	f402 02fe 	and.w	r2, r2, #8323072	@ 0x7f0000
 8001aa8:	4313      	orrs	r3, r2
 8001aaa:	6be2      	ldr	r2, [r4, #60]	@ 0x3c
 8001aac:	3a01      	subs	r2, #1
 8001aae:	430b      	orrs	r3, r1
 8001ab0:	0612      	lsls	r2, r2, #24
 8001ab2:	f002 42fe 	and.w	r2, r2, #2130706432	@ 0x7f000000
 8001ab6:	4313      	orrs	r3, r2
 8001ab8:	632b      	str	r3, [r5, #48]	@ 0x30
 8001aba:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001abc:	f023 0301 	bic.w	r3, r3, #1
 8001ac0:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001ac2:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
 8001ac4:	6ca2      	ldr	r2, [r4, #72]	@ 0x48
 8001ac6:	f36f 03cf 	bfc	r3, #3, #13
 8001aca:	ea43 03c2 	orr.w	r3, r3, r2, lsl #3
 8001ace:	636b      	str	r3, [r5, #52]	@ 0x34
 8001ad0:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001ad2:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8001ad4:	f023 030c 	bic.w	r3, r3, #12
 8001ad8:	4313      	orrs	r3, r2
 8001ada:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001adc:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001ade:	6c62      	ldr	r2, [r4, #68]	@ 0x44
 8001ae0:	f023 0302 	bic.w	r3, r3, #2
 8001ae4:	4313      	orrs	r3, r2
 8001ae6:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001ae8:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001aea:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001aee:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001af0:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001af2:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8001af6:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001af8:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001afa:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8001afe:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001b00:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8001b02:	f043 0301 	orr.w	r3, r3, #1
 8001b06:	62eb      	str	r3, [r5, #44]	@ 0x2c
 8001b08:	682b      	ldr	r3, [r5, #0]
 8001b0a:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8001b0e:	602b      	str	r3, [r5, #0]
 8001b10:	f003 fb66 	bl	80051e0 <HAL_GetTick>
 8001b14:	4d05      	ldr	r5, [pc, #20]	@ (8001b2c <HAL_RCC_OscConfig+0x4b0>)
 8001b16:	4604      	mov	r4, r0
 8001b18:	682b      	ldr	r3, [r5, #0]
 8001b1a:	019a      	lsls	r2, r3, #6
 8001b1c:	f53f ae56 	bmi.w	80017cc <HAL_RCC_OscConfig+0x150>
 8001b20:	f003 fb5e 	bl	80051e0 <HAL_GetTick>
 8001b24:	1b00      	subs	r0, r0, r4
 8001b26:	2802      	cmp	r0, #2
 8001b28:	d9f6      	bls.n	8001b18 <HAL_RCC_OscConfig+0x49c>
 8001b2a:	e727      	b.n	800197c <HAL_RCC_OscConfig+0x300>
 8001b2c:	58024400 	.word	0x58024400
 8001b30:	fffffc0c 	.word	0xfffffc0c
 8001b34:	2b01      	cmp	r3, #1
 8001b36:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
 8001b38:	6b28      	ldr	r0, [r5, #48]	@ 0x30
 8001b3a:	f43f aea6 	beq.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b3e:	f002 0303 	and.w	r3, r2, #3
 8001b42:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 8001b44:	428b      	cmp	r3, r1
 8001b46:	f47f aea0 	bne.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b4a:	f3c2 1205 	ubfx	r2, r2, #4, #6
 8001b4e:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 8001b50:	429a      	cmp	r2, r3
 8001b52:	f47f ae9a 	bne.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b56:	6b23      	ldr	r3, [r4, #48]	@ 0x30
 8001b58:	f3c0 0208 	ubfx	r2, r0, #0, #9
 8001b5c:	3b01      	subs	r3, #1
 8001b5e:	429a      	cmp	r2, r3
 8001b60:	f47f ae93 	bne.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b64:	6b63      	ldr	r3, [r4, #52]	@ 0x34
 8001b66:	f3c0 2246 	ubfx	r2, r0, #9, #7
 8001b6a:	3b01      	subs	r3, #1
 8001b6c:	429a      	cmp	r2, r3
 8001b6e:	f47f ae8c 	bne.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b72:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8001b74:	f3c0 4206 	ubfx	r2, r0, #16, #7
 8001b78:	3b01      	subs	r3, #1
 8001b7a:	429a      	cmp	r2, r3
 8001b7c:	f47f ae85 	bne.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b80:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 8001b82:	f3c0 6006 	ubfx	r0, r0, #24, #7
 8001b86:	3b01      	subs	r3, #1
 8001b88:	4298      	cmp	r0, r3
 8001b8a:	f47f ae7e 	bne.w	800188a <HAL_RCC_OscConfig+0x20e>
 8001b8e:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
 8001b90:	6ca2      	ldr	r2, [r4, #72]	@ 0x48
 8001b92:	f3c3 03cc 	ubfx	r3, r3, #3, #13
 8001b96:	429a      	cmp	r2, r3
 8001b98:	f43f ae18 	beq.w	80017cc <HAL_RCC_OscConfig+0x150>
 8001b9c:	4a2d      	ldr	r2, [pc, #180]	@ (8001c54 <HAL_RCC_OscConfig+0x5d8>)
 8001b9e:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
 8001ba0:	f023 0301 	bic.w	r3, r3, #1
 8001ba4:	62d3      	str	r3, [r2, #44]	@ 0x2c
 8001ba6:	f003 fb1b 	bl	80051e0 <HAL_GetTick>
 8001baa:	4605      	mov	r5, r0
 8001bac:	f003 fb18 	bl	80051e0 <HAL_GetTick>
 8001bb0:	42a8      	cmp	r0, r5
 8001bb2:	d0fb      	beq.n	8001bac <HAL_RCC_OscConfig+0x530>
 8001bb4:	4a27      	ldr	r2, [pc, #156]	@ (8001c54 <HAL_RCC_OscConfig+0x5d8>)
 8001bb6:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
 8001bb8:	6b53      	ldr	r3, [r2, #52]	@ 0x34
 8001bba:	f36f 03cf 	bfc	r3, #3, #13
 8001bbe:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 8001bc2:	6353      	str	r3, [r2, #52]	@ 0x34
 8001bc4:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
 8001bc6:	f043 0301 	orr.w	r3, r3, #1
 8001bca:	62d3      	str	r3, [r2, #44]	@ 0x2c
 8001bcc:	e5fe      	b.n	80017cc <HAL_RCC_OscConfig+0x150>
 8001bce:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
 8001bd2:	601a      	str	r2, [r3, #0]
 8001bd4:	681a      	ldr	r2, [r3, #0]
 8001bd6:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
 8001bda:	601a      	str	r2, [r3, #0]
 8001bdc:	e576      	b.n	80016cc <HAL_RCC_OscConfig+0x50>
 8001bde:	4d1d      	ldr	r5, [pc, #116]	@ (8001c54 <HAL_RCC_OscConfig+0x5d8>)
 8001be0:	f241 3788 	movw	r7, #5000	@ 0x1388
 8001be4:	6f2b      	ldr	r3, [r5, #112]	@ 0x70
 8001be6:	f023 0301 	bic.w	r3, r3, #1
 8001bea:	672b      	str	r3, [r5, #112]	@ 0x70
 8001bec:	6f2b      	ldr	r3, [r5, #112]	@ 0x70
 8001bee:	f023 0304 	bic.w	r3, r3, #4
 8001bf2:	672b      	str	r3, [r5, #112]	@ 0x70
 8001bf4:	f003 faf4 	bl	80051e0 <HAL_GetTick>
 8001bf8:	4606      	mov	r6, r0
 8001bfa:	e005      	b.n	8001c08 <HAL_RCC_OscConfig+0x58c>
 8001bfc:	f003 faf0 	bl	80051e0 <HAL_GetTick>
 8001c00:	1b80      	subs	r0, r0, r6
 8001c02:	42b8      	cmp	r0, r7
 8001c04:	f63f aeba 	bhi.w	800197c <HAL_RCC_OscConfig+0x300>
 8001c08:	6f2b      	ldr	r3, [r5, #112]	@ 0x70
 8001c0a:	0798      	lsls	r0, r3, #30
 8001c0c:	d4f6      	bmi.n	8001bfc <HAL_RCC_OscConfig+0x580>
 8001c0e:	e5d9      	b.n	80017c4 <HAL_RCC_OscConfig+0x148>
 8001c10:	68eb      	ldr	r3, [r5, #12]
 8001c12:	6a22      	ldr	r2, [r4, #32]
 8001c14:	f023 537c 	bic.w	r3, r3, #1056964608	@ 0x3f000000
 8001c18:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
 8001c1c:	60eb      	str	r3, [r5, #12]
 8001c1e:	6823      	ldr	r3, [r4, #0]
 8001c20:	e59b      	b.n	800175a <HAL_RCC_OscConfig+0xde>
 8001c22:	4a0c      	ldr	r2, [pc, #48]	@ (8001c54 <HAL_RCC_OscConfig+0x5d8>)
 8001c24:	6f13      	ldr	r3, [r2, #112]	@ 0x70
 8001c26:	f043 0301 	orr.w	r3, r3, #1
 8001c2a:	6713      	str	r3, [r2, #112]	@ 0x70
 8001c2c:	e67d      	b.n	800192a <HAL_RCC_OscConfig+0x2ae>
 8001c2e:	4a09      	ldr	r2, [pc, #36]	@ (8001c54 <HAL_RCC_OscConfig+0x5d8>)
 8001c30:	6853      	ldr	r3, [r2, #4]
 8001c32:	f023 43f8 	bic.w	r3, r3, #2080374784	@ 0x7c000000
 8001c36:	f043 4380 	orr.w	r3, r3, #1073741824	@ 0x40000000
 8001c3a:	6053      	str	r3, [r2, #4]
 8001c3c:	6823      	ldr	r3, [r4, #0]
 8001c3e:	e58c      	b.n	800175a <HAL_RCC_OscConfig+0xde>
 8001c40:	f042 0204 	orr.w	r2, r2, #4
 8001c44:	671a      	str	r2, [r3, #112]	@ 0x70
 8001c46:	6f1a      	ldr	r2, [r3, #112]	@ 0x70
 8001c48:	f042 0201 	orr.w	r2, r2, #1
 8001c4c:	671a      	str	r2, [r3, #112]	@ 0x70
 8001c4e:	e66c      	b.n	800192a <HAL_RCC_OscConfig+0x2ae>
 8001c50:	2001      	movs	r0, #1
 8001c52:	4770      	bx	lr
 8001c54:	58024400 	.word	0x58024400

08001c58 <HAL_RCC_GetSysClockFreq>:
 8001c58:	4a0c      	ldr	r2, [pc, #48]	@ (8001c8c <HAL_RCC_GetSysClockFreq+0x34>)
 8001c5a:	6913      	ldr	r3, [r2, #16]
 8001c5c:	f003 0338 	and.w	r3, r3, #56	@ 0x38
 8001c60:	2b10      	cmp	r3, #16
 8001c62:	d00d      	beq.n	8001c80 <HAL_RCC_GetSysClockFreq+0x28>
 8001c64:	2b18      	cmp	r3, #24
 8001c66:	d009      	beq.n	8001c7c <HAL_RCC_GetSysClockFreq+0x24>
 8001c68:	b963      	cbnz	r3, 8001c84 <HAL_RCC_GetSysClockFreq+0x2c>
 8001c6a:	6813      	ldr	r3, [r2, #0]
 8001c6c:	069b      	lsls	r3, r3, #26
 8001c6e:	d50b      	bpl.n	8001c88 <HAL_RCC_GetSysClockFreq+0x30>
 8001c70:	6813      	ldr	r3, [r2, #0]
 8001c72:	4807      	ldr	r0, [pc, #28]	@ (8001c90 <HAL_RCC_GetSysClockFreq+0x38>)
 8001c74:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 8001c78:	40d8      	lsrs	r0, r3
 8001c7a:	4770      	bx	lr
 8001c7c:	f7ff bc8c 	b.w	8001598 <HAL_RCC_GetSysClockFreq.part.0>
 8001c80:	4804      	ldr	r0, [pc, #16]	@ (8001c94 <HAL_RCC_GetSysClockFreq+0x3c>)
 8001c82:	4770      	bx	lr
 8001c84:	4804      	ldr	r0, [pc, #16]	@ (8001c98 <HAL_RCC_GetSysClockFreq+0x40>)
 8001c86:	4770      	bx	lr
 8001c88:	4801      	ldr	r0, [pc, #4]	@ (8001c90 <HAL_RCC_GetSysClockFreq+0x38>)
 8001c8a:	4770      	bx	lr
 8001c8c:	58024400 	.word	0x58024400
 8001c90:	03d09000 	.word	0x03d09000
 8001c94:	017d7840 	.word	0x017d7840
 8001c98:	003d0900 	.word	0x003d0900

08001c9c <HAL_RCC_ClockConfig>:
 8001c9c:	2800      	cmp	r0, #0
 8001c9e:	f000 810e 	beq.w	8001ebe <HAL_RCC_ClockConfig+0x222>
 8001ca2:	4a8d      	ldr	r2, [pc, #564]	@ (8001ed8 <HAL_RCC_ClockConfig+0x23c>)
 8001ca4:	6813      	ldr	r3, [r2, #0]
 8001ca6:	f003 030f 	and.w	r3, r3, #15
 8001caa:	428b      	cmp	r3, r1
 8001cac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001cb0:	4604      	mov	r4, r0
 8001cb2:	460d      	mov	r5, r1
 8001cb4:	d20c      	bcs.n	8001cd0 <HAL_RCC_ClockConfig+0x34>
 8001cb6:	6813      	ldr	r3, [r2, #0]
 8001cb8:	f023 030f 	bic.w	r3, r3, #15
 8001cbc:	430b      	orrs	r3, r1
 8001cbe:	6013      	str	r3, [r2, #0]
 8001cc0:	6813      	ldr	r3, [r2, #0]
 8001cc2:	f003 030f 	and.w	r3, r3, #15
 8001cc6:	428b      	cmp	r3, r1
 8001cc8:	d002      	beq.n	8001cd0 <HAL_RCC_ClockConfig+0x34>
 8001cca:	2001      	movs	r0, #1
 8001ccc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001cd0:	6823      	ldr	r3, [r4, #0]
 8001cd2:	0758      	lsls	r0, r3, #29
 8001cd4:	d50b      	bpl.n	8001cee <HAL_RCC_ClockConfig+0x52>
 8001cd6:	4981      	ldr	r1, [pc, #516]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001cd8:	6920      	ldr	r0, [r4, #16]
 8001cda:	698a      	ldr	r2, [r1, #24]
 8001cdc:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001ce0:	4290      	cmp	r0, r2
 8001ce2:	d904      	bls.n	8001cee <HAL_RCC_ClockConfig+0x52>
 8001ce4:	698a      	ldr	r2, [r1, #24]
 8001ce6:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
 8001cea:	4302      	orrs	r2, r0
 8001cec:	618a      	str	r2, [r1, #24]
 8001cee:	0719      	lsls	r1, r3, #28
 8001cf0:	d50b      	bpl.n	8001d0a <HAL_RCC_ClockConfig+0x6e>
 8001cf2:	497a      	ldr	r1, [pc, #488]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001cf4:	6960      	ldr	r0, [r4, #20]
 8001cf6:	69ca      	ldr	r2, [r1, #28]
 8001cf8:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001cfc:	4290      	cmp	r0, r2
 8001cfe:	d904      	bls.n	8001d0a <HAL_RCC_ClockConfig+0x6e>
 8001d00:	69ca      	ldr	r2, [r1, #28]
 8001d02:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
 8001d06:	4302      	orrs	r2, r0
 8001d08:	61ca      	str	r2, [r1, #28]
 8001d0a:	06da      	lsls	r2, r3, #27
 8001d0c:	d50b      	bpl.n	8001d26 <HAL_RCC_ClockConfig+0x8a>
 8001d0e:	4973      	ldr	r1, [pc, #460]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001d10:	69a0      	ldr	r0, [r4, #24]
 8001d12:	69ca      	ldr	r2, [r1, #28]
 8001d14:	f402 62e0 	and.w	r2, r2, #1792	@ 0x700
 8001d18:	4290      	cmp	r0, r2
 8001d1a:	d904      	bls.n	8001d26 <HAL_RCC_ClockConfig+0x8a>
 8001d1c:	69ca      	ldr	r2, [r1, #28]
 8001d1e:	f422 62e0 	bic.w	r2, r2, #1792	@ 0x700
 8001d22:	4302      	orrs	r2, r0
 8001d24:	61ca      	str	r2, [r1, #28]
 8001d26:	069f      	lsls	r7, r3, #26
 8001d28:	d50b      	bpl.n	8001d42 <HAL_RCC_ClockConfig+0xa6>
 8001d2a:	496c      	ldr	r1, [pc, #432]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001d2c:	69e0      	ldr	r0, [r4, #28]
 8001d2e:	6a0a      	ldr	r2, [r1, #32]
 8001d30:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001d34:	4290      	cmp	r0, r2
 8001d36:	d904      	bls.n	8001d42 <HAL_RCC_ClockConfig+0xa6>
 8001d38:	6a0a      	ldr	r2, [r1, #32]
 8001d3a:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
 8001d3e:	4302      	orrs	r2, r0
 8001d40:	620a      	str	r2, [r1, #32]
 8001d42:	079e      	lsls	r6, r3, #30
 8001d44:	f003 0201 	and.w	r2, r3, #1
 8001d48:	f140 80ab 	bpl.w	8001ea2 <HAL_RCC_ClockConfig+0x206>
 8001d4c:	4e63      	ldr	r6, [pc, #396]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001d4e:	68e0      	ldr	r0, [r4, #12]
 8001d50:	69b1      	ldr	r1, [r6, #24]
 8001d52:	f001 010f 	and.w	r1, r1, #15
 8001d56:	4288      	cmp	r0, r1
 8001d58:	d904      	bls.n	8001d64 <HAL_RCC_ClockConfig+0xc8>
 8001d5a:	69b1      	ldr	r1, [r6, #24]
 8001d5c:	f021 010f 	bic.w	r1, r1, #15
 8001d60:	4301      	orrs	r1, r0
 8001d62:	61b1      	str	r1, [r6, #24]
 8001d64:	2a00      	cmp	r2, #0
 8001d66:	d030      	beq.n	8001dca <HAL_RCC_ClockConfig+0x12e>
 8001d68:	4a5c      	ldr	r2, [pc, #368]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001d6a:	68a1      	ldr	r1, [r4, #8]
 8001d6c:	6993      	ldr	r3, [r2, #24]
 8001d6e:	f423 6370 	bic.w	r3, r3, #3840	@ 0xf00
 8001d72:	430b      	orrs	r3, r1
 8001d74:	6193      	str	r3, [r2, #24]
 8001d76:	6861      	ldr	r1, [r4, #4]
 8001d78:	6813      	ldr	r3, [r2, #0]
 8001d7a:	2902      	cmp	r1, #2
 8001d7c:	f000 80a1 	beq.w	8001ec2 <HAL_RCC_ClockConfig+0x226>
 8001d80:	2903      	cmp	r1, #3
 8001d82:	f000 8098 	beq.w	8001eb6 <HAL_RCC_ClockConfig+0x21a>
 8001d86:	2901      	cmp	r1, #1
 8001d88:	f000 80a1 	beq.w	8001ece <HAL_RCC_ClockConfig+0x232>
 8001d8c:	075f      	lsls	r7, r3, #29
 8001d8e:	d59c      	bpl.n	8001cca <HAL_RCC_ClockConfig+0x2e>
 8001d90:	4e52      	ldr	r6, [pc, #328]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001d92:	f241 3888 	movw	r8, #5000	@ 0x1388
 8001d96:	6933      	ldr	r3, [r6, #16]
 8001d98:	f023 0307 	bic.w	r3, r3, #7
 8001d9c:	430b      	orrs	r3, r1
 8001d9e:	6133      	str	r3, [r6, #16]
 8001da0:	f003 fa1e 	bl	80051e0 <HAL_GetTick>
 8001da4:	4607      	mov	r7, r0
 8001da6:	e005      	b.n	8001db4 <HAL_RCC_ClockConfig+0x118>
 8001da8:	f003 fa1a 	bl	80051e0 <HAL_GetTick>
 8001dac:	1bc0      	subs	r0, r0, r7
 8001dae:	4540      	cmp	r0, r8
 8001db0:	f200 808b 	bhi.w	8001eca <HAL_RCC_ClockConfig+0x22e>
 8001db4:	6933      	ldr	r3, [r6, #16]
 8001db6:	6862      	ldr	r2, [r4, #4]
 8001db8:	f003 0338 	and.w	r3, r3, #56	@ 0x38
 8001dbc:	ebb3 0fc2 	cmp.w	r3, r2, lsl #3
 8001dc0:	d1f2      	bne.n	8001da8 <HAL_RCC_ClockConfig+0x10c>
 8001dc2:	6823      	ldr	r3, [r4, #0]
 8001dc4:	079e      	lsls	r6, r3, #30
 8001dc6:	d506      	bpl.n	8001dd6 <HAL_RCC_ClockConfig+0x13a>
 8001dc8:	68e0      	ldr	r0, [r4, #12]
 8001dca:	4944      	ldr	r1, [pc, #272]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001dcc:	698a      	ldr	r2, [r1, #24]
 8001dce:	f002 020f 	and.w	r2, r2, #15
 8001dd2:	4290      	cmp	r0, r2
 8001dd4:	d369      	bcc.n	8001eaa <HAL_RCC_ClockConfig+0x20e>
 8001dd6:	4940      	ldr	r1, [pc, #256]	@ (8001ed8 <HAL_RCC_ClockConfig+0x23c>)
 8001dd8:	680a      	ldr	r2, [r1, #0]
 8001dda:	f002 020f 	and.w	r2, r2, #15
 8001dde:	42aa      	cmp	r2, r5
 8001de0:	d90a      	bls.n	8001df8 <HAL_RCC_ClockConfig+0x15c>
 8001de2:	680a      	ldr	r2, [r1, #0]
 8001de4:	f022 020f 	bic.w	r2, r2, #15
 8001de8:	432a      	orrs	r2, r5
 8001dea:	600a      	str	r2, [r1, #0]
 8001dec:	680a      	ldr	r2, [r1, #0]
 8001dee:	f002 020f 	and.w	r2, r2, #15
 8001df2:	42aa      	cmp	r2, r5
 8001df4:	f47f af69 	bne.w	8001cca <HAL_RCC_ClockConfig+0x2e>
 8001df8:	0758      	lsls	r0, r3, #29
 8001dfa:	d50b      	bpl.n	8001e14 <HAL_RCC_ClockConfig+0x178>
 8001dfc:	4937      	ldr	r1, [pc, #220]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001dfe:	6920      	ldr	r0, [r4, #16]
 8001e00:	698a      	ldr	r2, [r1, #24]
 8001e02:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001e06:	4290      	cmp	r0, r2
 8001e08:	d204      	bcs.n	8001e14 <HAL_RCC_ClockConfig+0x178>
 8001e0a:	698a      	ldr	r2, [r1, #24]
 8001e0c:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
 8001e10:	4302      	orrs	r2, r0
 8001e12:	618a      	str	r2, [r1, #24]
 8001e14:	0719      	lsls	r1, r3, #28
 8001e16:	d50b      	bpl.n	8001e30 <HAL_RCC_ClockConfig+0x194>
 8001e18:	4930      	ldr	r1, [pc, #192]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001e1a:	6960      	ldr	r0, [r4, #20]
 8001e1c:	69ca      	ldr	r2, [r1, #28]
 8001e1e:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001e22:	4290      	cmp	r0, r2
 8001e24:	d204      	bcs.n	8001e30 <HAL_RCC_ClockConfig+0x194>
 8001e26:	69ca      	ldr	r2, [r1, #28]
 8001e28:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
 8001e2c:	4302      	orrs	r2, r0
 8001e2e:	61ca      	str	r2, [r1, #28]
 8001e30:	06da      	lsls	r2, r3, #27
 8001e32:	d50b      	bpl.n	8001e4c <HAL_RCC_ClockConfig+0x1b0>
 8001e34:	4929      	ldr	r1, [pc, #164]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001e36:	69a0      	ldr	r0, [r4, #24]
 8001e38:	69ca      	ldr	r2, [r1, #28]
 8001e3a:	f402 62e0 	and.w	r2, r2, #1792	@ 0x700
 8001e3e:	4290      	cmp	r0, r2
 8001e40:	d204      	bcs.n	8001e4c <HAL_RCC_ClockConfig+0x1b0>
 8001e42:	69ca      	ldr	r2, [r1, #28]
 8001e44:	f422 62e0 	bic.w	r2, r2, #1792	@ 0x700
 8001e48:	4302      	orrs	r2, r0
 8001e4a:	61ca      	str	r2, [r1, #28]
 8001e4c:	069b      	lsls	r3, r3, #26
 8001e4e:	d50b      	bpl.n	8001e68 <HAL_RCC_ClockConfig+0x1cc>
 8001e50:	4a22      	ldr	r2, [pc, #136]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001e52:	69e1      	ldr	r1, [r4, #28]
 8001e54:	6a13      	ldr	r3, [r2, #32]
 8001e56:	f003 0370 	and.w	r3, r3, #112	@ 0x70
 8001e5a:	4299      	cmp	r1, r3
 8001e5c:	d204      	bcs.n	8001e68 <HAL_RCC_ClockConfig+0x1cc>
 8001e5e:	6a13      	ldr	r3, [r2, #32]
 8001e60:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8001e64:	430b      	orrs	r3, r1
 8001e66:	6213      	str	r3, [r2, #32]
 8001e68:	f7ff fef6 	bl	8001c58 <HAL_RCC_GetSysClockFreq>
 8001e6c:	4a1b      	ldr	r2, [pc, #108]	@ (8001edc <HAL_RCC_ClockConfig+0x240>)
 8001e6e:	4603      	mov	r3, r0
 8001e70:	481b      	ldr	r0, [pc, #108]	@ (8001ee0 <HAL_RCC_ClockConfig+0x244>)
 8001e72:	6991      	ldr	r1, [r2, #24]
 8001e74:	6992      	ldr	r2, [r2, #24]
 8001e76:	f3c1 2103 	ubfx	r1, r1, #8, #4
 8001e7a:	4d1a      	ldr	r5, [pc, #104]	@ (8001ee4 <HAL_RCC_ClockConfig+0x248>)
 8001e7c:	f002 020f 	and.w	r2, r2, #15
 8001e80:	4c19      	ldr	r4, [pc, #100]	@ (8001ee8 <HAL_RCC_ClockConfig+0x24c>)
 8001e82:	5c41      	ldrb	r1, [r0, r1]
 8001e84:	5c82      	ldrb	r2, [r0, r2]
 8001e86:	f001 011f 	and.w	r1, r1, #31
 8001e8a:	4818      	ldr	r0, [pc, #96]	@ (8001eec <HAL_RCC_ClockConfig+0x250>)
 8001e8c:	f002 021f 	and.w	r2, r2, #31
 8001e90:	40cb      	lsrs	r3, r1
 8001e92:	6800      	ldr	r0, [r0, #0]
 8001e94:	602b      	str	r3, [r5, #0]
 8001e96:	40d3      	lsrs	r3, r2
 8001e98:	6023      	str	r3, [r4, #0]
 8001e9a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001e9e:	f006 bf35 	b.w	8008d0c <HAL_InitTick>
 8001ea2:	2a00      	cmp	r2, #0
 8001ea4:	f47f af60 	bne.w	8001d68 <HAL_RCC_ClockConfig+0xcc>
 8001ea8:	e795      	b.n	8001dd6 <HAL_RCC_ClockConfig+0x13a>
 8001eaa:	698a      	ldr	r2, [r1, #24]
 8001eac:	f022 020f 	bic.w	r2, r2, #15
 8001eb0:	4302      	orrs	r2, r0
 8001eb2:	618a      	str	r2, [r1, #24]
 8001eb4:	e78f      	b.n	8001dd6 <HAL_RCC_ClockConfig+0x13a>
 8001eb6:	019a      	lsls	r2, r3, #6
 8001eb8:	f53f af6a 	bmi.w	8001d90 <HAL_RCC_ClockConfig+0xf4>
 8001ebc:	e705      	b.n	8001cca <HAL_RCC_ClockConfig+0x2e>
 8001ebe:	2001      	movs	r0, #1
 8001ec0:	4770      	bx	lr
 8001ec2:	0398      	lsls	r0, r3, #14
 8001ec4:	f53f af64 	bmi.w	8001d90 <HAL_RCC_ClockConfig+0xf4>
 8001ec8:	e6ff      	b.n	8001cca <HAL_RCC_ClockConfig+0x2e>
 8001eca:	2003      	movs	r0, #3
 8001ecc:	e6fe      	b.n	8001ccc <HAL_RCC_ClockConfig+0x30>
 8001ece:	05db      	lsls	r3, r3, #23
 8001ed0:	f53f af5e 	bmi.w	8001d90 <HAL_RCC_ClockConfig+0xf4>
 8001ed4:	e6f9      	b.n	8001cca <HAL_RCC_ClockConfig+0x2e>
 8001ed6:	bf00      	nop
 8001ed8:	52002000 	.word	0x52002000
 8001edc:	58024400 	.word	0x58024400
 8001ee0:	0800d62c 	.word	0x0800d62c
 8001ee4:	20000004 	.word	0x20000004
 8001ee8:	20000000 	.word	0x20000000
 8001eec:	2000000c 	.word	0x2000000c

08001ef0 <HAL_RCC_GetHCLKFreq>:
 8001ef0:	4a18      	ldr	r2, [pc, #96]	@ (8001f54 <HAL_RCC_GetHCLKFreq+0x64>)
 8001ef2:	b538      	push	{r3, r4, r5, lr}
 8001ef4:	6913      	ldr	r3, [r2, #16]
 8001ef6:	f003 0338 	and.w	r3, r3, #56	@ 0x38
 8001efa:	2b10      	cmp	r3, #16
 8001efc:	d024      	beq.n	8001f48 <HAL_RCC_GetHCLKFreq+0x58>
 8001efe:	2b18      	cmp	r3, #24
 8001f00:	d009      	beq.n	8001f16 <HAL_RCC_GetHCLKFreq+0x26>
 8001f02:	bb1b      	cbnz	r3, 8001f4c <HAL_RCC_GetHCLKFreq+0x5c>
 8001f04:	6813      	ldr	r3, [r2, #0]
 8001f06:	069b      	lsls	r3, r3, #26
 8001f08:	d522      	bpl.n	8001f50 <HAL_RCC_GetHCLKFreq+0x60>
 8001f0a:	6812      	ldr	r2, [r2, #0]
 8001f0c:	4b12      	ldr	r3, [pc, #72]	@ (8001f58 <HAL_RCC_GetHCLKFreq+0x68>)
 8001f0e:	f3c2 02c1 	ubfx	r2, r2, #3, #2
 8001f12:	40d3      	lsrs	r3, r2
 8001f14:	e002      	b.n	8001f1c <HAL_RCC_GetHCLKFreq+0x2c>
 8001f16:	f7ff fb3f 	bl	8001598 <HAL_RCC_GetSysClockFreq.part.0>
 8001f1a:	4603      	mov	r3, r0
 8001f1c:	490d      	ldr	r1, [pc, #52]	@ (8001f54 <HAL_RCC_GetHCLKFreq+0x64>)
 8001f1e:	480f      	ldr	r0, [pc, #60]	@ (8001f5c <HAL_RCC_GetHCLKFreq+0x6c>)
 8001f20:	698a      	ldr	r2, [r1, #24]
 8001f22:	6989      	ldr	r1, [r1, #24]
 8001f24:	f3c2 2203 	ubfx	r2, r2, #8, #4
 8001f28:	4c0d      	ldr	r4, [pc, #52]	@ (8001f60 <HAL_RCC_GetHCLKFreq+0x70>)
 8001f2a:	f001 010f 	and.w	r1, r1, #15
 8001f2e:	4d0d      	ldr	r5, [pc, #52]	@ (8001f64 <HAL_RCC_GetHCLKFreq+0x74>)
 8001f30:	5c82      	ldrb	r2, [r0, r2]
 8001f32:	5c40      	ldrb	r0, [r0, r1]
 8001f34:	f002 021f 	and.w	r2, r2, #31
 8001f38:	f000 001f 	and.w	r0, r0, #31
 8001f3c:	40d3      	lsrs	r3, r2
 8001f3e:	fa23 f000 	lsr.w	r0, r3, r0
 8001f42:	602b      	str	r3, [r5, #0]
 8001f44:	6020      	str	r0, [r4, #0]
 8001f46:	bd38      	pop	{r3, r4, r5, pc}
 8001f48:	4b07      	ldr	r3, [pc, #28]	@ (8001f68 <HAL_RCC_GetHCLKFreq+0x78>)
 8001f4a:	e7e7      	b.n	8001f1c <HAL_RCC_GetHCLKFreq+0x2c>
 8001f4c:	4b07      	ldr	r3, [pc, #28]	@ (8001f6c <HAL_RCC_GetHCLKFreq+0x7c>)
 8001f4e:	e7e5      	b.n	8001f1c <HAL_RCC_GetHCLKFreq+0x2c>
 8001f50:	4b01      	ldr	r3, [pc, #4]	@ (8001f58 <HAL_RCC_GetHCLKFreq+0x68>)
 8001f52:	e7e3      	b.n	8001f1c <HAL_RCC_GetHCLKFreq+0x2c>
 8001f54:	58024400 	.word	0x58024400
 8001f58:	03d09000 	.word	0x03d09000
 8001f5c:	0800d62c 	.word	0x0800d62c
 8001f60:	20000000 	.word	0x20000000
 8001f64:	20000004 	.word	0x20000004
 8001f68:	017d7840 	.word	0x017d7840
 8001f6c:	003d0900 	.word	0x003d0900

08001f70 <HAL_RCC_GetPCLK1Freq>:
 8001f70:	b508      	push	{r3, lr}
 8001f72:	f7ff ffbd 	bl	8001ef0 <HAL_RCC_GetHCLKFreq>
 8001f76:	4b05      	ldr	r3, [pc, #20]	@ (8001f8c <HAL_RCC_GetPCLK1Freq+0x1c>)
 8001f78:	4a05      	ldr	r2, [pc, #20]	@ (8001f90 <HAL_RCC_GetPCLK1Freq+0x20>)
 8001f7a:	69db      	ldr	r3, [r3, #28]
 8001f7c:	f3c3 1302 	ubfx	r3, r3, #4, #3
 8001f80:	5cd3      	ldrb	r3, [r2, r3]
 8001f82:	f003 031f 	and.w	r3, r3, #31
 8001f86:	40d8      	lsrs	r0, r3
 8001f88:	bd08      	pop	{r3, pc}
 8001f8a:	bf00      	nop
 8001f8c:	58024400 	.word	0x58024400
 8001f90:	0800d62c 	.word	0x0800d62c

08001f94 <HAL_RCC_GetPCLK2Freq>:
 8001f94:	b508      	push	{r3, lr}
 8001f96:	f7ff ffab 	bl	8001ef0 <HAL_RCC_GetHCLKFreq>
 8001f9a:	4b05      	ldr	r3, [pc, #20]	@ (8001fb0 <HAL_RCC_GetPCLK2Freq+0x1c>)
 8001f9c:	4a05      	ldr	r2, [pc, #20]	@ (8001fb4 <HAL_RCC_GetPCLK2Freq+0x20>)
 8001f9e:	69db      	ldr	r3, [r3, #28]
 8001fa0:	f3c3 2302 	ubfx	r3, r3, #8, #3
 8001fa4:	5cd3      	ldrb	r3, [r2, r3]
 8001fa6:	f003 031f 	and.w	r3, r3, #31
 8001faa:	40d8      	lsrs	r0, r3
 8001fac:	bd08      	pop	{r3, pc}
 8001fae:	bf00      	nop
 8001fb0:	58024400 	.word	0x58024400
 8001fb4:	0800d62c 	.word	0x0800d62c

08001fb8 <HAL_RCC_GetClockConfig>:
 8001fb8:	4b13      	ldr	r3, [pc, #76]	@ (8002008 <HAL_RCC_GetClockConfig+0x50>)
 8001fba:	223f      	movs	r2, #63	@ 0x3f
 8001fbc:	b410      	push	{r4}
 8001fbe:	6002      	str	r2, [r0, #0]
 8001fc0:	691a      	ldr	r2, [r3, #16]
 8001fc2:	4c12      	ldr	r4, [pc, #72]	@ (800200c <HAL_RCC_GetClockConfig+0x54>)
 8001fc4:	f002 0207 	and.w	r2, r2, #7
 8001fc8:	6042      	str	r2, [r0, #4]
 8001fca:	699a      	ldr	r2, [r3, #24]
 8001fcc:	f402 6270 	and.w	r2, r2, #3840	@ 0xf00
 8001fd0:	6082      	str	r2, [r0, #8]
 8001fd2:	699a      	ldr	r2, [r3, #24]
 8001fd4:	f002 020f 	and.w	r2, r2, #15
 8001fd8:	60c2      	str	r2, [r0, #12]
 8001fda:	699a      	ldr	r2, [r3, #24]
 8001fdc:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001fe0:	6102      	str	r2, [r0, #16]
 8001fe2:	69da      	ldr	r2, [r3, #28]
 8001fe4:	f002 0270 	and.w	r2, r2, #112	@ 0x70
 8001fe8:	6142      	str	r2, [r0, #20]
 8001fea:	69da      	ldr	r2, [r3, #28]
 8001fec:	f402 62e0 	and.w	r2, r2, #1792	@ 0x700
 8001ff0:	6182      	str	r2, [r0, #24]
 8001ff2:	6a1b      	ldr	r3, [r3, #32]
 8001ff4:	f003 0370 	and.w	r3, r3, #112	@ 0x70
 8001ff8:	61c3      	str	r3, [r0, #28]
 8001ffa:	6823      	ldr	r3, [r4, #0]
 8001ffc:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002000:	f003 030f 	and.w	r3, r3, #15
 8002004:	600b      	str	r3, [r1, #0]
 8002006:	4770      	bx	lr
 8002008:	58024400 	.word	0x58024400
 800200c:	52002000 	.word	0x52002000

08002010 <RCCEx_PLL2_Config.part.0>:
 8002010:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002012:	4c36      	ldr	r4, [pc, #216]	@ (80020ec <RCCEx_PLL2_Config.part.0+0xdc>)
 8002014:	4606      	mov	r6, r0
 8002016:	460f      	mov	r7, r1
 8002018:	6823      	ldr	r3, [r4, #0]
 800201a:	f023 6380 	bic.w	r3, r3, #67108864	@ 0x4000000
 800201e:	6023      	str	r3, [r4, #0]
 8002020:	f003 f8de 	bl	80051e0 <HAL_GetTick>
 8002024:	4605      	mov	r5, r0
 8002026:	e004      	b.n	8002032 <RCCEx_PLL2_Config.part.0+0x22>
 8002028:	f003 f8da 	bl	80051e0 <HAL_GetTick>
 800202c:	1b40      	subs	r0, r0, r5
 800202e:	2802      	cmp	r0, #2
 8002030:	d856      	bhi.n	80020e0 <RCCEx_PLL2_Config.part.0+0xd0>
 8002032:	6823      	ldr	r3, [r4, #0]
 8002034:	011a      	lsls	r2, r3, #4
 8002036:	d4f7      	bmi.n	8002028 <RCCEx_PLL2_Config.part.0+0x18>
 8002038:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
 800203a:	6832      	ldr	r2, [r6, #0]
 800203c:	f423 337c 	bic.w	r3, r3, #258048	@ 0x3f000
 8002040:	ea43 3302 	orr.w	r3, r3, r2, lsl #12
 8002044:	62a3      	str	r3, [r4, #40]	@ 0x28
 8002046:	e9d6 3202 	ldrd	r3, r2, [r6, #8]
 800204a:	3b01      	subs	r3, #1
 800204c:	3a01      	subs	r2, #1
 800204e:	025b      	lsls	r3, r3, #9
 8002050:	0412      	lsls	r2, r2, #16
 8002052:	b29b      	uxth	r3, r3
 8002054:	f402 02fe 	and.w	r2, r2, #8323072	@ 0x7f0000
 8002058:	4313      	orrs	r3, r2
 800205a:	6872      	ldr	r2, [r6, #4]
 800205c:	3a01      	subs	r2, #1
 800205e:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8002062:	4313      	orrs	r3, r2
 8002064:	6932      	ldr	r2, [r6, #16]
 8002066:	3a01      	subs	r2, #1
 8002068:	0612      	lsls	r2, r2, #24
 800206a:	f002 42fe 	and.w	r2, r2, #2130706432	@ 0x7f000000
 800206e:	4313      	orrs	r3, r2
 8002070:	63a3      	str	r3, [r4, #56]	@ 0x38
 8002072:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 8002074:	6972      	ldr	r2, [r6, #20]
 8002076:	f023 03c0 	bic.w	r3, r3, #192	@ 0xc0
 800207a:	4313      	orrs	r3, r2
 800207c:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800207e:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 8002080:	69b2      	ldr	r2, [r6, #24]
 8002082:	f023 0320 	bic.w	r3, r3, #32
 8002086:	4313      	orrs	r3, r2
 8002088:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800208a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 800208c:	f023 0310 	bic.w	r3, r3, #16
 8002090:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8002092:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 8002094:	69f2      	ldr	r2, [r6, #28]
 8002096:	f36f 03cf 	bfc	r3, #3, #13
 800209a:	ea43 03c2 	orr.w	r3, r3, r2, lsl #3
 800209e:	63e3      	str	r3, [r4, #60]	@ 0x3c
 80020a0:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 80020a2:	f043 0310 	orr.w	r3, r3, #16
 80020a6:	62e3      	str	r3, [r4, #44]	@ 0x2c
 80020a8:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 80020aa:	b1df      	cbz	r7, 80020e4 <RCCEx_PLL2_Config.part.0+0xd4>
 80020ac:	2f01      	cmp	r7, #1
 80020ae:	bf0c      	ite	eq
 80020b0:	f443 1380 	orreq.w	r3, r3, #1048576	@ 0x100000
 80020b4:	f443 1300 	orrne.w	r3, r3, #2097152	@ 0x200000
 80020b8:	62e3      	str	r3, [r4, #44]	@ 0x2c
 80020ba:	4c0c      	ldr	r4, [pc, #48]	@ (80020ec <RCCEx_PLL2_Config.part.0+0xdc>)
 80020bc:	6823      	ldr	r3, [r4, #0]
 80020be:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 80020c2:	6023      	str	r3, [r4, #0]
 80020c4:	f003 f88c 	bl	80051e0 <HAL_GetTick>
 80020c8:	4605      	mov	r5, r0
 80020ca:	e004      	b.n	80020d6 <RCCEx_PLL2_Config.part.0+0xc6>
 80020cc:	f003 f888 	bl	80051e0 <HAL_GetTick>
 80020d0:	1b40      	subs	r0, r0, r5
 80020d2:	2802      	cmp	r0, #2
 80020d4:	d804      	bhi.n	80020e0 <RCCEx_PLL2_Config.part.0+0xd0>
 80020d6:	6823      	ldr	r3, [r4, #0]
 80020d8:	011b      	lsls	r3, r3, #4
 80020da:	d5f7      	bpl.n	80020cc <RCCEx_PLL2_Config.part.0+0xbc>
 80020dc:	2000      	movs	r0, #0
 80020de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80020e0:	2003      	movs	r0, #3
 80020e2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80020e4:	f443 2300 	orr.w	r3, r3, #524288	@ 0x80000
 80020e8:	62e3      	str	r3, [r4, #44]	@ 0x2c
 80020ea:	e7e6      	b.n	80020ba <RCCEx_PLL2_Config.part.0+0xaa>
 80020ec:	58024400 	.word	0x58024400

080020f0 <RCCEx_PLL3_Config.part.0>:
 80020f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80020f2:	4c36      	ldr	r4, [pc, #216]	@ (80021cc <RCCEx_PLL3_Config.part.0+0xdc>)
 80020f4:	4606      	mov	r6, r0
 80020f6:	460f      	mov	r7, r1
 80020f8:	6823      	ldr	r3, [r4, #0]
 80020fa:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 80020fe:	6023      	str	r3, [r4, #0]
 8002100:	f003 f86e 	bl	80051e0 <HAL_GetTick>
 8002104:	4605      	mov	r5, r0
 8002106:	e004      	b.n	8002112 <RCCEx_PLL3_Config.part.0+0x22>
 8002108:	f003 f86a 	bl	80051e0 <HAL_GetTick>
 800210c:	1b40      	subs	r0, r0, r5
 800210e:	2802      	cmp	r0, #2
 8002110:	d856      	bhi.n	80021c0 <RCCEx_PLL3_Config.part.0+0xd0>
 8002112:	6823      	ldr	r3, [r4, #0]
 8002114:	009a      	lsls	r2, r3, #2
 8002116:	d4f7      	bmi.n	8002108 <RCCEx_PLL3_Config.part.0+0x18>
 8002118:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
 800211a:	6832      	ldr	r2, [r6, #0]
 800211c:	f023 737c 	bic.w	r3, r3, #66060288	@ 0x3f00000
 8002120:	ea43 5302 	orr.w	r3, r3, r2, lsl #20
 8002124:	62a3      	str	r3, [r4, #40]	@ 0x28
 8002126:	e9d6 3202 	ldrd	r3, r2, [r6, #8]
 800212a:	3b01      	subs	r3, #1
 800212c:	3a01      	subs	r2, #1
 800212e:	025b      	lsls	r3, r3, #9
 8002130:	0412      	lsls	r2, r2, #16
 8002132:	b29b      	uxth	r3, r3
 8002134:	f402 02fe 	and.w	r2, r2, #8323072	@ 0x7f0000
 8002138:	4313      	orrs	r3, r2
 800213a:	6872      	ldr	r2, [r6, #4]
 800213c:	3a01      	subs	r2, #1
 800213e:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8002142:	4313      	orrs	r3, r2
 8002144:	6932      	ldr	r2, [r6, #16]
 8002146:	3a01      	subs	r2, #1
 8002148:	0612      	lsls	r2, r2, #24
 800214a:	f002 42fe 	and.w	r2, r2, #2130706432	@ 0x7f000000
 800214e:	4313      	orrs	r3, r2
 8002150:	6423      	str	r3, [r4, #64]	@ 0x40
 8002152:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 8002154:	6972      	ldr	r2, [r6, #20]
 8002156:	f423 6340 	bic.w	r3, r3, #3072	@ 0xc00
 800215a:	4313      	orrs	r3, r2
 800215c:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800215e:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 8002160:	69b2      	ldr	r2, [r6, #24]
 8002162:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 8002166:	4313      	orrs	r3, r2
 8002168:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800216a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 800216c:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8002170:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8002172:	6c63      	ldr	r3, [r4, #68]	@ 0x44
 8002174:	69f2      	ldr	r2, [r6, #28]
 8002176:	f36f 03cf 	bfc	r3, #3, #13
 800217a:	ea43 03c2 	orr.w	r3, r3, r2, lsl #3
 800217e:	6463      	str	r3, [r4, #68]	@ 0x44
 8002180:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 8002182:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8002186:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8002188:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 800218a:	b1df      	cbz	r7, 80021c4 <RCCEx_PLL3_Config.part.0+0xd4>
 800218c:	2f01      	cmp	r7, #1
 800218e:	bf0c      	ite	eq
 8002190:	f443 0300 	orreq.w	r3, r3, #8388608	@ 0x800000
 8002194:	f043 7380 	orrne.w	r3, r3, #16777216	@ 0x1000000
 8002198:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800219a:	4c0c      	ldr	r4, [pc, #48]	@ (80021cc <RCCEx_PLL3_Config.part.0+0xdc>)
 800219c:	6823      	ldr	r3, [r4, #0]
 800219e:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 80021a2:	6023      	str	r3, [r4, #0]
 80021a4:	f003 f81c 	bl	80051e0 <HAL_GetTick>
 80021a8:	4605      	mov	r5, r0
 80021aa:	e004      	b.n	80021b6 <RCCEx_PLL3_Config.part.0+0xc6>
 80021ac:	f003 f818 	bl	80051e0 <HAL_GetTick>
 80021b0:	1b40      	subs	r0, r0, r5
 80021b2:	2802      	cmp	r0, #2
 80021b4:	d804      	bhi.n	80021c0 <RCCEx_PLL3_Config.part.0+0xd0>
 80021b6:	6823      	ldr	r3, [r4, #0]
 80021b8:	009b      	lsls	r3, r3, #2
 80021ba:	d5f7      	bpl.n	80021ac <RCCEx_PLL3_Config.part.0+0xbc>
 80021bc:	2000      	movs	r0, #0
 80021be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80021c0:	2003      	movs	r0, #3
 80021c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80021c4:	f443 0380 	orr.w	r3, r3, #4194304	@ 0x400000
 80021c8:	62e3      	str	r3, [r4, #44]	@ 0x2c
 80021ca:	e7e6      	b.n	800219a <RCCEx_PLL3_Config.part.0+0xaa>
 80021cc:	58024400 	.word	0x58024400

080021d0 <HAL_RCCEx_PeriphCLKConfig>:
 80021d0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80021d4:	e9d0 3200 	ldrd	r3, r2, [r0]
 80021d8:	4604      	mov	r4, r0
 80021da:	011d      	lsls	r5, r3, #4
 80021dc:	f003 6600 	and.w	r6, r3, #134217728	@ 0x8000000
 80021e0:	d524      	bpl.n	800222c <HAL_RCCEx_PeriphCLKConfig+0x5c>
 80021e2:	6e81      	ldr	r1, [r0, #104]	@ 0x68
 80021e4:	f5b1 1f00 	cmp.w	r1, #2097152	@ 0x200000
 80021e8:	f000 84f2 	beq.w	8002bd0 <HAL_RCCEx_PeriphCLKConfig+0xa00>
 80021ec:	f200 86cb 	bhi.w	8002f86 <HAL_RCCEx_PeriphCLKConfig+0xdb6>
 80021f0:	2900      	cmp	r1, #0
 80021f2:	f000 857b 	beq.w	8002cec <HAL_RCCEx_PeriphCLKConfig+0xb1c>
 80021f6:	f5b1 1f80 	cmp.w	r1, #1048576	@ 0x100000
 80021fa:	f040 86c8 	bne.w	8002f8e <HAL_RCCEx_PeriphCLKConfig+0xdbe>
 80021fe:	49a9      	ldr	r1, [pc, #676]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 8002200:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002202:	f001 0103 	and.w	r1, r1, #3
 8002206:	2903      	cmp	r1, #3
 8002208:	f000 86c1 	beq.w	8002f8e <HAL_RCCEx_PeriphCLKConfig+0xdbe>
 800220c:	2102      	movs	r1, #2
 800220e:	3008      	adds	r0, #8
 8002210:	f7ff fefe 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002214:	4606      	mov	r6, r0
 8002216:	e9d4 3200 	ldrd	r3, r2, [r4]
 800221a:	b93e      	cbnz	r6, 800222c <HAL_RCCEx_PeriphCLKConfig+0x5c>
 800221c:	6ea1      	ldr	r1, [r4, #104]	@ 0x68
 800221e:	4da1      	ldr	r5, [pc, #644]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 8002220:	2600      	movs	r6, #0
 8002222:	6d28      	ldr	r0, [r5, #80]	@ 0x50
 8002224:	f420 1040 	bic.w	r0, r0, #3145728	@ 0x300000
 8002228:	4301      	orrs	r1, r0
 800222a:	6529      	str	r1, [r5, #80]	@ 0x50
 800222c:	05d8      	lsls	r0, r3, #23
 800222e:	d50a      	bpl.n	8002246 <HAL_RCCEx_PeriphCLKConfig+0x76>
 8002230:	6da1      	ldr	r1, [r4, #88]	@ 0x58
 8002232:	2904      	cmp	r1, #4
 8002234:	d806      	bhi.n	8002244 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8002236:	e8df f011 	tbh	[pc, r1, lsl #1]
 800223a:	03bd      	.short	0x03bd
 800223c:	05180542 	.word	0x05180542
 8002240:	03c203c2 	.word	0x03c203c2
 8002244:	2601      	movs	r6, #1
 8002246:	4635      	mov	r5, r6
 8002248:	0599      	lsls	r1, r3, #22
 800224a:	d524      	bpl.n	8002296 <HAL_RCCEx_PeriphCLKConfig+0xc6>
 800224c:	6de1      	ldr	r1, [r4, #92]	@ 0x5c
 800224e:	2980      	cmp	r1, #128	@ 0x80
 8002250:	f000 8520 	beq.w	8002c94 <HAL_RCCEx_PeriphCLKConfig+0xac4>
 8002254:	f200 8668 	bhi.w	8002f28 <HAL_RCCEx_PeriphCLKConfig+0xd58>
 8002258:	2900      	cmp	r1, #0
 800225a:	f000 855c 	beq.w	8002d16 <HAL_RCCEx_PeriphCLKConfig+0xb46>
 800225e:	2940      	cmp	r1, #64	@ 0x40
 8002260:	f040 8669 	bne.w	8002f36 <HAL_RCCEx_PeriphCLKConfig+0xd66>
 8002264:	498f      	ldr	r1, [pc, #572]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 8002266:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002268:	f001 0103 	and.w	r1, r1, #3
 800226c:	2903      	cmp	r1, #3
 800226e:	f000 8662 	beq.w	8002f36 <HAL_RCCEx_PeriphCLKConfig+0xd66>
 8002272:	2100      	movs	r1, #0
 8002274:	f104 0008 	add.w	r0, r4, #8
 8002278:	f7ff feca 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 800227c:	4605      	mov	r5, r0
 800227e:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002282:	2d00      	cmp	r5, #0
 8002284:	f040 8518 	bne.w	8002cb8 <HAL_RCCEx_PeriphCLKConfig+0xae8>
 8002288:	4f86      	ldr	r7, [pc, #536]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 800228a:	6de0      	ldr	r0, [r4, #92]	@ 0x5c
 800228c:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 800228e:	f421 71e0 	bic.w	r1, r1, #448	@ 0x1c0
 8002292:	4301      	orrs	r1, r0
 8002294:	6539      	str	r1, [r7, #80]	@ 0x50
 8002296:	055f      	lsls	r7, r3, #21
 8002298:	d528      	bpl.n	80022ec <HAL_RCCEx_PeriphCLKConfig+0x11c>
 800229a:	f8d4 10a8 	ldr.w	r1, [r4, #168]	@ 0xa8
 800229e:	f5b1 0f80 	cmp.w	r1, #4194304	@ 0x400000
 80022a2:	f000 84a3 	beq.w	8002bec <HAL_RCCEx_PeriphCLKConfig+0xa1c>
 80022a6:	f200 8656 	bhi.w	8002f56 <HAL_RCCEx_PeriphCLKConfig+0xd86>
 80022aa:	2900      	cmp	r1, #0
 80022ac:	f000 852c 	beq.w	8002d08 <HAL_RCCEx_PeriphCLKConfig+0xb38>
 80022b0:	f5b1 1f00 	cmp.w	r1, #2097152	@ 0x200000
 80022b4:	f040 8657 	bne.w	8002f66 <HAL_RCCEx_PeriphCLKConfig+0xd96>
 80022b8:	497a      	ldr	r1, [pc, #488]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 80022ba:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 80022bc:	f001 0103 	and.w	r1, r1, #3
 80022c0:	2903      	cmp	r1, #3
 80022c2:	f000 8650 	beq.w	8002f66 <HAL_RCCEx_PeriphCLKConfig+0xd96>
 80022c6:	2100      	movs	r1, #0
 80022c8:	f104 0008 	add.w	r0, r4, #8
 80022cc:	f7ff fea0 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 80022d0:	4605      	mov	r5, r0
 80022d2:	e9d4 3200 	ldrd	r3, r2, [r4]
 80022d6:	2d00      	cmp	r5, #0
 80022d8:	f040 849a 	bne.w	8002c10 <HAL_RCCEx_PeriphCLKConfig+0xa40>
 80022dc:	4f71      	ldr	r7, [pc, #452]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 80022de:	f8d4 00a8 	ldr.w	r0, [r4, #168]	@ 0xa8
 80022e2:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 80022e4:	f421 0160 	bic.w	r1, r1, #14680064	@ 0xe00000
 80022e8:	4301      	orrs	r1, r0
 80022ea:	65b9      	str	r1, [r7, #88]	@ 0x58
 80022ec:	0518      	lsls	r0, r3, #20
 80022ee:	d528      	bpl.n	8002342 <HAL_RCCEx_PeriphCLKConfig+0x172>
 80022f0:	f8d4 10ac 	ldr.w	r1, [r4, #172]	@ 0xac
 80022f4:	f1b1 7f00 	cmp.w	r1, #33554432	@ 0x2000000
 80022f8:	f000 848d 	beq.w	8002c16 <HAL_RCCEx_PeriphCLKConfig+0xa46>
 80022fc:	f200 8637 	bhi.w	8002f6e <HAL_RCCEx_PeriphCLKConfig+0xd9e>
 8002300:	2900      	cmp	r1, #0
 8002302:	f000 84ec 	beq.w	8002cde <HAL_RCCEx_PeriphCLKConfig+0xb0e>
 8002306:	f1b1 7f80 	cmp.w	r1, #16777216	@ 0x1000000
 800230a:	f040 8638 	bne.w	8002f7e <HAL_RCCEx_PeriphCLKConfig+0xdae>
 800230e:	4965      	ldr	r1, [pc, #404]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 8002310:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002312:	f001 0103 	and.w	r1, r1, #3
 8002316:	2903      	cmp	r1, #3
 8002318:	f000 8631 	beq.w	8002f7e <HAL_RCCEx_PeriphCLKConfig+0xdae>
 800231c:	2100      	movs	r1, #0
 800231e:	f104 0008 	add.w	r0, r4, #8
 8002322:	f7ff fe75 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002326:	4605      	mov	r5, r0
 8002328:	e9d4 3200 	ldrd	r3, r2, [r4]
 800232c:	2d00      	cmp	r5, #0
 800232e:	f040 8484 	bne.w	8002c3a <HAL_RCCEx_PeriphCLKConfig+0xa6a>
 8002332:	4f5c      	ldr	r7, [pc, #368]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 8002334:	f8d4 00ac 	ldr.w	r0, [r4, #172]	@ 0xac
 8002338:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 800233a:	f021 61e0 	bic.w	r1, r1, #117440512	@ 0x7000000
 800233e:	4301      	orrs	r1, r0
 8002340:	65b9      	str	r1, [r7, #88]	@ 0x58
 8002342:	0199      	lsls	r1, r3, #6
 8002344:	d518      	bpl.n	8002378 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8002346:	6ce1      	ldr	r1, [r4, #76]	@ 0x4c
 8002348:	2920      	cmp	r1, #32
 800234a:	f000 83a2 	beq.w	8002a92 <HAL_RCCEx_PeriphCLKConfig+0x8c2>
 800234e:	f200 8621 	bhi.w	8002f94 <HAL_RCCEx_PeriphCLKConfig+0xdc4>
 8002352:	b139      	cbz	r1, 8002364 <HAL_RCCEx_PeriphCLKConfig+0x194>
 8002354:	2910      	cmp	r1, #16
 8002356:	f040 8620 	bne.w	8002f9a <HAL_RCCEx_PeriphCLKConfig+0xdca>
 800235a:	4852      	ldr	r0, [pc, #328]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 800235c:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 800235e:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 8002362:	62c1      	str	r1, [r0, #44]	@ 0x2c
 8002364:	2d00      	cmp	r5, #0
 8002366:	f040 834f 	bne.w	8002a08 <HAL_RCCEx_PeriphCLKConfig+0x838>
 800236a:	4f4e      	ldr	r7, [pc, #312]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 800236c:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
 800236e:	6cf9      	ldr	r1, [r7, #76]	@ 0x4c
 8002370:	f021 0130 	bic.w	r1, r1, #48	@ 0x30
 8002374:	4301      	orrs	r1, r0
 8002376:	64f9      	str	r1, [r7, #76]	@ 0x4c
 8002378:	04df      	lsls	r7, r3, #19
 800237a:	d526      	bpl.n	80023ca <HAL_RCCEx_PeriphCLKConfig+0x1fa>
 800237c:	6e21      	ldr	r1, [r4, #96]	@ 0x60
 800237e:	f5b1 5f00 	cmp.w	r1, #8192	@ 0x2000
 8002382:	f000 845d 	beq.w	8002c40 <HAL_RCCEx_PeriphCLKConfig+0xa70>
 8002386:	f200 85da 	bhi.w	8002f3e <HAL_RCCEx_PeriphCLKConfig+0xd6e>
 800238a:	2900      	cmp	r1, #0
 800238c:	f000 84b5 	beq.w	8002cfa <HAL_RCCEx_PeriphCLKConfig+0xb2a>
 8002390:	f5b1 5f80 	cmp.w	r1, #4096	@ 0x1000
 8002394:	f040 85db 	bne.w	8002f4e <HAL_RCCEx_PeriphCLKConfig+0xd7e>
 8002398:	4942      	ldr	r1, [pc, #264]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 800239a:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 800239c:	f001 0103 	and.w	r1, r1, #3
 80023a0:	2903      	cmp	r1, #3
 80023a2:	f000 85d4 	beq.w	8002f4e <HAL_RCCEx_PeriphCLKConfig+0xd7e>
 80023a6:	2100      	movs	r1, #0
 80023a8:	f104 0008 	add.w	r0, r4, #8
 80023ac:	f7ff fe30 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 80023b0:	4605      	mov	r5, r0
 80023b2:	e9d4 3200 	ldrd	r3, r2, [r4]
 80023b6:	2d00      	cmp	r5, #0
 80023b8:	f040 8454 	bne.w	8002c64 <HAL_RCCEx_PeriphCLKConfig+0xa94>
 80023bc:	4f39      	ldr	r7, [pc, #228]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 80023be:	6e20      	ldr	r0, [r4, #96]	@ 0x60
 80023c0:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 80023c2:	f421 41e0 	bic.w	r1, r1, #28672	@ 0x7000
 80023c6:	4301      	orrs	r1, r0
 80023c8:	6539      	str	r1, [r7, #80]	@ 0x50
 80023ca:	0498      	lsls	r0, r3, #18
 80023cc:	d524      	bpl.n	8002418 <HAL_RCCEx_PeriphCLKConfig+0x248>
 80023ce:	6e61      	ldr	r1, [r4, #100]	@ 0x64
 80023d0:	f5b1 3f00 	cmp.w	r1, #131072	@ 0x20000
 80023d4:	f000 83a9 	beq.w	8002b2a <HAL_RCCEx_PeriphCLKConfig+0x95a>
 80023d8:	f200 8598 	bhi.w	8002f0c <HAL_RCCEx_PeriphCLKConfig+0xd3c>
 80023dc:	b191      	cbz	r1, 8002404 <HAL_RCCEx_PeriphCLKConfig+0x234>
 80023de:	f5b1 3f80 	cmp.w	r1, #65536	@ 0x10000
 80023e2:	f040 859d 	bne.w	8002f20 <HAL_RCCEx_PeriphCLKConfig+0xd50>
 80023e6:	492f      	ldr	r1, [pc, #188]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 80023e8:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 80023ea:	f001 0103 	and.w	r1, r1, #3
 80023ee:	2903      	cmp	r1, #3
 80023f0:	f000 8596 	beq.w	8002f20 <HAL_RCCEx_PeriphCLKConfig+0xd50>
 80023f4:	2101      	movs	r1, #1
 80023f6:	f104 0008 	add.w	r0, r4, #8
 80023fa:	f7ff fe09 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 80023fe:	4605      	mov	r5, r0
 8002400:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002404:	2d00      	cmp	r5, #0
 8002406:	f040 8494 	bne.w	8002d32 <HAL_RCCEx_PeriphCLKConfig+0xb62>
 800240a:	4f26      	ldr	r7, [pc, #152]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 800240c:	6e60      	ldr	r0, [r4, #100]	@ 0x64
 800240e:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 8002410:	f421 21e0 	bic.w	r1, r1, #458752	@ 0x70000
 8002414:	4301      	orrs	r1, r0
 8002416:	6539      	str	r1, [r7, #80]	@ 0x50
 8002418:	0459      	lsls	r1, r3, #17
 800241a:	d526      	bpl.n	800246a <HAL_RCCEx_PeriphCLKConfig+0x29a>
 800241c:	f8d4 10b0 	ldr.w	r1, [r4, #176]	@ 0xb0
 8002420:	f1b1 5f00 	cmp.w	r1, #536870912	@ 0x20000000
 8002424:	f000 835b 	beq.w	8002ade <HAL_RCCEx_PeriphCLKConfig+0x90e>
 8002428:	f200 8546 	bhi.w	8002eb8 <HAL_RCCEx_PeriphCLKConfig+0xce8>
 800242c:	b191      	cbz	r1, 8002454 <HAL_RCCEx_PeriphCLKConfig+0x284>
 800242e:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
 8002432:	f040 854b 	bne.w	8002ecc <HAL_RCCEx_PeriphCLKConfig+0xcfc>
 8002436:	491b      	ldr	r1, [pc, #108]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 8002438:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 800243a:	f001 0103 	and.w	r1, r1, #3
 800243e:	2903      	cmp	r1, #3
 8002440:	f000 8544 	beq.w	8002ecc <HAL_RCCEx_PeriphCLKConfig+0xcfc>
 8002444:	2101      	movs	r1, #1
 8002446:	f104 0008 	add.w	r0, r4, #8
 800244a:	f7ff fde1 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 800244e:	4605      	mov	r5, r0
 8002450:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002454:	2d00      	cmp	r5, #0
 8002456:	f040 8465 	bne.w	8002d24 <HAL_RCCEx_PeriphCLKConfig+0xb54>
 800245a:	4f12      	ldr	r7, [pc, #72]	@ (80024a4 <HAL_RCCEx_PeriphCLKConfig+0x2d4>)
 800245c:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
 8002460:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 8002462:	f021 41e0 	bic.w	r1, r1, #1879048192	@ 0x70000000
 8002466:	4301      	orrs	r1, r0
 8002468:	65b9      	str	r1, [r7, #88]	@ 0x58
 800246a:	041f      	lsls	r7, r3, #16
 800246c:	d50d      	bpl.n	800248a <HAL_RCCEx_PeriphCLKConfig+0x2ba>
 800246e:	6f21      	ldr	r1, [r4, #112]	@ 0x70
 8002470:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
 8002474:	f000 821f 	beq.w	80028b6 <HAL_RCCEx_PeriphCLKConfig+0x6e6>
 8002478:	f1b1 5f00 	cmp.w	r1, #536870912	@ 0x20000000
 800247c:	f000 8597 	beq.w	8002fae <HAL_RCCEx_PeriphCLKConfig+0xdde>
 8002480:	2900      	cmp	r1, #0
 8002482:	f000 821d 	beq.w	80028c0 <HAL_RCCEx_PeriphCLKConfig+0x6f0>
 8002486:	2601      	movs	r6, #1
 8002488:	4635      	mov	r5, r6
 800248a:	01d8      	lsls	r0, r3, #7
 800248c:	d51b      	bpl.n	80024c6 <HAL_RCCEx_PeriphCLKConfig+0x2f6>
 800248e:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
 8002490:	2903      	cmp	r1, #3
 8002492:	f200 85af 	bhi.w	8002ff4 <HAL_RCCEx_PeriphCLKConfig+0xe24>
 8002496:	e8df f011 	tbh	[pc, r1, lsl #1]
 800249a:	000c      	.short	0x000c
 800249c:	030f0007 	.word	0x030f0007
 80024a0:	000c      	.short	0x000c
 80024a2:	bf00      	nop
 80024a4:	58024400 	.word	0x58024400
 80024a8:	483c      	ldr	r0, [pc, #240]	@ (800259c <HAL_RCCEx_PeriphCLKConfig+0x3cc>)
 80024aa:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 80024ac:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 80024b0:	62c1      	str	r1, [r0, #44]	@ 0x2c
 80024b2:	2d00      	cmp	r5, #0
 80024b4:	f040 82aa 	bne.w	8002a0c <HAL_RCCEx_PeriphCLKConfig+0x83c>
 80024b8:	4f38      	ldr	r7, [pc, #224]	@ (800259c <HAL_RCCEx_PeriphCLKConfig+0x3cc>)
 80024ba:	6ca0      	ldr	r0, [r4, #72]	@ 0x48
 80024bc:	6cf9      	ldr	r1, [r7, #76]	@ 0x4c
 80024be:	f021 0103 	bic.w	r1, r1, #3
 80024c2:	4301      	orrs	r1, r0
 80024c4:	64f9      	str	r1, [r7, #76]	@ 0x4c
 80024c6:	0259      	lsls	r1, r3, #9
 80024c8:	f100 8232 	bmi.w	8002930 <HAL_RCCEx_PeriphCLKConfig+0x760>
 80024cc:	07d8      	lsls	r0, r3, #31
 80024ce:	d52f      	bpl.n	8002530 <HAL_RCCEx_PeriphCLKConfig+0x360>
 80024d0:	6fe1      	ldr	r1, [r4, #124]	@ 0x7c
 80024d2:	2928      	cmp	r1, #40	@ 0x28
 80024d4:	d82a      	bhi.n	800252c <HAL_RCCEx_PeriphCLKConfig+0x35c>
 80024d6:	e8df f011 	tbh	[pc, r1, lsl #1]
 80024da:	0210      	.short	0x0210
 80024dc:	00290029 	.word	0x00290029
 80024e0:	00290029 	.word	0x00290029
 80024e4:	00290029 	.word	0x00290029
 80024e8:	02010029 	.word	0x02010029
 80024ec:	00290029 	.word	0x00290029
 80024f0:	00290029 	.word	0x00290029
 80024f4:	00290029 	.word	0x00290029
 80024f8:	04600029 	.word	0x04600029
 80024fc:	00290029 	.word	0x00290029
 8002500:	00290029 	.word	0x00290029
 8002504:	00290029 	.word	0x00290029
 8002508:	02100029 	.word	0x02100029
 800250c:	00290029 	.word	0x00290029
 8002510:	00290029 	.word	0x00290029
 8002514:	00290029 	.word	0x00290029
 8002518:	02100029 	.word	0x02100029
 800251c:	00290029 	.word	0x00290029
 8002520:	00290029 	.word	0x00290029
 8002524:	00290029 	.word	0x00290029
 8002528:	02100029 	.word	0x02100029
 800252c:	2601      	movs	r6, #1
 800252e:	4635      	mov	r5, r6
 8002530:	0799      	lsls	r1, r3, #30
 8002532:	d524      	bpl.n	800257e <HAL_RCCEx_PeriphCLKConfig+0x3ae>
 8002534:	6fa1      	ldr	r1, [r4, #120]	@ 0x78
 8002536:	2905      	cmp	r1, #5
 8002538:	f200 8558 	bhi.w	8002fec <HAL_RCCEx_PeriphCLKConfig+0xe1c>
 800253c:	e8df f011 	tbh	[pc, r1, lsl #1]
 8002540:	00060015 	.word	0x00060015
 8002544:	0015041a 	.word	0x0015041a
 8002548:	00150015 	.word	0x00150015
 800254c:	4913      	ldr	r1, [pc, #76]	@ (800259c <HAL_RCCEx_PeriphCLKConfig+0x3cc>)
 800254e:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002550:	f001 0103 	and.w	r1, r1, #3
 8002554:	2903      	cmp	r1, #3
 8002556:	f000 8549 	beq.w	8002fec <HAL_RCCEx_PeriphCLKConfig+0xe1c>
 800255a:	2101      	movs	r1, #1
 800255c:	f104 0008 	add.w	r0, r4, #8
 8002560:	f7ff fd56 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002564:	4605      	mov	r5, r0
 8002566:	e9d4 3200 	ldrd	r3, r2, [r4]
 800256a:	2d00      	cmp	r5, #0
 800256c:	f040 83e9 	bne.w	8002d42 <HAL_RCCEx_PeriphCLKConfig+0xb72>
 8002570:	4f0a      	ldr	r7, [pc, #40]	@ (800259c <HAL_RCCEx_PeriphCLKConfig+0x3cc>)
 8002572:	6fa0      	ldr	r0, [r4, #120]	@ 0x78
 8002574:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 8002576:	f021 0107 	bic.w	r1, r1, #7
 800257a:	4301      	orrs	r1, r0
 800257c:	6579      	str	r1, [r7, #84]	@ 0x54
 800257e:	075f      	lsls	r7, r3, #29
 8002580:	d528      	bpl.n	80025d4 <HAL_RCCEx_PeriphCLKConfig+0x404>
 8002582:	f8d4 1094 	ldr.w	r1, [r4, #148]	@ 0x94
 8002586:	2905      	cmp	r1, #5
 8002588:	f200 852c 	bhi.w	8002fe4 <HAL_RCCEx_PeriphCLKConfig+0xe14>
 800258c:	e8df f011 	tbh	[pc, r1, lsl #1]
 8002590:	00080017 	.word	0x00080017
 8002594:	001703df 	.word	0x001703df
 8002598:	00170017 	.word	0x00170017
 800259c:	58024400 	.word	0x58024400
 80025a0:	49ad      	ldr	r1, [pc, #692]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80025a2:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 80025a4:	f001 0103 	and.w	r1, r1, #3
 80025a8:	2903      	cmp	r1, #3
 80025aa:	f000 851b 	beq.w	8002fe4 <HAL_RCCEx_PeriphCLKConfig+0xe14>
 80025ae:	2101      	movs	r1, #1
 80025b0:	f104 0008 	add.w	r0, r4, #8
 80025b4:	f7ff fd2c 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 80025b8:	4605      	mov	r5, r0
 80025ba:	e9d4 3200 	ldrd	r3, r2, [r4]
 80025be:	2d00      	cmp	r5, #0
 80025c0:	f040 83c1 	bne.w	8002d46 <HAL_RCCEx_PeriphCLKConfig+0xb76>
 80025c4:	4fa4      	ldr	r7, [pc, #656]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80025c6:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
 80025ca:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 80025cc:	f021 0107 	bic.w	r1, r1, #7
 80025d0:	4301      	orrs	r1, r0
 80025d2:	65b9      	str	r1, [r7, #88]	@ 0x58
 80025d4:	0698      	lsls	r0, r3, #26
 80025d6:	d526      	bpl.n	8002626 <HAL_RCCEx_PeriphCLKConfig+0x456>
 80025d8:	f8d4 1090 	ldr.w	r1, [r4, #144]	@ 0x90
 80025dc:	f1b1 5f00 	cmp.w	r1, #536870912	@ 0x20000000
 80025e0:	f000 821e 	beq.w	8002a20 <HAL_RCCEx_PeriphCLKConfig+0x850>
 80025e4:	f200 8476 	bhi.w	8002ed4 <HAL_RCCEx_PeriphCLKConfig+0xd04>
 80025e8:	b191      	cbz	r1, 8002610 <HAL_RCCEx_PeriphCLKConfig+0x440>
 80025ea:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
 80025ee:	f040 847b 	bne.w	8002ee8 <HAL_RCCEx_PeriphCLKConfig+0xd18>
 80025f2:	4999      	ldr	r1, [pc, #612]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80025f4:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 80025f6:	f001 0103 	and.w	r1, r1, #3
 80025fa:	2903      	cmp	r1, #3
 80025fc:	f000 8474 	beq.w	8002ee8 <HAL_RCCEx_PeriphCLKConfig+0xd18>
 8002600:	2100      	movs	r1, #0
 8002602:	f104 0008 	add.w	r0, r4, #8
 8002606:	f7ff fd03 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 800260a:	4605      	mov	r5, r0
 800260c:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002610:	2d00      	cmp	r5, #0
 8002612:	f040 838c 	bne.w	8002d2e <HAL_RCCEx_PeriphCLKConfig+0xb5e>
 8002616:	4f90      	ldr	r7, [pc, #576]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002618:	f8d4 0090 	ldr.w	r0, [r4, #144]	@ 0x90
 800261c:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 800261e:	f021 41e0 	bic.w	r1, r1, #1879048192	@ 0x70000000
 8002622:	4301      	orrs	r1, r0
 8002624:	6579      	str	r1, [r7, #84]	@ 0x54
 8002626:	0659      	lsls	r1, r3, #25
 8002628:	d526      	bpl.n	8002678 <HAL_RCCEx_PeriphCLKConfig+0x4a8>
 800262a:	f8d4 109c 	ldr.w	r1, [r4, #156]	@ 0x9c
 800262e:	f5b1 6f00 	cmp.w	r1, #2048	@ 0x800
 8002632:	f000 8208 	beq.w	8002a46 <HAL_RCCEx_PeriphCLKConfig+0x876>
 8002636:	f200 845b 	bhi.w	8002ef0 <HAL_RCCEx_PeriphCLKConfig+0xd20>
 800263a:	b191      	cbz	r1, 8002662 <HAL_RCCEx_PeriphCLKConfig+0x492>
 800263c:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
 8002640:	f040 8460 	bne.w	8002f04 <HAL_RCCEx_PeriphCLKConfig+0xd34>
 8002644:	4984      	ldr	r1, [pc, #528]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002646:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002648:	f001 0103 	and.w	r1, r1, #3
 800264c:	2903      	cmp	r1, #3
 800264e:	f000 8459 	beq.w	8002f04 <HAL_RCCEx_PeriphCLKConfig+0xd34>
 8002652:	2100      	movs	r1, #0
 8002654:	f104 0008 	add.w	r0, r4, #8
 8002658:	f7ff fcda 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 800265c:	4605      	mov	r5, r0
 800265e:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002662:	2d00      	cmp	r5, #0
 8002664:	f040 836b 	bne.w	8002d3e <HAL_RCCEx_PeriphCLKConfig+0xb6e>
 8002668:	4f7b      	ldr	r7, [pc, #492]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 800266a:	f8d4 009c 	ldr.w	r0, [r4, #156]	@ 0x9c
 800266e:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 8002670:	f421 51e0 	bic.w	r1, r1, #7168	@ 0x1c00
 8002674:	4301      	orrs	r1, r0
 8002676:	65b9      	str	r1, [r7, #88]	@ 0x58
 8002678:	061f      	lsls	r7, r3, #24
 800267a:	d526      	bpl.n	80026ca <HAL_RCCEx_PeriphCLKConfig+0x4fa>
 800267c:	f8d4 10a0 	ldr.w	r1, [r4, #160]	@ 0xa0
 8002680:	f5b1 4f80 	cmp.w	r1, #16384	@ 0x4000
 8002684:	f000 81f2 	beq.w	8002a6c <HAL_RCCEx_PeriphCLKConfig+0x89c>
 8002688:	f200 8409 	bhi.w	8002e9e <HAL_RCCEx_PeriphCLKConfig+0xcce>
 800268c:	b191      	cbz	r1, 80026b4 <HAL_RCCEx_PeriphCLKConfig+0x4e4>
 800268e:	f5b1 5f00 	cmp.w	r1, #8192	@ 0x2000
 8002692:	f040 840e 	bne.w	8002eb2 <HAL_RCCEx_PeriphCLKConfig+0xce2>
 8002696:	4970      	ldr	r1, [pc, #448]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002698:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 800269a:	f001 0103 	and.w	r1, r1, #3
 800269e:	2903      	cmp	r1, #3
 80026a0:	f000 8407 	beq.w	8002eb2 <HAL_RCCEx_PeriphCLKConfig+0xce2>
 80026a4:	2100      	movs	r1, #0
 80026a6:	f104 0008 	add.w	r0, r4, #8
 80026aa:	f7ff fcb1 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 80026ae:	4605      	mov	r5, r0
 80026b0:	e9d4 3200 	ldrd	r3, r2, [r4]
 80026b4:	2d00      	cmp	r5, #0
 80026b6:	f040 8348 	bne.w	8002d4a <HAL_RCCEx_PeriphCLKConfig+0xb7a>
 80026ba:	4f67      	ldr	r7, [pc, #412]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80026bc:	f8d4 00a0 	ldr.w	r0, [r4, #160]	@ 0xa0
 80026c0:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 80026c2:	f421 4160 	bic.w	r1, r1, #57344	@ 0xe000
 80026c6:	4301      	orrs	r1, r0
 80026c8:	65b9      	str	r1, [r7, #88]	@ 0x58
 80026ca:	0718      	lsls	r0, r3, #28
 80026cc:	d50b      	bpl.n	80026e6 <HAL_RCCEx_PeriphCLKConfig+0x516>
 80026ce:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
 80026d2:	f5b0 5f80 	cmp.w	r0, #4096	@ 0x1000
 80026d6:	f000 8267 	beq.w	8002ba8 <HAL_RCCEx_PeriphCLKConfig+0x9d8>
 80026da:	4f5f      	ldr	r7, [pc, #380]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80026dc:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 80026de:	f421 5140 	bic.w	r1, r1, #12288	@ 0x3000
 80026e2:	4301      	orrs	r1, r0
 80026e4:	6579      	str	r1, [r7, #84]	@ 0x54
 80026e6:	06d9      	lsls	r1, r3, #27
 80026e8:	d50b      	bpl.n	8002702 <HAL_RCCEx_PeriphCLKConfig+0x532>
 80026ea:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
 80026ee:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
 80026f2:	f000 8245 	beq.w	8002b80 <HAL_RCCEx_PeriphCLKConfig+0x9b0>
 80026f6:	4f58      	ldr	r7, [pc, #352]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80026f8:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 80026fa:	f421 7140 	bic.w	r1, r1, #768	@ 0x300
 80026fe:	4301      	orrs	r1, r0
 8002700:	65b9      	str	r1, [r7, #88]	@ 0x58
 8002702:	031f      	lsls	r7, r3, #12
 8002704:	d524      	bpl.n	8002750 <HAL_RCCEx_PeriphCLKConfig+0x580>
 8002706:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
 800270a:	f5b1 3f80 	cmp.w	r1, #65536	@ 0x10000
 800270e:	f000 81f9 	beq.w	8002b04 <HAL_RCCEx_PeriphCLKConfig+0x934>
 8002712:	f5b1 3f00 	cmp.w	r1, #131072	@ 0x20000
 8002716:	d010      	beq.n	800273a <HAL_RCCEx_PeriphCLKConfig+0x56a>
 8002718:	2900      	cmp	r1, #0
 800271a:	f040 80dc 	bne.w	80028d6 <HAL_RCCEx_PeriphCLKConfig+0x706>
 800271e:	484e      	ldr	r0, [pc, #312]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002720:	6a80      	ldr	r0, [r0, #40]	@ 0x28
 8002722:	f000 0003 	and.w	r0, r0, #3
 8002726:	2803      	cmp	r0, #3
 8002728:	f000 80d5 	beq.w	80028d6 <HAL_RCCEx_PeriphCLKConfig+0x706>
 800272c:	f104 0008 	add.w	r0, r4, #8
 8002730:	f7ff fc6e 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002734:	4605      	mov	r5, r0
 8002736:	e9d4 3200 	ldrd	r3, r2, [r4]
 800273a:	2d00      	cmp	r5, #0
 800273c:	f040 82f5 	bne.w	8002d2a <HAL_RCCEx_PeriphCLKConfig+0xb5a>
 8002740:	4f45      	ldr	r7, [pc, #276]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002742:	f8d4 00a4 	ldr.w	r0, [r4, #164]	@ 0xa4
 8002746:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 8002748:	f421 3140 	bic.w	r1, r1, #196608	@ 0x30000
 800274c:	4301      	orrs	r1, r0
 800274e:	65b9      	str	r1, [r7, #88]	@ 0x58
 8002750:	0358      	lsls	r0, r3, #13
 8002752:	d50f      	bpl.n	8002774 <HAL_RCCEx_PeriphCLKConfig+0x5a4>
 8002754:	f8d4 1088 	ldr.w	r1, [r4, #136]	@ 0x88
 8002758:	f5b1 1f00 	cmp.w	r1, #2097152	@ 0x200000
 800275c:	f000 81f8 	beq.w	8002b50 <HAL_RCCEx_PeriphCLKConfig+0x980>
 8002760:	f5b1 1f40 	cmp.w	r1, #3145728	@ 0x300000
 8002764:	f000 80d9 	beq.w	800291a <HAL_RCCEx_PeriphCLKConfig+0x74a>
 8002768:	f5b1 1f80 	cmp.w	r1, #1048576	@ 0x100000
 800276c:	f000 80d0 	beq.w	8002910 <HAL_RCCEx_PeriphCLKConfig+0x740>
 8002770:	2601      	movs	r6, #1
 8002772:	4635      	mov	r5, r6
 8002774:	03d9      	lsls	r1, r3, #15
 8002776:	d51f      	bpl.n	80027b8 <HAL_RCCEx_PeriphCLKConfig+0x5e8>
 8002778:	6d21      	ldr	r1, [r4, #80]	@ 0x50
 800277a:	2900      	cmp	r1, #0
 800277c:	f000 812b 	beq.w	80029d6 <HAL_RCCEx_PeriphCLKConfig+0x806>
 8002780:	f5b1 3f80 	cmp.w	r1, #65536	@ 0x10000
 8002784:	f040 8082 	bne.w	800288c <HAL_RCCEx_PeriphCLKConfig+0x6bc>
 8002788:	4933      	ldr	r1, [pc, #204]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 800278a:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 800278c:	f001 0103 	and.w	r1, r1, #3
 8002790:	2903      	cmp	r1, #3
 8002792:	d07b      	beq.n	800288c <HAL_RCCEx_PeriphCLKConfig+0x6bc>
 8002794:	2102      	movs	r1, #2
 8002796:	f104 0008 	add.w	r0, r4, #8
 800279a:	f7ff fc39 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 800279e:	4605      	mov	r5, r0
 80027a0:	e9d4 3200 	ldrd	r3, r2, [r4]
 80027a4:	2d00      	cmp	r5, #0
 80027a6:	f040 811e 	bne.w	80029e6 <HAL_RCCEx_PeriphCLKConfig+0x816>
 80027aa:	4f2b      	ldr	r7, [pc, #172]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80027ac:	6d20      	ldr	r0, [r4, #80]	@ 0x50
 80027ae:	6cf9      	ldr	r1, [r7, #76]	@ 0x4c
 80027b0:	f421 3180 	bic.w	r1, r1, #65536	@ 0x10000
 80027b4:	4301      	orrs	r1, r0
 80027b6:	64f9      	str	r1, [r7, #76]	@ 0x4c
 80027b8:	009f      	lsls	r7, r3, #2
 80027ba:	d46b      	bmi.n	8002894 <HAL_RCCEx_PeriphCLKConfig+0x6c4>
 80027bc:	0398      	lsls	r0, r3, #14
 80027be:	d455      	bmi.n	800286c <HAL_RCCEx_PeriphCLKConfig+0x69c>
 80027c0:	4635      	mov	r5, r6
 80027c2:	02d9      	lsls	r1, r3, #11
 80027c4:	d506      	bpl.n	80027d4 <HAL_RCCEx_PeriphCLKConfig+0x604>
 80027c6:	4824      	ldr	r0, [pc, #144]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80027c8:	6f66      	ldr	r6, [r4, #116]	@ 0x74
 80027ca:	6d01      	ldr	r1, [r0, #80]	@ 0x50
 80027cc:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 80027d0:	4331      	orrs	r1, r6
 80027d2:	6501      	str	r1, [r0, #80]	@ 0x50
 80027d4:	00df      	lsls	r7, r3, #3
 80027d6:	d507      	bpl.n	80027e8 <HAL_RCCEx_PeriphCLKConfig+0x618>
 80027d8:	481f      	ldr	r0, [pc, #124]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80027da:	f8d4 60b8 	ldr.w	r6, [r4, #184]	@ 0xb8
 80027de:	6901      	ldr	r1, [r0, #16]
 80027e0:	f421 4180 	bic.w	r1, r1, #16384	@ 0x4000
 80027e4:	4331      	orrs	r1, r6
 80027e6:	6101      	str	r1, [r0, #16]
 80027e8:	029e      	lsls	r6, r3, #10
 80027ea:	d506      	bpl.n	80027fa <HAL_RCCEx_PeriphCLKConfig+0x62a>
 80027ec:	481a      	ldr	r0, [pc, #104]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 80027ee:	6ee6      	ldr	r6, [r4, #108]	@ 0x6c
 80027f0:	6d01      	ldr	r1, [r0, #80]	@ 0x50
 80027f2:	f021 7180 	bic.w	r1, r1, #16777216	@ 0x1000000
 80027f6:	4331      	orrs	r1, r6
 80027f8:	6501      	str	r1, [r0, #80]	@ 0x50
 80027fa:	0058      	lsls	r0, r3, #1
 80027fc:	d509      	bpl.n	8002812 <HAL_RCCEx_PeriphCLKConfig+0x642>
 80027fe:	4916      	ldr	r1, [pc, #88]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002800:	6908      	ldr	r0, [r1, #16]
 8002802:	f420 4000 	bic.w	r0, r0, #32768	@ 0x8000
 8002806:	6108      	str	r0, [r1, #16]
 8002808:	6908      	ldr	r0, [r1, #16]
 800280a:	f8d4 60bc 	ldr.w	r6, [r4, #188]	@ 0xbc
 800280e:	4330      	orrs	r0, r6
 8002810:	6108      	str	r0, [r1, #16]
 8002812:	2b00      	cmp	r3, #0
 8002814:	da06      	bge.n	8002824 <HAL_RCCEx_PeriphCLKConfig+0x654>
 8002816:	4810      	ldr	r0, [pc, #64]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 8002818:	6d66      	ldr	r6, [r4, #84]	@ 0x54
 800281a:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
 800281c:	f021 5140 	bic.w	r1, r1, #805306368	@ 0x30000000
 8002820:	4331      	orrs	r1, r6
 8002822:	64c1      	str	r1, [r0, #76]	@ 0x4c
 8002824:	0219      	lsls	r1, r3, #8
 8002826:	d507      	bpl.n	8002838 <HAL_RCCEx_PeriphCLKConfig+0x668>
 8002828:	490b      	ldr	r1, [pc, #44]	@ (8002858 <HAL_RCCEx_PeriphCLKConfig+0x688>)
 800282a:	f8d4 008c 	ldr.w	r0, [r4, #140]	@ 0x8c
 800282e:	6d4b      	ldr	r3, [r1, #84]	@ 0x54
 8002830:	f423 0340 	bic.w	r3, r3, #12582912	@ 0xc00000
 8002834:	4303      	orrs	r3, r0
 8002836:	654b      	str	r3, [r1, #84]	@ 0x54
 8002838:	07d3      	lsls	r3, r2, #31
 800283a:	f100 830b 	bmi.w	8002e54 <HAL_RCCEx_PeriphCLKConfig+0xc84>
 800283e:	0797      	lsls	r7, r2, #30
 8002840:	f100 82f6 	bmi.w	8002e30 <HAL_RCCEx_PeriphCLKConfig+0xc60>
 8002844:	0756      	lsls	r6, r2, #29
 8002846:	f100 82cd 	bmi.w	8002de4 <HAL_RCCEx_PeriphCLKConfig+0xc14>
 800284a:	0710      	lsls	r0, r2, #28
 800284c:	f100 82b8 	bmi.w	8002dc0 <HAL_RCCEx_PeriphCLKConfig+0xbf0>
 8002850:	06d1      	lsls	r1, r2, #27
 8002852:	f100 8313 	bmi.w	8002e7c <HAL_RCCEx_PeriphCLKConfig+0xcac>
 8002856:	e001      	b.n	800285c <HAL_RCCEx_PeriphCLKConfig+0x68c>
 8002858:	58024400 	.word	0x58024400
 800285c:	0693      	lsls	r3, r2, #26
 800285e:	f100 82d6 	bmi.w	8002e0e <HAL_RCCEx_PeriphCLKConfig+0xc3e>
 8002862:	1e28      	subs	r0, r5, #0
 8002864:	bf18      	it	ne
 8002866:	2001      	movne	r0, #1
 8002868:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800286c:	f8d4 1080 	ldr.w	r1, [r4, #128]	@ 0x80
 8002870:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
 8002874:	f000 80b9 	beq.w	80029ea <HAL_RCCEx_PeriphCLKConfig+0x81a>
 8002878:	f240 80ce 	bls.w	8002a18 <HAL_RCCEx_PeriphCLKConfig+0x848>
 800287c:	f421 7080 	bic.w	r0, r1, #256	@ 0x100
 8002880:	f5b0 7f00 	cmp.w	r0, #512	@ 0x200
 8002884:	f000 80b6 	beq.w	80029f4 <HAL_RCCEx_PeriphCLKConfig+0x824>
 8002888:	2501      	movs	r5, #1
 800288a:	e79a      	b.n	80027c2 <HAL_RCCEx_PeriphCLKConfig+0x5f2>
 800288c:	2601      	movs	r6, #1
 800288e:	009f      	lsls	r7, r3, #2
 8002890:	4635      	mov	r5, r6
 8002892:	d593      	bpl.n	80027bc <HAL_RCCEx_PeriphCLKConfig+0x5ec>
 8002894:	49b8      	ldr	r1, [pc, #736]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002896:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002898:	f001 0103 	and.w	r1, r1, #3
 800289c:	2903      	cmp	r1, #3
 800289e:	d008      	beq.n	80028b2 <HAL_RCCEx_PeriphCLKConfig+0x6e2>
 80028a0:	2102      	movs	r1, #2
 80028a2:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 80028a6:	f7ff fc23 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 80028aa:	e9d4 3200 	ldrd	r3, r2, [r4]
 80028ae:	2800      	cmp	r0, #0
 80028b0:	d084      	beq.n	80027bc <HAL_RCCEx_PeriphCLKConfig+0x5ec>
 80028b2:	2601      	movs	r6, #1
 80028b4:	e782      	b.n	80027bc <HAL_RCCEx_PeriphCLKConfig+0x5ec>
 80028b6:	48b0      	ldr	r0, [pc, #704]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80028b8:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 80028ba:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 80028be:	62c1      	str	r1, [r0, #44]	@ 0x2c
 80028c0:	2d00      	cmp	r5, #0
 80028c2:	f040 80a5 	bne.w	8002a10 <HAL_RCCEx_PeriphCLKConfig+0x840>
 80028c6:	4fac      	ldr	r7, [pc, #688]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80028c8:	6f20      	ldr	r0, [r4, #112]	@ 0x70
 80028ca:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 80028cc:	f021 5140 	bic.w	r1, r1, #805306368	@ 0x30000000
 80028d0:	4301      	orrs	r1, r0
 80028d2:	6539      	str	r1, [r7, #80]	@ 0x50
 80028d4:	e5d9      	b.n	800248a <HAL_RCCEx_PeriphCLKConfig+0x2ba>
 80028d6:	2601      	movs	r6, #1
 80028d8:	4635      	mov	r5, r6
 80028da:	e739      	b.n	8002750 <HAL_RCCEx_PeriphCLKConfig+0x580>
 80028dc:	49a6      	ldr	r1, [pc, #664]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80028de:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 80028e0:	f001 0103 	and.w	r1, r1, #3
 80028e4:	2903      	cmp	r1, #3
 80028e6:	f43f ae21 	beq.w	800252c <HAL_RCCEx_PeriphCLKConfig+0x35c>
 80028ea:	2101      	movs	r1, #1
 80028ec:	f104 0008 	add.w	r0, r4, #8
 80028f0:	f7ff fb8e 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 80028f4:	4605      	mov	r5, r0
 80028f6:	e9d4 3200 	ldrd	r3, r2, [r4]
 80028fa:	2d00      	cmp	r5, #0
 80028fc:	f040 821c 	bne.w	8002d38 <HAL_RCCEx_PeriphCLKConfig+0xb68>
 8002900:	4f9d      	ldr	r7, [pc, #628]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002902:	6fe0      	ldr	r0, [r4, #124]	@ 0x7c
 8002904:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 8002906:	f021 0138 	bic.w	r1, r1, #56	@ 0x38
 800290a:	4301      	orrs	r1, r0
 800290c:	6579      	str	r1, [r7, #84]	@ 0x54
 800290e:	e60f      	b.n	8002530 <HAL_RCCEx_PeriphCLKConfig+0x360>
 8002910:	4899      	ldr	r0, [pc, #612]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002912:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 8002914:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 8002918:	62c1      	str	r1, [r0, #44]	@ 0x2c
 800291a:	2d00      	cmp	r5, #0
 800291c:	d17a      	bne.n	8002a14 <HAL_RCCEx_PeriphCLKConfig+0x844>
 800291e:	4f96      	ldr	r7, [pc, #600]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002920:	f8d4 0088 	ldr.w	r0, [r4, #136]	@ 0x88
 8002924:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 8002926:	f421 1140 	bic.w	r1, r1, #3145728	@ 0x300000
 800292a:	4301      	orrs	r1, r0
 800292c:	6579      	str	r1, [r7, #84]	@ 0x54
 800292e:	e721      	b.n	8002774 <HAL_RCCEx_PeriphCLKConfig+0x5a4>
 8002930:	4f92      	ldr	r7, [pc, #584]	@ (8002b7c <HAL_RCCEx_PeriphCLKConfig+0x9ac>)
 8002932:	683b      	ldr	r3, [r7, #0]
 8002934:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8002938:	603b      	str	r3, [r7, #0]
 800293a:	f002 fc51 	bl	80051e0 <HAL_GetTick>
 800293e:	4680      	mov	r8, r0
 8002940:	e006      	b.n	8002950 <HAL_RCCEx_PeriphCLKConfig+0x780>
 8002942:	f002 fc4d 	bl	80051e0 <HAL_GetTick>
 8002946:	eba0 0008 	sub.w	r0, r0, r8
 800294a:	2864      	cmp	r0, #100	@ 0x64
 800294c:	f200 8329 	bhi.w	8002fa2 <HAL_RCCEx_PeriphCLKConfig+0xdd2>
 8002950:	683b      	ldr	r3, [r7, #0]
 8002952:	05da      	lsls	r2, r3, #23
 8002954:	d5f5      	bpl.n	8002942 <HAL_RCCEx_PeriphCLKConfig+0x772>
 8002956:	2d00      	cmp	r5, #0
 8002958:	f040 8324 	bne.w	8002fa4 <HAL_RCCEx_PeriphCLKConfig+0xdd4>
 800295c:	4a86      	ldr	r2, [pc, #536]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 800295e:	f8d4 30b4 	ldr.w	r3, [r4, #180]	@ 0xb4
 8002962:	6f11      	ldr	r1, [r2, #112]	@ 0x70
 8002964:	4059      	eors	r1, r3
 8002966:	f411 7f40 	tst.w	r1, #768	@ 0x300
 800296a:	d00b      	beq.n	8002984 <HAL_RCCEx_PeriphCLKConfig+0x7b4>
 800296c:	6f11      	ldr	r1, [r2, #112]	@ 0x70
 800296e:	6f10      	ldr	r0, [r2, #112]	@ 0x70
 8002970:	f421 7140 	bic.w	r1, r1, #768	@ 0x300
 8002974:	f440 3080 	orr.w	r0, r0, #65536	@ 0x10000
 8002978:	6710      	str	r0, [r2, #112]	@ 0x70
 800297a:	6f10      	ldr	r0, [r2, #112]	@ 0x70
 800297c:	f420 3080 	bic.w	r0, r0, #65536	@ 0x10000
 8002980:	6710      	str	r0, [r2, #112]	@ 0x70
 8002982:	6711      	str	r1, [r2, #112]	@ 0x70
 8002984:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8002988:	f000 833e 	beq.w	8003008 <HAL_RCCEx_PeriphCLKConfig+0xe38>
 800298c:	f403 7240 	and.w	r2, r3, #768	@ 0x300
 8002990:	f5b2 7f40 	cmp.w	r2, #768	@ 0x300
 8002994:	f000 834c 	beq.w	8003030 <HAL_RCCEx_PeriphCLKConfig+0xe60>
 8002998:	4977      	ldr	r1, [pc, #476]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 800299a:	690a      	ldr	r2, [r1, #16]
 800299c:	f422 527c 	bic.w	r2, r2, #16128	@ 0x3f00
 80029a0:	610a      	str	r2, [r1, #16]
 80029a2:	4875      	ldr	r0, [pc, #468]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80029a4:	f3c3 010b 	ubfx	r1, r3, #0, #12
 80029a8:	6f07      	ldr	r7, [r0, #112]	@ 0x70
 80029aa:	4339      	orrs	r1, r7
 80029ac:	e9d4 3200 	ldrd	r3, r2, [r4]
 80029b0:	6701      	str	r1, [r0, #112]	@ 0x70
 80029b2:	e58b      	b.n	80024cc <HAL_RCCEx_PeriphCLKConfig+0x2fc>
 80029b4:	4870      	ldr	r0, [pc, #448]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80029b6:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 80029b8:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 80029bc:	62c1      	str	r1, [r0, #44]	@ 0x2c
 80029be:	4635      	mov	r5, r6
 80029c0:	2d00      	cmp	r5, #0
 80029c2:	f040 8164 	bne.w	8002c8e <HAL_RCCEx_PeriphCLKConfig+0xabe>
 80029c6:	4f6c      	ldr	r7, [pc, #432]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80029c8:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 80029ca:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 80029cc:	f021 0107 	bic.w	r1, r1, #7
 80029d0:	4301      	orrs	r1, r0
 80029d2:	6539      	str	r1, [r7, #80]	@ 0x50
 80029d4:	e438      	b.n	8002248 <HAL_RCCEx_PeriphCLKConfig+0x78>
 80029d6:	4868      	ldr	r0, [pc, #416]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80029d8:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 80029da:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 80029de:	62c1      	str	r1, [r0, #44]	@ 0x2c
 80029e0:	2d00      	cmp	r5, #0
 80029e2:	f43f aee2 	beq.w	80027aa <HAL_RCCEx_PeriphCLKConfig+0x5da>
 80029e6:	462e      	mov	r6, r5
 80029e8:	e6e6      	b.n	80027b8 <HAL_RCCEx_PeriphCLKConfig+0x5e8>
 80029ea:	4f63      	ldr	r7, [pc, #396]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80029ec:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 80029ee:	f440 3000 	orr.w	r0, r0, #131072	@ 0x20000
 80029f2:	62f8      	str	r0, [r7, #44]	@ 0x2c
 80029f4:	2d00      	cmp	r5, #0
 80029f6:	f47f aee4 	bne.w	80027c2 <HAL_RCCEx_PeriphCLKConfig+0x5f2>
 80029fa:	4d5f      	ldr	r5, [pc, #380]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 80029fc:	6d68      	ldr	r0, [r5, #84]	@ 0x54
 80029fe:	f420 7040 	bic.w	r0, r0, #768	@ 0x300
 8002a02:	4301      	orrs	r1, r0
 8002a04:	6569      	str	r1, [r5, #84]	@ 0x54
 8002a06:	e6db      	b.n	80027c0 <HAL_RCCEx_PeriphCLKConfig+0x5f0>
 8002a08:	462e      	mov	r6, r5
 8002a0a:	e4b5      	b.n	8002378 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8002a0c:	462e      	mov	r6, r5
 8002a0e:	e55a      	b.n	80024c6 <HAL_RCCEx_PeriphCLKConfig+0x2f6>
 8002a10:	462e      	mov	r6, r5
 8002a12:	e53a      	b.n	800248a <HAL_RCCEx_PeriphCLKConfig+0x2ba>
 8002a14:	462e      	mov	r6, r5
 8002a16:	e6ad      	b.n	8002774 <HAL_RCCEx_PeriphCLKConfig+0x5a4>
 8002a18:	2900      	cmp	r1, #0
 8002a1a:	f47f af35 	bne.w	8002888 <HAL_RCCEx_PeriphCLKConfig+0x6b8>
 8002a1e:	e7e9      	b.n	80029f4 <HAL_RCCEx_PeriphCLKConfig+0x824>
 8002a20:	4955      	ldr	r1, [pc, #340]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002a22:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002a24:	f001 0103 	and.w	r1, r1, #3
 8002a28:	2903      	cmp	r1, #3
 8002a2a:	f000 825d 	beq.w	8002ee8 <HAL_RCCEx_PeriphCLKConfig+0xd18>
 8002a2e:	2102      	movs	r1, #2
 8002a30:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002a34:	f7ff fb5c 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002a38:	4605      	mov	r5, r0
 8002a3a:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002a3e:	2d00      	cmp	r5, #0
 8002a40:	f43f ade9 	beq.w	8002616 <HAL_RCCEx_PeriphCLKConfig+0x446>
 8002a44:	e173      	b.n	8002d2e <HAL_RCCEx_PeriphCLKConfig+0xb5e>
 8002a46:	494c      	ldr	r1, [pc, #304]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002a48:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002a4a:	f001 0103 	and.w	r1, r1, #3
 8002a4e:	2903      	cmp	r1, #3
 8002a50:	f000 8258 	beq.w	8002f04 <HAL_RCCEx_PeriphCLKConfig+0xd34>
 8002a54:	2102      	movs	r1, #2
 8002a56:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002a5a:	f7ff fb49 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002a5e:	4605      	mov	r5, r0
 8002a60:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002a64:	2d00      	cmp	r5, #0
 8002a66:	f43f adff 	beq.w	8002668 <HAL_RCCEx_PeriphCLKConfig+0x498>
 8002a6a:	e168      	b.n	8002d3e <HAL_RCCEx_PeriphCLKConfig+0xb6e>
 8002a6c:	4942      	ldr	r1, [pc, #264]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002a6e:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002a70:	f001 0103 	and.w	r1, r1, #3
 8002a74:	2903      	cmp	r1, #3
 8002a76:	f000 821c 	beq.w	8002eb2 <HAL_RCCEx_PeriphCLKConfig+0xce2>
 8002a7a:	2102      	movs	r1, #2
 8002a7c:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002a80:	f7ff fb36 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002a84:	4605      	mov	r5, r0
 8002a86:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002a8a:	2d00      	cmp	r5, #0
 8002a8c:	f43f ae15 	beq.w	80026ba <HAL_RCCEx_PeriphCLKConfig+0x4ea>
 8002a90:	e15b      	b.n	8002d4a <HAL_RCCEx_PeriphCLKConfig+0xb7a>
 8002a92:	4939      	ldr	r1, [pc, #228]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002a94:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002a96:	f001 0103 	and.w	r1, r1, #3
 8002a9a:	2903      	cmp	r1, #3
 8002a9c:	f000 827d 	beq.w	8002f9a <HAL_RCCEx_PeriphCLKConfig+0xdca>
 8002aa0:	2102      	movs	r1, #2
 8002aa2:	f104 0008 	add.w	r0, r4, #8
 8002aa6:	f7ff fab3 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002aaa:	4605      	mov	r5, r0
 8002aac:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002ab0:	2d00      	cmp	r5, #0
 8002ab2:	f43f ac5a 	beq.w	800236a <HAL_RCCEx_PeriphCLKConfig+0x19a>
 8002ab6:	e7a7      	b.n	8002a08 <HAL_RCCEx_PeriphCLKConfig+0x838>
 8002ab8:	492f      	ldr	r1, [pc, #188]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002aba:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002abc:	f001 0103 	and.w	r1, r1, #3
 8002ac0:	2903      	cmp	r1, #3
 8002ac2:	f000 8297 	beq.w	8002ff4 <HAL_RCCEx_PeriphCLKConfig+0xe24>
 8002ac6:	2102      	movs	r1, #2
 8002ac8:	f104 0008 	add.w	r0, r4, #8
 8002acc:	f7ff faa0 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002ad0:	4605      	mov	r5, r0
 8002ad2:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002ad6:	2d00      	cmp	r5, #0
 8002ad8:	f43f acee 	beq.w	80024b8 <HAL_RCCEx_PeriphCLKConfig+0x2e8>
 8002adc:	e796      	b.n	8002a0c <HAL_RCCEx_PeriphCLKConfig+0x83c>
 8002ade:	4926      	ldr	r1, [pc, #152]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002ae0:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002ae2:	f001 0103 	and.w	r1, r1, #3
 8002ae6:	2903      	cmp	r1, #3
 8002ae8:	f000 81f0 	beq.w	8002ecc <HAL_RCCEx_PeriphCLKConfig+0xcfc>
 8002aec:	2101      	movs	r1, #1
 8002aee:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002af2:	f7ff fafd 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002af6:	4605      	mov	r5, r0
 8002af8:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002afc:	2d00      	cmp	r5, #0
 8002afe:	f43f acac 	beq.w	800245a <HAL_RCCEx_PeriphCLKConfig+0x28a>
 8002b02:	e10f      	b.n	8002d24 <HAL_RCCEx_PeriphCLKConfig+0xb54>
 8002b04:	491c      	ldr	r1, [pc, #112]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002b06:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002b08:	f001 0103 	and.w	r1, r1, #3
 8002b0c:	2903      	cmp	r1, #3
 8002b0e:	f43f aee2 	beq.w	80028d6 <HAL_RCCEx_PeriphCLKConfig+0x706>
 8002b12:	2102      	movs	r1, #2
 8002b14:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002b18:	f7ff faea 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002b1c:	4605      	mov	r5, r0
 8002b1e:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002b22:	2d00      	cmp	r5, #0
 8002b24:	f43f ae0c 	beq.w	8002740 <HAL_RCCEx_PeriphCLKConfig+0x570>
 8002b28:	e0ff      	b.n	8002d2a <HAL_RCCEx_PeriphCLKConfig+0xb5a>
 8002b2a:	4913      	ldr	r1, [pc, #76]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002b2c:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002b2e:	f001 0103 	and.w	r1, r1, #3
 8002b32:	2903      	cmp	r1, #3
 8002b34:	f000 81f4 	beq.w	8002f20 <HAL_RCCEx_PeriphCLKConfig+0xd50>
 8002b38:	2101      	movs	r1, #1
 8002b3a:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002b3e:	f7ff fad7 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002b42:	4605      	mov	r5, r0
 8002b44:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002b48:	2d00      	cmp	r5, #0
 8002b4a:	f43f ac5e 	beq.w	800240a <HAL_RCCEx_PeriphCLKConfig+0x23a>
 8002b4e:	e0f0      	b.n	8002d32 <HAL_RCCEx_PeriphCLKConfig+0xb62>
 8002b50:	4909      	ldr	r1, [pc, #36]	@ (8002b78 <HAL_RCCEx_PeriphCLKConfig+0x9a8>)
 8002b52:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002b54:	f001 0103 	and.w	r1, r1, #3
 8002b58:	2903      	cmp	r1, #3
 8002b5a:	f43f ae09 	beq.w	8002770 <HAL_RCCEx_PeriphCLKConfig+0x5a0>
 8002b5e:	2101      	movs	r1, #1
 8002b60:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002b64:	f7ff fac4 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002b68:	4605      	mov	r5, r0
 8002b6a:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002b6e:	2d00      	cmp	r5, #0
 8002b70:	f43f aed5 	beq.w	800291e <HAL_RCCEx_PeriphCLKConfig+0x74e>
 8002b74:	e74e      	b.n	8002a14 <HAL_RCCEx_PeriphCLKConfig+0x844>
 8002b76:	bf00      	nop
 8002b78:	58024400 	.word	0x58024400
 8002b7c:	58024800 	.word	0x58024800
 8002b80:	49bd      	ldr	r1, [pc, #756]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002b82:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002b84:	f001 0103 	and.w	r1, r1, #3
 8002b88:	2903      	cmp	r1, #3
 8002b8a:	f000 823a 	beq.w	8003002 <HAL_RCCEx_PeriphCLKConfig+0xe32>
 8002b8e:	2102      	movs	r1, #2
 8002b90:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002b94:	f7ff faac 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002b98:	2800      	cmp	r0, #0
 8002b9a:	f040 8259 	bne.w	8003050 <HAL_RCCEx_PeriphCLKConfig+0xe80>
 8002b9e:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
 8002ba2:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002ba6:	e5a6      	b.n	80026f6 <HAL_RCCEx_PeriphCLKConfig+0x526>
 8002ba8:	49b3      	ldr	r1, [pc, #716]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002baa:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002bac:	f001 0103 	and.w	r1, r1, #3
 8002bb0:	2903      	cmp	r1, #3
 8002bb2:	f000 8223 	beq.w	8002ffc <HAL_RCCEx_PeriphCLKConfig+0xe2c>
 8002bb6:	2102      	movs	r1, #2
 8002bb8:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002bbc:	f7ff fa98 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002bc0:	2800      	cmp	r0, #0
 8002bc2:	f040 824c 	bne.w	800305e <HAL_RCCEx_PeriphCLKConfig+0xe8e>
 8002bc6:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
 8002bca:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002bce:	e584      	b.n	80026da <HAL_RCCEx_PeriphCLKConfig+0x50a>
 8002bd0:	49a9      	ldr	r1, [pc, #676]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002bd2:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002bd4:	f001 0103 	and.w	r1, r1, #3
 8002bd8:	2903      	cmp	r1, #3
 8002bda:	f000 81d8 	beq.w	8002f8e <HAL_RCCEx_PeriphCLKConfig+0xdbe>
 8002bde:	2102      	movs	r1, #2
 8002be0:	3028      	adds	r0, #40	@ 0x28
 8002be2:	f7ff fa85 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002be6:	4606      	mov	r6, r0
 8002be8:	f7ff bb15 	b.w	8002216 <HAL_RCCEx_PeriphCLKConfig+0x46>
 8002bec:	49a2      	ldr	r1, [pc, #648]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002bee:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002bf0:	f001 0103 	and.w	r1, r1, #3
 8002bf4:	2903      	cmp	r1, #3
 8002bf6:	f000 81b6 	beq.w	8002f66 <HAL_RCCEx_PeriphCLKConfig+0xd96>
 8002bfa:	2100      	movs	r1, #0
 8002bfc:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002c00:	f7ff fa76 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002c04:	4605      	mov	r5, r0
 8002c06:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002c0a:	2d00      	cmp	r5, #0
 8002c0c:	f43f ab66 	beq.w	80022dc <HAL_RCCEx_PeriphCLKConfig+0x10c>
 8002c10:	462e      	mov	r6, r5
 8002c12:	f7ff bb6b 	b.w	80022ec <HAL_RCCEx_PeriphCLKConfig+0x11c>
 8002c16:	4998      	ldr	r1, [pc, #608]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002c18:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002c1a:	f001 0103 	and.w	r1, r1, #3
 8002c1e:	2903      	cmp	r1, #3
 8002c20:	f000 81ad 	beq.w	8002f7e <HAL_RCCEx_PeriphCLKConfig+0xdae>
 8002c24:	2100      	movs	r1, #0
 8002c26:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002c2a:	f7ff fa61 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002c2e:	4605      	mov	r5, r0
 8002c30:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002c34:	2d00      	cmp	r5, #0
 8002c36:	f43f ab7c 	beq.w	8002332 <HAL_RCCEx_PeriphCLKConfig+0x162>
 8002c3a:	462e      	mov	r6, r5
 8002c3c:	f7ff bb81 	b.w	8002342 <HAL_RCCEx_PeriphCLKConfig+0x172>
 8002c40:	498d      	ldr	r1, [pc, #564]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002c42:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002c44:	f001 0103 	and.w	r1, r1, #3
 8002c48:	2903      	cmp	r1, #3
 8002c4a:	f000 8180 	beq.w	8002f4e <HAL_RCCEx_PeriphCLKConfig+0xd7e>
 8002c4e:	2100      	movs	r1, #0
 8002c50:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002c54:	f7ff fa4c 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002c58:	4605      	mov	r5, r0
 8002c5a:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002c5e:	2d00      	cmp	r5, #0
 8002c60:	f43f abac 	beq.w	80023bc <HAL_RCCEx_PeriphCLKConfig+0x1ec>
 8002c64:	462e      	mov	r6, r5
 8002c66:	f7ff bbb0 	b.w	80023ca <HAL_RCCEx_PeriphCLKConfig+0x1fa>
 8002c6a:	4983      	ldr	r1, [pc, #524]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002c6c:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002c6e:	f001 0103 	and.w	r1, r1, #3
 8002c72:	2903      	cmp	r1, #3
 8002c74:	f43f aae6 	beq.w	8002244 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8002c78:	2100      	movs	r1, #0
 8002c7a:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002c7e:	f7ff fa37 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002c82:	4605      	mov	r5, r0
 8002c84:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002c88:	2d00      	cmp	r5, #0
 8002c8a:	f43f ae9c 	beq.w	80029c6 <HAL_RCCEx_PeriphCLKConfig+0x7f6>
 8002c8e:	462e      	mov	r6, r5
 8002c90:	f7ff bada 	b.w	8002248 <HAL_RCCEx_PeriphCLKConfig+0x78>
 8002c94:	4978      	ldr	r1, [pc, #480]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002c96:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002c98:	f001 0103 	and.w	r1, r1, #3
 8002c9c:	2903      	cmp	r1, #3
 8002c9e:	f000 814a 	beq.w	8002f36 <HAL_RCCEx_PeriphCLKConfig+0xd66>
 8002ca2:	2100      	movs	r1, #0
 8002ca4:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002ca8:	f7ff fa22 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002cac:	4605      	mov	r5, r0
 8002cae:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002cb2:	2d00      	cmp	r5, #0
 8002cb4:	f43f aae8 	beq.w	8002288 <HAL_RCCEx_PeriphCLKConfig+0xb8>
 8002cb8:	462e      	mov	r6, r5
 8002cba:	f7ff baec 	b.w	8002296 <HAL_RCCEx_PeriphCLKConfig+0xc6>
 8002cbe:	496e      	ldr	r1, [pc, #440]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002cc0:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002cc2:	f001 0103 	and.w	r1, r1, #3
 8002cc6:	2903      	cmp	r1, #3
 8002cc8:	f43f aabc 	beq.w	8002244 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8002ccc:	2100      	movs	r1, #0
 8002cce:	f104 0008 	add.w	r0, r4, #8
 8002cd2:	f7ff f99d 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002cd6:	4605      	mov	r5, r0
 8002cd8:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002cdc:	e670      	b.n	80029c0 <HAL_RCCEx_PeriphCLKConfig+0x7f0>
 8002cde:	4866      	ldr	r0, [pc, #408]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002ce0:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 8002ce2:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 8002ce6:	62c1      	str	r1, [r0, #44]	@ 0x2c
 8002ce8:	f7ff bb20 	b.w	800232c <HAL_RCCEx_PeriphCLKConfig+0x15c>
 8002cec:	4d62      	ldr	r5, [pc, #392]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002cee:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
 8002cf0:	f440 3000 	orr.w	r0, r0, #131072	@ 0x20000
 8002cf4:	62e8      	str	r0, [r5, #44]	@ 0x2c
 8002cf6:	f7ff ba92 	b.w	800221e <HAL_RCCEx_PeriphCLKConfig+0x4e>
 8002cfa:	485f      	ldr	r0, [pc, #380]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002cfc:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 8002cfe:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 8002d02:	62c1      	str	r1, [r0, #44]	@ 0x2c
 8002d04:	f7ff bb57 	b.w	80023b6 <HAL_RCCEx_PeriphCLKConfig+0x1e6>
 8002d08:	485b      	ldr	r0, [pc, #364]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002d0a:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 8002d0c:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 8002d10:	62c1      	str	r1, [r0, #44]	@ 0x2c
 8002d12:	f7ff bae0 	b.w	80022d6 <HAL_RCCEx_PeriphCLKConfig+0x106>
 8002d16:	4858      	ldr	r0, [pc, #352]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002d18:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
 8002d1a:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
 8002d1e:	62c1      	str	r1, [r0, #44]	@ 0x2c
 8002d20:	f7ff baaf 	b.w	8002282 <HAL_RCCEx_PeriphCLKConfig+0xb2>
 8002d24:	462e      	mov	r6, r5
 8002d26:	f7ff bba0 	b.w	800246a <HAL_RCCEx_PeriphCLKConfig+0x29a>
 8002d2a:	462e      	mov	r6, r5
 8002d2c:	e510      	b.n	8002750 <HAL_RCCEx_PeriphCLKConfig+0x580>
 8002d2e:	462e      	mov	r6, r5
 8002d30:	e479      	b.n	8002626 <HAL_RCCEx_PeriphCLKConfig+0x456>
 8002d32:	462e      	mov	r6, r5
 8002d34:	f7ff bb70 	b.w	8002418 <HAL_RCCEx_PeriphCLKConfig+0x248>
 8002d38:	462e      	mov	r6, r5
 8002d3a:	f7ff bbf9 	b.w	8002530 <HAL_RCCEx_PeriphCLKConfig+0x360>
 8002d3e:	462e      	mov	r6, r5
 8002d40:	e49a      	b.n	8002678 <HAL_RCCEx_PeriphCLKConfig+0x4a8>
 8002d42:	462e      	mov	r6, r5
 8002d44:	e41b      	b.n	800257e <HAL_RCCEx_PeriphCLKConfig+0x3ae>
 8002d46:	462e      	mov	r6, r5
 8002d48:	e444      	b.n	80025d4 <HAL_RCCEx_PeriphCLKConfig+0x404>
 8002d4a:	462e      	mov	r6, r5
 8002d4c:	e4bd      	b.n	80026ca <HAL_RCCEx_PeriphCLKConfig+0x4fa>
 8002d4e:	494a      	ldr	r1, [pc, #296]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002d50:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002d52:	f001 0103 	and.w	r1, r1, #3
 8002d56:	2903      	cmp	r1, #3
 8002d58:	f000 8144 	beq.w	8002fe4 <HAL_RCCEx_PeriphCLKConfig+0xe14>
 8002d5c:	2101      	movs	r1, #1
 8002d5e:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002d62:	f7ff f9c5 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002d66:	4605      	mov	r5, r0
 8002d68:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002d6c:	2d00      	cmp	r5, #0
 8002d6e:	f43f ac29 	beq.w	80025c4 <HAL_RCCEx_PeriphCLKConfig+0x3f4>
 8002d72:	e7e8      	b.n	8002d46 <HAL_RCCEx_PeriphCLKConfig+0xb76>
 8002d74:	4940      	ldr	r1, [pc, #256]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002d76:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002d78:	f001 0103 	and.w	r1, r1, #3
 8002d7c:	2903      	cmp	r1, #3
 8002d7e:	f000 8135 	beq.w	8002fec <HAL_RCCEx_PeriphCLKConfig+0xe1c>
 8002d82:	2101      	movs	r1, #1
 8002d84:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002d88:	f7ff f9b2 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002d8c:	4605      	mov	r5, r0
 8002d8e:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002d92:	2d00      	cmp	r5, #0
 8002d94:	f43f abec 	beq.w	8002570 <HAL_RCCEx_PeriphCLKConfig+0x3a0>
 8002d98:	e7d3      	b.n	8002d42 <HAL_RCCEx_PeriphCLKConfig+0xb72>
 8002d9a:	4937      	ldr	r1, [pc, #220]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002d9c:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002d9e:	f001 0103 	and.w	r1, r1, #3
 8002da2:	2903      	cmp	r1, #3
 8002da4:	f43f abc2 	beq.w	800252c <HAL_RCCEx_PeriphCLKConfig+0x35c>
 8002da8:	2101      	movs	r1, #1
 8002daa:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002dae:	f7ff f99f 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002db2:	4605      	mov	r5, r0
 8002db4:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002db8:	2d00      	cmp	r5, #0
 8002dba:	f43f ada1 	beq.w	8002900 <HAL_RCCEx_PeriphCLKConfig+0x730>
 8002dbe:	e7bb      	b.n	8002d38 <HAL_RCCEx_PeriphCLKConfig+0xb68>
 8002dc0:	4b2d      	ldr	r3, [pc, #180]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002dc2:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002dc4:	f003 0303 	and.w	r3, r3, #3
 8002dc8:	2b03      	cmp	r3, #3
 8002dca:	f000 8107 	beq.w	8002fdc <HAL_RCCEx_PeriphCLKConfig+0xe0c>
 8002dce:	2100      	movs	r1, #0
 8002dd0:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002dd4:	f7ff f98c 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002dd8:	6862      	ldr	r2, [r4, #4]
 8002dda:	2800      	cmp	r0, #0
 8002ddc:	f43f ad38 	beq.w	8002850 <HAL_RCCEx_PeriphCLKConfig+0x680>
 8002de0:	4605      	mov	r5, r0
 8002de2:	e535      	b.n	8002850 <HAL_RCCEx_PeriphCLKConfig+0x680>
 8002de4:	4b24      	ldr	r3, [pc, #144]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002de6:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002de8:	f003 0303 	and.w	r3, r3, #3
 8002dec:	2b03      	cmp	r3, #3
 8002dee:	f000 80f1 	beq.w	8002fd4 <HAL_RCCEx_PeriphCLKConfig+0xe04>
 8002df2:	2102      	movs	r1, #2
 8002df4:	f104 0008 	add.w	r0, r4, #8
 8002df8:	f7ff f90a 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002dfc:	6862      	ldr	r2, [r4, #4]
 8002dfe:	2800      	cmp	r0, #0
 8002e00:	f43f ad23 	beq.w	800284a <HAL_RCCEx_PeriphCLKConfig+0x67a>
 8002e04:	4605      	mov	r5, r0
 8002e06:	e520      	b.n	800284a <HAL_RCCEx_PeriphCLKConfig+0x67a>
 8002e08:	2501      	movs	r5, #1
 8002e0a:	0692      	lsls	r2, r2, #26
 8002e0c:	d50d      	bpl.n	8002e2a <HAL_RCCEx_PeriphCLKConfig+0xc5a>
 8002e0e:	4b1a      	ldr	r3, [pc, #104]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002e10:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002e12:	f003 0303 	and.w	r3, r3, #3
 8002e16:	2b03      	cmp	r3, #3
 8002e18:	d007      	beq.n	8002e2a <HAL_RCCEx_PeriphCLKConfig+0xc5a>
 8002e1a:	2102      	movs	r1, #2
 8002e1c:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002e20:	f7ff f966 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002e24:	2800      	cmp	r0, #0
 8002e26:	f43f ad1c 	beq.w	8002862 <HAL_RCCEx_PeriphCLKConfig+0x692>
 8002e2a:	2001      	movs	r0, #1
 8002e2c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8002e30:	4b11      	ldr	r3, [pc, #68]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002e32:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002e34:	f003 0303 	and.w	r3, r3, #3
 8002e38:	2b03      	cmp	r3, #3
 8002e3a:	f000 80d1 	beq.w	8002fe0 <HAL_RCCEx_PeriphCLKConfig+0xe10>
 8002e3e:	2101      	movs	r1, #1
 8002e40:	f104 0008 	add.w	r0, r4, #8
 8002e44:	f7ff f8e4 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002e48:	6862      	ldr	r2, [r4, #4]
 8002e4a:	2800      	cmp	r0, #0
 8002e4c:	f43f acfa 	beq.w	8002844 <HAL_RCCEx_PeriphCLKConfig+0x674>
 8002e50:	4605      	mov	r5, r0
 8002e52:	e4f7      	b.n	8002844 <HAL_RCCEx_PeriphCLKConfig+0x674>
 8002e54:	4b08      	ldr	r3, [pc, #32]	@ (8002e78 <HAL_RCCEx_PeriphCLKConfig+0xca8>)
 8002e56:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002e58:	f003 0303 	and.w	r3, r3, #3
 8002e5c:	2b03      	cmp	r3, #3
 8002e5e:	f000 80bb 	beq.w	8002fd8 <HAL_RCCEx_PeriphCLKConfig+0xe08>
 8002e62:	2100      	movs	r1, #0
 8002e64:	f104 0008 	add.w	r0, r4, #8
 8002e68:	f7ff f8d2 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002e6c:	6862      	ldr	r2, [r4, #4]
 8002e6e:	2800      	cmp	r0, #0
 8002e70:	f43f ace5 	beq.w	800283e <HAL_RCCEx_PeriphCLKConfig+0x66e>
 8002e74:	4605      	mov	r5, r0
 8002e76:	e4e2      	b.n	800283e <HAL_RCCEx_PeriphCLKConfig+0x66e>
 8002e78:	58024400 	.word	0x58024400
 8002e7c:	4b7b      	ldr	r3, [pc, #492]	@ (800306c <HAL_RCCEx_PeriphCLKConfig+0xe9c>)
 8002e7e:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8002e80:	f003 0303 	and.w	r3, r3, #3
 8002e84:	2b03      	cmp	r3, #3
 8002e86:	d0bf      	beq.n	8002e08 <HAL_RCCEx_PeriphCLKConfig+0xc38>
 8002e88:	2101      	movs	r1, #1
 8002e8a:	f104 0028 	add.w	r0, r4, #40	@ 0x28
 8002e8e:	f7ff f92f 	bl	80020f0 <RCCEx_PLL3_Config.part.0>
 8002e92:	6862      	ldr	r2, [r4, #4]
 8002e94:	2800      	cmp	r0, #0
 8002e96:	f43f ace1 	beq.w	800285c <HAL_RCCEx_PeriphCLKConfig+0x68c>
 8002e9a:	4605      	mov	r5, r0
 8002e9c:	e7b5      	b.n	8002e0a <HAL_RCCEx_PeriphCLKConfig+0xc3a>
 8002e9e:	f421 5000 	bic.w	r0, r1, #8192	@ 0x2000
 8002ea2:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8002ea6:	f43f ac05 	beq.w	80026b4 <HAL_RCCEx_PeriphCLKConfig+0x4e4>
 8002eaa:	f5b1 4fc0 	cmp.w	r1, #24576	@ 0x6000
 8002eae:	f43f ac01 	beq.w	80026b4 <HAL_RCCEx_PeriphCLKConfig+0x4e4>
 8002eb2:	2601      	movs	r6, #1
 8002eb4:	4635      	mov	r5, r6
 8002eb6:	e408      	b.n	80026ca <HAL_RCCEx_PeriphCLKConfig+0x4fa>
 8002eb8:	f021 5080 	bic.w	r0, r1, #268435456	@ 0x10000000
 8002ebc:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
 8002ec0:	f43f aac8 	beq.w	8002454 <HAL_RCCEx_PeriphCLKConfig+0x284>
 8002ec4:	f1b1 5f40 	cmp.w	r1, #805306368	@ 0x30000000
 8002ec8:	f43f aac4 	beq.w	8002454 <HAL_RCCEx_PeriphCLKConfig+0x284>
 8002ecc:	2601      	movs	r6, #1
 8002ece:	4635      	mov	r5, r6
 8002ed0:	f7ff bacb 	b.w	800246a <HAL_RCCEx_PeriphCLKConfig+0x29a>
 8002ed4:	f021 5080 	bic.w	r0, r1, #268435456	@ 0x10000000
 8002ed8:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
 8002edc:	f43f ab98 	beq.w	8002610 <HAL_RCCEx_PeriphCLKConfig+0x440>
 8002ee0:	f1b1 5f40 	cmp.w	r1, #805306368	@ 0x30000000
 8002ee4:	f43f ab94 	beq.w	8002610 <HAL_RCCEx_PeriphCLKConfig+0x440>
 8002ee8:	2601      	movs	r6, #1
 8002eea:	4635      	mov	r5, r6
 8002eec:	f7ff bb9b 	b.w	8002626 <HAL_RCCEx_PeriphCLKConfig+0x456>
 8002ef0:	f421 6080 	bic.w	r0, r1, #1024	@ 0x400
 8002ef4:	f5b0 5f80 	cmp.w	r0, #4096	@ 0x1000
 8002ef8:	f43f abb3 	beq.w	8002662 <HAL_RCCEx_PeriphCLKConfig+0x492>
 8002efc:	f5b1 6f40 	cmp.w	r1, #3072	@ 0xc00
 8002f00:	f43f abaf 	beq.w	8002662 <HAL_RCCEx_PeriphCLKConfig+0x492>
 8002f04:	2601      	movs	r6, #1
 8002f06:	4635      	mov	r5, r6
 8002f08:	f7ff bbb6 	b.w	8002678 <HAL_RCCEx_PeriphCLKConfig+0x4a8>
 8002f0c:	f421 3080 	bic.w	r0, r1, #65536	@ 0x10000
 8002f10:	f5b0 2f80 	cmp.w	r0, #262144	@ 0x40000
 8002f14:	f43f aa76 	beq.w	8002404 <HAL_RCCEx_PeriphCLKConfig+0x234>
 8002f18:	f5b1 3f40 	cmp.w	r1, #196608	@ 0x30000
 8002f1c:	f43f aa72 	beq.w	8002404 <HAL_RCCEx_PeriphCLKConfig+0x234>
 8002f20:	2601      	movs	r6, #1
 8002f22:	4635      	mov	r5, r6
 8002f24:	f7ff ba78 	b.w	8002418 <HAL_RCCEx_PeriphCLKConfig+0x248>
 8002f28:	29c0      	cmp	r1, #192	@ 0xc0
 8002f2a:	f43f a9aa 	beq.w	8002282 <HAL_RCCEx_PeriphCLKConfig+0xb2>
 8002f2e:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
 8002f32:	f43f a9a6 	beq.w	8002282 <HAL_RCCEx_PeriphCLKConfig+0xb2>
 8002f36:	2601      	movs	r6, #1
 8002f38:	4635      	mov	r5, r6
 8002f3a:	f7ff b9ac 	b.w	8002296 <HAL_RCCEx_PeriphCLKConfig+0xc6>
 8002f3e:	f5b1 5f40 	cmp.w	r1, #12288	@ 0x3000
 8002f42:	f43f aa38 	beq.w	80023b6 <HAL_RCCEx_PeriphCLKConfig+0x1e6>
 8002f46:	f5b1 4f80 	cmp.w	r1, #16384	@ 0x4000
 8002f4a:	f43f aa34 	beq.w	80023b6 <HAL_RCCEx_PeriphCLKConfig+0x1e6>
 8002f4e:	2601      	movs	r6, #1
 8002f50:	4635      	mov	r5, r6
 8002f52:	f7ff ba3a 	b.w	80023ca <HAL_RCCEx_PeriphCLKConfig+0x1fa>
 8002f56:	f5b1 0fc0 	cmp.w	r1, #6291456	@ 0x600000
 8002f5a:	f43f a9bc 	beq.w	80022d6 <HAL_RCCEx_PeriphCLKConfig+0x106>
 8002f5e:	f5b1 0f00 	cmp.w	r1, #8388608	@ 0x800000
 8002f62:	f43f a9b8 	beq.w	80022d6 <HAL_RCCEx_PeriphCLKConfig+0x106>
 8002f66:	2601      	movs	r6, #1
 8002f68:	4635      	mov	r5, r6
 8002f6a:	f7ff b9bf 	b.w	80022ec <HAL_RCCEx_PeriphCLKConfig+0x11c>
 8002f6e:	f1b1 7f40 	cmp.w	r1, #50331648	@ 0x3000000
 8002f72:	f43f a9db 	beq.w	800232c <HAL_RCCEx_PeriphCLKConfig+0x15c>
 8002f76:	f1b1 6f80 	cmp.w	r1, #67108864	@ 0x4000000
 8002f7a:	f43f a9d7 	beq.w	800232c <HAL_RCCEx_PeriphCLKConfig+0x15c>
 8002f7e:	2601      	movs	r6, #1
 8002f80:	4635      	mov	r5, r6
 8002f82:	f7ff b9de 	b.w	8002342 <HAL_RCCEx_PeriphCLKConfig+0x172>
 8002f86:	f5b1 1f40 	cmp.w	r1, #3145728	@ 0x300000
 8002f8a:	f43f a948 	beq.w	800221e <HAL_RCCEx_PeriphCLKConfig+0x4e>
 8002f8e:	2601      	movs	r6, #1
 8002f90:	f7ff b94c 	b.w	800222c <HAL_RCCEx_PeriphCLKConfig+0x5c>
 8002f94:	2930      	cmp	r1, #48	@ 0x30
 8002f96:	f43f a9e5 	beq.w	8002364 <HAL_RCCEx_PeriphCLKConfig+0x194>
 8002f9a:	2601      	movs	r6, #1
 8002f9c:	4635      	mov	r5, r6
 8002f9e:	f7ff b9eb 	b.w	8002378 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8002fa2:	2503      	movs	r5, #3
 8002fa4:	462e      	mov	r6, r5
 8002fa6:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002faa:	f7ff ba8f 	b.w	80024cc <HAL_RCCEx_PeriphCLKConfig+0x2fc>
 8002fae:	492f      	ldr	r1, [pc, #188]	@ (800306c <HAL_RCCEx_PeriphCLKConfig+0xe9c>)
 8002fb0:	6a89      	ldr	r1, [r1, #40]	@ 0x28
 8002fb2:	f001 0103 	and.w	r1, r1, #3
 8002fb6:	2903      	cmp	r1, #3
 8002fb8:	f43f aa65 	beq.w	8002486 <HAL_RCCEx_PeriphCLKConfig+0x2b6>
 8002fbc:	2101      	movs	r1, #1
 8002fbe:	f104 0008 	add.w	r0, r4, #8
 8002fc2:	f7ff f825 	bl	8002010 <RCCEx_PLL2_Config.part.0>
 8002fc6:	4605      	mov	r5, r0
 8002fc8:	e9d4 3200 	ldrd	r3, r2, [r4]
 8002fcc:	2d00      	cmp	r5, #0
 8002fce:	f43f ac7a 	beq.w	80028c6 <HAL_RCCEx_PeriphCLKConfig+0x6f6>
 8002fd2:	e51d      	b.n	8002a10 <HAL_RCCEx_PeriphCLKConfig+0x840>
 8002fd4:	2501      	movs	r5, #1
 8002fd6:	e438      	b.n	800284a <HAL_RCCEx_PeriphCLKConfig+0x67a>
 8002fd8:	2501      	movs	r5, #1
 8002fda:	e430      	b.n	800283e <HAL_RCCEx_PeriphCLKConfig+0x66e>
 8002fdc:	2501      	movs	r5, #1
 8002fde:	e437      	b.n	8002850 <HAL_RCCEx_PeriphCLKConfig+0x680>
 8002fe0:	2501      	movs	r5, #1
 8002fe2:	e42f      	b.n	8002844 <HAL_RCCEx_PeriphCLKConfig+0x674>
 8002fe4:	2601      	movs	r6, #1
 8002fe6:	4635      	mov	r5, r6
 8002fe8:	f7ff baf4 	b.w	80025d4 <HAL_RCCEx_PeriphCLKConfig+0x404>
 8002fec:	2601      	movs	r6, #1
 8002fee:	4635      	mov	r5, r6
 8002ff0:	f7ff bac5 	b.w	800257e <HAL_RCCEx_PeriphCLKConfig+0x3ae>
 8002ff4:	2601      	movs	r6, #1
 8002ff6:	4635      	mov	r5, r6
 8002ff8:	f7ff ba65 	b.w	80024c6 <HAL_RCCEx_PeriphCLKConfig+0x2f6>
 8002ffc:	2601      	movs	r6, #1
 8002ffe:	f7ff bb6c 	b.w	80026da <HAL_RCCEx_PeriphCLKConfig+0x50a>
 8003002:	2601      	movs	r6, #1
 8003004:	f7ff bb77 	b.w	80026f6 <HAL_RCCEx_PeriphCLKConfig+0x526>
 8003008:	f002 f8ea 	bl	80051e0 <HAL_GetTick>
 800300c:	f8df 805c 	ldr.w	r8, [pc, #92]	@ 800306c <HAL_RCCEx_PeriphCLKConfig+0xe9c>
 8003010:	4607      	mov	r7, r0
 8003012:	f241 3988 	movw	r9, #5000	@ 0x1388
 8003016:	e004      	b.n	8003022 <HAL_RCCEx_PeriphCLKConfig+0xe52>
 8003018:	f002 f8e2 	bl	80051e0 <HAL_GetTick>
 800301c:	1bc0      	subs	r0, r0, r7
 800301e:	4548      	cmp	r0, r9
 8003020:	d810      	bhi.n	8003044 <HAL_RCCEx_PeriphCLKConfig+0xe74>
 8003022:	f8d8 3070 	ldr.w	r3, [r8, #112]	@ 0x70
 8003026:	079b      	lsls	r3, r3, #30
 8003028:	d5f6      	bpl.n	8003018 <HAL_RCCEx_PeriphCLKConfig+0xe48>
 800302a:	f8d4 30b4 	ldr.w	r3, [r4, #180]	@ 0xb4
 800302e:	e4ad      	b.n	800298c <HAL_RCCEx_PeriphCLKConfig+0x7bc>
 8003030:	480e      	ldr	r0, [pc, #56]	@ (800306c <HAL_RCCEx_PeriphCLKConfig+0xe9c>)
 8003032:	4a0f      	ldr	r2, [pc, #60]	@ (8003070 <HAL_RCCEx_PeriphCLKConfig+0xea0>)
 8003034:	6901      	ldr	r1, [r0, #16]
 8003036:	ea02 1213 	and.w	r2, r2, r3, lsr #4
 800303a:	f421 517c 	bic.w	r1, r1, #16128	@ 0x3f00
 800303e:	430a      	orrs	r2, r1
 8003040:	6102      	str	r2, [r0, #16]
 8003042:	e4ae      	b.n	80029a2 <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 8003044:	2603      	movs	r6, #3
 8003046:	e9d4 3200 	ldrd	r3, r2, [r4]
 800304a:	4635      	mov	r5, r6
 800304c:	f7ff ba3e 	b.w	80024cc <HAL_RCCEx_PeriphCLKConfig+0x2fc>
 8003050:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
 8003054:	2601      	movs	r6, #1
 8003056:	e9d4 3200 	ldrd	r3, r2, [r4]
 800305a:	f7ff bb4c 	b.w	80026f6 <HAL_RCCEx_PeriphCLKConfig+0x526>
 800305e:	f8d4 0084 	ldr.w	r0, [r4, #132]	@ 0x84
 8003062:	2601      	movs	r6, #1
 8003064:	e9d4 3200 	ldrd	r3, r2, [r4]
 8003068:	f7ff bb37 	b.w	80026da <HAL_RCCEx_PeriphCLKConfig+0x50a>
 800306c:	58024400 	.word	0x58024400
 8003070:	00ffffcf 	.word	0x00ffffcf

08003074 <HAL_RCCEx_GetD3PCLK1Freq>:
 8003074:	b508      	push	{r3, lr}
 8003076:	f7fe ff3b 	bl	8001ef0 <HAL_RCC_GetHCLKFreq>
 800307a:	4b05      	ldr	r3, [pc, #20]	@ (8003090 <HAL_RCCEx_GetD3PCLK1Freq+0x1c>)
 800307c:	4a05      	ldr	r2, [pc, #20]	@ (8003094 <HAL_RCCEx_GetD3PCLK1Freq+0x20>)
 800307e:	6a1b      	ldr	r3, [r3, #32]
 8003080:	f3c3 1302 	ubfx	r3, r3, #4, #3
 8003084:	5cd3      	ldrb	r3, [r2, r3]
 8003086:	f003 031f 	and.w	r3, r3, #31
 800308a:	40d8      	lsrs	r0, r3
 800308c:	bd08      	pop	{r3, pc}
 800308e:	bf00      	nop
 8003090:	58024400 	.word	0x58024400
 8003094:	0800d62c 	.word	0x0800d62c

08003098 <HAL_RCCEx_GetPLL2ClockFreq>:
 8003098:	4a47      	ldr	r2, [pc, #284]	@ (80031b8 <HAL_RCCEx_GetPLL2ClockFreq+0x120>)
 800309a:	b470      	push	{r4, r5, r6}
 800309c:	6a94      	ldr	r4, [r2, #40]	@ 0x28
 800309e:	6a95      	ldr	r5, [r2, #40]	@ 0x28
 80030a0:	6ad6      	ldr	r6, [r2, #44]	@ 0x2c
 80030a2:	f415 3f7c 	tst.w	r5, #258048	@ 0x3f000
 80030a6:	f3c5 3305 	ubfx	r3, r5, #12, #6
 80030aa:	6bd1      	ldr	r1, [r2, #60]	@ 0x3c
 80030ac:	d05b      	beq.n	8003166 <HAL_RCCEx_GetPLL2ClockFreq+0xce>
 80030ae:	f3c1 01cc 	ubfx	r1, r1, #3, #13
 80030b2:	f3c6 1600 	ubfx	r6, r6, #4, #1
 80030b6:	f004 0403 	and.w	r4, r4, #3
 80030ba:	ee07 3a90 	vmov	s15, r3
 80030be:	fb06 f101 	mul.w	r1, r6, r1
 80030c2:	2c01      	cmp	r4, #1
 80030c4:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 80030c8:	ee06 1a90 	vmov	s13, r1
 80030cc:	eefa 6ae9 	vcvt.f32.s32	s13, s13, #13
 80030d0:	d003      	beq.n	80030da <HAL_RCCEx_GetPLL2ClockFreq+0x42>
 80030d2:	2c02      	cmp	r4, #2
 80030d4:	d06a      	beq.n	80031ac <HAL_RCCEx_GetPLL2ClockFreq+0x114>
 80030d6:	2c00      	cmp	r4, #0
 80030d8:	d04a      	beq.n	8003170 <HAL_RCCEx_GetPLL2ClockFreq+0xd8>
 80030da:	eddf 7a38 	vldr	s15, [pc, #224]	@ 80031bc <HAL_RCCEx_GetPLL2ClockFreq+0x124>
 80030de:	ee87 6a87 	vdiv.f32	s12, s15, s14
 80030e2:	6b93      	ldr	r3, [r2, #56]	@ 0x38
 80030e4:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80030e8:	ee07 3a90 	vmov	s15, r3
 80030ec:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 80030f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80030f4:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80030f8:	ee77 7aa5 	vadd.f32	s15, s15, s11
 80030fc:	ee67 7a86 	vmul.f32	s15, s15, s12
 8003100:	4a2d      	ldr	r2, [pc, #180]	@ (80031b8 <HAL_RCCEx_GetPLL2ClockFreq+0x120>)
 8003102:	eeb7 6a00 	vmov.f32	s12, #112	@ 0x3f800000  1.0
 8003106:	6b93      	ldr	r3, [r2, #56]	@ 0x38
 8003108:	f3c3 2346 	ubfx	r3, r3, #9, #7
 800310c:	ee07 3a10 	vmov	s14, r3
 8003110:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8003114:	bc70      	pop	{r4, r5, r6}
 8003116:	ee37 7a06 	vadd.f32	s14, s14, s12
 800311a:	eec7 6a87 	vdiv.f32	s13, s15, s14
 800311e:	eefc 6ae6 	vcvt.u32.f32	s13, s13
 8003122:	edc0 6a00 	vstr	s13, [r0]
 8003126:	6b93      	ldr	r3, [r2, #56]	@ 0x38
 8003128:	f3c3 4306 	ubfx	r3, r3, #16, #7
 800312c:	ee07 3a10 	vmov	s14, r3
 8003130:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8003134:	ee37 7a06 	vadd.f32	s14, s14, s12
 8003138:	eec7 6a87 	vdiv.f32	s13, s15, s14
 800313c:	eefc 6ae6 	vcvt.u32.f32	s13, s13
 8003140:	edc0 6a01 	vstr	s13, [r0, #4]
 8003144:	6b93      	ldr	r3, [r2, #56]	@ 0x38
 8003146:	f3c3 6306 	ubfx	r3, r3, #24, #7
 800314a:	ee06 3a90 	vmov	s13, r3
 800314e:	eef8 6ae6 	vcvt.f32.s32	s13, s13
 8003152:	ee76 6a86 	vadd.f32	s13, s13, s12
 8003156:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 800315a:	eefc 7ac7 	vcvt.u32.f32	s15, s14
 800315e:	ee17 3a90 	vmov	r3, s15
 8003162:	6083      	str	r3, [r0, #8]
 8003164:	4770      	bx	lr
 8003166:	bc70      	pop	{r4, r5, r6}
 8003168:	e9c0 3300 	strd	r3, r3, [r0]
 800316c:	6083      	str	r3, [r0, #8]
 800316e:	4770      	bx	lr
 8003170:	6813      	ldr	r3, [r2, #0]
 8003172:	069b      	lsls	r3, r3, #26
 8003174:	d51d      	bpl.n	80031b2 <HAL_RCCEx_GetPLL2ClockFreq+0x11a>
 8003176:	6814      	ldr	r4, [r2, #0]
 8003178:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 800317c:	6b93      	ldr	r3, [r2, #56]	@ 0x38
 800317e:	4910      	ldr	r1, [pc, #64]	@ (80031c0 <HAL_RCCEx_GetPLL2ClockFreq+0x128>)
 8003180:	f3c4 02c1 	ubfx	r2, r4, #3, #2
 8003184:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8003188:	40d1      	lsrs	r1, r2
 800318a:	ee07 3a90 	vmov	s15, r3
 800318e:	ee06 1a10 	vmov	s12, r1
 8003192:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8003196:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
 800319a:	ee77 6aa6 	vadd.f32	s13, s15, s13
 800319e:	eec6 7a07 	vdiv.f32	s15, s12, s14
 80031a2:	ee36 7aa5 	vadd.f32	s14, s13, s11
 80031a6:	ee67 7a87 	vmul.f32	s15, s15, s14
 80031aa:	e7a9      	b.n	8003100 <HAL_RCCEx_GetPLL2ClockFreq+0x68>
 80031ac:	eddf 7a05 	vldr	s15, [pc, #20]	@ 80031c4 <HAL_RCCEx_GetPLL2ClockFreq+0x12c>
 80031b0:	e795      	b.n	80030de <HAL_RCCEx_GetPLL2ClockFreq+0x46>
 80031b2:	eddf 7a05 	vldr	s15, [pc, #20]	@ 80031c8 <HAL_RCCEx_GetPLL2ClockFreq+0x130>
 80031b6:	e792      	b.n	80030de <HAL_RCCEx_GetPLL2ClockFreq+0x46>
 80031b8:	58024400 	.word	0x58024400
 80031bc:	4a742400 	.word	0x4a742400
 80031c0:	03d09000 	.word	0x03d09000
 80031c4:	4bbebc20 	.word	0x4bbebc20
 80031c8:	4c742400 	.word	0x4c742400

080031cc <HAL_RCCEx_GetPLL3ClockFreq>:
 80031cc:	4a47      	ldr	r2, [pc, #284]	@ (80032ec <HAL_RCCEx_GetPLL3ClockFreq+0x120>)
 80031ce:	b470      	push	{r4, r5, r6}
 80031d0:	6a94      	ldr	r4, [r2, #40]	@ 0x28
 80031d2:	6a95      	ldr	r5, [r2, #40]	@ 0x28
 80031d4:	6ad6      	ldr	r6, [r2, #44]	@ 0x2c
 80031d6:	f015 7f7c 	tst.w	r5, #66060288	@ 0x3f00000
 80031da:	f3c5 5305 	ubfx	r3, r5, #20, #6
 80031de:	6c51      	ldr	r1, [r2, #68]	@ 0x44
 80031e0:	d05b      	beq.n	800329a <HAL_RCCEx_GetPLL3ClockFreq+0xce>
 80031e2:	f3c1 01cc 	ubfx	r1, r1, #3, #13
 80031e6:	f3c6 2600 	ubfx	r6, r6, #8, #1
 80031ea:	f004 0403 	and.w	r4, r4, #3
 80031ee:	ee07 3a90 	vmov	s15, r3
 80031f2:	fb06 f101 	mul.w	r1, r6, r1
 80031f6:	2c01      	cmp	r4, #1
 80031f8:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 80031fc:	ee06 1a90 	vmov	s13, r1
 8003200:	eefa 6ae9 	vcvt.f32.s32	s13, s13, #13
 8003204:	d003      	beq.n	800320e <HAL_RCCEx_GetPLL3ClockFreq+0x42>
 8003206:	2c02      	cmp	r4, #2
 8003208:	d06a      	beq.n	80032e0 <HAL_RCCEx_GetPLL3ClockFreq+0x114>
 800320a:	2c00      	cmp	r4, #0
 800320c:	d04a      	beq.n	80032a4 <HAL_RCCEx_GetPLL3ClockFreq+0xd8>
 800320e:	eddf 7a38 	vldr	s15, [pc, #224]	@ 80032f0 <HAL_RCCEx_GetPLL3ClockFreq+0x124>
 8003212:	ee87 6a87 	vdiv.f32	s12, s15, s14
 8003216:	6c13      	ldr	r3, [r2, #64]	@ 0x40
 8003218:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800321c:	ee07 3a90 	vmov	s15, r3
 8003220:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 8003224:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8003228:	ee77 7aa6 	vadd.f32	s15, s15, s13
 800322c:	ee77 7aa5 	vadd.f32	s15, s15, s11
 8003230:	ee67 7a86 	vmul.f32	s15, s15, s12
 8003234:	4a2d      	ldr	r2, [pc, #180]	@ (80032ec <HAL_RCCEx_GetPLL3ClockFreq+0x120>)
 8003236:	eeb7 6a00 	vmov.f32	s12, #112	@ 0x3f800000  1.0
 800323a:	6c13      	ldr	r3, [r2, #64]	@ 0x40
 800323c:	f3c3 2346 	ubfx	r3, r3, #9, #7
 8003240:	ee07 3a10 	vmov	s14, r3
 8003244:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8003248:	bc70      	pop	{r4, r5, r6}
 800324a:	ee37 7a06 	vadd.f32	s14, s14, s12
 800324e:	eec7 6a87 	vdiv.f32	s13, s15, s14
 8003252:	eefc 6ae6 	vcvt.u32.f32	s13, s13
 8003256:	edc0 6a00 	vstr	s13, [r0]
 800325a:	6c13      	ldr	r3, [r2, #64]	@ 0x40
 800325c:	f3c3 4306 	ubfx	r3, r3, #16, #7
 8003260:	ee07 3a10 	vmov	s14, r3
 8003264:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8003268:	ee37 7a06 	vadd.f32	s14, s14, s12
 800326c:	eec7 6a87 	vdiv.f32	s13, s15, s14
 8003270:	eefc 6ae6 	vcvt.u32.f32	s13, s13
 8003274:	edc0 6a01 	vstr	s13, [r0, #4]
 8003278:	6c13      	ldr	r3, [r2, #64]	@ 0x40
 800327a:	f3c3 6306 	ubfx	r3, r3, #24, #7
 800327e:	ee06 3a90 	vmov	s13, r3
 8003282:	eef8 6ae6 	vcvt.f32.s32	s13, s13
 8003286:	ee76 6a86 	vadd.f32	s13, s13, s12
 800328a:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 800328e:	eefc 7ac7 	vcvt.u32.f32	s15, s14
 8003292:	ee17 3a90 	vmov	r3, s15
 8003296:	6083      	str	r3, [r0, #8]
 8003298:	4770      	bx	lr
 800329a:	bc70      	pop	{r4, r5, r6}
 800329c:	e9c0 3300 	strd	r3, r3, [r0]
 80032a0:	6083      	str	r3, [r0, #8]
 80032a2:	4770      	bx	lr
 80032a4:	6813      	ldr	r3, [r2, #0]
 80032a6:	069b      	lsls	r3, r3, #26
 80032a8:	d51d      	bpl.n	80032e6 <HAL_RCCEx_GetPLL3ClockFreq+0x11a>
 80032aa:	6814      	ldr	r4, [r2, #0]
 80032ac:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 80032b0:	6c13      	ldr	r3, [r2, #64]	@ 0x40
 80032b2:	4910      	ldr	r1, [pc, #64]	@ (80032f4 <HAL_RCCEx_GetPLL3ClockFreq+0x128>)
 80032b4:	f3c4 02c1 	ubfx	r2, r4, #3, #2
 80032b8:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80032bc:	40d1      	lsrs	r1, r2
 80032be:	ee07 3a90 	vmov	s15, r3
 80032c2:	ee06 1a10 	vmov	s12, r1
 80032c6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80032ca:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
 80032ce:	ee77 6aa6 	vadd.f32	s13, s15, s13
 80032d2:	eec6 7a07 	vdiv.f32	s15, s12, s14
 80032d6:	ee36 7aa5 	vadd.f32	s14, s13, s11
 80032da:	ee67 7a87 	vmul.f32	s15, s15, s14
 80032de:	e7a9      	b.n	8003234 <HAL_RCCEx_GetPLL3ClockFreq+0x68>
 80032e0:	eddf 7a05 	vldr	s15, [pc, #20]	@ 80032f8 <HAL_RCCEx_GetPLL3ClockFreq+0x12c>
 80032e4:	e795      	b.n	8003212 <HAL_RCCEx_GetPLL3ClockFreq+0x46>
 80032e6:	eddf 7a05 	vldr	s15, [pc, #20]	@ 80032fc <HAL_RCCEx_GetPLL3ClockFreq+0x130>
 80032ea:	e792      	b.n	8003212 <HAL_RCCEx_GetPLL3ClockFreq+0x46>
 80032ec:	58024400 	.word	0x58024400
 80032f0:	4a742400 	.word	0x4a742400
 80032f4:	03d09000 	.word	0x03d09000
 80032f8:	4bbebc20 	.word	0x4bbebc20
 80032fc:	4c742400 	.word	0x4c742400

08003300 <HAL_RCCEx_GetPLL1ClockFreq>:
 8003300:	4a47      	ldr	r2, [pc, #284]	@ (8003420 <HAL_RCCEx_GetPLL1ClockFreq+0x120>)
 8003302:	b470      	push	{r4, r5, r6}
 8003304:	6a94      	ldr	r4, [r2, #40]	@ 0x28
 8003306:	6a95      	ldr	r5, [r2, #40]	@ 0x28
 8003308:	6ad6      	ldr	r6, [r2, #44]	@ 0x2c
 800330a:	f415 7f7c 	tst.w	r5, #1008	@ 0x3f0
 800330e:	f3c5 1305 	ubfx	r3, r5, #4, #6
 8003312:	6b51      	ldr	r1, [r2, #52]	@ 0x34
 8003314:	d05b      	beq.n	80033ce <HAL_RCCEx_GetPLL1ClockFreq+0xce>
 8003316:	f3c1 01cc 	ubfx	r1, r1, #3, #13
 800331a:	f006 0601 	and.w	r6, r6, #1
 800331e:	f004 0403 	and.w	r4, r4, #3
 8003322:	ee07 3a90 	vmov	s15, r3
 8003326:	fb06 f101 	mul.w	r1, r6, r1
 800332a:	2c01      	cmp	r4, #1
 800332c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 8003330:	ee06 1a90 	vmov	s13, r1
 8003334:	eefa 6ae9 	vcvt.f32.s32	s13, s13, #13
 8003338:	d04e      	beq.n	80033d8 <HAL_RCCEx_GetPLL1ClockFreq+0xd8>
 800333a:	2c02      	cmp	r4, #2
 800333c:	d06d      	beq.n	800341a <HAL_RCCEx_GetPLL1ClockFreq+0x11a>
 800333e:	2c00      	cmp	r4, #0
 8003340:	d04d      	beq.n	80033de <HAL_RCCEx_GetPLL1ClockFreq+0xde>
 8003342:	eddf 7a38 	vldr	s15, [pc, #224]	@ 8003424 <HAL_RCCEx_GetPLL1ClockFreq+0x124>
 8003346:	ee87 6a87 	vdiv.f32	s12, s15, s14
 800334a:	6b13      	ldr	r3, [r2, #48]	@ 0x30
 800334c:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8003350:	ee07 3a90 	vmov	s15, r3
 8003354:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 8003358:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800335c:	ee77 7aa6 	vadd.f32	s15, s15, s13
 8003360:	ee77 7aa5 	vadd.f32	s15, s15, s11
 8003364:	ee67 7a86 	vmul.f32	s15, s15, s12
 8003368:	4a2d      	ldr	r2, [pc, #180]	@ (8003420 <HAL_RCCEx_GetPLL1ClockFreq+0x120>)
 800336a:	eeb7 6a00 	vmov.f32	s12, #112	@ 0x3f800000  1.0
 800336e:	6b13      	ldr	r3, [r2, #48]	@ 0x30
 8003370:	f3c3 2346 	ubfx	r3, r3, #9, #7
 8003374:	ee07 3a10 	vmov	s14, r3
 8003378:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800337c:	bc70      	pop	{r4, r5, r6}
 800337e:	ee37 7a06 	vadd.f32	s14, s14, s12
 8003382:	eec7 6a87 	vdiv.f32	s13, s15, s14
 8003386:	eefc 6ae6 	vcvt.u32.f32	s13, s13
 800338a:	edc0 6a00 	vstr	s13, [r0]
 800338e:	6b13      	ldr	r3, [r2, #48]	@ 0x30
 8003390:	f3c3 4306 	ubfx	r3, r3, #16, #7
 8003394:	ee07 3a10 	vmov	s14, r3
 8003398:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800339c:	ee37 7a06 	vadd.f32	s14, s14, s12
 80033a0:	eec7 6a87 	vdiv.f32	s13, s15, s14
 80033a4:	eefc 6ae6 	vcvt.u32.f32	s13, s13
 80033a8:	edc0 6a01 	vstr	s13, [r0, #4]
 80033ac:	6b13      	ldr	r3, [r2, #48]	@ 0x30
 80033ae:	f3c3 6306 	ubfx	r3, r3, #24, #7
 80033b2:	ee06 3a90 	vmov	s13, r3
 80033b6:	eef8 6ae6 	vcvt.f32.s32	s13, s13
 80033ba:	ee76 6a86 	vadd.f32	s13, s13, s12
 80033be:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 80033c2:	eefc 7ac7 	vcvt.u32.f32	s15, s14
 80033c6:	ee17 3a90 	vmov	r3, s15
 80033ca:	6083      	str	r3, [r0, #8]
 80033cc:	4770      	bx	lr
 80033ce:	bc70      	pop	{r4, r5, r6}
 80033d0:	e9c0 3300 	strd	r3, r3, [r0]
 80033d4:	6083      	str	r3, [r0, #8]
 80033d6:	4770      	bx	lr
 80033d8:	eddf 7a13 	vldr	s15, [pc, #76]	@ 8003428 <HAL_RCCEx_GetPLL1ClockFreq+0x128>
 80033dc:	e7b3      	b.n	8003346 <HAL_RCCEx_GetPLL1ClockFreq+0x46>
 80033de:	6813      	ldr	r3, [r2, #0]
 80033e0:	069b      	lsls	r3, r3, #26
 80033e2:	d5ae      	bpl.n	8003342 <HAL_RCCEx_GetPLL1ClockFreq+0x42>
 80033e4:	6814      	ldr	r4, [r2, #0]
 80033e6:	eef7 5a00 	vmov.f32	s11, #112	@ 0x3f800000  1.0
 80033ea:	6b13      	ldr	r3, [r2, #48]	@ 0x30
 80033ec:	490f      	ldr	r1, [pc, #60]	@ (800342c <HAL_RCCEx_GetPLL1ClockFreq+0x12c>)
 80033ee:	f3c4 02c1 	ubfx	r2, r4, #3, #2
 80033f2:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80033f6:	40d1      	lsrs	r1, r2
 80033f8:	ee07 3a90 	vmov	s15, r3
 80033fc:	ee06 1a10 	vmov	s12, r1
 8003400:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8003404:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
 8003408:	ee77 6aa6 	vadd.f32	s13, s15, s13
 800340c:	eec6 7a07 	vdiv.f32	s15, s12, s14
 8003410:	ee36 7aa5 	vadd.f32	s14, s13, s11
 8003414:	ee67 7a87 	vmul.f32	s15, s15, s14
 8003418:	e7a6      	b.n	8003368 <HAL_RCCEx_GetPLL1ClockFreq+0x68>
 800341a:	eddf 7a05 	vldr	s15, [pc, #20]	@ 8003430 <HAL_RCCEx_GetPLL1ClockFreq+0x130>
 800341e:	e792      	b.n	8003346 <HAL_RCCEx_GetPLL1ClockFreq+0x46>
 8003420:	58024400 	.word	0x58024400
 8003424:	4c742400 	.word	0x4c742400
 8003428:	4a742400 	.word	0x4a742400
 800342c:	03d09000 	.word	0x03d09000
 8003430:	4bbebc20 	.word	0x4bbebc20

08003434 <HAL_RCCEx_GetPeriphCLKFreq>:
 8003434:	f5a0 7380 	sub.w	r3, r0, #256	@ 0x100
 8003438:	430b      	orrs	r3, r1
 800343a:	b500      	push	{lr}
 800343c:	b085      	sub	sp, #20
 800343e:	d04c      	beq.n	80034da <HAL_RCCEx_GetPeriphCLKFreq+0xa6>
 8003440:	f5a0 7300 	sub.w	r3, r0, #512	@ 0x200
 8003444:	430b      	orrs	r3, r1
 8003446:	d036      	beq.n	80034b6 <HAL_RCCEx_GetPeriphCLKFreq+0x82>
 8003448:	f5a0 6380 	sub.w	r3, r0, #1024	@ 0x400
 800344c:	430b      	orrs	r3, r1
 800344e:	d06c      	beq.n	800352a <HAL_RCCEx_GetPeriphCLKFreq+0xf6>
 8003450:	f5a0 6300 	sub.w	r3, r0, #2048	@ 0x800
 8003454:	430b      	orrs	r3, r1
 8003456:	d04b      	beq.n	80034f0 <HAL_RCCEx_GetPeriphCLKFreq+0xbc>
 8003458:	f5a0 5380 	sub.w	r3, r0, #4096	@ 0x1000
 800345c:	430b      	orrs	r3, r1
 800345e:	f000 80b6 	beq.w	80035ce <HAL_RCCEx_GetPeriphCLKFreq+0x19a>
 8003462:	f5a0 5300 	sub.w	r3, r0, #8192	@ 0x2000
 8003466:	430b      	orrs	r3, r1
 8003468:	f000 80ec 	beq.w	8003644 <HAL_RCCEx_GetPeriphCLKFreq+0x210>
 800346c:	f5a0 2300 	sub.w	r3, r0, #524288	@ 0x80000
 8003470:	430b      	orrs	r3, r1
 8003472:	d069      	beq.n	8003548 <HAL_RCCEx_GetPeriphCLKFreq+0x114>
 8003474:	f5a0 3380 	sub.w	r3, r0, #65536	@ 0x10000
 8003478:	430b      	orrs	r3, r1
 800347a:	f000 80d6 	beq.w	800362a <HAL_RCCEx_GetPeriphCLKFreq+0x1f6>
 800347e:	f5a0 4380 	sub.w	r3, r0, #16384	@ 0x4000
 8003482:	430b      	orrs	r3, r1
 8003484:	f000 8109 	beq.w	800369a <HAL_RCCEx_GetPeriphCLKFreq+0x266>
 8003488:	f5a0 4000 	sub.w	r0, r0, #32768	@ 0x8000
 800348c:	4308      	orrs	r0, r1
 800348e:	d120      	bne.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 8003490:	4a95      	ldr	r2, [pc, #596]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 8003492:	6d13      	ldr	r3, [r2, #80]	@ 0x50
 8003494:	f003 5340 	and.w	r3, r3, #805306368	@ 0x30000000
 8003498:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
 800349c:	f000 80aa 	beq.w	80035f4 <HAL_RCCEx_GetPeriphCLKFreq+0x1c0>
 80034a0:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 80034a4:	f000 8116 	beq.w	80036d4 <HAL_RCCEx_GetPeriphCLKFreq+0x2a0>
 80034a8:	b99b      	cbnz	r3, 80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 80034aa:	6810      	ldr	r0, [r2, #0]
 80034ac:	f410 3000 	ands.w	r0, r0, #131072	@ 0x20000
 80034b0:	d047      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80034b2:	488e      	ldr	r0, [pc, #568]	@ (80036ec <HAL_RCCEx_GetPeriphCLKFreq+0x2b8>)
 80034b4:	e045      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80034b6:	4a8c      	ldr	r2, [pc, #560]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80034b8:	6d13      	ldr	r3, [r2, #80]	@ 0x50
 80034ba:	f403 73e0 	and.w	r3, r3, #448	@ 0x1c0
 80034be:	2b80      	cmp	r3, #128	@ 0x80
 80034c0:	f000 8093 	beq.w	80035ea <HAL_RCCEx_GetPeriphCLKFreq+0x1b6>
 80034c4:	f240 808b 	bls.w	80035de <HAL_RCCEx_GetPeriphCLKFreq+0x1aa>
 80034c8:	2bc0      	cmp	r3, #192	@ 0xc0
 80034ca:	d039      	beq.n	8003540 <HAL_RCCEx_GetPeriphCLKFreq+0x10c>
 80034cc:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 80034d0:	d05c      	beq.n	800358c <HAL_RCCEx_GetPeriphCLKFreq+0x158>
 80034d2:	2000      	movs	r0, #0
 80034d4:	b005      	add	sp, #20
 80034d6:	f85d fb04 	ldr.w	pc, [sp], #4
 80034da:	4b83      	ldr	r3, [pc, #524]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80034dc:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80034de:	f003 0307 	and.w	r3, r3, #7
 80034e2:	2b04      	cmp	r3, #4
 80034e4:	d8f5      	bhi.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 80034e6:	e8df f003 	tbb	[pc, r3]
 80034ea:	3c68      	.short	0x3c68
 80034ec:	2b46      	.short	0x2b46
 80034ee:	50          	.byte	0x50
 80034ef:	00          	.byte	0x00
 80034f0:	4a7d      	ldr	r2, [pc, #500]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80034f2:	6d93      	ldr	r3, [r2, #88]	@ 0x58
 80034f4:	f003 63e0 	and.w	r3, r3, #117440512	@ 0x7000000
 80034f8:	f1b3 7f00 	cmp.w	r3, #33554432	@ 0x2000000
 80034fc:	d075      	beq.n	80035ea <HAL_RCCEx_GetPeriphCLKFreq+0x1b6>
 80034fe:	d96e      	bls.n	80035de <HAL_RCCEx_GetPeriphCLKFreq+0x1aa>
 8003500:	f1b3 7f40 	cmp.w	r3, #50331648	@ 0x3000000
 8003504:	d01c      	beq.n	8003540 <HAL_RCCEx_GetPeriphCLKFreq+0x10c>
 8003506:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 800350a:	d1e2      	bne.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 800350c:	6cd3      	ldr	r3, [r2, #76]	@ 0x4c
 800350e:	6812      	ldr	r2, [r2, #0]
 8003510:	f003 5340 	and.w	r3, r3, #805306368	@ 0x30000000
 8003514:	0752      	lsls	r2, r2, #29
 8003516:	d541      	bpl.n	800359c <HAL_RCCEx_GetPeriphCLKFreq+0x168>
 8003518:	2b00      	cmp	r3, #0
 800351a:	d13f      	bne.n	800359c <HAL_RCCEx_GetPeriphCLKFreq+0x168>
 800351c:	4b72      	ldr	r3, [pc, #456]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800351e:	4874      	ldr	r0, [pc, #464]	@ (80036f0 <HAL_RCCEx_GetPeriphCLKFreq+0x2bc>)
 8003520:	681b      	ldr	r3, [r3, #0]
 8003522:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 8003526:	40d8      	lsrs	r0, r3
 8003528:	e00b      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800352a:	4a6f      	ldr	r2, [pc, #444]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800352c:	6d93      	ldr	r3, [r2, #88]	@ 0x58
 800352e:	f403 0360 	and.w	r3, r3, #14680064	@ 0xe00000
 8003532:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 8003536:	d058      	beq.n	80035ea <HAL_RCCEx_GetPeriphCLKFreq+0x1b6>
 8003538:	d951      	bls.n	80035de <HAL_RCCEx_GetPeriphCLKFreq+0x1aa>
 800353a:	f5b3 0fc0 	cmp.w	r3, #6291456	@ 0x600000
 800353e:	d15e      	bne.n	80035fe <HAL_RCCEx_GetPeriphCLKFreq+0x1ca>
 8003540:	486c      	ldr	r0, [pc, #432]	@ (80036f4 <HAL_RCCEx_GetPeriphCLKFreq+0x2c0>)
 8003542:	b005      	add	sp, #20
 8003544:	f85d fb04 	ldr.w	pc, [sp], #4
 8003548:	4a67      	ldr	r2, [pc, #412]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800354a:	6d93      	ldr	r3, [r2, #88]	@ 0x58
 800354c:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 8003550:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8003554:	f000 80df 	beq.w	8003716 <HAL_RCCEx_GetPeriphCLKFreq+0x2e2>
 8003558:	f5b3 3f00 	cmp.w	r3, #131072	@ 0x20000
 800355c:	d0d6      	beq.n	800350c <HAL_RCCEx_GetPeriphCLKFreq+0xd8>
 800355e:	2b00      	cmp	r3, #0
 8003560:	d1b7      	bne.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 8003562:	4b61      	ldr	r3, [pc, #388]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 8003564:	6818      	ldr	r0, [r3, #0]
 8003566:	f010 6000 	ands.w	r0, r0, #134217728	@ 0x8000000
 800356a:	d0ea      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800356c:	a801      	add	r0, sp, #4
 800356e:	f7ff fd93 	bl	8003098 <HAL_RCCEx_GetPLL2ClockFreq>
 8003572:	9801      	ldr	r0, [sp, #4]
 8003574:	e7e5      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003576:	4b5c      	ldr	r3, [pc, #368]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 8003578:	6818      	ldr	r0, [r3, #0]
 800357a:	f010 5000 	ands.w	r0, r0, #536870912	@ 0x20000000
 800357e:	d0e0      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003580:	a801      	add	r0, sp, #4
 8003582:	f7ff fe23 	bl	80031cc <HAL_RCCEx_GetPLL3ClockFreq>
 8003586:	9801      	ldr	r0, [sp, #4]
 8003588:	e7db      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800358a:	4a57      	ldr	r2, [pc, #348]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800358c:	6cd3      	ldr	r3, [r2, #76]	@ 0x4c
 800358e:	6811      	ldr	r1, [r2, #0]
 8003590:	f003 5340 	and.w	r3, r3, #805306368	@ 0x30000000
 8003594:	0749      	lsls	r1, r1, #29
 8003596:	d501      	bpl.n	800359c <HAL_RCCEx_GetPeriphCLKFreq+0x168>
 8003598:	2b00      	cmp	r3, #0
 800359a:	d038      	beq.n	800360e <HAL_RCCEx_GetPeriphCLKFreq+0x1da>
 800359c:	4a52      	ldr	r2, [pc, #328]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800359e:	6812      	ldr	r2, [r2, #0]
 80035a0:	05d0      	lsls	r0, r2, #23
 80035a2:	d502      	bpl.n	80035aa <HAL_RCCEx_GetPeriphCLKFreq+0x176>
 80035a4:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
 80035a8:	d067      	beq.n	800367a <HAL_RCCEx_GetPeriphCLKFreq+0x246>
 80035aa:	4a4f      	ldr	r2, [pc, #316]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80035ac:	6812      	ldr	r2, [r2, #0]
 80035ae:	0391      	lsls	r1, r2, #14
 80035b0:	d58f      	bpl.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 80035b2:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 80035b6:	d18c      	bne.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 80035b8:	e77b      	b.n	80034b2 <HAL_RCCEx_GetPeriphCLKFreq+0x7e>
 80035ba:	4b4b      	ldr	r3, [pc, #300]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80035bc:	6818      	ldr	r0, [r3, #0]
 80035be:	f010 7000 	ands.w	r0, r0, #33554432	@ 0x2000000
 80035c2:	d0be      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80035c4:	a801      	add	r0, sp, #4
 80035c6:	f7ff fe9b 	bl	8003300 <HAL_RCCEx_GetPLL1ClockFreq>
 80035ca:	9802      	ldr	r0, [sp, #8]
 80035cc:	e7b9      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80035ce:	4a46      	ldr	r2, [pc, #280]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80035d0:	6d13      	ldr	r3, [r2, #80]	@ 0x50
 80035d2:	f403 43e0 	and.w	r3, r3, #28672	@ 0x7000
 80035d6:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80035da:	d006      	beq.n	80035ea <HAL_RCCEx_GetPeriphCLKFreq+0x1b6>
 80035dc:	d81d      	bhi.n	800361a <HAL_RCCEx_GetPeriphCLKFreq+0x1e6>
 80035de:	b14b      	cbz	r3, 80035f4 <HAL_RCCEx_GetPeriphCLKFreq+0x1c0>
 80035e0:	6810      	ldr	r0, [r2, #0]
 80035e2:	f010 6000 	ands.w	r0, r0, #134217728	@ 0x8000000
 80035e6:	d0ac      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80035e8:	e7c0      	b.n	800356c <HAL_RCCEx_GetPeriphCLKFreq+0x138>
 80035ea:	6810      	ldr	r0, [r2, #0]
 80035ec:	f010 5000 	ands.w	r0, r0, #536870912	@ 0x20000000
 80035f0:	d0a7      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80035f2:	e7c5      	b.n	8003580 <HAL_RCCEx_GetPeriphCLKFreq+0x14c>
 80035f4:	6810      	ldr	r0, [r2, #0]
 80035f6:	f010 7000 	ands.w	r0, r0, #33554432	@ 0x2000000
 80035fa:	d0a2      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80035fc:	e7e2      	b.n	80035c4 <HAL_RCCEx_GetPeriphCLKFreq+0x190>
 80035fe:	f5b3 0f00 	cmp.w	r3, #8388608	@ 0x800000
 8003602:	d0c3      	beq.n	800358c <HAL_RCCEx_GetPeriphCLKFreq+0x158>
 8003604:	e765      	b.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 8003606:	6810      	ldr	r0, [r2, #0]
 8003608:	f010 0004 	ands.w	r0, r0, #4
 800360c:	d099      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800360e:	6813      	ldr	r3, [r2, #0]
 8003610:	4837      	ldr	r0, [pc, #220]	@ (80036f0 <HAL_RCCEx_GetPeriphCLKFreq+0x2bc>)
 8003612:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 8003616:	40d8      	lsrs	r0, r3
 8003618:	e793      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800361a:	f5b3 5f40 	cmp.w	r3, #12288	@ 0x3000
 800361e:	d08f      	beq.n	8003540 <HAL_RCCEx_GetPeriphCLKFreq+0x10c>
 8003620:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 8003624:	f43f af72 	beq.w	800350c <HAL_RCCEx_GetPeriphCLKFreq+0xd8>
 8003628:	e753      	b.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 800362a:	4b2f      	ldr	r3, [pc, #188]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800362c:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 800362e:	03d2      	lsls	r2, r2, #15
 8003630:	d5c4      	bpl.n	80035bc <HAL_RCCEx_GetPeriphCLKFreq+0x188>
 8003632:	6818      	ldr	r0, [r3, #0]
 8003634:	f010 6000 	ands.w	r0, r0, #134217728	@ 0x8000000
 8003638:	d083      	beq.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800363a:	a801      	add	r0, sp, #4
 800363c:	f7ff fd2c 	bl	8003098 <HAL_RCCEx_GetPLL2ClockFreq>
 8003640:	9803      	ldr	r0, [sp, #12]
 8003642:	e77e      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003644:	4a28      	ldr	r2, [pc, #160]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 8003646:	6d13      	ldr	r3, [r2, #80]	@ 0x50
 8003648:	f403 23e0 	and.w	r3, r3, #458752	@ 0x70000
 800364c:	f5b3 3f40 	cmp.w	r3, #196608	@ 0x30000
 8003650:	d0d9      	beq.n	8003606 <HAL_RCCEx_GetPeriphCLKFreq+0x1d2>
 8003652:	d814      	bhi.n	800367e <HAL_RCCEx_GetPeriphCLKFreq+0x24a>
 8003654:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8003658:	d03c      	beq.n	80036d4 <HAL_RCCEx_GetPeriphCLKFreq+0x2a0>
 800365a:	f5b3 3f00 	cmp.w	r3, #131072	@ 0x20000
 800365e:	d04f      	beq.n	8003700 <HAL_RCCEx_GetPeriphCLKFreq+0x2cc>
 8003660:	2b00      	cmp	r3, #0
 8003662:	f47f af36 	bne.w	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 8003666:	b005      	add	sp, #20
 8003668:	f85d eb04 	ldr.w	lr, [sp], #4
 800366c:	f7fe bc80 	b.w	8001f70 <HAL_RCC_GetPCLK1Freq>
 8003670:	6810      	ldr	r0, [r2, #0]
 8003672:	f410 7080 	ands.w	r0, r0, #256	@ 0x100
 8003676:	f43f af64 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800367a:	481f      	ldr	r0, [pc, #124]	@ (80036f8 <HAL_RCCEx_GetPeriphCLKFreq+0x2c4>)
 800367c:	e761      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800367e:	f5b3 2f80 	cmp.w	r3, #262144	@ 0x40000
 8003682:	d0f5      	beq.n	8003670 <HAL_RCCEx_GetPeriphCLKFreq+0x23c>
 8003684:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 8003688:	f47f af23 	bne.w	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 800368c:	4b16      	ldr	r3, [pc, #88]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800368e:	6818      	ldr	r0, [r3, #0]
 8003690:	f410 3000 	ands.w	r0, r0, #131072	@ 0x20000
 8003694:	f43f af55 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003698:	e70b      	b.n	80034b2 <HAL_RCCEx_GetPeriphCLKFreq+0x7e>
 800369a:	4b13      	ldr	r3, [pc, #76]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 800369c:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 800369e:	f003 43e0 	and.w	r3, r3, #1879048192	@ 0x70000000
 80036a2:	f1b3 5f40 	cmp.w	r3, #805306368	@ 0x30000000
 80036a6:	d04e      	beq.n	8003746 <HAL_RCCEx_GetPeriphCLKFreq+0x312>
 80036a8:	d83f      	bhi.n	800372a <HAL_RCCEx_GetPeriphCLKFreq+0x2f6>
 80036aa:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
 80036ae:	d043      	beq.n	8003738 <HAL_RCCEx_GetPeriphCLKFreq+0x304>
 80036b0:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 80036b4:	d024      	beq.n	8003700 <HAL_RCCEx_GetPeriphCLKFreq+0x2cc>
 80036b6:	2b00      	cmp	r3, #0
 80036b8:	f47f af0b 	bne.w	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 80036bc:	f7fe fc18 	bl	8001ef0 <HAL_RCC_GetHCLKFreq>
 80036c0:	4b09      	ldr	r3, [pc, #36]	@ (80036e8 <HAL_RCCEx_GetPeriphCLKFreq+0x2b4>)
 80036c2:	4a0e      	ldr	r2, [pc, #56]	@ (80036fc <HAL_RCCEx_GetPeriphCLKFreq+0x2c8>)
 80036c4:	6a1b      	ldr	r3, [r3, #32]
 80036c6:	f3c3 1302 	ubfx	r3, r3, #4, #3
 80036ca:	5cd3      	ldrb	r3, [r2, r3]
 80036cc:	f003 031f 	and.w	r3, r3, #31
 80036d0:	40d8      	lsrs	r0, r3
 80036d2:	e736      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80036d4:	6810      	ldr	r0, [r2, #0]
 80036d6:	f010 6000 	ands.w	r0, r0, #134217728	@ 0x8000000
 80036da:	f43f af32 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80036de:	a801      	add	r0, sp, #4
 80036e0:	f7ff fcda 	bl	8003098 <HAL_RCCEx_GetPLL2ClockFreq>
 80036e4:	9802      	ldr	r0, [sp, #8]
 80036e6:	e72c      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 80036e8:	58024400 	.word	0x58024400
 80036ec:	017d7840 	.word	0x017d7840
 80036f0:	03d09000 	.word	0x03d09000
 80036f4:	00bb8000 	.word	0x00bb8000
 80036f8:	003d0900 	.word	0x003d0900
 80036fc:	0800d62c 	.word	0x0800d62c
 8003700:	4b1a      	ldr	r3, [pc, #104]	@ (800376c <HAL_RCCEx_GetPeriphCLKFreq+0x338>)
 8003702:	6818      	ldr	r0, [r3, #0]
 8003704:	f010 5000 	ands.w	r0, r0, #536870912	@ 0x20000000
 8003708:	f43f af1b 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800370c:	a801      	add	r0, sp, #4
 800370e:	f7ff fd5d 	bl	80031cc <HAL_RCCEx_GetPLL3ClockFreq>
 8003712:	9802      	ldr	r0, [sp, #8]
 8003714:	e715      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003716:	6810      	ldr	r0, [r2, #0]
 8003718:	f010 5000 	ands.w	r0, r0, #536870912	@ 0x20000000
 800371c:	f43f af11 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003720:	a801      	add	r0, sp, #4
 8003722:	f7ff fd53 	bl	80031cc <HAL_RCCEx_GetPLL3ClockFreq>
 8003726:	9803      	ldr	r0, [sp, #12]
 8003728:	e70b      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800372a:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 800372e:	d016      	beq.n	800375e <HAL_RCCEx_GetPeriphCLKFreq+0x32a>
 8003730:	f1b3 4fa0 	cmp.w	r3, #1342177280	@ 0x50000000
 8003734:	d0aa      	beq.n	800368c <HAL_RCCEx_GetPeriphCLKFreq+0x258>
 8003736:	e6cc      	b.n	80034d2 <HAL_RCCEx_GetPeriphCLKFreq+0x9e>
 8003738:	4b0c      	ldr	r3, [pc, #48]	@ (800376c <HAL_RCCEx_GetPeriphCLKFreq+0x338>)
 800373a:	6818      	ldr	r0, [r3, #0]
 800373c:	f010 6000 	ands.w	r0, r0, #134217728	@ 0x8000000
 8003740:	f43f aeff 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003744:	e7cb      	b.n	80036de <HAL_RCCEx_GetPeriphCLKFreq+0x2aa>
 8003746:	4b09      	ldr	r3, [pc, #36]	@ (800376c <HAL_RCCEx_GetPeriphCLKFreq+0x338>)
 8003748:	6818      	ldr	r0, [r3, #0]
 800374a:	f010 0004 	ands.w	r0, r0, #4
 800374e:	f43f aef8 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 8003752:	681b      	ldr	r3, [r3, #0]
 8003754:	4806      	ldr	r0, [pc, #24]	@ (8003770 <HAL_RCCEx_GetPeriphCLKFreq+0x33c>)
 8003756:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 800375a:	40d8      	lsrs	r0, r3
 800375c:	e6f1      	b.n	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800375e:	4b03      	ldr	r3, [pc, #12]	@ (800376c <HAL_RCCEx_GetPeriphCLKFreq+0x338>)
 8003760:	6818      	ldr	r0, [r3, #0]
 8003762:	f410 7080 	ands.w	r0, r0, #256	@ 0x100
 8003766:	f43f aeec 	beq.w	8003542 <HAL_RCCEx_GetPeriphCLKFreq+0x10e>
 800376a:	e786      	b.n	800367a <HAL_RCCEx_GetPeriphCLKFreq+0x246>
 800376c:	58024400 	.word	0x58024400
 8003770:	03d09000 	.word	0x03d09000

08003774 <HAL_GPIO_Init>:
 8003774:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003778:	680c      	ldr	r4, [r1, #0]
 800377a:	b085      	sub	sp, #20
 800377c:	2c00      	cmp	r4, #0
 800377e:	f000 80ac 	beq.w	80038da <HAL_GPIO_Init+0x166>
 8003782:	2300      	movs	r3, #0
 8003784:	f04f 0b01 	mov.w	fp, #1
 8003788:	fa0b fe03 	lsl.w	lr, fp, r3
 800378c:	ea1e 0a04 	ands.w	sl, lr, r4
 8003790:	f000 809e 	beq.w	80038d0 <HAL_GPIO_Init+0x15c>
 8003794:	684d      	ldr	r5, [r1, #4]
 8003796:	005a      	lsls	r2, r3, #1
 8003798:	2603      	movs	r6, #3
 800379a:	f005 0c03 	and.w	ip, r5, #3
 800379e:	fa06 f702 	lsl.w	r7, r6, r2
 80037a2:	f10c 38ff 	add.w	r8, ip, #4294967295
 80037a6:	43ff      	mvns	r7, r7
 80037a8:	f1b8 0f01 	cmp.w	r8, #1
 80037ac:	f240 8098 	bls.w	80038e0 <HAL_GPIO_Init+0x16c>
 80037b0:	f1bc 0f03 	cmp.w	ip, #3
 80037b4:	f040 810b 	bne.w	80039ce <HAL_GPIO_Init+0x25a>
 80037b8:	fa0c f202 	lsl.w	r2, ip, r2
 80037bc:	f8d0 c000 	ldr.w	ip, [r0]
 80037c0:	f415 3f40 	tst.w	r5, #196608	@ 0x30000
 80037c4:	ea0c 0707 	and.w	r7, ip, r7
 80037c8:	ea42 0207 	orr.w	r2, r2, r7
 80037cc:	6002      	str	r2, [r0, #0]
 80037ce:	d07f      	beq.n	80038d0 <HAL_GPIO_Init+0x15c>
 80037d0:	4f85      	ldr	r7, [pc, #532]	@ (80039e8 <HAL_GPIO_Init+0x274>)
 80037d2:	f003 0c03 	and.w	ip, r3, #3
 80037d6:	260f      	movs	r6, #15
 80037d8:	f8d7 20f4 	ldr.w	r2, [r7, #244]	@ 0xf4
 80037dc:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
 80037e0:	f042 0202 	orr.w	r2, r2, #2
 80037e4:	fa06 fe0c 	lsl.w	lr, r6, ip
 80037e8:	4e80      	ldr	r6, [pc, #512]	@ (80039ec <HAL_GPIO_Init+0x278>)
 80037ea:	f8c7 20f4 	str.w	r2, [r7, #244]	@ 0xf4
 80037ee:	f8d7 20f4 	ldr.w	r2, [r7, #244]	@ 0xf4
 80037f2:	f023 0703 	bic.w	r7, r3, #3
 80037f6:	42b0      	cmp	r0, r6
 80037f8:	f107 47b0 	add.w	r7, r7, #1476395008	@ 0x58000000
 80037fc:	f002 0202 	and.w	r2, r2, #2
 8003800:	f507 6780 	add.w	r7, r7, #1024	@ 0x400
 8003804:	9203      	str	r2, [sp, #12]
 8003806:	9a03      	ldr	r2, [sp, #12]
 8003808:	68ba      	ldr	r2, [r7, #8]
 800380a:	ea22 020e 	bic.w	r2, r2, lr
 800380e:	d032      	beq.n	8003876 <HAL_GPIO_Init+0x102>
 8003810:	f506 6680 	add.w	r6, r6, #1024	@ 0x400
 8003814:	42b0      	cmp	r0, r6
 8003816:	f000 80a9 	beq.w	800396c <HAL_GPIO_Init+0x1f8>
 800381a:	4e75      	ldr	r6, [pc, #468]	@ (80039f0 <HAL_GPIO_Init+0x27c>)
 800381c:	42b0      	cmp	r0, r6
 800381e:	f000 80ac 	beq.w	800397a <HAL_GPIO_Init+0x206>
 8003822:	f8df e1d0 	ldr.w	lr, [pc, #464]	@ 80039f4 <HAL_GPIO_Init+0x280>
 8003826:	4570      	cmp	r0, lr
 8003828:	f000 8099 	beq.w	800395e <HAL_GPIO_Init+0x1ea>
 800382c:	f8df e1c8 	ldr.w	lr, [pc, #456]	@ 80039f8 <HAL_GPIO_Init+0x284>
 8003830:	4570      	cmp	r0, lr
 8003832:	f000 80b0 	beq.w	8003996 <HAL_GPIO_Init+0x222>
 8003836:	f8df e1c4 	ldr.w	lr, [pc, #452]	@ 80039fc <HAL_GPIO_Init+0x288>
 800383a:	4570      	cmp	r0, lr
 800383c:	f000 80b2 	beq.w	80039a4 <HAL_GPIO_Init+0x230>
 8003840:	f8df e1bc 	ldr.w	lr, [pc, #444]	@ 8003a00 <HAL_GPIO_Init+0x28c>
 8003844:	4570      	cmp	r0, lr
 8003846:	f000 809f 	beq.w	8003988 <HAL_GPIO_Init+0x214>
 800384a:	f8df e1b8 	ldr.w	lr, [pc, #440]	@ 8003a04 <HAL_GPIO_Init+0x290>
 800384e:	4570      	cmp	r0, lr
 8003850:	f000 80af 	beq.w	80039b2 <HAL_GPIO_Init+0x23e>
 8003854:	f8df e1b0 	ldr.w	lr, [pc, #432]	@ 8003a08 <HAL_GPIO_Init+0x294>
 8003858:	4570      	cmp	r0, lr
 800385a:	f000 80b1 	beq.w	80039c0 <HAL_GPIO_Init+0x24c>
 800385e:	f8df e1ac 	ldr.w	lr, [pc, #428]	@ 8003a0c <HAL_GPIO_Init+0x298>
 8003862:	4570      	cmp	r0, lr
 8003864:	bf0c      	ite	eq
 8003866:	f04f 0e09 	moveq.w	lr, #9
 800386a:	f04f 0e0a 	movne.w	lr, #10
 800386e:	fa0e fc0c 	lsl.w	ip, lr, ip
 8003872:	ea42 020c 	orr.w	r2, r2, ip
 8003876:	60ba      	str	r2, [r7, #8]
 8003878:	f04f 42b0 	mov.w	r2, #1476395008	@ 0x58000000
 800387c:	02ee      	lsls	r6, r5, #11
 800387e:	ea6f 070a 	mvn.w	r7, sl
 8003882:	6812      	ldr	r2, [r2, #0]
 8003884:	f04f 46b0 	mov.w	r6, #1476395008	@ 0x58000000
 8003888:	bf54      	ite	pl
 800388a:	403a      	andpl	r2, r7
 800388c:	ea4a 0202 	orrmi.w	r2, sl, r2
 8003890:	6032      	str	r2, [r6, #0]
 8003892:	6872      	ldr	r2, [r6, #4]
 8003894:	02ae      	lsls	r6, r5, #10
 8003896:	f04f 46b0 	mov.w	r6, #1476395008	@ 0x58000000
 800389a:	bf54      	ite	pl
 800389c:	403a      	andpl	r2, r7
 800389e:	ea4a 0202 	orrmi.w	r2, sl, r2
 80038a2:	6072      	str	r2, [r6, #4]
 80038a4:	f8d6 2084 	ldr.w	r2, [r6, #132]	@ 0x84
 80038a8:	03ae      	lsls	r6, r5, #14
 80038aa:	f04f 46b0 	mov.w	r6, #1476395008	@ 0x58000000
 80038ae:	bf54      	ite	pl
 80038b0:	403a      	andpl	r2, r7
 80038b2:	ea4a 0202 	orrmi.w	r2, sl, r2
 80038b6:	03ed      	lsls	r5, r5, #15
 80038b8:	f04f 45b0 	mov.w	r5, #1476395008	@ 0x58000000
 80038bc:	f8c6 2084 	str.w	r2, [r6, #132]	@ 0x84
 80038c0:	f8d6 2080 	ldr.w	r2, [r6, #128]	@ 0x80
 80038c4:	bf54      	ite	pl
 80038c6:	403a      	andpl	r2, r7
 80038c8:	ea4a 0202 	orrmi.w	r2, sl, r2
 80038cc:	f8c5 2080 	str.w	r2, [r5, #128]	@ 0x80
 80038d0:	3301      	adds	r3, #1
 80038d2:	fa34 f203 	lsrs.w	r2, r4, r3
 80038d6:	f47f af57 	bne.w	8003788 <HAL_GPIO_Init+0x14>
 80038da:	b005      	add	sp, #20
 80038dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80038e0:	f8d0 9008 	ldr.w	r9, [r0, #8]
 80038e4:	f1bc 0f02 	cmp.w	ip, #2
 80038e8:	68ce      	ldr	r6, [r1, #12]
 80038ea:	ea09 0907 	and.w	r9, r9, r7
 80038ee:	fa06 f802 	lsl.w	r8, r6, r2
 80038f2:	688e      	ldr	r6, [r1, #8]
 80038f4:	ea48 0809 	orr.w	r8, r8, r9
 80038f8:	f8c0 8008 	str.w	r8, [r0, #8]
 80038fc:	f3c5 1800 	ubfx	r8, r5, #4, #1
 8003900:	f8d0 9004 	ldr.w	r9, [r0, #4]
 8003904:	fa08 f803 	lsl.w	r8, r8, r3
 8003908:	ea29 0e0e 	bic.w	lr, r9, lr
 800390c:	ea48 0e0e 	orr.w	lr, r8, lr
 8003910:	f8c0 e004 	str.w	lr, [r0, #4]
 8003914:	fa06 fe02 	lsl.w	lr, r6, r2
 8003918:	f8d0 800c 	ldr.w	r8, [r0, #12]
 800391c:	ea08 0807 	and.w	r8, r8, r7
 8003920:	ea4e 0e08 	orr.w	lr, lr, r8
 8003924:	f8c0 e00c 	str.w	lr, [r0, #12]
 8003928:	f47f af46 	bne.w	80037b8 <HAL_GPIO_Init+0x44>
 800392c:	f003 0e07 	and.w	lr, r3, #7
 8003930:	690e      	ldr	r6, [r1, #16]
 8003932:	ea4f 08d3 	mov.w	r8, r3, lsr #3
 8003936:	ea4f 0e8e 	mov.w	lr, lr, lsl #2
 800393a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
 800393e:	fa06 f60e 	lsl.w	r6, r6, lr
 8003942:	f8d8 9020 	ldr.w	r9, [r8, #32]
 8003946:	9601      	str	r6, [sp, #4]
 8003948:	260f      	movs	r6, #15
 800394a:	fa06 fe0e 	lsl.w	lr, r6, lr
 800394e:	9e01      	ldr	r6, [sp, #4]
 8003950:	ea29 090e 	bic.w	r9, r9, lr
 8003954:	ea46 0e09 	orr.w	lr, r6, r9
 8003958:	f8c8 e020 	str.w	lr, [r8, #32]
 800395c:	e72c      	b.n	80037b8 <HAL_GPIO_Init+0x44>
 800395e:	f04f 0e03 	mov.w	lr, #3
 8003962:	fa0e fc0c 	lsl.w	ip, lr, ip
 8003966:	ea42 020c 	orr.w	r2, r2, ip
 800396a:	e784      	b.n	8003876 <HAL_GPIO_Init+0x102>
 800396c:	f04f 0e01 	mov.w	lr, #1
 8003970:	fa0e fc0c 	lsl.w	ip, lr, ip
 8003974:	ea42 020c 	orr.w	r2, r2, ip
 8003978:	e77d      	b.n	8003876 <HAL_GPIO_Init+0x102>
 800397a:	f04f 0e02 	mov.w	lr, #2
 800397e:	fa0e fc0c 	lsl.w	ip, lr, ip
 8003982:	ea42 020c 	orr.w	r2, r2, ip
 8003986:	e776      	b.n	8003876 <HAL_GPIO_Init+0x102>
 8003988:	f04f 0e06 	mov.w	lr, #6
 800398c:	fa0e fc0c 	lsl.w	ip, lr, ip
 8003990:	ea42 020c 	orr.w	r2, r2, ip
 8003994:	e76f      	b.n	8003876 <HAL_GPIO_Init+0x102>
 8003996:	f04f 0e04 	mov.w	lr, #4
 800399a:	fa0e fc0c 	lsl.w	ip, lr, ip
 800399e:	ea42 020c 	orr.w	r2, r2, ip
 80039a2:	e768      	b.n	8003876 <HAL_GPIO_Init+0x102>
 80039a4:	f04f 0e05 	mov.w	lr, #5
 80039a8:	fa0e fc0c 	lsl.w	ip, lr, ip
 80039ac:	ea42 020c 	orr.w	r2, r2, ip
 80039b0:	e761      	b.n	8003876 <HAL_GPIO_Init+0x102>
 80039b2:	f04f 0e07 	mov.w	lr, #7
 80039b6:	fa0e fc0c 	lsl.w	ip, lr, ip
 80039ba:	ea42 020c 	orr.w	r2, r2, ip
 80039be:	e75a      	b.n	8003876 <HAL_GPIO_Init+0x102>
 80039c0:	f04f 0e08 	mov.w	lr, #8
 80039c4:	fa0e fc0c 	lsl.w	ip, lr, ip
 80039c8:	ea42 020c 	orr.w	r2, r2, ip
 80039cc:	e753      	b.n	8003876 <HAL_GPIO_Init+0x102>
 80039ce:	f8d0 800c 	ldr.w	r8, [r0, #12]
 80039d2:	688e      	ldr	r6, [r1, #8]
 80039d4:	ea08 0807 	and.w	r8, r8, r7
 80039d8:	fa06 fe02 	lsl.w	lr, r6, r2
 80039dc:	ea4e 0e08 	orr.w	lr, lr, r8
 80039e0:	f8c0 e00c 	str.w	lr, [r0, #12]
 80039e4:	e6e8      	b.n	80037b8 <HAL_GPIO_Init+0x44>
 80039e6:	bf00      	nop
 80039e8:	58024400 	.word	0x58024400
 80039ec:	58020000 	.word	0x58020000
 80039f0:	58020800 	.word	0x58020800
 80039f4:	58020c00 	.word	0x58020c00
 80039f8:	58021000 	.word	0x58021000
 80039fc:	58021400 	.word	0x58021400
 8003a00:	58021800 	.word	0x58021800
 8003a04:	58021c00 	.word	0x58021c00
 8003a08:	58022000 	.word	0x58022000
 8003a0c:	58022400 	.word	0x58022400

08003a10 <HAL_GPIO_ReadPin>:
 8003a10:	6903      	ldr	r3, [r0, #16]
 8003a12:	4219      	tst	r1, r3
 8003a14:	bf14      	ite	ne
 8003a16:	2001      	movne	r0, #1
 8003a18:	2000      	moveq	r0, #0
 8003a1a:	4770      	bx	lr

08003a1c <HAL_GPIO_WritePin>:
 8003a1c:	b902      	cbnz	r2, 8003a20 <HAL_GPIO_WritePin+0x4>
 8003a1e:	0409      	lsls	r1, r1, #16
 8003a20:	6181      	str	r1, [r0, #24]
 8003a22:	4770      	bx	lr

08003a24 <HAL_GPIO_TogglePin>:
 8003a24:	6943      	ldr	r3, [r0, #20]
 8003a26:	ea01 0203 	and.w	r2, r1, r3
 8003a2a:	ea21 0103 	bic.w	r1, r1, r3
 8003a2e:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
 8003a32:	6181      	str	r1, [r0, #24]
 8003a34:	4770      	bx	lr
 8003a36:	bf00      	nop

08003a38 <DMA_SetConfig>:
 8003a38:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003a3c:	6804      	ldr	r4, [r0, #0]
 8003a3e:	4690      	mov	r8, r2
 8003a40:	4e5c      	ldr	r6, [pc, #368]	@ (8003bb4 <DMA_SetConfig+0x17c>)
 8003a42:	4f5d      	ldr	r7, [pc, #372]	@ (8003bb8 <DMA_SetConfig+0x180>)
 8003a44:	f8df e198 	ldr.w	lr, [pc, #408]	@ 8003be0 <DMA_SetConfig+0x1a8>
 8003a48:	42bc      	cmp	r4, r7
 8003a4a:	bf18      	it	ne
 8003a4c:	42b4      	cmpne	r4, r6
 8003a4e:	f106 0630 	add.w	r6, r6, #48	@ 0x30
 8003a52:	4f5a      	ldr	r7, [pc, #360]	@ (8003bbc <DMA_SetConfig+0x184>)
 8003a54:	bf0c      	ite	eq
 8003a56:	f04f 0c01 	moveq.w	ip, #1
 8003a5a:	f04f 0c00 	movne.w	ip, #0
 8003a5e:	6d85      	ldr	r5, [r0, #88]	@ 0x58
 8003a60:	42b4      	cmp	r4, r6
 8003a62:	bf08      	it	eq
 8003a64:	f04c 0c01 	orreq.w	ip, ip, #1
 8003a68:	3618      	adds	r6, #24
 8003a6a:	42b4      	cmp	r4, r6
 8003a6c:	bf08      	it	eq
 8003a6e:	f04c 0c01 	orreq.w	ip, ip, #1
 8003a72:	3618      	adds	r6, #24
 8003a74:	42b4      	cmp	r4, r6
 8003a76:	bf08      	it	eq
 8003a78:	f04c 0c01 	orreq.w	ip, ip, #1
 8003a7c:	3618      	adds	r6, #24
 8003a7e:	42b4      	cmp	r4, r6
 8003a80:	bf08      	it	eq
 8003a82:	f04c 0c01 	orreq.w	ip, ip, #1
 8003a86:	f506 7656 	add.w	r6, r6, #856	@ 0x358
 8003a8a:	42b4      	cmp	r4, r6
 8003a8c:	bf08      	it	eq
 8003a8e:	f04c 0c01 	orreq.w	ip, ip, #1
 8003a92:	4e4b      	ldr	r6, [pc, #300]	@ (8003bc0 <DMA_SetConfig+0x188>)
 8003a94:	42bc      	cmp	r4, r7
 8003a96:	bf18      	it	ne
 8003a98:	42b4      	cmpne	r4, r6
 8003a9a:	4f4a      	ldr	r7, [pc, #296]	@ (8003bc4 <DMA_SetConfig+0x18c>)
 8003a9c:	bf0c      	ite	eq
 8003a9e:	2601      	moveq	r6, #1
 8003aa0:	2600      	movne	r6, #0
 8003aa2:	42bc      	cmp	r4, r7
 8003aa4:	bf08      	it	eq
 8003aa6:	f04c 0c01 	orreq.w	ip, ip, #1
 8003aaa:	4f47      	ldr	r7, [pc, #284]	@ (8003bc8 <DMA_SetConfig+0x190>)
 8003aac:	42bc      	cmp	r4, r7
 8003aae:	bf08      	it	eq
 8003ab0:	f046 0601 	orreq.w	r6, r6, #1
 8003ab4:	4f45      	ldr	r7, [pc, #276]	@ (8003bcc <DMA_SetConfig+0x194>)
 8003ab6:	42bc      	cmp	r4, r7
 8003ab8:	bf08      	it	eq
 8003aba:	f04c 0c01 	orreq.w	ip, ip, #1
 8003abe:	4f44      	ldr	r7, [pc, #272]	@ (8003bd0 <DMA_SetConfig+0x198>)
 8003ac0:	42bc      	cmp	r4, r7
 8003ac2:	bf08      	it	eq
 8003ac4:	f046 0601 	orreq.w	r6, r6, #1
 8003ac8:	4f42      	ldr	r7, [pc, #264]	@ (8003bd4 <DMA_SetConfig+0x19c>)
 8003aca:	42bc      	cmp	r4, r7
 8003acc:	bf08      	it	eq
 8003ace:	f04c 0c01 	orreq.w	ip, ip, #1
 8003ad2:	f107 57c0 	add.w	r7, r7, #402653184	@ 0x18000000
 8003ad6:	f507 47a0 	add.w	r7, r7, #20480	@ 0x5000
 8003ada:	42bc      	cmp	r4, r7
 8003adc:	bf08      	it	eq
 8003ade:	f046 0601 	orreq.w	r6, r6, #1
 8003ae2:	4f3d      	ldr	r7, [pc, #244]	@ (8003bd8 <DMA_SetConfig+0x1a0>)
 8003ae4:	42bc      	cmp	r4, r7
 8003ae6:	bf08      	it	eq
 8003ae8:	f04c 0c01 	orreq.w	ip, ip, #1
 8003aec:	4f3b      	ldr	r7, [pc, #236]	@ (8003bdc <DMA_SetConfig+0x1a4>)
 8003aee:	42bc      	cmp	r4, r7
 8003af0:	bf08      	it	eq
 8003af2:	f046 0601 	orreq.w	r6, r6, #1
 8003af6:	4574      	cmp	r4, lr
 8003af8:	bf14      	ite	ne
 8003afa:	4667      	movne	r7, ip
 8003afc:	f04c 0701 	orreq.w	r7, ip, #1
 8003b00:	f8df c0e0 	ldr.w	ip, [pc, #224]	@ 8003be4 <DMA_SetConfig+0x1ac>
 8003b04:	f5ae 6e8f 	sub.w	lr, lr, #1144	@ 0x478
 8003b08:	4564      	cmp	r4, ip
 8003b0a:	bf08      	it	eq
 8003b0c:	f046 0601 	orreq.w	r6, r6, #1
 8003b10:	f8df c0d4 	ldr.w	ip, [pc, #212]	@ 8003be8 <DMA_SetConfig+0x1b0>
 8003b14:	4564      	cmp	r4, ip
 8003b16:	bf18      	it	ne
 8003b18:	4574      	cmpne	r4, lr
 8003b1a:	f50c 6c8f 	add.w	ip, ip, #1144	@ 0x478
 8003b1e:	bf0c      	ite	eq
 8003b20:	f04f 0e01 	moveq.w	lr, #1
 8003b24:	f04f 0e00 	movne.w	lr, #0
 8003b28:	4564      	cmp	r4, ip
 8003b2a:	bf08      	it	eq
 8003b2c:	f047 0701 	orreq.w	r7, r7, #1
 8003b30:	f8df c0b8 	ldr.w	ip, [pc, #184]	@ 8003bec <DMA_SetConfig+0x1b4>
 8003b34:	4564      	cmp	r4, ip
 8003b36:	bf08      	it	eq
 8003b38:	f046 0601 	orreq.w	r6, r6, #1
 8003b3c:	f8df c0b0 	ldr.w	ip, [pc, #176]	@ 8003bf0 <DMA_SetConfig+0x1b8>
 8003b40:	4564      	cmp	r4, ip
 8003b42:	bf08      	it	eq
 8003b44:	f047 0701 	orreq.w	r7, r7, #1
 8003b48:	ea5e 0606 	orrs.w	r6, lr, r6
 8003b4c:	d100      	bne.n	8003b50 <DMA_SetConfig+0x118>
 8003b4e:	b1e7      	cbz	r7, 8003b8a <DMA_SetConfig+0x152>
 8003b50:	e9d0 6219 	ldrd	r6, r2, [r0, #100]	@ 0x64
 8003b54:	6072      	str	r2, [r6, #4]
 8003b56:	6ec6      	ldr	r6, [r0, #108]	@ 0x6c
 8003b58:	b116      	cbz	r6, 8003b60 <DMA_SetConfig+0x128>
 8003b5a:	e9d0 621c 	ldrd	r6, r2, [r0, #112]	@ 0x70
 8003b5e:	6072      	str	r2, [r6, #4]
 8003b60:	f1be 0f00 	cmp.w	lr, #0
 8003b64:	d013      	beq.n	8003b8e <DMA_SetConfig+0x156>
 8003b66:	6dc6      	ldr	r6, [r0, #92]	@ 0x5c
 8003b68:	6887      	ldr	r7, [r0, #8]
 8003b6a:	203f      	movs	r0, #63	@ 0x3f
 8003b6c:	f006 061f 	and.w	r6, r6, #31
 8003b70:	2f40      	cmp	r7, #64	@ 0x40
 8003b72:	fa00 f006 	lsl.w	r0, r0, r6
 8003b76:	60a8      	str	r0, [r5, #8]
 8003b78:	6820      	ldr	r0, [r4, #0]
 8003b7a:	f420 2080 	bic.w	r0, r0, #262144	@ 0x40000
 8003b7e:	6020      	str	r0, [r4, #0]
 8003b80:	6063      	str	r3, [r4, #4]
 8003b82:	d011      	beq.n	8003ba8 <DMA_SetConfig+0x170>
 8003b84:	60a1      	str	r1, [r4, #8]
 8003b86:	f8c4 800c 	str.w	r8, [r4, #12]
 8003b8a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003b8e:	2f00      	cmp	r7, #0
 8003b90:	d1e9      	bne.n	8003b66 <DMA_SetConfig+0x12e>
 8003b92:	6dc6      	ldr	r6, [r0, #92]	@ 0x5c
 8003b94:	6887      	ldr	r7, [r0, #8]
 8003b96:	2001      	movs	r0, #1
 8003b98:	f006 061f 	and.w	r6, r6, #31
 8003b9c:	2f40      	cmp	r7, #64	@ 0x40
 8003b9e:	fa00 f006 	lsl.w	r0, r0, r6
 8003ba2:	6068      	str	r0, [r5, #4]
 8003ba4:	6063      	str	r3, [r4, #4]
 8003ba6:	d1ed      	bne.n	8003b84 <DMA_SetConfig+0x14c>
 8003ba8:	f8c4 8008 	str.w	r8, [r4, #8]
 8003bac:	60e1      	str	r1, [r4, #12]
 8003bae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003bb2:	bf00      	nop
 8003bb4:	40020040 	.word	0x40020040
 8003bb8:	40020058 	.word	0x40020058
 8003bbc:	5802541c 	.word	0x5802541c
 8003bc0:	58025408 	.word	0x58025408
 8003bc4:	40020428 	.word	0x40020428
 8003bc8:	58025430 	.word	0x58025430
 8003bcc:	40020440 	.word	0x40020440
 8003bd0:	58025444 	.word	0x58025444
 8003bd4:	40020458 	.word	0x40020458
 8003bd8:	40020470 	.word	0x40020470
 8003bdc:	5802546c 	.word	0x5802546c
 8003be0:	40020488 	.word	0x40020488
 8003be4:	58025480 	.word	0x58025480
 8003be8:	40020028 	.word	0x40020028
 8003bec:	58025494 	.word	0x58025494
 8003bf0:	400204b8 	.word	0x400204b8

08003bf4 <DMA_CalcBaseAndBitshift>:
 8003bf4:	4936      	ldr	r1, [pc, #216]	@ (8003cd0 <DMA_CalcBaseAndBitshift+0xdc>)
 8003bf6:	4602      	mov	r2, r0
 8003bf8:	6803      	ldr	r3, [r0, #0]
 8003bfa:	428b      	cmp	r3, r1
 8003bfc:	d033      	beq.n	8003c66 <DMA_CalcBaseAndBitshift+0x72>
 8003bfe:	3118      	adds	r1, #24
 8003c00:	1a59      	subs	r1, r3, r1
 8003c02:	fab1 f181 	clz	r1, r1
 8003c06:	0949      	lsrs	r1, r1, #5
 8003c08:	bb69      	cbnz	r1, 8003c66 <DMA_CalcBaseAndBitshift+0x72>
 8003c0a:	4832      	ldr	r0, [pc, #200]	@ (8003cd4 <DMA_CalcBaseAndBitshift+0xe0>)
 8003c0c:	4283      	cmp	r3, r0
 8003c0e:	d03e      	beq.n	8003c8e <DMA_CalcBaseAndBitshift+0x9a>
 8003c10:	3018      	adds	r0, #24
 8003c12:	4283      	cmp	r3, r0
 8003c14:	d03e      	beq.n	8003c94 <DMA_CalcBaseAndBitshift+0xa0>
 8003c16:	3018      	adds	r0, #24
 8003c18:	4283      	cmp	r3, r0
 8003c1a:	d034      	beq.n	8003c86 <DMA_CalcBaseAndBitshift+0x92>
 8003c1c:	3018      	adds	r0, #24
 8003c1e:	4283      	cmp	r3, r0
 8003c20:	d03b      	beq.n	8003c9a <DMA_CalcBaseAndBitshift+0xa6>
 8003c22:	3018      	adds	r0, #24
 8003c24:	4283      	cmp	r3, r0
 8003c26:	d03e      	beq.n	8003ca6 <DMA_CalcBaseAndBitshift+0xb2>
 8003c28:	3018      	adds	r0, #24
 8003c2a:	4283      	cmp	r3, r0
 8003c2c:	d02a      	beq.n	8003c84 <DMA_CalcBaseAndBitshift+0x90>
 8003c2e:	f500 7056 	add.w	r0, r0, #856	@ 0x358
 8003c32:	4283      	cmp	r3, r0
 8003c34:	d035      	beq.n	8003ca2 <DMA_CalcBaseAndBitshift+0xae>
 8003c36:	4928      	ldr	r1, [pc, #160]	@ (8003cd8 <DMA_CalcBaseAndBitshift+0xe4>)
 8003c38:	428b      	cmp	r3, r1
 8003c3a:	d031      	beq.n	8003ca0 <DMA_CalcBaseAndBitshift+0xac>
 8003c3c:	3118      	adds	r1, #24
 8003c3e:	428b      	cmp	r3, r1
 8003c40:	d034      	beq.n	8003cac <DMA_CalcBaseAndBitshift+0xb8>
 8003c42:	3118      	adds	r1, #24
 8003c44:	428b      	cmp	r3, r1
 8003c46:	d034      	beq.n	8003cb2 <DMA_CalcBaseAndBitshift+0xbe>
 8003c48:	3118      	adds	r1, #24
 8003c4a:	428b      	cmp	r3, r1
 8003c4c:	d034      	beq.n	8003cb8 <DMA_CalcBaseAndBitshift+0xc4>
 8003c4e:	3118      	adds	r1, #24
 8003c50:	428b      	cmp	r3, r1
 8003c52:	d034      	beq.n	8003cbe <DMA_CalcBaseAndBitshift+0xca>
 8003c54:	3118      	adds	r1, #24
 8003c56:	428b      	cmp	r3, r1
 8003c58:	d034      	beq.n	8003cc4 <DMA_CalcBaseAndBitshift+0xd0>
 8003c5a:	3118      	adds	r1, #24
 8003c5c:	428b      	cmp	r3, r1
 8003c5e:	d034      	beq.n	8003cca <DMA_CalcBaseAndBitshift+0xd6>
 8003c60:	f023 00ff 	bic.w	r0, r3, #255	@ 0xff
 8003c64:	e011      	b.n	8003c8a <DMA_CalcBaseAndBitshift+0x96>
 8003c66:	b2db      	uxtb	r3, r3
 8003c68:	491c      	ldr	r1, [pc, #112]	@ (8003cdc <DMA_CalcBaseAndBitshift+0xe8>)
 8003c6a:	481d      	ldr	r0, [pc, #116]	@ (8003ce0 <DMA_CalcBaseAndBitshift+0xec>)
 8003c6c:	3b10      	subs	r3, #16
 8003c6e:	fba1 1303 	umull	r1, r3, r1, r3
 8003c72:	b410      	push	{r4}
 8003c74:	091b      	lsrs	r3, r3, #4
 8003c76:	4c1b      	ldr	r4, [pc, #108]	@ (8003ce4 <DMA_CalcBaseAndBitshift+0xf0>)
 8003c78:	5ce1      	ldrb	r1, [r4, r3]
 8003c7a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8003c7e:	e9c2 0116 	strd	r0, r1, [r2, #88]	@ 0x58
 8003c82:	4770      	bx	lr
 8003c84:	2116      	movs	r1, #22
 8003c86:	4818      	ldr	r0, [pc, #96]	@ (8003ce8 <DMA_CalcBaseAndBitshift+0xf4>)
 8003c88:	65d1      	str	r1, [r2, #92]	@ 0x5c
 8003c8a:	6590      	str	r0, [r2, #88]	@ 0x58
 8003c8c:	4770      	bx	lr
 8003c8e:	2110      	movs	r1, #16
 8003c90:	4813      	ldr	r0, [pc, #76]	@ (8003ce0 <DMA_CalcBaseAndBitshift+0xec>)
 8003c92:	e7f9      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003c94:	2116      	movs	r1, #22
 8003c96:	4812      	ldr	r0, [pc, #72]	@ (8003ce0 <DMA_CalcBaseAndBitshift+0xec>)
 8003c98:	e7f6      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003c9a:	2106      	movs	r1, #6
 8003c9c:	4812      	ldr	r0, [pc, #72]	@ (8003ce8 <DMA_CalcBaseAndBitshift+0xf4>)
 8003c9e:	e7f3      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003ca0:	2106      	movs	r1, #6
 8003ca2:	4812      	ldr	r0, [pc, #72]	@ (8003cec <DMA_CalcBaseAndBitshift+0xf8>)
 8003ca4:	e7f0      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003ca6:	2110      	movs	r1, #16
 8003ca8:	480f      	ldr	r0, [pc, #60]	@ (8003ce8 <DMA_CalcBaseAndBitshift+0xf4>)
 8003caa:	e7ed      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cac:	2110      	movs	r1, #16
 8003cae:	480f      	ldr	r0, [pc, #60]	@ (8003cec <DMA_CalcBaseAndBitshift+0xf8>)
 8003cb0:	e7ea      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cb2:	2116      	movs	r1, #22
 8003cb4:	480d      	ldr	r0, [pc, #52]	@ (8003cec <DMA_CalcBaseAndBitshift+0xf8>)
 8003cb6:	e7e7      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cb8:	2100      	movs	r1, #0
 8003cba:	480d      	ldr	r0, [pc, #52]	@ (8003cf0 <DMA_CalcBaseAndBitshift+0xfc>)
 8003cbc:	e7e4      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cbe:	2106      	movs	r1, #6
 8003cc0:	480b      	ldr	r0, [pc, #44]	@ (8003cf0 <DMA_CalcBaseAndBitshift+0xfc>)
 8003cc2:	e7e1      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cc4:	2110      	movs	r1, #16
 8003cc6:	480a      	ldr	r0, [pc, #40]	@ (8003cf0 <DMA_CalcBaseAndBitshift+0xfc>)
 8003cc8:	e7de      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cca:	2116      	movs	r1, #22
 8003ccc:	4808      	ldr	r0, [pc, #32]	@ (8003cf0 <DMA_CalcBaseAndBitshift+0xfc>)
 8003cce:	e7db      	b.n	8003c88 <DMA_CalcBaseAndBitshift+0x94>
 8003cd0:	40020010 	.word	0x40020010
 8003cd4:	40020040 	.word	0x40020040
 8003cd8:	40020428 	.word	0x40020428
 8003cdc:	aaaaaaab 	.word	0xaaaaaaab
 8003ce0:	40020000 	.word	0x40020000
 8003ce4:	0800d63c 	.word	0x0800d63c
 8003ce8:	40020004 	.word	0x40020004
 8003cec:	40020400 	.word	0x40020400
 8003cf0:	40020404 	.word	0x40020404

08003cf4 <DMA_CalcDMAMUXChannelBaseAndMask>:
 8003cf4:	6802      	ldr	r2, [r0, #0]
 8003cf6:	4b28      	ldr	r3, [pc, #160]	@ (8003d98 <DMA_CalcDMAMUXChannelBaseAndMask+0xa4>)
 8003cf8:	4928      	ldr	r1, [pc, #160]	@ (8003d9c <DMA_CalcDMAMUXChannelBaseAndMask+0xa8>)
 8003cfa:	b430      	push	{r4, r5}
 8003cfc:	4d28      	ldr	r5, [pc, #160]	@ (8003da0 <DMA_CalcDMAMUXChannelBaseAndMask+0xac>)
 8003cfe:	4c29      	ldr	r4, [pc, #164]	@ (8003da4 <DMA_CalcDMAMUXChannelBaseAndMask+0xb0>)
 8003d00:	42aa      	cmp	r2, r5
 8003d02:	bf18      	it	ne
 8003d04:	429a      	cmpne	r2, r3
 8003d06:	bf0c      	ite	eq
 8003d08:	2301      	moveq	r3, #1
 8003d0a:	2300      	movne	r3, #0
 8003d0c:	428a      	cmp	r2, r1
 8003d0e:	bf08      	it	eq
 8003d10:	f043 0301 	orreq.w	r3, r3, #1
 8003d14:	3128      	adds	r1, #40	@ 0x28
 8003d16:	42a2      	cmp	r2, r4
 8003d18:	bf08      	it	eq
 8003d1a:	f043 0301 	orreq.w	r3, r3, #1
 8003d1e:	3428      	adds	r4, #40	@ 0x28
 8003d20:	428a      	cmp	r2, r1
 8003d22:	bf08      	it	eq
 8003d24:	f043 0301 	orreq.w	r3, r3, #1
 8003d28:	3128      	adds	r1, #40	@ 0x28
 8003d2a:	42a2      	cmp	r2, r4
 8003d2c:	bf08      	it	eq
 8003d2e:	f043 0301 	orreq.w	r3, r3, #1
 8003d32:	428a      	cmp	r2, r1
 8003d34:	bf08      	it	eq
 8003d36:	f043 0301 	orreq.w	r3, r3, #1
 8003d3a:	b2d1      	uxtb	r1, r2
 8003d3c:	b913      	cbnz	r3, 8003d44 <DMA_CalcDMAMUXChannelBaseAndMask+0x50>
 8003d3e:	4b1a      	ldr	r3, [pc, #104]	@ (8003da8 <DMA_CalcDMAMUXChannelBaseAndMask+0xb4>)
 8003d40:	429a      	cmp	r2, r3
 8003d42:	d111      	bne.n	8003d68 <DMA_CalcDMAMUXChannelBaseAndMask+0x74>
 8003d44:	f1a1 0308 	sub.w	r3, r1, #8
 8003d48:	4c18      	ldr	r4, [pc, #96]	@ (8003dac <DMA_CalcDMAMUXChannelBaseAndMask+0xb8>)
 8003d4a:	4a19      	ldr	r2, [pc, #100]	@ (8003db0 <DMA_CalcDMAMUXChannelBaseAndMask+0xbc>)
 8003d4c:	2101      	movs	r1, #1
 8003d4e:	fba4 4303 	umull	r4, r3, r4, r3
 8003d52:	4c18      	ldr	r4, [pc, #96]	@ (8003db4 <DMA_CalcDMAMUXChannelBaseAndMask+0xc0>)
 8003d54:	091d      	lsrs	r5, r3, #4
 8003d56:	eb02 1313 	add.w	r3, r2, r3, lsr #4
 8003d5a:	40a9      	lsls	r1, r5
 8003d5c:	009b      	lsls	r3, r3, #2
 8003d5e:	6681      	str	r1, [r0, #104]	@ 0x68
 8003d60:	e9c0 3418 	strd	r3, r4, [r0, #96]	@ 0x60
 8003d64:	bc30      	pop	{r4, r5}
 8003d66:	4770      	bx	lr
 8003d68:	f1a1 0310 	sub.w	r3, r1, #16
 8003d6c:	4912      	ldr	r1, [pc, #72]	@ (8003db8 <DMA_CalcDMAMUXChannelBaseAndMask+0xc4>)
 8003d6e:	4c13      	ldr	r4, [pc, #76]	@ (8003dbc <DMA_CalcDMAMUXChannelBaseAndMask+0xc8>)
 8003d70:	4411      	add	r1, r2
 8003d72:	fba4 4303 	umull	r4, r3, r4, r3
 8003d76:	29a8      	cmp	r1, #168	@ 0xa8
 8003d78:	ea4f 1313 	mov.w	r3, r3, lsr #4
 8003d7c:	d908      	bls.n	8003d90 <DMA_CalcDMAMUXChannelBaseAndMask+0x9c>
 8003d7e:	f003 041f 	and.w	r4, r3, #31
 8003d82:	4a0f      	ldr	r2, [pc, #60]	@ (8003dc0 <DMA_CalcDMAMUXChannelBaseAndMask+0xcc>)
 8003d84:	2101      	movs	r1, #1
 8003d86:	441a      	add	r2, r3
 8003d88:	40a1      	lsls	r1, r4
 8003d8a:	4c0e      	ldr	r4, [pc, #56]	@ (8003dc4 <DMA_CalcDMAMUXChannelBaseAndMask+0xd0>)
 8003d8c:	0093      	lsls	r3, r2, #2
 8003d8e:	e7e6      	b.n	8003d5e <DMA_CalcDMAMUXChannelBaseAndMask+0x6a>
 8003d90:	3308      	adds	r3, #8
 8003d92:	461c      	mov	r4, r3
 8003d94:	e7f5      	b.n	8003d82 <DMA_CalcDMAMUXChannelBaseAndMask+0x8e>
 8003d96:	bf00      	nop
 8003d98:	58025408 	.word	0x58025408
 8003d9c:	58025430 	.word	0x58025430
 8003da0:	5802541c 	.word	0x5802541c
 8003da4:	58025444 	.word	0x58025444
 8003da8:	58025494 	.word	0x58025494
 8003dac:	cccccccd 	.word	0xcccccccd
 8003db0:	16009600 	.word	0x16009600
 8003db4:	58025880 	.word	0x58025880
 8003db8:	bffdfbf0 	.word	0xbffdfbf0
 8003dbc:	aaaaaaab 	.word	0xaaaaaaab
 8003dc0:	10008200 	.word	0x10008200
 8003dc4:	40020880 	.word	0x40020880

08003dc8 <DMA_CalcDMAMUXRequestGenBaseAndMask>:
 8003dc8:	f890 c004 	ldrb.w	ip, [r0, #4]
 8003dcc:	f10c 31ff 	add.w	r1, ip, #4294967295
 8003dd0:	2907      	cmp	r1, #7
 8003dd2:	d833      	bhi.n	8003e3c <DMA_CalcDMAMUXRequestGenBaseAndMask+0x74>
 8003dd4:	6802      	ldr	r2, [r0, #0]
 8003dd6:	4b1c      	ldr	r3, [pc, #112]	@ (8003e48 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x80>)
 8003dd8:	b410      	push	{r4}
 8003dda:	4c1c      	ldr	r4, [pc, #112]	@ (8003e4c <DMA_CalcDMAMUXRequestGenBaseAndMask+0x84>)
 8003ddc:	42a2      	cmp	r2, r4
 8003dde:	bf18      	it	ne
 8003de0:	429a      	cmpne	r2, r3
 8003de2:	f104 0414 	add.w	r4, r4, #20
 8003de6:	bf0c      	ite	eq
 8003de8:	2301      	moveq	r3, #1
 8003dea:	2300      	movne	r3, #0
 8003dec:	42a2      	cmp	r2, r4
 8003dee:	bf08      	it	eq
 8003df0:	f043 0301 	orreq.w	r3, r3, #1
 8003df4:	3414      	adds	r4, #20
 8003df6:	42a2      	cmp	r2, r4
 8003df8:	bf08      	it	eq
 8003dfa:	f043 0301 	orreq.w	r3, r3, #1
 8003dfe:	3414      	adds	r4, #20
 8003e00:	42a2      	cmp	r2, r4
 8003e02:	bf08      	it	eq
 8003e04:	f043 0301 	orreq.w	r3, r3, #1
 8003e08:	3414      	adds	r4, #20
 8003e0a:	42a2      	cmp	r2, r4
 8003e0c:	bf08      	it	eq
 8003e0e:	f043 0301 	orreq.w	r3, r3, #1
 8003e12:	3414      	adds	r4, #20
 8003e14:	42a2      	cmp	r2, r4
 8003e16:	bf08      	it	eq
 8003e18:	f043 0301 	orreq.w	r3, r3, #1
 8003e1c:	b913      	cbnz	r3, 8003e24 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x5c>
 8003e1e:	4b0c      	ldr	r3, [pc, #48]	@ (8003e50 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x88>)
 8003e20:	429a      	cmp	r2, r3
 8003e22:	d10c      	bne.n	8003e3e <DMA_CalcDMAMUXRequestGenBaseAndMask+0x76>
 8003e24:	4b0b      	ldr	r3, [pc, #44]	@ (8003e54 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x8c>)
 8003e26:	4c0c      	ldr	r4, [pc, #48]	@ (8003e58 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x90>)
 8003e28:	4463      	add	r3, ip
 8003e2a:	009b      	lsls	r3, r3, #2
 8003e2c:	2201      	movs	r2, #1
 8003e2e:	408a      	lsls	r2, r1
 8003e30:	e9c0 341b 	strd	r3, r4, [r0, #108]	@ 0x6c
 8003e34:	6742      	str	r2, [r0, #116]	@ 0x74
 8003e36:	f85d 4b04 	ldr.w	r4, [sp], #4
 8003e3a:	4770      	bx	lr
 8003e3c:	4770      	bx	lr
 8003e3e:	4b07      	ldr	r3, [pc, #28]	@ (8003e5c <DMA_CalcDMAMUXRequestGenBaseAndMask+0x94>)
 8003e40:	4c07      	ldr	r4, [pc, #28]	@ (8003e60 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x98>)
 8003e42:	4463      	add	r3, ip
 8003e44:	009b      	lsls	r3, r3, #2
 8003e46:	e7f1      	b.n	8003e2c <DMA_CalcDMAMUXRequestGenBaseAndMask+0x64>
 8003e48:	58025408 	.word	0x58025408
 8003e4c:	5802541c 	.word	0x5802541c
 8003e50:	58025494 	.word	0x58025494
 8003e54:	1600963f 	.word	0x1600963f
 8003e58:	58025940 	.word	0x58025940
 8003e5c:	1000823f 	.word	0x1000823f
 8003e60:	40020940 	.word	0x40020940

08003e64 <HAL_DMA_Init>:
 8003e64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003e66:	4606      	mov	r6, r0
 8003e68:	f001 f9ba 	bl	80051e0 <HAL_GetTick>
 8003e6c:	2e00      	cmp	r6, #0
 8003e6e:	f000 8169 	beq.w	8004144 <HAL_DMA_Init+0x2e0>
 8003e72:	6834      	ldr	r4, [r6, #0]
 8003e74:	4605      	mov	r5, r0
 8003e76:	4b94      	ldr	r3, [pc, #592]	@ (80040c8 <HAL_DMA_Init+0x264>)
 8003e78:	4a94      	ldr	r2, [pc, #592]	@ (80040cc <HAL_DMA_Init+0x268>)
 8003e7a:	4294      	cmp	r4, r2
 8003e7c:	bf18      	it	ne
 8003e7e:	429c      	cmpne	r4, r3
 8003e80:	f102 0218 	add.w	r2, r2, #24
 8003e84:	bf0c      	ite	eq
 8003e86:	2301      	moveq	r3, #1
 8003e88:	2300      	movne	r3, #0
 8003e8a:	4294      	cmp	r4, r2
 8003e8c:	bf08      	it	eq
 8003e8e:	f043 0301 	orreq.w	r3, r3, #1
 8003e92:	3218      	adds	r2, #24
 8003e94:	4294      	cmp	r4, r2
 8003e96:	bf08      	it	eq
 8003e98:	f043 0301 	orreq.w	r3, r3, #1
 8003e9c:	3218      	adds	r2, #24
 8003e9e:	4294      	cmp	r4, r2
 8003ea0:	bf08      	it	eq
 8003ea2:	f043 0301 	orreq.w	r3, r3, #1
 8003ea6:	3218      	adds	r2, #24
 8003ea8:	4294      	cmp	r4, r2
 8003eaa:	bf08      	it	eq
 8003eac:	f043 0301 	orreq.w	r3, r3, #1
 8003eb0:	3218      	adds	r2, #24
 8003eb2:	4294      	cmp	r4, r2
 8003eb4:	bf08      	it	eq
 8003eb6:	f043 0301 	orreq.w	r3, r3, #1
 8003eba:	3218      	adds	r2, #24
 8003ebc:	4294      	cmp	r4, r2
 8003ebe:	bf08      	it	eq
 8003ec0:	f043 0301 	orreq.w	r3, r3, #1
 8003ec4:	f502 7256 	add.w	r2, r2, #856	@ 0x358
 8003ec8:	4294      	cmp	r4, r2
 8003eca:	bf08      	it	eq
 8003ecc:	f043 0301 	orreq.w	r3, r3, #1
 8003ed0:	3218      	adds	r2, #24
 8003ed2:	4294      	cmp	r4, r2
 8003ed4:	bf08      	it	eq
 8003ed6:	f043 0301 	orreq.w	r3, r3, #1
 8003eda:	3218      	adds	r2, #24
 8003edc:	4294      	cmp	r4, r2
 8003ede:	bf08      	it	eq
 8003ee0:	f043 0301 	orreq.w	r3, r3, #1
 8003ee4:	3218      	adds	r2, #24
 8003ee6:	4294      	cmp	r4, r2
 8003ee8:	bf08      	it	eq
 8003eea:	f043 0301 	orreq.w	r3, r3, #1
 8003eee:	3218      	adds	r2, #24
 8003ef0:	4294      	cmp	r4, r2
 8003ef2:	bf08      	it	eq
 8003ef4:	f043 0301 	orreq.w	r3, r3, #1
 8003ef8:	3218      	adds	r2, #24
 8003efa:	4294      	cmp	r4, r2
 8003efc:	bf08      	it	eq
 8003efe:	f043 0301 	orreq.w	r3, r3, #1
 8003f02:	3218      	adds	r2, #24
 8003f04:	4294      	cmp	r4, r2
 8003f06:	bf08      	it	eq
 8003f08:	f043 0301 	orreq.w	r3, r3, #1
 8003f0c:	b91b      	cbnz	r3, 8003f16 <HAL_DMA_Init+0xb2>
 8003f0e:	4b70      	ldr	r3, [pc, #448]	@ (80040d0 <HAL_DMA_Init+0x26c>)
 8003f10:	429c      	cmp	r4, r3
 8003f12:	f040 815e 	bne.w	80041d2 <HAL_DMA_Init+0x36e>
 8003f16:	2300      	movs	r3, #0
 8003f18:	2202      	movs	r2, #2
 8003f1a:	f886 3034 	strb.w	r3, [r6, #52]	@ 0x34
 8003f1e:	f886 2035 	strb.w	r2, [r6, #53]	@ 0x35
 8003f22:	6823      	ldr	r3, [r4, #0]
 8003f24:	f023 0301 	bic.w	r3, r3, #1
 8003f28:	6023      	str	r3, [r4, #0]
 8003f2a:	e006      	b.n	8003f3a <HAL_DMA_Init+0xd6>
 8003f2c:	f001 f958 	bl	80051e0 <HAL_GetTick>
 8003f30:	1b43      	subs	r3, r0, r5
 8003f32:	2b05      	cmp	r3, #5
 8003f34:	f200 8108 	bhi.w	8004148 <HAL_DMA_Init+0x2e4>
 8003f38:	6834      	ldr	r4, [r6, #0]
 8003f3a:	6823      	ldr	r3, [r4, #0]
 8003f3c:	07df      	lsls	r7, r3, #31
 8003f3e:	d4f5      	bmi.n	8003f2c <HAL_DMA_Init+0xc8>
 8003f40:	e9d6 3002 	ldrd	r3, r0, [r6, #8]
 8003f44:	6931      	ldr	r1, [r6, #16]
 8003f46:	4303      	orrs	r3, r0
 8003f48:	69b2      	ldr	r2, [r6, #24]
 8003f4a:	6820      	ldr	r0, [r4, #0]
 8003f4c:	430b      	orrs	r3, r1
 8003f4e:	6971      	ldr	r1, [r6, #20]
 8003f50:	430b      	orrs	r3, r1
 8003f52:	69f1      	ldr	r1, [r6, #28]
 8003f54:	4313      	orrs	r3, r2
 8003f56:	430b      	orrs	r3, r1
 8003f58:	495e      	ldr	r1, [pc, #376]	@ (80040d4 <HAL_DMA_Init+0x270>)
 8003f5a:	4001      	ands	r1, r0
 8003f5c:	6a30      	ldr	r0, [r6, #32]
 8003f5e:	4303      	orrs	r3, r0
 8003f60:	485d      	ldr	r0, [pc, #372]	@ (80040d8 <HAL_DMA_Init+0x274>)
 8003f62:	430b      	orrs	r3, r1
 8003f64:	6a71      	ldr	r1, [r6, #36]	@ 0x24
 8003f66:	2904      	cmp	r1, #4
 8003f68:	f000 8104 	beq.w	8004174 <HAL_DMA_Init+0x310>
 8003f6c:	6800      	ldr	r0, [r0, #0]
 8003f6e:	f36f 000f 	bfc	r0, #0, #16
 8003f72:	f1b0 5f00 	cmp.w	r0, #536870912	@ 0x20000000
 8003f76:	f080 80b9 	bcs.w	80040ec <HAL_DMA_Init+0x288>
 8003f7a:	6023      	str	r3, [r4, #0]
 8003f7c:	6963      	ldr	r3, [r4, #20]
 8003f7e:	f023 0307 	bic.w	r3, r3, #7
 8003f82:	430b      	orrs	r3, r1
 8003f84:	6163      	str	r3, [r4, #20]
 8003f86:	4630      	mov	r0, r6
 8003f88:	f7ff fe34 	bl	8003bf4 <DMA_CalcBaseAndBitshift>
 8003f8c:	6df2      	ldr	r2, [r6, #92]	@ 0x5c
 8003f8e:	233f      	movs	r3, #63	@ 0x3f
 8003f90:	494e      	ldr	r1, [pc, #312]	@ (80040cc <HAL_DMA_Init+0x268>)
 8003f92:	f002 021f 	and.w	r2, r2, #31
 8003f96:	fa03 f202 	lsl.w	r2, r3, r2
 8003f9a:	4b4b      	ldr	r3, [pc, #300]	@ (80040c8 <HAL_DMA_Init+0x264>)
 8003f9c:	428c      	cmp	r4, r1
 8003f9e:	bf18      	it	ne
 8003fa0:	429c      	cmpne	r4, r3
 8003fa2:	6082      	str	r2, [r0, #8]
 8003fa4:	4a4d      	ldr	r2, [pc, #308]	@ (80040dc <HAL_DMA_Init+0x278>)
 8003fa6:	f101 0130 	add.w	r1, r1, #48	@ 0x30
 8003faa:	bf0c      	ite	eq
 8003fac:	2301      	moveq	r3, #1
 8003fae:	2300      	movne	r3, #0
 8003fb0:	4294      	cmp	r4, r2
 8003fb2:	bf08      	it	eq
 8003fb4:	f043 0301 	orreq.w	r3, r3, #1
 8003fb8:	3230      	adds	r2, #48	@ 0x30
 8003fba:	428c      	cmp	r4, r1
 8003fbc:	bf08      	it	eq
 8003fbe:	f043 0301 	orreq.w	r3, r3, #1
 8003fc2:	3130      	adds	r1, #48	@ 0x30
 8003fc4:	4294      	cmp	r4, r2
 8003fc6:	bf08      	it	eq
 8003fc8:	f043 0301 	orreq.w	r3, r3, #1
 8003fcc:	3230      	adds	r2, #48	@ 0x30
 8003fce:	428c      	cmp	r4, r1
 8003fd0:	bf08      	it	eq
 8003fd2:	f043 0301 	orreq.w	r3, r3, #1
 8003fd6:	3130      	adds	r1, #48	@ 0x30
 8003fd8:	4294      	cmp	r4, r2
 8003fda:	bf08      	it	eq
 8003fdc:	f043 0301 	orreq.w	r3, r3, #1
 8003fe0:	f502 725c 	add.w	r2, r2, #880	@ 0x370
 8003fe4:	428c      	cmp	r4, r1
 8003fe6:	bf08      	it	eq
 8003fe8:	f043 0301 	orreq.w	r3, r3, #1
 8003fec:	f501 715c 	add.w	r1, r1, #880	@ 0x370
 8003ff0:	4294      	cmp	r4, r2
 8003ff2:	bf08      	it	eq
 8003ff4:	f043 0301 	orreq.w	r3, r3, #1
 8003ff8:	3230      	adds	r2, #48	@ 0x30
 8003ffa:	428c      	cmp	r4, r1
 8003ffc:	bf08      	it	eq
 8003ffe:	f043 0301 	orreq.w	r3, r3, #1
 8004002:	3130      	adds	r1, #48	@ 0x30
 8004004:	4294      	cmp	r4, r2
 8004006:	bf08      	it	eq
 8004008:	f043 0301 	orreq.w	r3, r3, #1
 800400c:	3230      	adds	r2, #48	@ 0x30
 800400e:	428c      	cmp	r4, r1
 8004010:	bf08      	it	eq
 8004012:	f043 0301 	orreq.w	r3, r3, #1
 8004016:	3130      	adds	r1, #48	@ 0x30
 8004018:	4294      	cmp	r4, r2
 800401a:	bf08      	it	eq
 800401c:	f043 0301 	orreq.w	r3, r3, #1
 8004020:	3230      	adds	r2, #48	@ 0x30
 8004022:	428c      	cmp	r4, r1
 8004024:	bf08      	it	eq
 8004026:	f043 0301 	orreq.w	r3, r3, #1
 800402a:	3130      	adds	r1, #48	@ 0x30
 800402c:	4294      	cmp	r4, r2
 800402e:	bf08      	it	eq
 8004030:	f043 0301 	orreq.w	r3, r3, #1
 8004034:	4a2a      	ldr	r2, [pc, #168]	@ (80040e0 <HAL_DMA_Init+0x27c>)
 8004036:	428c      	cmp	r4, r1
 8004038:	bf08      	it	eq
 800403a:	f043 0301 	orreq.w	r3, r3, #1
 800403e:	4929      	ldr	r1, [pc, #164]	@ (80040e4 <HAL_DMA_Init+0x280>)
 8004040:	4294      	cmp	r4, r2
 8004042:	bf08      	it	eq
 8004044:	f043 0301 	orreq.w	r3, r3, #1
 8004048:	3228      	adds	r2, #40	@ 0x28
 800404a:	428c      	cmp	r4, r1
 800404c:	bf08      	it	eq
 800404e:	f043 0301 	orreq.w	r3, r3, #1
 8004052:	3128      	adds	r1, #40	@ 0x28
 8004054:	4294      	cmp	r4, r2
 8004056:	bf08      	it	eq
 8004058:	f043 0301 	orreq.w	r3, r3, #1
 800405c:	3228      	adds	r2, #40	@ 0x28
 800405e:	428c      	cmp	r4, r1
 8004060:	bf08      	it	eq
 8004062:	f043 0301 	orreq.w	r3, r3, #1
 8004066:	3128      	adds	r1, #40	@ 0x28
 8004068:	4294      	cmp	r4, r2
 800406a:	bf08      	it	eq
 800406c:	f043 0301 	orreq.w	r3, r3, #1
 8004070:	3228      	adds	r2, #40	@ 0x28
 8004072:	428c      	cmp	r4, r1
 8004074:	bf08      	it	eq
 8004076:	f043 0301 	orreq.w	r3, r3, #1
 800407a:	4294      	cmp	r4, r2
 800407c:	bf08      	it	eq
 800407e:	f043 0301 	orreq.w	r3, r3, #1
 8004082:	b913      	cbnz	r3, 800408a <HAL_DMA_Init+0x226>
 8004084:	4b18      	ldr	r3, [pc, #96]	@ (80040e8 <HAL_DMA_Init+0x284>)
 8004086:	429c      	cmp	r4, r3
 8004088:	d117      	bne.n	80040ba <HAL_DMA_Init+0x256>
 800408a:	4630      	mov	r0, r6
 800408c:	f7ff fe32 	bl	8003cf4 <DMA_CalcDMAMUXChannelBaseAndMask>
 8004090:	68b3      	ldr	r3, [r6, #8]
 8004092:	2b80      	cmp	r3, #128	@ 0x80
 8004094:	d062      	beq.n	800415c <HAL_DMA_Init+0x2f8>
 8004096:	6873      	ldr	r3, [r6, #4]
 8004098:	6e32      	ldr	r2, [r6, #96]	@ 0x60
 800409a:	b2d9      	uxtb	r1, r3
 800409c:	3b01      	subs	r3, #1
 800409e:	6011      	str	r1, [r2, #0]
 80040a0:	2b07      	cmp	r3, #7
 80040a2:	e9d6 2119 	ldrd	r2, r1, [r6, #100]	@ 0x64
 80040a6:	6051      	str	r1, [r2, #4]
 80040a8:	d85f      	bhi.n	800416a <HAL_DMA_Init+0x306>
 80040aa:	f7ff fe8d 	bl	8003dc8 <DMA_CalcDMAMUXRequestGenBaseAndMask>
 80040ae:	6f72      	ldr	r2, [r6, #116]	@ 0x74
 80040b0:	2000      	movs	r0, #0
 80040b2:	e9d6 131b 	ldrd	r1, r3, [r6, #108]	@ 0x6c
 80040b6:	6008      	str	r0, [r1, #0]
 80040b8:	605a      	str	r2, [r3, #4]
 80040ba:	2000      	movs	r0, #0
 80040bc:	2301      	movs	r3, #1
 80040be:	6570      	str	r0, [r6, #84]	@ 0x54
 80040c0:	f886 3035 	strb.w	r3, [r6, #53]	@ 0x35
 80040c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80040c6:	bf00      	nop
 80040c8:	40020010 	.word	0x40020010
 80040cc:	40020028 	.word	0x40020028
 80040d0:	400204b8 	.word	0x400204b8
 80040d4:	fe10803f 	.word	0xfe10803f
 80040d8:	5c001000 	.word	0x5c001000
 80040dc:	40020040 	.word	0x40020040
 80040e0:	58025408 	.word	0x58025408
 80040e4:	5802541c 	.word	0x5802541c
 80040e8:	58025494 	.word	0x58025494
 80040ec:	6870      	ldr	r0, [r6, #4]
 80040ee:	282e      	cmp	r0, #46	@ 0x2e
 80040f0:	d931      	bls.n	8004156 <HAL_DMA_Init+0x2f2>
 80040f2:	383f      	subs	r0, #63	@ 0x3f
 80040f4:	2813      	cmp	r0, #19
 80040f6:	d806      	bhi.n	8004106 <HAL_DMA_Init+0x2a2>
 80040f8:	4d67      	ldr	r5, [pc, #412]	@ (8004298 <HAL_DMA_Init+0x434>)
 80040fa:	fa25 f000 	lsr.w	r0, r5, r0
 80040fe:	07c0      	lsls	r0, r0, #31
 8004100:	d501      	bpl.n	8004106 <HAL_DMA_Init+0x2a2>
 8004102:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8004106:	6023      	str	r3, [r4, #0]
 8004108:	2904      	cmp	r1, #4
 800410a:	6963      	ldr	r3, [r4, #20]
 800410c:	f023 0307 	bic.w	r3, r3, #7
 8004110:	ea43 0301 	orr.w	r3, r3, r1
 8004114:	f47f af36 	bne.w	8003f84 <HAL_DMA_Init+0x120>
 8004118:	6af0      	ldr	r0, [r6, #44]	@ 0x2c
 800411a:	6ab1      	ldr	r1, [r6, #40]	@ 0x28
 800411c:	430b      	orrs	r3, r1
 800411e:	2800      	cmp	r0, #0
 8004120:	f43f af30 	beq.w	8003f84 <HAL_DMA_Init+0x120>
 8004124:	2a00      	cmp	r2, #0
 8004126:	d138      	bne.n	800419a <HAL_DMA_Init+0x336>
 8004128:	2901      	cmp	r1, #1
 800412a:	d04d      	beq.n	80041c8 <HAL_DMA_Init+0x364>
 800412c:	f031 0202 	bics.w	r2, r1, #2
 8004130:	f47f af28 	bne.w	8003f84 <HAL_DMA_Init+0x120>
 8004134:	01c2      	lsls	r2, r0, #7
 8004136:	f57f af25 	bpl.w	8003f84 <HAL_DMA_Init+0x120>
 800413a:	2240      	movs	r2, #64	@ 0x40
 800413c:	2301      	movs	r3, #1
 800413e:	6572      	str	r2, [r6, #84]	@ 0x54
 8004140:	f886 3035 	strb.w	r3, [r6, #53]	@ 0x35
 8004144:	2001      	movs	r0, #1
 8004146:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8004148:	2220      	movs	r2, #32
 800414a:	2303      	movs	r3, #3
 800414c:	2001      	movs	r0, #1
 800414e:	6572      	str	r2, [r6, #84]	@ 0x54
 8004150:	f886 3035 	strb.w	r3, [r6, #53]	@ 0x35
 8004154:	e7f7      	b.n	8004146 <HAL_DMA_Init+0x2e2>
 8004156:	2828      	cmp	r0, #40	@ 0x28
 8004158:	d9d5      	bls.n	8004106 <HAL_DMA_Init+0x2a2>
 800415a:	e7d2      	b.n	8004102 <HAL_DMA_Init+0x29e>
 800415c:	2300      	movs	r3, #0
 800415e:	6eb1      	ldr	r1, [r6, #104]	@ 0x68
 8004160:	e9d6 0218 	ldrd	r0, r2, [r6, #96]	@ 0x60
 8004164:	6073      	str	r3, [r6, #4]
 8004166:	6003      	str	r3, [r0, #0]
 8004168:	6051      	str	r1, [r2, #4]
 800416a:	2300      	movs	r3, #0
 800416c:	e9c6 331b 	strd	r3, r3, [r6, #108]	@ 0x6c
 8004170:	6773      	str	r3, [r6, #116]	@ 0x74
 8004172:	e7a2      	b.n	80040ba <HAL_DMA_Init+0x256>
 8004174:	6805      	ldr	r5, [r0, #0]
 8004176:	e9d6 070b 	ldrd	r0, r7, [r6, #44]	@ 0x2c
 800417a:	f36f 050f 	bfc	r5, #0, #16
 800417e:	ea40 0c07 	orr.w	ip, r0, r7
 8004182:	f1b5 5f00 	cmp.w	r5, #536870912	@ 0x20000000
 8004186:	ea43 030c 	orr.w	r3, r3, ip
 800418a:	d2af      	bcs.n	80040ec <HAL_DMA_Init+0x288>
 800418c:	6023      	str	r3, [r4, #0]
 800418e:	6963      	ldr	r3, [r4, #20]
 8004190:	f023 0307 	bic.w	r3, r3, #7
 8004194:	f043 0304 	orr.w	r3, r3, #4
 8004198:	e7bf      	b.n	800411a <HAL_DMA_Init+0x2b6>
 800419a:	f5b2 5f00 	cmp.w	r2, #8192	@ 0x2000
 800419e:	d004      	beq.n	80041aa <HAL_DMA_Init+0x346>
 80041a0:	2902      	cmp	r1, #2
 80041a2:	d9ca      	bls.n	800413a <HAL_DMA_Init+0x2d6>
 80041a4:	2903      	cmp	r1, #3
 80041a6:	d0c5      	beq.n	8004134 <HAL_DMA_Init+0x2d0>
 80041a8:	e6ec      	b.n	8003f84 <HAL_DMA_Init+0x120>
 80041aa:	2903      	cmp	r1, #3
 80041ac:	f63f aeea 	bhi.w	8003f84 <HAL_DMA_Init+0x120>
 80041b0:	a201      	add	r2, pc, #4	@ (adr r2, 80041b8 <HAL_DMA_Init+0x354>)
 80041b2:	f852 f021 	ldr.w	pc, [r2, r1, lsl #2]
 80041b6:	bf00      	nop
 80041b8:	0800413b 	.word	0x0800413b
 80041bc:	08004135 	.word	0x08004135
 80041c0:	0800413b 	.word	0x0800413b
 80041c4:	080041c9 	.word	0x080041c9
 80041c8:	f1b0 7fc0 	cmp.w	r0, #25165824	@ 0x1800000
 80041cc:	f47f aeda 	bne.w	8003f84 <HAL_DMA_Init+0x120>
 80041d0:	e7b3      	b.n	800413a <HAL_DMA_Init+0x2d6>
 80041d2:	4b32      	ldr	r3, [pc, #200]	@ (800429c <HAL_DMA_Init+0x438>)
 80041d4:	4932      	ldr	r1, [pc, #200]	@ (80042a0 <HAL_DMA_Init+0x43c>)
 80041d6:	4a33      	ldr	r2, [pc, #204]	@ (80042a4 <HAL_DMA_Init+0x440>)
 80041d8:	428c      	cmp	r4, r1
 80041da:	bf18      	it	ne
 80041dc:	429c      	cmpne	r4, r3
 80041de:	f101 0128 	add.w	r1, r1, #40	@ 0x28
 80041e2:	bf0c      	ite	eq
 80041e4:	2301      	moveq	r3, #1
 80041e6:	2300      	movne	r3, #0
 80041e8:	4294      	cmp	r4, r2
 80041ea:	bf08      	it	eq
 80041ec:	f043 0301 	orreq.w	r3, r3, #1
 80041f0:	3228      	adds	r2, #40	@ 0x28
 80041f2:	428c      	cmp	r4, r1
 80041f4:	bf08      	it	eq
 80041f6:	f043 0301 	orreq.w	r3, r3, #1
 80041fa:	3128      	adds	r1, #40	@ 0x28
 80041fc:	4294      	cmp	r4, r2
 80041fe:	bf08      	it	eq
 8004200:	f043 0301 	orreq.w	r3, r3, #1
 8004204:	3228      	adds	r2, #40	@ 0x28
 8004206:	428c      	cmp	r4, r1
 8004208:	bf08      	it	eq
 800420a:	f043 0301 	orreq.w	r3, r3, #1
 800420e:	4294      	cmp	r4, r2
 8004210:	bf08      	it	eq
 8004212:	f043 0301 	orreq.w	r3, r3, #1
 8004216:	b913      	cbnz	r3, 800421e <HAL_DMA_Init+0x3ba>
 8004218:	4b23      	ldr	r3, [pc, #140]	@ (80042a8 <HAL_DMA_Init+0x444>)
 800421a:	429c      	cmp	r4, r3
 800421c:	d135      	bne.n	800428a <HAL_DMA_Init+0x426>
 800421e:	2102      	movs	r1, #2
 8004220:	2200      	movs	r2, #0
 8004222:	68b3      	ldr	r3, [r6, #8]
 8004224:	f886 1035 	strb.w	r1, [r6, #53]	@ 0x35
 8004228:	f886 2034 	strb.w	r2, [r6, #52]	@ 0x34
 800422c:	2b40      	cmp	r3, #64	@ 0x40
 800422e:	6820      	ldr	r0, [r4, #0]
 8004230:	f36f 1010 	bfc	r0, #4, #13
 8004234:	d027      	beq.n	8004286 <HAL_DMA_Init+0x422>
 8004236:	f1a3 0380 	sub.w	r3, r3, #128	@ 0x80
 800423a:	fab3 f383 	clz	r3, r3
 800423e:	095b      	lsrs	r3, r3, #5
 8004240:	039a      	lsls	r2, r3, #14
 8004242:	69f5      	ldr	r5, [r6, #28]
 8004244:	e9d6 3103 	ldrd	r3, r1, [r6, #12]
 8004248:	4319      	orrs	r1, r3
 800424a:	6973      	ldr	r3, [r6, #20]
 800424c:	4319      	orrs	r1, r3
 800424e:	69b3      	ldr	r3, [r6, #24]
 8004250:	4319      	orrs	r1, r3
 8004252:	4b16      	ldr	r3, [pc, #88]	@ (80042ac <HAL_DMA_Init+0x448>)
 8004254:	4329      	orrs	r1, r5
 8004256:	6a35      	ldr	r5, [r6, #32]
 8004258:	4423      	add	r3, r4
 800425a:	ea40 1015 	orr.w	r0, r0, r5, lsr #4
 800425e:	ea40 01d1 	orr.w	r1, r0, r1, lsr #3
 8004262:	4630      	mov	r0, r6
 8004264:	430a      	orrs	r2, r1
 8004266:	4912      	ldr	r1, [pc, #72]	@ (80042b0 <HAL_DMA_Init+0x44c>)
 8004268:	fba1 1303 	umull	r1, r3, r1, r3
 800426c:	6022      	str	r2, [r4, #0]
 800426e:	091b      	lsrs	r3, r3, #4
 8004270:	009b      	lsls	r3, r3, #2
 8004272:	65f3      	str	r3, [r6, #92]	@ 0x5c
 8004274:	f7ff fcbe 	bl	8003bf4 <DMA_CalcBaseAndBitshift>
 8004278:	6df1      	ldr	r1, [r6, #92]	@ 0x5c
 800427a:	2201      	movs	r2, #1
 800427c:	f001 011f 	and.w	r1, r1, #31
 8004280:	408a      	lsls	r2, r1
 8004282:	6042      	str	r2, [r0, #4]
 8004284:	e701      	b.n	800408a <HAL_DMA_Init+0x226>
 8004286:	2210      	movs	r2, #16
 8004288:	e7db      	b.n	8004242 <HAL_DMA_Init+0x3de>
 800428a:	2240      	movs	r2, #64	@ 0x40
 800428c:	2303      	movs	r3, #3
 800428e:	6572      	str	r2, [r6, #84]	@ 0x54
 8004290:	f886 3035 	strb.w	r3, [r6, #53]	@ 0x35
 8004294:	e756      	b.n	8004144 <HAL_DMA_Init+0x2e0>
 8004296:	bf00      	nop
 8004298:	000f030f 	.word	0x000f030f
 800429c:	58025408 	.word	0x58025408
 80042a0:	5802541c 	.word	0x5802541c
 80042a4:	58025430 	.word	0x58025430
 80042a8:	58025494 	.word	0x58025494
 80042ac:	a7fdabf8 	.word	0xa7fdabf8
 80042b0:	cccccccd 	.word	0xcccccccd

080042b4 <HAL_DMA_Start_IT>:
 80042b4:	2800      	cmp	r0, #0
 80042b6:	f000 8129 	beq.w	800450c <HAL_DMA_Start_IT+0x258>
 80042ba:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80042be:	f890 5034 	ldrb.w	r5, [r0, #52]	@ 0x34
 80042c2:	b08b      	sub	sp, #44	@ 0x2c
 80042c4:	4604      	mov	r4, r0
 80042c6:	2d01      	cmp	r5, #1
 80042c8:	f000 811c 	beq.w	8004504 <HAL_DMA_Start_IT+0x250>
 80042cc:	2501      	movs	r5, #1
 80042ce:	f880 5034 	strb.w	r5, [r0, #52]	@ 0x34
 80042d2:	f890 5035 	ldrb.w	r5, [r0, #53]	@ 0x35
 80042d6:	2d01      	cmp	r5, #1
 80042d8:	d009      	beq.n	80042ee <HAL_DMA_Start_IT+0x3a>
 80042da:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 80042de:	2300      	movs	r3, #0
 80042e0:	6542      	str	r2, [r0, #84]	@ 0x54
 80042e2:	f880 3034 	strb.w	r3, [r0, #52]	@ 0x34
 80042e6:	2001      	movs	r0, #1
 80042e8:	b00b      	add	sp, #44	@ 0x2c
 80042ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042ee:	6805      	ldr	r5, [r0, #0]
 80042f0:	468c      	mov	ip, r1
 80042f2:	4f9c      	ldr	r7, [pc, #624]	@ (8004564 <HAL_DMA_Start_IT+0x2b0>)
 80042f4:	4696      	mov	lr, r2
 80042f6:	4e9c      	ldr	r6, [pc, #624]	@ (8004568 <HAL_DMA_Start_IT+0x2b4>)
 80042f8:	469b      	mov	fp, r3
 80042fa:	f8df 8290 	ldr.w	r8, [pc, #656]	@ 800458c <HAL_DMA_Start_IT+0x2d8>
 80042fe:	42b5      	cmp	r5, r6
 8004300:	bf18      	it	ne
 8004302:	42bd      	cmpne	r5, r7
 8004304:	f106 0630 	add.w	r6, r6, #48	@ 0x30
 8004308:	f8df 9284 	ldr.w	r9, [pc, #644]	@ 8004590 <HAL_DMA_Start_IT+0x2dc>
 800430c:	bf0c      	ite	eq
 800430e:	f04f 0a01 	moveq.w	sl, #1
 8004312:	f04f 0a00 	movne.w	sl, #0
 8004316:	42b5      	cmp	r5, r6
 8004318:	bf14      	ite	ne
 800431a:	4656      	movne	r6, sl
 800431c:	f04a 0601 	orreq.w	r6, sl, #1
 8004320:	4637      	mov	r7, r6
 8004322:	9603      	str	r6, [sp, #12]
 8004324:	4e91      	ldr	r6, [pc, #580]	@ (800456c <HAL_DMA_Start_IT+0x2b8>)
 8004326:	42b5      	cmp	r5, r6
 8004328:	bf08      	it	eq
 800432a:	f047 0701 	orreq.w	r7, r7, #1
 800432e:	3618      	adds	r6, #24
 8004330:	9704      	str	r7, [sp, #16]
 8004332:	42b5      	cmp	r5, r6
 8004334:	bf08      	it	eq
 8004336:	f047 0701 	orreq.w	r7, r7, #1
 800433a:	3618      	adds	r6, #24
 800433c:	9705      	str	r7, [sp, #20]
 800433e:	42b5      	cmp	r5, r6
 8004340:	bf08      	it	eq
 8004342:	f047 0701 	orreq.w	r7, r7, #1
 8004346:	3618      	adds	r6, #24
 8004348:	9706      	str	r7, [sp, #24]
 800434a:	42b5      	cmp	r5, r6
 800434c:	bf08      	it	eq
 800434e:	f047 0701 	orreq.w	r7, r7, #1
 8004352:	3618      	adds	r6, #24
 8004354:	9707      	str	r7, [sp, #28]
 8004356:	42b5      	cmp	r5, r6
 8004358:	bf08      	it	eq
 800435a:	f047 0701 	orreq.w	r7, r7, #1
 800435e:	f5a6 6686 	sub.w	r6, r6, #1072	@ 0x430
 8004362:	9702      	str	r7, [sp, #8]
 8004364:	4f82      	ldr	r7, [pc, #520]	@ (8004570 <HAL_DMA_Start_IT+0x2bc>)
 8004366:	42b5      	cmp	r5, r6
 8004368:	bf18      	it	ne
 800436a:	42bd      	cmpne	r5, r7
 800436c:	9f02      	ldr	r7, [sp, #8]
 800436e:	bf0c      	ite	eq
 8004370:	2601      	moveq	r6, #1
 8004372:	2600      	movne	r6, #0
 8004374:	9601      	str	r6, [sp, #4]
 8004376:	4e7f      	ldr	r6, [pc, #508]	@ (8004574 <HAL_DMA_Start_IT+0x2c0>)
 8004378:	42b5      	cmp	r5, r6
 800437a:	bf08      	it	eq
 800437c:	f047 0701 	orreq.w	r7, r7, #1
 8004380:	f5a6 668c 	sub.w	r6, r6, #1120	@ 0x460
 8004384:	42b5      	cmp	r5, r6
 8004386:	bf18      	it	ne
 8004388:	4545      	cmpne	r5, r8
 800438a:	9708      	str	r7, [sp, #32]
 800438c:	bf0c      	ite	eq
 800438e:	2601      	moveq	r6, #1
 8004390:	2600      	movne	r6, #0
 8004392:	9600      	str	r6, [sp, #0]
 8004394:	9e01      	ldr	r6, [sp, #4]
 8004396:	454d      	cmp	r5, r9
 8004398:	bf08      	it	eq
 800439a:	f046 0601 	orreq.w	r6, r6, #1
 800439e:	f509 6986 	add.w	r9, r9, #1072	@ 0x430
 80043a2:	454d      	cmp	r5, r9
 80043a4:	bf08      	it	eq
 80043a6:	f047 0701 	orreq.w	r7, r7, #1
 80043aa:	f04f 0902 	mov.w	r9, #2
 80043ae:	46b0      	mov	r8, r6
 80043b0:	9e00      	ldr	r6, [sp, #0]
 80043b2:	f880 9035 	strb.w	r9, [r0, #53]	@ 0x35
 80043b6:	f04f 0900 	mov.w	r9, #0
 80043ba:	9709      	str	r7, [sp, #36]	@ 0x24
 80043bc:	f8c0 9054 	str.w	r9, [r0, #84]	@ 0x54
 80043c0:	f8df 91d0 	ldr.w	r9, [pc, #464]	@ 8004594 <HAL_DMA_Start_IT+0x2e0>
 80043c4:	454d      	cmp	r5, r9
 80043c6:	bf08      	it	eq
 80043c8:	f047 0701 	orreq.w	r7, r7, #1
 80043cc:	ea56 0908 	orrs.w	r9, r6, r8
 80043d0:	d102      	bne.n	80043d8 <HAL_DMA_Start_IT+0x124>
 80043d2:	2f00      	cmp	r7, #0
 80043d4:	f000 80a7 	beq.w	8004526 <HAL_DMA_Start_IT+0x272>
 80043d8:	6828      	ldr	r0, [r5, #0]
 80043da:	465b      	mov	r3, fp
 80043dc:	4672      	mov	r2, lr
 80043de:	4661      	mov	r1, ip
 80043e0:	f020 0001 	bic.w	r0, r0, #1
 80043e4:	6028      	str	r0, [r5, #0]
 80043e6:	4620      	mov	r0, r4
 80043e8:	f7ff fb26 	bl	8003a38 <DMA_SetConfig>
 80043ec:	9b00      	ldr	r3, [sp, #0]
 80043ee:	b30b      	cbz	r3, 8004434 <HAL_DMA_Start_IT+0x180>
 80043f0:	682b      	ldr	r3, [r5, #0]
 80043f2:	f023 031e 	bic.w	r3, r3, #30
 80043f6:	f043 0316 	orr.w	r3, r3, #22
 80043fa:	602b      	str	r3, [r5, #0]
 80043fc:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 80043fe:	b11b      	cbz	r3, 8004408 <HAL_DMA_Start_IT+0x154>
 8004400:	682b      	ldr	r3, [r5, #0]
 8004402:	f043 0308 	orr.w	r3, r3, #8
 8004406:	602b      	str	r3, [r5, #0]
 8004408:	6e23      	ldr	r3, [r4, #96]	@ 0x60
 800440a:	681a      	ldr	r2, [r3, #0]
 800440c:	03d2      	lsls	r2, r2, #15
 800440e:	d503      	bpl.n	8004418 <HAL_DMA_Start_IT+0x164>
 8004410:	681a      	ldr	r2, [r3, #0]
 8004412:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8004416:	601a      	str	r2, [r3, #0]
 8004418:	6ee3      	ldr	r3, [r4, #108]	@ 0x6c
 800441a:	b11b      	cbz	r3, 8004424 <HAL_DMA_Start_IT+0x170>
 800441c:	681a      	ldr	r2, [r3, #0]
 800441e:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8004422:	601a      	str	r2, [r3, #0]
 8004424:	682b      	ldr	r3, [r5, #0]
 8004426:	2000      	movs	r0, #0
 8004428:	f043 0301 	orr.w	r3, r3, #1
 800442c:	602b      	str	r3, [r5, #0]
 800442e:	b00b      	add	sp, #44	@ 0x2c
 8004430:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004434:	4b50      	ldr	r3, [pc, #320]	@ (8004578 <HAL_DMA_Start_IT+0x2c4>)
 8004436:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8004438:	429d      	cmp	r5, r3
 800443a:	d07c      	beq.n	8004536 <HAL_DMA_Start_IT+0x282>
 800443c:	9b01      	ldr	r3, [sp, #4]
 800443e:	2b00      	cmp	r3, #0
 8004440:	f040 8084 	bne.w	800454c <HAL_DMA_Start_IT+0x298>
 8004444:	f1b8 0f00 	cmp.w	r8, #0
 8004448:	d162      	bne.n	8004510 <HAL_DMA_Start_IT+0x25c>
 800444a:	4b47      	ldr	r3, [pc, #284]	@ (8004568 <HAL_DMA_Start_IT+0x2b4>)
 800444c:	429d      	cmp	r5, r3
 800444e:	f000 80a3 	beq.w	8004598 <HAL_DMA_Start_IT+0x2e4>
 8004452:	f1ba 0f00 	cmp.w	sl, #0
 8004456:	f040 80bb 	bne.w	80045d0 <HAL_DMA_Start_IT+0x31c>
 800445a:	9b03      	ldr	r3, [sp, #12]
 800445c:	2b00      	cmp	r3, #0
 800445e:	f040 80c3 	bne.w	80045e8 <HAL_DMA_Start_IT+0x334>
 8004462:	9b04      	ldr	r3, [sp, #16]
 8004464:	2b00      	cmp	r3, #0
 8004466:	f040 80cb 	bne.w	8004600 <HAL_DMA_Start_IT+0x34c>
 800446a:	9b05      	ldr	r3, [sp, #20]
 800446c:	2b00      	cmp	r3, #0
 800446e:	f040 80d1 	bne.w	8004614 <HAL_DMA_Start_IT+0x360>
 8004472:	9b06      	ldr	r3, [sp, #24]
 8004474:	2b00      	cmp	r3, #0
 8004476:	f040 80d7 	bne.w	8004628 <HAL_DMA_Start_IT+0x374>
 800447a:	9b07      	ldr	r3, [sp, #28]
 800447c:	2b00      	cmp	r3, #0
 800447e:	f040 80dd 	bne.w	800463c <HAL_DMA_Start_IT+0x388>
 8004482:	9b02      	ldr	r3, [sp, #8]
 8004484:	2b00      	cmp	r3, #0
 8004486:	f040 80e3 	bne.w	8004650 <HAL_DMA_Start_IT+0x39c>
 800448a:	9b08      	ldr	r3, [sp, #32]
 800448c:	2b00      	cmp	r3, #0
 800448e:	f040 80e9 	bne.w	8004664 <HAL_DMA_Start_IT+0x3b0>
 8004492:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8004494:	2b00      	cmp	r3, #0
 8004496:	f040 80e7 	bne.w	8004668 <HAL_DMA_Start_IT+0x3b4>
 800449a:	2f00      	cmp	r7, #0
 800449c:	f040 80f1 	bne.w	8004682 <HAL_DMA_Start_IT+0x3ce>
 80044a0:	682b      	ldr	r3, [r5, #0]
 80044a2:	f023 030e 	bic.w	r3, r3, #14
 80044a6:	f043 030a 	orr.w	r3, r3, #10
 80044aa:	602b      	str	r3, [r5, #0]
 80044ac:	b11a      	cbz	r2, 80044b6 <HAL_DMA_Start_IT+0x202>
 80044ae:	682b      	ldr	r3, [r5, #0]
 80044b0:	f043 0304 	orr.w	r3, r3, #4
 80044b4:	602b      	str	r3, [r5, #0]
 80044b6:	4b31      	ldr	r3, [pc, #196]	@ (800457c <HAL_DMA_Start_IT+0x2c8>)
 80044b8:	4a31      	ldr	r2, [pc, #196]	@ (8004580 <HAL_DMA_Start_IT+0x2cc>)
 80044ba:	4295      	cmp	r5, r2
 80044bc:	bf18      	it	ne
 80044be:	429d      	cmpne	r5, r3
 80044c0:	bf0c      	ite	eq
 80044c2:	2301      	moveq	r3, #1
 80044c4:	2300      	movne	r3, #0
 80044c6:	3214      	adds	r2, #20
 80044c8:	4295      	cmp	r5, r2
 80044ca:	bf08      	it	eq
 80044cc:	f043 0301 	orreq.w	r3, r3, #1
 80044d0:	3214      	adds	r2, #20
 80044d2:	4295      	cmp	r5, r2
 80044d4:	bf08      	it	eq
 80044d6:	f043 0301 	orreq.w	r3, r3, #1
 80044da:	3214      	adds	r2, #20
 80044dc:	4295      	cmp	r5, r2
 80044de:	bf08      	it	eq
 80044e0:	f043 0301 	orreq.w	r3, r3, #1
 80044e4:	3214      	adds	r2, #20
 80044e6:	4295      	cmp	r5, r2
 80044e8:	bf08      	it	eq
 80044ea:	f043 0301 	orreq.w	r3, r3, #1
 80044ee:	3214      	adds	r2, #20
 80044f0:	4295      	cmp	r5, r2
 80044f2:	bf08      	it	eq
 80044f4:	f043 0301 	orreq.w	r3, r3, #1
 80044f8:	2b00      	cmp	r3, #0
 80044fa:	d185      	bne.n	8004408 <HAL_DMA_Start_IT+0x154>
 80044fc:	4b21      	ldr	r3, [pc, #132]	@ (8004584 <HAL_DMA_Start_IT+0x2d0>)
 80044fe:	429d      	cmp	r5, r3
 8004500:	d082      	beq.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004502:	e78f      	b.n	8004424 <HAL_DMA_Start_IT+0x170>
 8004504:	2002      	movs	r0, #2
 8004506:	b00b      	add	sp, #44	@ 0x2c
 8004508:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800450c:	2001      	movs	r0, #1
 800450e:	4770      	bx	lr
 8004510:	491d      	ldr	r1, [pc, #116]	@ (8004588 <HAL_DMA_Start_IT+0x2d4>)
 8004512:	6f0b      	ldr	r3, [r1, #112]	@ 0x70
 8004514:	f023 031e 	bic.w	r3, r3, #30
 8004518:	f043 0316 	orr.w	r3, r3, #22
 800451c:	670b      	str	r3, [r1, #112]	@ 0x70
 800451e:	2a00      	cmp	r2, #0
 8004520:	f47f af6e 	bne.w	8004400 <HAL_DMA_Start_IT+0x14c>
 8004524:	e770      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004526:	682e      	ldr	r6, [r5, #0]
 8004528:	f026 0601 	bic.w	r6, r6, #1
 800452c:	602e      	str	r6, [r5, #0]
 800452e:	f7ff fa83 	bl	8003a38 <DMA_SetConfig>
 8004532:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8004534:	e789      	b.n	800444a <HAL_DMA_Start_IT+0x196>
 8004536:	4914      	ldr	r1, [pc, #80]	@ (8004588 <HAL_DMA_Start_IT+0x2d4>)
 8004538:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 800453a:	f023 031e 	bic.w	r3, r3, #30
 800453e:	f043 0316 	orr.w	r3, r3, #22
 8004542:	640b      	str	r3, [r1, #64]	@ 0x40
 8004544:	2a00      	cmp	r2, #0
 8004546:	f47f af5b 	bne.w	8004400 <HAL_DMA_Start_IT+0x14c>
 800454a:	e75d      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 800454c:	490e      	ldr	r1, [pc, #56]	@ (8004588 <HAL_DMA_Start_IT+0x2d4>)
 800454e:	6d8b      	ldr	r3, [r1, #88]	@ 0x58
 8004550:	f023 031e 	bic.w	r3, r3, #30
 8004554:	f043 0316 	orr.w	r3, r3, #22
 8004558:	658b      	str	r3, [r1, #88]	@ 0x58
 800455a:	2a00      	cmp	r2, #0
 800455c:	f47f af50 	bne.w	8004400 <HAL_DMA_Start_IT+0x14c>
 8004560:	e752      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004562:	bf00      	nop
 8004564:	400200a0 	.word	0x400200a0
 8004568:	40020088 	.word	0x40020088
 800456c:	40020410 	.word	0x40020410
 8004570:	40020058 	.word	0x40020058
 8004574:	40020488 	.word	0x40020488
 8004578:	40020040 	.word	0x40020040
 800457c:	58025408 	.word	0x58025408
 8004580:	5802541c 	.word	0x5802541c
 8004584:	58025494 	.word	0x58025494
 8004588:	40020000 	.word	0x40020000
 800458c:	40020010 	.word	0x40020010
 8004590:	40020070 	.word	0x40020070
 8004594:	400204b8 	.word	0x400204b8
 8004598:	4940      	ldr	r1, [pc, #256]	@ (800469c <HAL_DMA_Start_IT+0x3e8>)
 800459a:	f8d1 3088 	ldr.w	r3, [r1, #136]	@ 0x88
 800459e:	f023 031e 	bic.w	r3, r3, #30
 80045a2:	f043 0316 	orr.w	r3, r3, #22
 80045a6:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80045aa:	2a00      	cmp	r2, #0
 80045ac:	f43f af2c 	beq.w	8004408 <HAL_DMA_Start_IT+0x154>
 80045b0:	682b      	ldr	r3, [r5, #0]
 80045b2:	4a3b      	ldr	r2, [pc, #236]	@ (80046a0 <HAL_DMA_Start_IT+0x3ec>)
 80045b4:	f043 0308 	orr.w	r3, r3, #8
 80045b8:	602b      	str	r3, [r5, #0]
 80045ba:	463b      	mov	r3, r7
 80045bc:	4295      	cmp	r5, r2
 80045be:	bf08      	it	eq
 80045c0:	f043 0301 	orreq.w	r3, r3, #1
 80045c4:	3214      	adds	r2, #20
 80045c6:	4295      	cmp	r5, r2
 80045c8:	bf08      	it	eq
 80045ca:	f043 0301 	orreq.w	r3, r3, #1
 80045ce:	e77a      	b.n	80044c6 <HAL_DMA_Start_IT+0x212>
 80045d0:	4932      	ldr	r1, [pc, #200]	@ (800469c <HAL_DMA_Start_IT+0x3e8>)
 80045d2:	f8d1 30a0 	ldr.w	r3, [r1, #160]	@ 0xa0
 80045d6:	f023 031e 	bic.w	r3, r3, #30
 80045da:	f043 0316 	orr.w	r3, r3, #22
 80045de:	f8c1 30a0 	str.w	r3, [r1, #160]	@ 0xa0
 80045e2:	2a00      	cmp	r2, #0
 80045e4:	d1e4      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 80045e6:	e70f      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 80045e8:	492c      	ldr	r1, [pc, #176]	@ (800469c <HAL_DMA_Start_IT+0x3e8>)
 80045ea:	f8d1 30b8 	ldr.w	r3, [r1, #184]	@ 0xb8
 80045ee:	f023 031e 	bic.w	r3, r3, #30
 80045f2:	f043 0316 	orr.w	r3, r3, #22
 80045f6:	f8c1 30b8 	str.w	r3, [r1, #184]	@ 0xb8
 80045fa:	2a00      	cmp	r2, #0
 80045fc:	d1d8      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 80045fe:	e703      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004600:	4928      	ldr	r1, [pc, #160]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 8004602:	690b      	ldr	r3, [r1, #16]
 8004604:	f023 031e 	bic.w	r3, r3, #30
 8004608:	f043 0316 	orr.w	r3, r3, #22
 800460c:	610b      	str	r3, [r1, #16]
 800460e:	2a00      	cmp	r2, #0
 8004610:	d1ce      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 8004612:	e6f9      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004614:	4923      	ldr	r1, [pc, #140]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 8004616:	6a8b      	ldr	r3, [r1, #40]	@ 0x28
 8004618:	f023 031e 	bic.w	r3, r3, #30
 800461c:	f043 0316 	orr.w	r3, r3, #22
 8004620:	628b      	str	r3, [r1, #40]	@ 0x28
 8004622:	2a00      	cmp	r2, #0
 8004624:	d1c4      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 8004626:	e6ef      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004628:	491e      	ldr	r1, [pc, #120]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 800462a:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 800462c:	f023 031e 	bic.w	r3, r3, #30
 8004630:	f043 0316 	orr.w	r3, r3, #22
 8004634:	640b      	str	r3, [r1, #64]	@ 0x40
 8004636:	2a00      	cmp	r2, #0
 8004638:	d1ba      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 800463a:	e6e5      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 800463c:	4919      	ldr	r1, [pc, #100]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 800463e:	6d8b      	ldr	r3, [r1, #88]	@ 0x58
 8004640:	f023 031e 	bic.w	r3, r3, #30
 8004644:	f043 0316 	orr.w	r3, r3, #22
 8004648:	658b      	str	r3, [r1, #88]	@ 0x58
 800464a:	2a00      	cmp	r2, #0
 800464c:	d1b0      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 800464e:	e6db      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004650:	4914      	ldr	r1, [pc, #80]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 8004652:	6f0b      	ldr	r3, [r1, #112]	@ 0x70
 8004654:	f023 031e 	bic.w	r3, r3, #30
 8004658:	f043 0316 	orr.w	r3, r3, #22
 800465c:	670b      	str	r3, [r1, #112]	@ 0x70
 800465e:	2a00      	cmp	r2, #0
 8004660:	d1a6      	bne.n	80045b0 <HAL_DMA_Start_IT+0x2fc>
 8004662:	e6d1      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004664:	490f      	ldr	r1, [pc, #60]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 8004666:	e798      	b.n	800459a <HAL_DMA_Start_IT+0x2e6>
 8004668:	490e      	ldr	r1, [pc, #56]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 800466a:	f8d1 30a0 	ldr.w	r3, [r1, #160]	@ 0xa0
 800466e:	f023 031e 	bic.w	r3, r3, #30
 8004672:	f043 0316 	orr.w	r3, r3, #22
 8004676:	f8c1 30a0 	str.w	r3, [r1, #160]	@ 0xa0
 800467a:	2a00      	cmp	r2, #0
 800467c:	f47f aec0 	bne.w	8004400 <HAL_DMA_Start_IT+0x14c>
 8004680:	e6c2      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 8004682:	4908      	ldr	r1, [pc, #32]	@ (80046a4 <HAL_DMA_Start_IT+0x3f0>)
 8004684:	f8d1 30b8 	ldr.w	r3, [r1, #184]	@ 0xb8
 8004688:	f023 031e 	bic.w	r3, r3, #30
 800468c:	f043 0316 	orr.w	r3, r3, #22
 8004690:	f8c1 30b8 	str.w	r3, [r1, #184]	@ 0xb8
 8004694:	2a00      	cmp	r2, #0
 8004696:	f47f aeb3 	bne.w	8004400 <HAL_DMA_Start_IT+0x14c>
 800469a:	e6b5      	b.n	8004408 <HAL_DMA_Start_IT+0x154>
 800469c:	40020000 	.word	0x40020000
 80046a0:	58025408 	.word	0x58025408
 80046a4:	40020400 	.word	0x40020400

080046a8 <HAL_DMA_Abort>:
 80046a8:	b570      	push	{r4, r5, r6, lr}
 80046aa:	4604      	mov	r4, r0
 80046ac:	f000 fd98 	bl	80051e0 <HAL_GetTick>
 80046b0:	2c00      	cmp	r4, #0
 80046b2:	d06d      	beq.n	8004790 <HAL_DMA_Abort+0xe8>
 80046b4:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
 80046b8:	2b02      	cmp	r3, #2
 80046ba:	d164      	bne.n	8004786 <HAL_DMA_Abort+0xde>
 80046bc:	6825      	ldr	r5, [r4, #0]
 80046be:	4606      	mov	r6, r0
 80046c0:	4bad      	ldr	r3, [pc, #692]	@ (8004978 <HAL_DMA_Abort+0x2d0>)
 80046c2:	429d      	cmp	r5, r3
 80046c4:	d066      	beq.n	8004794 <HAL_DMA_Abort+0xec>
 80046c6:	3318      	adds	r3, #24
 80046c8:	429d      	cmp	r5, r3
 80046ca:	d063      	beq.n	8004794 <HAL_DMA_Abort+0xec>
 80046cc:	3318      	adds	r3, #24
 80046ce:	429d      	cmp	r5, r3
 80046d0:	f000 80f3 	beq.w	80048ba <HAL_DMA_Abort+0x212>
 80046d4:	3318      	adds	r3, #24
 80046d6:	429d      	cmp	r5, r3
 80046d8:	f000 811a 	beq.w	8004910 <HAL_DMA_Abort+0x268>
 80046dc:	3318      	adds	r3, #24
 80046de:	429d      	cmp	r5, r3
 80046e0:	f000 8125 	beq.w	800492e <HAL_DMA_Abort+0x286>
 80046e4:	3318      	adds	r3, #24
 80046e6:	429d      	cmp	r5, r3
 80046e8:	f000 80ff 	beq.w	80048ea <HAL_DMA_Abort+0x242>
 80046ec:	3318      	adds	r3, #24
 80046ee:	429d      	cmp	r5, r3
 80046f0:	f000 812e 	beq.w	8004950 <HAL_DMA_Abort+0x2a8>
 80046f4:	3318      	adds	r3, #24
 80046f6:	429d      	cmp	r5, r3
 80046f8:	f000 814a 	beq.w	8004990 <HAL_DMA_Abort+0x2e8>
 80046fc:	f503 7356 	add.w	r3, r3, #856	@ 0x358
 8004700:	429d      	cmp	r5, r3
 8004702:	f000 8158 	beq.w	80049b6 <HAL_DMA_Abort+0x30e>
 8004706:	3318      	adds	r3, #24
 8004708:	429d      	cmp	r5, r3
 800470a:	f000 8163 	beq.w	80049d4 <HAL_DMA_Abort+0x32c>
 800470e:	3318      	adds	r3, #24
 8004710:	429d      	cmp	r5, r3
 8004712:	f000 816e 	beq.w	80049f2 <HAL_DMA_Abort+0x34a>
 8004716:	3318      	adds	r3, #24
 8004718:	429d      	cmp	r5, r3
 800471a:	f000 816c 	beq.w	80049f6 <HAL_DMA_Abort+0x34e>
 800471e:	3318      	adds	r3, #24
 8004720:	429d      	cmp	r5, r3
 8004722:	f000 816a 	beq.w	80049fa <HAL_DMA_Abort+0x352>
 8004726:	3318      	adds	r3, #24
 8004728:	429d      	cmp	r5, r3
 800472a:	f000 8168 	beq.w	80049fe <HAL_DMA_Abort+0x356>
 800472e:	3318      	adds	r3, #24
 8004730:	429d      	cmp	r5, r3
 8004732:	f000 8168 	beq.w	8004a06 <HAL_DMA_Abort+0x35e>
 8004736:	3318      	adds	r3, #24
 8004738:	429d      	cmp	r5, r3
 800473a:	f000 8162 	beq.w	8004a02 <HAL_DMA_Abort+0x35a>
 800473e:	682b      	ldr	r3, [r5, #0]
 8004740:	4a8e      	ldr	r2, [pc, #568]	@ (800497c <HAL_DMA_Abort+0x2d4>)
 8004742:	f023 030e 	bic.w	r3, r3, #14
 8004746:	4295      	cmp	r5, r2
 8004748:	602b      	str	r3, [r5, #0]
 800474a:	f000 80bf 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 800474e:	4b8c      	ldr	r3, [pc, #560]	@ (8004980 <HAL_DMA_Abort+0x2d8>)
 8004750:	429d      	cmp	r5, r3
 8004752:	f000 80bb 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 8004756:	3314      	adds	r3, #20
 8004758:	429d      	cmp	r5, r3
 800475a:	f000 80b7 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 800475e:	3314      	adds	r3, #20
 8004760:	429d      	cmp	r5, r3
 8004762:	f000 80b3 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 8004766:	3314      	adds	r3, #20
 8004768:	429d      	cmp	r5, r3
 800476a:	f000 80af 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 800476e:	3314      	adds	r3, #20
 8004770:	429d      	cmp	r5, r3
 8004772:	f000 80ab 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 8004776:	3314      	adds	r3, #20
 8004778:	429d      	cmp	r5, r3
 800477a:	f000 80a7 	beq.w	80048cc <HAL_DMA_Abort+0x224>
 800477e:	3314      	adds	r3, #20
 8004780:	429d      	cmp	r5, r3
 8004782:	d114      	bne.n	80047ae <HAL_DMA_Abort+0x106>
 8004784:	e0a2      	b.n	80048cc <HAL_DMA_Abort+0x224>
 8004786:	2280      	movs	r2, #128	@ 0x80
 8004788:	2300      	movs	r3, #0
 800478a:	6562      	str	r2, [r4, #84]	@ 0x54
 800478c:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
 8004790:	2001      	movs	r0, #1
 8004792:	bd70      	pop	{r4, r5, r6, pc}
 8004794:	682b      	ldr	r3, [r5, #0]
 8004796:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 8004798:	f023 031e 	bic.w	r3, r3, #30
 800479c:	602b      	str	r3, [r5, #0]
 800479e:	696b      	ldr	r3, [r5, #20]
 80047a0:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 80047a4:	616b      	str	r3, [r5, #20]
 80047a6:	6813      	ldr	r3, [r2, #0]
 80047a8:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80047ac:	6013      	str	r3, [r2, #0]
 80047ae:	682b      	ldr	r3, [r5, #0]
 80047b0:	f023 0301 	bic.w	r3, r3, #1
 80047b4:	602b      	str	r3, [r5, #0]
 80047b6:	e005      	b.n	80047c4 <HAL_DMA_Abort+0x11c>
 80047b8:	f000 fd12 	bl	80051e0 <HAL_GetTick>
 80047bc:	1b83      	subs	r3, r0, r6
 80047be:	2b05      	cmp	r3, #5
 80047c0:	f200 808a 	bhi.w	80048d8 <HAL_DMA_Abort+0x230>
 80047c4:	682b      	ldr	r3, [r5, #0]
 80047c6:	07db      	lsls	r3, r3, #31
 80047c8:	d4f6      	bmi.n	80047b8 <HAL_DMA_Abort+0x110>
 80047ca:	6823      	ldr	r3, [r4, #0]
 80047cc:	496a      	ldr	r1, [pc, #424]	@ (8004978 <HAL_DMA_Abort+0x2d0>)
 80047ce:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 80047d0:	428b      	cmp	r3, r1
 80047d2:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 80047d4:	f002 021f 	and.w	r2, r2, #31
 80047d8:	d05e      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047da:	3118      	adds	r1, #24
 80047dc:	428b      	cmp	r3, r1
 80047de:	d05b      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047e0:	3118      	adds	r1, #24
 80047e2:	428b      	cmp	r3, r1
 80047e4:	d058      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047e6:	3118      	adds	r1, #24
 80047e8:	428b      	cmp	r3, r1
 80047ea:	d055      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047ec:	3118      	adds	r1, #24
 80047ee:	428b      	cmp	r3, r1
 80047f0:	d052      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047f2:	3118      	adds	r1, #24
 80047f4:	428b      	cmp	r3, r1
 80047f6:	d04f      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047f8:	3118      	adds	r1, #24
 80047fa:	428b      	cmp	r3, r1
 80047fc:	d04c      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 80047fe:	3118      	adds	r1, #24
 8004800:	428b      	cmp	r3, r1
 8004802:	d049      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 8004804:	f501 7156 	add.w	r1, r1, #856	@ 0x358
 8004808:	428b      	cmp	r3, r1
 800480a:	d045      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 800480c:	3118      	adds	r1, #24
 800480e:	428b      	cmp	r3, r1
 8004810:	d042      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 8004812:	3118      	adds	r1, #24
 8004814:	428b      	cmp	r3, r1
 8004816:	d03f      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 8004818:	3118      	adds	r1, #24
 800481a:	428b      	cmp	r3, r1
 800481c:	d03c      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 800481e:	3118      	adds	r1, #24
 8004820:	428b      	cmp	r3, r1
 8004822:	d039      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 8004824:	3118      	adds	r1, #24
 8004826:	428b      	cmp	r3, r1
 8004828:	d036      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 800482a:	3118      	adds	r1, #24
 800482c:	428b      	cmp	r3, r1
 800482e:	d033      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 8004830:	3118      	adds	r1, #24
 8004832:	428b      	cmp	r3, r1
 8004834:	d030      	beq.n	8004898 <HAL_DMA_Abort+0x1f0>
 8004836:	2101      	movs	r1, #1
 8004838:	4091      	lsls	r1, r2
 800483a:	4a51      	ldr	r2, [pc, #324]	@ (8004980 <HAL_DMA_Abort+0x2d8>)
 800483c:	6041      	str	r1, [r0, #4]
 800483e:	484f      	ldr	r0, [pc, #316]	@ (800497c <HAL_DMA_Abort+0x2d4>)
 8004840:	4950      	ldr	r1, [pc, #320]	@ (8004984 <HAL_DMA_Abort+0x2dc>)
 8004842:	4283      	cmp	r3, r0
 8004844:	bf18      	it	ne
 8004846:	4293      	cmpne	r3, r2
 8004848:	f100 003c 	add.w	r0, r0, #60	@ 0x3c
 800484c:	bf0c      	ite	eq
 800484e:	2201      	moveq	r2, #1
 8004850:	2200      	movne	r2, #0
 8004852:	428b      	cmp	r3, r1
 8004854:	bf08      	it	eq
 8004856:	f042 0201 	orreq.w	r2, r2, #1
 800485a:	3128      	adds	r1, #40	@ 0x28
 800485c:	4283      	cmp	r3, r0
 800485e:	bf08      	it	eq
 8004860:	f042 0201 	orreq.w	r2, r2, #1
 8004864:	3028      	adds	r0, #40	@ 0x28
 8004866:	428b      	cmp	r3, r1
 8004868:	bf08      	it	eq
 800486a:	f042 0201 	orreq.w	r2, r2, #1
 800486e:	3128      	adds	r1, #40	@ 0x28
 8004870:	4283      	cmp	r3, r0
 8004872:	bf08      	it	eq
 8004874:	f042 0201 	orreq.w	r2, r2, #1
 8004878:	428b      	cmp	r3, r1
 800487a:	bf08      	it	eq
 800487c:	f042 0201 	orreq.w	r2, r2, #1
 8004880:	b96a      	cbnz	r2, 800489e <HAL_DMA_Abort+0x1f6>
 8004882:	4a41      	ldr	r2, [pc, #260]	@ (8004988 <HAL_DMA_Abort+0x2e0>)
 8004884:	4293      	cmp	r3, r2
 8004886:	d00a      	beq.n	800489e <HAL_DMA_Abort+0x1f6>
 8004888:	2300      	movs	r3, #0
 800488a:	2201      	movs	r2, #1
 800488c:	4618      	mov	r0, r3
 800488e:	f884 2035 	strb.w	r2, [r4, #53]	@ 0x35
 8004892:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
 8004896:	bd70      	pop	{r4, r5, r6, pc}
 8004898:	233f      	movs	r3, #63	@ 0x3f
 800489a:	4093      	lsls	r3, r2
 800489c:	6083      	str	r3, [r0, #8]
 800489e:	6ee3      	ldr	r3, [r4, #108]	@ 0x6c
 80048a0:	e9d4 2119 	ldrd	r2, r1, [r4, #100]	@ 0x64
 80048a4:	6051      	str	r1, [r2, #4]
 80048a6:	2b00      	cmp	r3, #0
 80048a8:	d0ee      	beq.n	8004888 <HAL_DMA_Abort+0x1e0>
 80048aa:	681a      	ldr	r2, [r3, #0]
 80048ac:	e9d4 101c 	ldrd	r1, r0, [r4, #112]	@ 0x70
 80048b0:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 80048b4:	601a      	str	r2, [r3, #0]
 80048b6:	6048      	str	r0, [r1, #4]
 80048b8:	e7e6      	b.n	8004888 <HAL_DMA_Abort+0x1e0>
 80048ba:	4b34      	ldr	r3, [pc, #208]	@ (800498c <HAL_DMA_Abort+0x2e4>)
 80048bc:	6c1a      	ldr	r2, [r3, #64]	@ 0x40
 80048be:	f022 021e 	bic.w	r2, r2, #30
 80048c2:	641a      	str	r2, [r3, #64]	@ 0x40
 80048c4:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 80048c6:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 80048ca:	655a      	str	r2, [r3, #84]	@ 0x54
 80048cc:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 80048ce:	6813      	ldr	r3, [r2, #0]
 80048d0:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80048d4:	6013      	str	r3, [r2, #0]
 80048d6:	e76a      	b.n	80047ae <HAL_DMA_Abort+0x106>
 80048d8:	2120      	movs	r1, #32
 80048da:	2203      	movs	r2, #3
 80048dc:	2300      	movs	r3, #0
 80048de:	6561      	str	r1, [r4, #84]	@ 0x54
 80048e0:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
 80048e4:	f884 2035 	strb.w	r2, [r4, #53]	@ 0x35
 80048e8:	e752      	b.n	8004790 <HAL_DMA_Abort+0xe8>
 80048ea:	4b28      	ldr	r3, [pc, #160]	@ (800498c <HAL_DMA_Abort+0x2e4>)
 80048ec:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
 80048f0:	f022 021e 	bic.w	r2, r2, #30
 80048f4:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80048f8:	f8d3 209c 	ldr.w	r2, [r3, #156]	@ 0x9c
 80048fc:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 8004900:	f8c3 209c 	str.w	r2, [r3, #156]	@ 0x9c
 8004904:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 8004906:	6813      	ldr	r3, [r2, #0]
 8004908:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 800490c:	6013      	str	r3, [r2, #0]
 800490e:	e74e      	b.n	80047ae <HAL_DMA_Abort+0x106>
 8004910:	4b1e      	ldr	r3, [pc, #120]	@ (800498c <HAL_DMA_Abort+0x2e4>)
 8004912:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8004914:	f022 021e 	bic.w	r2, r2, #30
 8004918:	659a      	str	r2, [r3, #88]	@ 0x58
 800491a:	6eda      	ldr	r2, [r3, #108]	@ 0x6c
 800491c:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 8004920:	66da      	str	r2, [r3, #108]	@ 0x6c
 8004922:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 8004924:	6813      	ldr	r3, [r2, #0]
 8004926:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 800492a:	6013      	str	r3, [r2, #0]
 800492c:	e73f      	b.n	80047ae <HAL_DMA_Abort+0x106>
 800492e:	4b17      	ldr	r3, [pc, #92]	@ (800498c <HAL_DMA_Abort+0x2e4>)
 8004930:	6f1a      	ldr	r2, [r3, #112]	@ 0x70
 8004932:	f022 021e 	bic.w	r2, r2, #30
 8004936:	671a      	str	r2, [r3, #112]	@ 0x70
 8004938:	f8d3 2084 	ldr.w	r2, [r3, #132]	@ 0x84
 800493c:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 8004940:	f8c3 2084 	str.w	r2, [r3, #132]	@ 0x84
 8004944:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 8004946:	6813      	ldr	r3, [r2, #0]
 8004948:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 800494c:	6013      	str	r3, [r2, #0]
 800494e:	e72e      	b.n	80047ae <HAL_DMA_Abort+0x106>
 8004950:	4b0e      	ldr	r3, [pc, #56]	@ (800498c <HAL_DMA_Abort+0x2e4>)
 8004952:	f8d3 20a0 	ldr.w	r2, [r3, #160]	@ 0xa0
 8004956:	f022 021e 	bic.w	r2, r2, #30
 800495a:	f8c3 20a0 	str.w	r2, [r3, #160]	@ 0xa0
 800495e:	f8d3 20b4 	ldr.w	r2, [r3, #180]	@ 0xb4
 8004962:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 8004966:	f8c3 20b4 	str.w	r2, [r3, #180]	@ 0xb4
 800496a:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 800496c:	6813      	ldr	r3, [r2, #0]
 800496e:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 8004972:	6013      	str	r3, [r2, #0]
 8004974:	e71b      	b.n	80047ae <HAL_DMA_Abort+0x106>
 8004976:	bf00      	nop
 8004978:	40020010 	.word	0x40020010
 800497c:	58025408 	.word	0x58025408
 8004980:	5802541c 	.word	0x5802541c
 8004984:	58025430 	.word	0x58025430
 8004988:	58025494 	.word	0x58025494
 800498c:	40020000 	.word	0x40020000
 8004990:	4b1e      	ldr	r3, [pc, #120]	@ (8004a0c <HAL_DMA_Abort+0x364>)
 8004992:	f8d3 20b8 	ldr.w	r2, [r3, #184]	@ 0xb8
 8004996:	f022 021e 	bic.w	r2, r2, #30
 800499a:	f8c3 20b8 	str.w	r2, [r3, #184]	@ 0xb8
 800499e:	f8d3 20cc 	ldr.w	r2, [r3, #204]	@ 0xcc
 80049a2:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 80049a6:	f8c3 20cc 	str.w	r2, [r3, #204]	@ 0xcc
 80049aa:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 80049ac:	6813      	ldr	r3, [r2, #0]
 80049ae:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80049b2:	6013      	str	r3, [r2, #0]
 80049b4:	e6fb      	b.n	80047ae <HAL_DMA_Abort+0x106>
 80049b6:	4b16      	ldr	r3, [pc, #88]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 80049b8:	691a      	ldr	r2, [r3, #16]
 80049ba:	f022 021e 	bic.w	r2, r2, #30
 80049be:	611a      	str	r2, [r3, #16]
 80049c0:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 80049c2:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 80049c6:	625a      	str	r2, [r3, #36]	@ 0x24
 80049c8:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 80049ca:	6813      	ldr	r3, [r2, #0]
 80049cc:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80049d0:	6013      	str	r3, [r2, #0]
 80049d2:	e6ec      	b.n	80047ae <HAL_DMA_Abort+0x106>
 80049d4:	4b0e      	ldr	r3, [pc, #56]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 80049d6:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 80049d8:	f022 021e 	bic.w	r2, r2, #30
 80049dc:	629a      	str	r2, [r3, #40]	@ 0x28
 80049de:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 80049e0:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 80049e4:	63da      	str	r2, [r3, #60]	@ 0x3c
 80049e6:	6e22      	ldr	r2, [r4, #96]	@ 0x60
 80049e8:	6813      	ldr	r3, [r2, #0]
 80049ea:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80049ee:	6013      	str	r3, [r2, #0]
 80049f0:	e6dd      	b.n	80047ae <HAL_DMA_Abort+0x106>
 80049f2:	4b07      	ldr	r3, [pc, #28]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 80049f4:	e762      	b.n	80048bc <HAL_DMA_Abort+0x214>
 80049f6:	4b06      	ldr	r3, [pc, #24]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 80049f8:	e78b      	b.n	8004912 <HAL_DMA_Abort+0x26a>
 80049fa:	4b05      	ldr	r3, [pc, #20]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 80049fc:	e798      	b.n	8004930 <HAL_DMA_Abort+0x288>
 80049fe:	4b04      	ldr	r3, [pc, #16]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 8004a00:	e774      	b.n	80048ec <HAL_DMA_Abort+0x244>
 8004a02:	4b03      	ldr	r3, [pc, #12]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 8004a04:	e7c5      	b.n	8004992 <HAL_DMA_Abort+0x2ea>
 8004a06:	4b02      	ldr	r3, [pc, #8]	@ (8004a10 <HAL_DMA_Abort+0x368>)
 8004a08:	e7a3      	b.n	8004952 <HAL_DMA_Abort+0x2aa>
 8004a0a:	bf00      	nop
 8004a0c:	40020000 	.word	0x40020000
 8004a10:	40020400 	.word	0x40020400

08004a14 <HAL_DMA_Abort_IT>:
 8004a14:	2800      	cmp	r0, #0
 8004a16:	d062      	beq.n	8004ade <HAL_DMA_Abort_IT+0xca>
 8004a18:	b538      	push	{r3, r4, r5, lr}
 8004a1a:	f890 3035 	ldrb.w	r3, [r0, #53]	@ 0x35
 8004a1e:	2b02      	cmp	r3, #2
 8004a20:	d159      	bne.n	8004ad6 <HAL_DMA_Abort_IT+0xc2>
 8004a22:	6802      	ldr	r2, [r0, #0]
 8004a24:	4b57      	ldr	r3, [pc, #348]	@ (8004b84 <HAL_DMA_Abort_IT+0x170>)
 8004a26:	4c58      	ldr	r4, [pc, #352]	@ (8004b88 <HAL_DMA_Abort_IT+0x174>)
 8004a28:	4958      	ldr	r1, [pc, #352]	@ (8004b8c <HAL_DMA_Abort_IT+0x178>)
 8004a2a:	42a2      	cmp	r2, r4
 8004a2c:	bf18      	it	ne
 8004a2e:	429a      	cmpne	r2, r3
 8004a30:	f104 0430 	add.w	r4, r4, #48	@ 0x30
 8004a34:	bf0c      	ite	eq
 8004a36:	2301      	moveq	r3, #1
 8004a38:	2300      	movne	r3, #0
 8004a3a:	428a      	cmp	r2, r1
 8004a3c:	bf08      	it	eq
 8004a3e:	f043 0301 	orreq.w	r3, r3, #1
 8004a42:	3130      	adds	r1, #48	@ 0x30
 8004a44:	42a2      	cmp	r2, r4
 8004a46:	bf08      	it	eq
 8004a48:	f043 0301 	orreq.w	r3, r3, #1
 8004a4c:	3430      	adds	r4, #48	@ 0x30
 8004a4e:	428a      	cmp	r2, r1
 8004a50:	bf08      	it	eq
 8004a52:	f043 0301 	orreq.w	r3, r3, #1
 8004a56:	3130      	adds	r1, #48	@ 0x30
 8004a58:	42a2      	cmp	r2, r4
 8004a5a:	bf08      	it	eq
 8004a5c:	f043 0301 	orreq.w	r3, r3, #1
 8004a60:	3430      	adds	r4, #48	@ 0x30
 8004a62:	428a      	cmp	r2, r1
 8004a64:	bf08      	it	eq
 8004a66:	f043 0301 	orreq.w	r3, r3, #1
 8004a6a:	f501 715c 	add.w	r1, r1, #880	@ 0x370
 8004a6e:	42a2      	cmp	r2, r4
 8004a70:	bf08      	it	eq
 8004a72:	f043 0301 	orreq.w	r3, r3, #1
 8004a76:	f504 745c 	add.w	r4, r4, #880	@ 0x370
 8004a7a:	428a      	cmp	r2, r1
 8004a7c:	bf08      	it	eq
 8004a7e:	f043 0301 	orreq.w	r3, r3, #1
 8004a82:	3130      	adds	r1, #48	@ 0x30
 8004a84:	42a2      	cmp	r2, r4
 8004a86:	bf08      	it	eq
 8004a88:	f043 0301 	orreq.w	r3, r3, #1
 8004a8c:	3430      	adds	r4, #48	@ 0x30
 8004a8e:	428a      	cmp	r2, r1
 8004a90:	bf08      	it	eq
 8004a92:	f043 0301 	orreq.w	r3, r3, #1
 8004a96:	3130      	adds	r1, #48	@ 0x30
 8004a98:	42a2      	cmp	r2, r4
 8004a9a:	bf08      	it	eq
 8004a9c:	f043 0301 	orreq.w	r3, r3, #1
 8004aa0:	3430      	adds	r4, #48	@ 0x30
 8004aa2:	428a      	cmp	r2, r1
 8004aa4:	bf08      	it	eq
 8004aa6:	f043 0301 	orreq.w	r3, r3, #1
 8004aaa:	3130      	adds	r1, #48	@ 0x30
 8004aac:	42a2      	cmp	r2, r4
 8004aae:	bf08      	it	eq
 8004ab0:	f043 0301 	orreq.w	r3, r3, #1
 8004ab4:	428a      	cmp	r2, r1
 8004ab6:	bf08      	it	eq
 8004ab8:	f043 0301 	orreq.w	r3, r3, #1
 8004abc:	b913      	cbnz	r3, 8004ac4 <HAL_DMA_Abort_IT+0xb0>
 8004abe:	4b34      	ldr	r3, [pc, #208]	@ (8004b90 <HAL_DMA_Abort_IT+0x17c>)
 8004ac0:	429a      	cmp	r2, r3
 8004ac2:	d10e      	bne.n	8004ae2 <HAL_DMA_Abort_IT+0xce>
 8004ac4:	2304      	movs	r3, #4
 8004ac6:	f880 3035 	strb.w	r3, [r0, #53]	@ 0x35
 8004aca:	6813      	ldr	r3, [r2, #0]
 8004acc:	f023 0301 	bic.w	r3, r3, #1
 8004ad0:	6013      	str	r3, [r2, #0]
 8004ad2:	2000      	movs	r0, #0
 8004ad4:	bd38      	pop	{r3, r4, r5, pc}
 8004ad6:	2380      	movs	r3, #128	@ 0x80
 8004ad8:	6543      	str	r3, [r0, #84]	@ 0x54
 8004ada:	2001      	movs	r0, #1
 8004adc:	bd38      	pop	{r3, r4, r5, pc}
 8004ade:	2001      	movs	r0, #1
 8004ae0:	4770      	bx	lr
 8004ae2:	4b2c      	ldr	r3, [pc, #176]	@ (8004b94 <HAL_DMA_Abort_IT+0x180>)
 8004ae4:	4d2c      	ldr	r5, [pc, #176]	@ (8004b98 <HAL_DMA_Abort_IT+0x184>)
 8004ae6:	6811      	ldr	r1, [r2, #0]
 8004ae8:	42aa      	cmp	r2, r5
 8004aea:	bf18      	it	ne
 8004aec:	429a      	cmpne	r2, r3
 8004aee:	4c2b      	ldr	r4, [pc, #172]	@ (8004b9c <HAL_DMA_Abort_IT+0x188>)
 8004af0:	f021 010e 	bic.w	r1, r1, #14
 8004af4:	f105 053c 	add.w	r5, r5, #60	@ 0x3c
 8004af8:	bf0c      	ite	eq
 8004afa:	2301      	moveq	r3, #1
 8004afc:	2300      	movne	r3, #0
 8004afe:	6011      	str	r1, [r2, #0]
 8004b00:	42a2      	cmp	r2, r4
 8004b02:	bf08      	it	eq
 8004b04:	f043 0301 	orreq.w	r3, r3, #1
 8004b08:	6811      	ldr	r1, [r2, #0]
 8004b0a:	3428      	adds	r4, #40	@ 0x28
 8004b0c:	42aa      	cmp	r2, r5
 8004b0e:	bf08      	it	eq
 8004b10:	f043 0301 	orreq.w	r3, r3, #1
 8004b14:	f021 0101 	bic.w	r1, r1, #1
 8004b18:	42a2      	cmp	r2, r4
 8004b1a:	bf08      	it	eq
 8004b1c:	f043 0301 	orreq.w	r3, r3, #1
 8004b20:	3414      	adds	r4, #20
 8004b22:	6011      	str	r1, [r2, #0]
 8004b24:	42a2      	cmp	r2, r4
 8004b26:	bf08      	it	eq
 8004b28:	f043 0301 	orreq.w	r3, r3, #1
 8004b2c:	491c      	ldr	r1, [pc, #112]	@ (8004ba0 <HAL_DMA_Abort_IT+0x18c>)
 8004b2e:	428a      	cmp	r2, r1
 8004b30:	bf08      	it	eq
 8004b32:	f043 0301 	orreq.w	r3, r3, #1
 8004b36:	b913      	cbnz	r3, 8004b3e <HAL_DMA_Abort_IT+0x12a>
 8004b38:	4b1a      	ldr	r3, [pc, #104]	@ (8004ba4 <HAL_DMA_Abort_IT+0x190>)
 8004b3a:	429a      	cmp	r2, r3
 8004b3c:	d117      	bne.n	8004b6e <HAL_DMA_Abort_IT+0x15a>
 8004b3e:	2301      	movs	r3, #1
 8004b40:	6d85      	ldr	r5, [r0, #88]	@ 0x58
 8004b42:	e9d0 1417 	ldrd	r1, r4, [r0, #92]	@ 0x5c
 8004b46:	6822      	ldr	r2, [r4, #0]
 8004b48:	f001 011f 	and.w	r1, r1, #31
 8004b4c:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8004b50:	408b      	lsls	r3, r1
 8004b52:	6022      	str	r2, [r4, #0]
 8004b54:	606b      	str	r3, [r5, #4]
 8004b56:	6ec3      	ldr	r3, [r0, #108]	@ 0x6c
 8004b58:	e9d0 2119 	ldrd	r2, r1, [r0, #100]	@ 0x64
 8004b5c:	6051      	str	r1, [r2, #4]
 8004b5e:	b133      	cbz	r3, 8004b6e <HAL_DMA_Abort_IT+0x15a>
 8004b60:	681a      	ldr	r2, [r3, #0]
 8004b62:	e9d0 141c 	ldrd	r1, r4, [r0, #112]	@ 0x70
 8004b66:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8004b6a:	601a      	str	r2, [r3, #0]
 8004b6c:	604c      	str	r4, [r1, #4]
 8004b6e:	2101      	movs	r1, #1
 8004b70:	2200      	movs	r2, #0
 8004b72:	6d03      	ldr	r3, [r0, #80]	@ 0x50
 8004b74:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
 8004b78:	f880 2034 	strb.w	r2, [r0, #52]	@ 0x34
 8004b7c:	2b00      	cmp	r3, #0
 8004b7e:	d0a8      	beq.n	8004ad2 <HAL_DMA_Abort_IT+0xbe>
 8004b80:	4798      	blx	r3
 8004b82:	e7a6      	b.n	8004ad2 <HAL_DMA_Abort_IT+0xbe>
 8004b84:	40020010 	.word	0x40020010
 8004b88:	40020028 	.word	0x40020028
 8004b8c:	40020040 	.word	0x40020040
 8004b90:	400204b8 	.word	0x400204b8
 8004b94:	5802541c 	.word	0x5802541c
 8004b98:	58025408 	.word	0x58025408
 8004b9c:	58025430 	.word	0x58025430
 8004ba0:	58025480 	.word	0x58025480
 8004ba4:	58025494 	.word	0x58025494

08004ba8 <HAL_DMA_IRQHandler>:
 8004ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004baa:	2200      	movs	r2, #0
 8004bac:	4b94      	ldr	r3, [pc, #592]	@ (8004e00 <HAL_DMA_IRQHandler+0x258>)
 8004bae:	b083      	sub	sp, #12
 8004bb0:	6d85      	ldr	r5, [r0, #88]	@ 0x58
 8004bb2:	4607      	mov	r7, r0
 8004bb4:	681e      	ldr	r6, [r3, #0]
 8004bb6:	9201      	str	r2, [sp, #4]
 8004bb8:	4b92      	ldr	r3, [pc, #584]	@ (8004e04 <HAL_DMA_IRQHandler+0x25c>)
 8004bba:	6802      	ldr	r2, [r0, #0]
 8004bbc:	4892      	ldr	r0, [pc, #584]	@ (8004e08 <HAL_DMA_IRQHandler+0x260>)
 8004bbe:	682c      	ldr	r4, [r5, #0]
 8004bc0:	4282      	cmp	r2, r0
 8004bc2:	bf18      	it	ne
 8004bc4:	429a      	cmpne	r2, r3
 8004bc6:	f100 0018 	add.w	r0, r0, #24
 8004bca:	6829      	ldr	r1, [r5, #0]
 8004bcc:	bf0c      	ite	eq
 8004bce:	2301      	moveq	r3, #1
 8004bd0:	2300      	movne	r3, #0
 8004bd2:	4282      	cmp	r2, r0
 8004bd4:	bf08      	it	eq
 8004bd6:	f043 0301 	orreq.w	r3, r3, #1
 8004bda:	3018      	adds	r0, #24
 8004bdc:	4282      	cmp	r2, r0
 8004bde:	bf08      	it	eq
 8004be0:	f043 0301 	orreq.w	r3, r3, #1
 8004be4:	3018      	adds	r0, #24
 8004be6:	4282      	cmp	r2, r0
 8004be8:	bf08      	it	eq
 8004bea:	f043 0301 	orreq.w	r3, r3, #1
 8004bee:	3018      	adds	r0, #24
 8004bf0:	4282      	cmp	r2, r0
 8004bf2:	bf08      	it	eq
 8004bf4:	f043 0301 	orreq.w	r3, r3, #1
 8004bf8:	3018      	adds	r0, #24
 8004bfa:	4282      	cmp	r2, r0
 8004bfc:	bf08      	it	eq
 8004bfe:	f043 0301 	orreq.w	r3, r3, #1
 8004c02:	3018      	adds	r0, #24
 8004c04:	4282      	cmp	r2, r0
 8004c06:	bf08      	it	eq
 8004c08:	f043 0301 	orreq.w	r3, r3, #1
 8004c0c:	f500 7056 	add.w	r0, r0, #856	@ 0x358
 8004c10:	4282      	cmp	r2, r0
 8004c12:	bf08      	it	eq
 8004c14:	f043 0301 	orreq.w	r3, r3, #1
 8004c18:	3018      	adds	r0, #24
 8004c1a:	4282      	cmp	r2, r0
 8004c1c:	bf08      	it	eq
 8004c1e:	f043 0301 	orreq.w	r3, r3, #1
 8004c22:	3018      	adds	r0, #24
 8004c24:	4282      	cmp	r2, r0
 8004c26:	bf08      	it	eq
 8004c28:	f043 0301 	orreq.w	r3, r3, #1
 8004c2c:	3018      	adds	r0, #24
 8004c2e:	4282      	cmp	r2, r0
 8004c30:	bf08      	it	eq
 8004c32:	f043 0301 	orreq.w	r3, r3, #1
 8004c36:	3018      	adds	r0, #24
 8004c38:	4282      	cmp	r2, r0
 8004c3a:	bf08      	it	eq
 8004c3c:	f043 0301 	orreq.w	r3, r3, #1
 8004c40:	3018      	adds	r0, #24
 8004c42:	4282      	cmp	r2, r0
 8004c44:	bf08      	it	eq
 8004c46:	f043 0301 	orreq.w	r3, r3, #1
 8004c4a:	3018      	adds	r0, #24
 8004c4c:	4282      	cmp	r2, r0
 8004c4e:	bf08      	it	eq
 8004c50:	f043 0301 	orreq.w	r3, r3, #1
 8004c54:	b91b      	cbnz	r3, 8004c5e <HAL_DMA_IRQHandler+0xb6>
 8004c56:	4b6d      	ldr	r3, [pc, #436]	@ (8004e0c <HAL_DMA_IRQHandler+0x264>)
 8004c58:	429a      	cmp	r2, r3
 8004c5a:	f040 812f 	bne.w	8004ebc <HAL_DMA_IRQHandler+0x314>
 8004c5e:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 8004c60:	2108      	movs	r1, #8
 8004c62:	f003 031f 	and.w	r3, r3, #31
 8004c66:	4099      	lsls	r1, r3
 8004c68:	4221      	tst	r1, r4
 8004c6a:	d00b      	beq.n	8004c84 <HAL_DMA_IRQHandler+0xdc>
 8004c6c:	6810      	ldr	r0, [r2, #0]
 8004c6e:	0740      	lsls	r0, r0, #29
 8004c70:	d508      	bpl.n	8004c84 <HAL_DMA_IRQHandler+0xdc>
 8004c72:	6810      	ldr	r0, [r2, #0]
 8004c74:	f020 0004 	bic.w	r0, r0, #4
 8004c78:	6010      	str	r0, [r2, #0]
 8004c7a:	60a9      	str	r1, [r5, #8]
 8004c7c:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 8004c7e:	f041 0101 	orr.w	r1, r1, #1
 8004c82:	6579      	str	r1, [r7, #84]	@ 0x54
 8004c84:	fa24 f103 	lsr.w	r1, r4, r3
 8004c88:	07c8      	lsls	r0, r1, #31
 8004c8a:	d509      	bpl.n	8004ca0 <HAL_DMA_IRQHandler+0xf8>
 8004c8c:	6951      	ldr	r1, [r2, #20]
 8004c8e:	0609      	lsls	r1, r1, #24
 8004c90:	d506      	bpl.n	8004ca0 <HAL_DMA_IRQHandler+0xf8>
 8004c92:	2101      	movs	r1, #1
 8004c94:	4099      	lsls	r1, r3
 8004c96:	60a9      	str	r1, [r5, #8]
 8004c98:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 8004c9a:	f041 0102 	orr.w	r1, r1, #2
 8004c9e:	6579      	str	r1, [r7, #84]	@ 0x54
 8004ca0:	2104      	movs	r1, #4
 8004ca2:	4099      	lsls	r1, r3
 8004ca4:	4221      	tst	r1, r4
 8004ca6:	d007      	beq.n	8004cb8 <HAL_DMA_IRQHandler+0x110>
 8004ca8:	6810      	ldr	r0, [r2, #0]
 8004caa:	0780      	lsls	r0, r0, #30
 8004cac:	d504      	bpl.n	8004cb8 <HAL_DMA_IRQHandler+0x110>
 8004cae:	60a9      	str	r1, [r5, #8]
 8004cb0:	6d79      	ldr	r1, [r7, #84]	@ 0x54
 8004cb2:	f041 0104 	orr.w	r1, r1, #4
 8004cb6:	6579      	str	r1, [r7, #84]	@ 0x54
 8004cb8:	2110      	movs	r1, #16
 8004cba:	4099      	lsls	r1, r3
 8004cbc:	4221      	tst	r1, r4
 8004cbe:	f000 80b0 	beq.w	8004e22 <HAL_DMA_IRQHandler+0x27a>
 8004cc2:	6810      	ldr	r0, [r2, #0]
 8004cc4:	0700      	lsls	r0, r0, #28
 8004cc6:	f140 80ac 	bpl.w	8004e22 <HAL_DMA_IRQHandler+0x27a>
 8004cca:	60a9      	str	r1, [r5, #8]
 8004ccc:	6811      	ldr	r1, [r2, #0]
 8004cce:	f411 2f80 	tst.w	r1, #262144	@ 0x40000
 8004cd2:	6811      	ldr	r1, [r2, #0]
 8004cd4:	f040 809e 	bne.w	8004e14 <HAL_DMA_IRQHandler+0x26c>
 8004cd8:	05c9      	lsls	r1, r1, #23
 8004cda:	d403      	bmi.n	8004ce4 <HAL_DMA_IRQHandler+0x13c>
 8004cdc:	6811      	ldr	r1, [r2, #0]
 8004cde:	f021 0108 	bic.w	r1, r1, #8
 8004ce2:	6011      	str	r1, [r2, #0]
 8004ce4:	6c39      	ldr	r1, [r7, #64]	@ 0x40
 8004ce6:	2900      	cmp	r1, #0
 8004ce8:	f000 809b 	beq.w	8004e22 <HAL_DMA_IRQHandler+0x27a>
 8004cec:	4638      	mov	r0, r7
 8004cee:	4788      	blx	r1
 8004cf0:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 8004cf2:	2120      	movs	r1, #32
 8004cf4:	f003 031f 	and.w	r3, r3, #31
 8004cf8:	4099      	lsls	r1, r3
 8004cfa:	4221      	tst	r1, r4
 8004cfc:	d053      	beq.n	8004da6 <HAL_DMA_IRQHandler+0x1fe>
 8004cfe:	683a      	ldr	r2, [r7, #0]
 8004d00:	4840      	ldr	r0, [pc, #256]	@ (8004e04 <HAL_DMA_IRQHandler+0x25c>)
 8004d02:	4c41      	ldr	r4, [pc, #260]	@ (8004e08 <HAL_DMA_IRQHandler+0x260>)
 8004d04:	42a2      	cmp	r2, r4
 8004d06:	bf18      	it	ne
 8004d08:	4282      	cmpne	r2, r0
 8004d0a:	f104 0418 	add.w	r4, r4, #24
 8004d0e:	bf0c      	ite	eq
 8004d10:	2001      	moveq	r0, #1
 8004d12:	2000      	movne	r0, #0
 8004d14:	42a2      	cmp	r2, r4
 8004d16:	bf08      	it	eq
 8004d18:	f040 0001 	orreq.w	r0, r0, #1
 8004d1c:	3418      	adds	r4, #24
 8004d1e:	42a2      	cmp	r2, r4
 8004d20:	bf08      	it	eq
 8004d22:	f040 0001 	orreq.w	r0, r0, #1
 8004d26:	3418      	adds	r4, #24
 8004d28:	42a2      	cmp	r2, r4
 8004d2a:	bf08      	it	eq
 8004d2c:	f040 0001 	orreq.w	r0, r0, #1
 8004d30:	3418      	adds	r4, #24
 8004d32:	42a2      	cmp	r2, r4
 8004d34:	bf08      	it	eq
 8004d36:	f040 0001 	orreq.w	r0, r0, #1
 8004d3a:	3418      	adds	r4, #24
 8004d3c:	42a2      	cmp	r2, r4
 8004d3e:	bf08      	it	eq
 8004d40:	f040 0001 	orreq.w	r0, r0, #1
 8004d44:	3418      	adds	r4, #24
 8004d46:	42a2      	cmp	r2, r4
 8004d48:	bf08      	it	eq
 8004d4a:	f040 0001 	orreq.w	r0, r0, #1
 8004d4e:	f504 7456 	add.w	r4, r4, #856	@ 0x358
 8004d52:	42a2      	cmp	r2, r4
 8004d54:	bf08      	it	eq
 8004d56:	f040 0001 	orreq.w	r0, r0, #1
 8004d5a:	3418      	adds	r4, #24
 8004d5c:	42a2      	cmp	r2, r4
 8004d5e:	bf08      	it	eq
 8004d60:	f040 0001 	orreq.w	r0, r0, #1
 8004d64:	3418      	adds	r4, #24
 8004d66:	42a2      	cmp	r2, r4
 8004d68:	bf08      	it	eq
 8004d6a:	f040 0001 	orreq.w	r0, r0, #1
 8004d6e:	3418      	adds	r4, #24
 8004d70:	42a2      	cmp	r2, r4
 8004d72:	bf08      	it	eq
 8004d74:	f040 0001 	orreq.w	r0, r0, #1
 8004d78:	3418      	adds	r4, #24
 8004d7a:	42a2      	cmp	r2, r4
 8004d7c:	bf08      	it	eq
 8004d7e:	f040 0001 	orreq.w	r0, r0, #1
 8004d82:	3418      	adds	r4, #24
 8004d84:	42a2      	cmp	r2, r4
 8004d86:	bf08      	it	eq
 8004d88:	f040 0001 	orreq.w	r0, r0, #1
 8004d8c:	3418      	adds	r4, #24
 8004d8e:	42a2      	cmp	r2, r4
 8004d90:	bf08      	it	eq
 8004d92:	f040 0001 	orreq.w	r0, r0, #1
 8004d96:	2800      	cmp	r0, #0
 8004d98:	d147      	bne.n	8004e2a <HAL_DMA_IRQHandler+0x282>
 8004d9a:	481c      	ldr	r0, [pc, #112]	@ (8004e0c <HAL_DMA_IRQHandler+0x264>)
 8004d9c:	4282      	cmp	r2, r0
 8004d9e:	d044      	beq.n	8004e2a <HAL_DMA_IRQHandler+0x282>
 8004da0:	6810      	ldr	r0, [r2, #0]
 8004da2:	0780      	lsls	r0, r0, #30
 8004da4:	d444      	bmi.n	8004e30 <HAL_DMA_IRQHandler+0x288>
 8004da6:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 8004da8:	2b00      	cmp	r3, #0
 8004daa:	d070      	beq.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004dac:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 8004dae:	07dc      	lsls	r4, r3, #31
 8004db0:	d51e      	bpl.n	8004df0 <HAL_DMA_IRQHandler+0x248>
 8004db2:	683a      	ldr	r2, [r7, #0]
 8004db4:	2104      	movs	r1, #4
 8004db6:	f887 1035 	strb.w	r1, [r7, #53]	@ 0x35
 8004dba:	4915      	ldr	r1, [pc, #84]	@ (8004e10 <HAL_DMA_IRQHandler+0x268>)
 8004dbc:	6813      	ldr	r3, [r2, #0]
 8004dbe:	fba1 6106 	umull	r6, r1, r1, r6
 8004dc2:	f023 0301 	bic.w	r3, r3, #1
 8004dc6:	0a89      	lsrs	r1, r1, #10
 8004dc8:	6013      	str	r3, [r2, #0]
 8004dca:	e002      	b.n	8004dd2 <HAL_DMA_IRQHandler+0x22a>
 8004dcc:	6813      	ldr	r3, [r2, #0]
 8004dce:	07d8      	lsls	r0, r3, #31
 8004dd0:	d504      	bpl.n	8004ddc <HAL_DMA_IRQHandler+0x234>
 8004dd2:	9b01      	ldr	r3, [sp, #4]
 8004dd4:	3301      	adds	r3, #1
 8004dd6:	428b      	cmp	r3, r1
 8004dd8:	9301      	str	r3, [sp, #4]
 8004dda:	d9f7      	bls.n	8004dcc <HAL_DMA_IRQHandler+0x224>
 8004ddc:	6813      	ldr	r3, [r2, #0]
 8004dde:	07db      	lsls	r3, r3, #31
 8004de0:	bf4c      	ite	mi
 8004de2:	2303      	movmi	r3, #3
 8004de4:	2301      	movpl	r3, #1
 8004de6:	f887 3035 	strb.w	r3, [r7, #53]	@ 0x35
 8004dea:	2300      	movs	r3, #0
 8004dec:	f887 3034 	strb.w	r3, [r7, #52]	@ 0x34
 8004df0:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 8004df2:	2b00      	cmp	r3, #0
 8004df4:	d04b      	beq.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004df6:	4638      	mov	r0, r7
 8004df8:	b003      	add	sp, #12
 8004dfa:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8004dfe:	4718      	bx	r3
 8004e00:	20000004 	.word	0x20000004
 8004e04:	40020010 	.word	0x40020010
 8004e08:	40020028 	.word	0x40020028
 8004e0c:	400204b8 	.word	0x400204b8
 8004e10:	1b4e81b5 	.word	0x1b4e81b5
 8004e14:	0308      	lsls	r0, r1, #12
 8004e16:	f57f af65 	bpl.w	8004ce4 <HAL_DMA_IRQHandler+0x13c>
 8004e1a:	6cb9      	ldr	r1, [r7, #72]	@ 0x48
 8004e1c:	2900      	cmp	r1, #0
 8004e1e:	f47f af65 	bne.w	8004cec <HAL_DMA_IRQHandler+0x144>
 8004e22:	2120      	movs	r1, #32
 8004e24:	4099      	lsls	r1, r3
 8004e26:	420c      	tst	r4, r1
 8004e28:	d0bd      	beq.n	8004da6 <HAL_DMA_IRQHandler+0x1fe>
 8004e2a:	6810      	ldr	r0, [r2, #0]
 8004e2c:	06c4      	lsls	r4, r0, #27
 8004e2e:	d5ba      	bpl.n	8004da6 <HAL_DMA_IRQHandler+0x1fe>
 8004e30:	60a9      	str	r1, [r5, #8]
 8004e32:	f897 1035 	ldrb.w	r1, [r7, #53]	@ 0x35
 8004e36:	2904      	cmp	r1, #4
 8004e38:	d00e      	beq.n	8004e58 <HAL_DMA_IRQHandler+0x2b0>
 8004e3a:	6813      	ldr	r3, [r2, #0]
 8004e3c:	f413 2f80 	tst.w	r3, #262144	@ 0x40000
 8004e40:	6813      	ldr	r3, [r2, #0]
 8004e42:	d026      	beq.n	8004e92 <HAL_DMA_IRQHandler+0x2ea>
 8004e44:	031d      	lsls	r5, r3, #12
 8004e46:	d531      	bpl.n	8004eac <HAL_DMA_IRQHandler+0x304>
 8004e48:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8004e4a:	2b00      	cmp	r3, #0
 8004e4c:	d0ab      	beq.n	8004da6 <HAL_DMA_IRQHandler+0x1fe>
 8004e4e:	4638      	mov	r0, r7
 8004e50:	4798      	blx	r3
 8004e52:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 8004e54:	b1db      	cbz	r3, 8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004e56:	e7a9      	b.n	8004dac <HAL_DMA_IRQHandler+0x204>
 8004e58:	6811      	ldr	r1, [r2, #0]
 8004e5a:	f021 0116 	bic.w	r1, r1, #22
 8004e5e:	6011      	str	r1, [r2, #0]
 8004e60:	6951      	ldr	r1, [r2, #20]
 8004e62:	f021 0180 	bic.w	r1, r1, #128	@ 0x80
 8004e66:	6151      	str	r1, [r2, #20]
 8004e68:	6c39      	ldr	r1, [r7, #64]	@ 0x40
 8004e6a:	b319      	cbz	r1, 8004eb4 <HAL_DMA_IRQHandler+0x30c>
 8004e6c:	6811      	ldr	r1, [r2, #0]
 8004e6e:	f021 0108 	bic.w	r1, r1, #8
 8004e72:	6011      	str	r1, [r2, #0]
 8004e74:	223f      	movs	r2, #63	@ 0x3f
 8004e76:	2101      	movs	r1, #1
 8004e78:	fa02 f303 	lsl.w	r3, r2, r3
 8004e7c:	2200      	movs	r2, #0
 8004e7e:	60ab      	str	r3, [r5, #8]
 8004e80:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 8004e82:	f887 1035 	strb.w	r1, [r7, #53]	@ 0x35
 8004e86:	f887 2034 	strb.w	r2, [r7, #52]	@ 0x34
 8004e8a:	2b00      	cmp	r3, #0
 8004e8c:	d1b3      	bne.n	8004df6 <HAL_DMA_IRQHandler+0x24e>
 8004e8e:	b003      	add	sp, #12
 8004e90:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004e92:	f413 7380 	ands.w	r3, r3, #256	@ 0x100
 8004e96:	d1d7      	bne.n	8004e48 <HAL_DMA_IRQHandler+0x2a0>
 8004e98:	6811      	ldr	r1, [r2, #0]
 8004e9a:	f021 0110 	bic.w	r1, r1, #16
 8004e9e:	6011      	str	r1, [r2, #0]
 8004ea0:	2201      	movs	r2, #1
 8004ea2:	f887 3034 	strb.w	r3, [r7, #52]	@ 0x34
 8004ea6:	f887 2035 	strb.w	r2, [r7, #53]	@ 0x35
 8004eaa:	e7cd      	b.n	8004e48 <HAL_DMA_IRQHandler+0x2a0>
 8004eac:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8004eae:	2b00      	cmp	r3, #0
 8004eb0:	d1cd      	bne.n	8004e4e <HAL_DMA_IRQHandler+0x2a6>
 8004eb2:	e778      	b.n	8004da6 <HAL_DMA_IRQHandler+0x1fe>
 8004eb4:	6cb9      	ldr	r1, [r7, #72]	@ 0x48
 8004eb6:	2900      	cmp	r1, #0
 8004eb8:	d1d8      	bne.n	8004e6c <HAL_DMA_IRQHandler+0x2c4>
 8004eba:	e7db      	b.n	8004e74 <HAL_DMA_IRQHandler+0x2cc>
 8004ebc:	4b40      	ldr	r3, [pc, #256]	@ (8004fc0 <HAL_DMA_IRQHandler+0x418>)
 8004ebe:	4841      	ldr	r0, [pc, #260]	@ (8004fc4 <HAL_DMA_IRQHandler+0x41c>)
 8004ec0:	4282      	cmp	r2, r0
 8004ec2:	bf18      	it	ne
 8004ec4:	429a      	cmpne	r2, r3
 8004ec6:	f100 0014 	add.w	r0, r0, #20
 8004eca:	bf0c      	ite	eq
 8004ecc:	2301      	moveq	r3, #1
 8004ece:	2300      	movne	r3, #0
 8004ed0:	4282      	cmp	r2, r0
 8004ed2:	bf08      	it	eq
 8004ed4:	f043 0301 	orreq.w	r3, r3, #1
 8004ed8:	3014      	adds	r0, #20
 8004eda:	4282      	cmp	r2, r0
 8004edc:	bf08      	it	eq
 8004ede:	f043 0301 	orreq.w	r3, r3, #1
 8004ee2:	3014      	adds	r0, #20
 8004ee4:	4282      	cmp	r2, r0
 8004ee6:	bf08      	it	eq
 8004ee8:	f043 0301 	orreq.w	r3, r3, #1
 8004eec:	3014      	adds	r0, #20
 8004eee:	4282      	cmp	r2, r0
 8004ef0:	bf08      	it	eq
 8004ef2:	f043 0301 	orreq.w	r3, r3, #1
 8004ef6:	3014      	adds	r0, #20
 8004ef8:	4282      	cmp	r2, r0
 8004efa:	bf08      	it	eq
 8004efc:	f043 0301 	orreq.w	r3, r3, #1
 8004f00:	b913      	cbnz	r3, 8004f08 <HAL_DMA_IRQHandler+0x360>
 8004f02:	4b31      	ldr	r3, [pc, #196]	@ (8004fc8 <HAL_DMA_IRQHandler+0x420>)
 8004f04:	429a      	cmp	r2, r3
 8004f06:	d1c2      	bne.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f08:	6df8      	ldr	r0, [r7, #92]	@ 0x5c
 8004f0a:	2404      	movs	r4, #4
 8004f0c:	6813      	ldr	r3, [r2, #0]
 8004f0e:	f000 001f 	and.w	r0, r0, #31
 8004f12:	4084      	lsls	r4, r0
 8004f14:	420c      	tst	r4, r1
 8004f16:	d00b      	beq.n	8004f30 <HAL_DMA_IRQHandler+0x388>
 8004f18:	075e      	lsls	r6, r3, #29
 8004f1a:	d509      	bpl.n	8004f30 <HAL_DMA_IRQHandler+0x388>
 8004f1c:	0419      	lsls	r1, r3, #16
 8004f1e:	606c      	str	r4, [r5, #4]
 8004f20:	d532      	bpl.n	8004f88 <HAL_DMA_IRQHandler+0x3e0>
 8004f22:	03da      	lsls	r2, r3, #15
 8004f24:	d436      	bmi.n	8004f94 <HAL_DMA_IRQHandler+0x3ec>
 8004f26:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8004f28:	2b00      	cmp	r3, #0
 8004f2a:	f47f af64 	bne.w	8004df6 <HAL_DMA_IRQHandler+0x24e>
 8004f2e:	e7ae      	b.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f30:	2402      	movs	r4, #2
 8004f32:	4084      	lsls	r4, r0
 8004f34:	420c      	tst	r4, r1
 8004f36:	d00b      	beq.n	8004f50 <HAL_DMA_IRQHandler+0x3a8>
 8004f38:	079e      	lsls	r6, r3, #30
 8004f3a:	d509      	bpl.n	8004f50 <HAL_DMA_IRQHandler+0x3a8>
 8004f3c:	0419      	lsls	r1, r3, #16
 8004f3e:	606c      	str	r4, [r5, #4]
 8004f40:	d52d      	bpl.n	8004f9e <HAL_DMA_IRQHandler+0x3f6>
 8004f42:	03da      	lsls	r2, r3, #15
 8004f44:	d437      	bmi.n	8004fb6 <HAL_DMA_IRQHandler+0x40e>
 8004f46:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8004f48:	2b00      	cmp	r3, #0
 8004f4a:	f47f af54 	bne.w	8004df6 <HAL_DMA_IRQHandler+0x24e>
 8004f4e:	e79e      	b.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f50:	2408      	movs	r4, #8
 8004f52:	4084      	lsls	r4, r0
 8004f54:	420c      	tst	r4, r1
 8004f56:	d09a      	beq.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f58:	071b      	lsls	r3, r3, #28
 8004f5a:	d598      	bpl.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f5c:	6813      	ldr	r3, [r2, #0]
 8004f5e:	2100      	movs	r1, #0
 8004f60:	f023 030e 	bic.w	r3, r3, #14
 8004f64:	6013      	str	r3, [r2, #0]
 8004f66:	2301      	movs	r3, #1
 8004f68:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 8004f6a:	fa03 f000 	lsl.w	r0, r3, r0
 8004f6e:	6068      	str	r0, [r5, #4]
 8004f70:	657b      	str	r3, [r7, #84]	@ 0x54
 8004f72:	f887 1034 	strb.w	r1, [r7, #52]	@ 0x34
 8004f76:	f887 3035 	strb.w	r3, [r7, #53]	@ 0x35
 8004f7a:	2a00      	cmp	r2, #0
 8004f7c:	d087      	beq.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f7e:	4638      	mov	r0, r7
 8004f80:	b003      	add	sp, #12
 8004f82:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8004f86:	4710      	bx	r2
 8004f88:	069b      	lsls	r3, r3, #26
 8004f8a:	d403      	bmi.n	8004f94 <HAL_DMA_IRQHandler+0x3ec>
 8004f8c:	6813      	ldr	r3, [r2, #0]
 8004f8e:	f023 0304 	bic.w	r3, r3, #4
 8004f92:	6013      	str	r3, [r2, #0]
 8004f94:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 8004f96:	2b00      	cmp	r3, #0
 8004f98:	f47f af2d 	bne.w	8004df6 <HAL_DMA_IRQHandler+0x24e>
 8004f9c:	e777      	b.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004f9e:	f013 0320 	ands.w	r3, r3, #32
 8004fa2:	d108      	bne.n	8004fb6 <HAL_DMA_IRQHandler+0x40e>
 8004fa4:	6811      	ldr	r1, [r2, #0]
 8004fa6:	2001      	movs	r0, #1
 8004fa8:	f021 010a 	bic.w	r1, r1, #10
 8004fac:	6011      	str	r1, [r2, #0]
 8004fae:	f887 0035 	strb.w	r0, [r7, #53]	@ 0x35
 8004fb2:	f887 3034 	strb.w	r3, [r7, #52]	@ 0x34
 8004fb6:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8004fb8:	2b00      	cmp	r3, #0
 8004fba:	f47f af1c 	bne.w	8004df6 <HAL_DMA_IRQHandler+0x24e>
 8004fbe:	e766      	b.n	8004e8e <HAL_DMA_IRQHandler+0x2e6>
 8004fc0:	58025408 	.word	0x58025408
 8004fc4:	5802541c 	.word	0x5802541c
 8004fc8:	58025494 	.word	0x58025494

08004fcc <HAL_PWREx_ConfigSupply>:
 8004fcc:	b538      	push	{r3, r4, r5, lr}
 8004fce:	4c10      	ldr	r4, [pc, #64]	@ (8005010 <HAL_PWREx_ConfigSupply+0x44>)
 8004fd0:	68e3      	ldr	r3, [r4, #12]
 8004fd2:	f013 0f04 	tst.w	r3, #4
 8004fd6:	68e3      	ldr	r3, [r4, #12]
 8004fd8:	d105      	bne.n	8004fe6 <HAL_PWREx_ConfigSupply+0x1a>
 8004fda:	f003 0307 	and.w	r3, r3, #7
 8004fde:	1a18      	subs	r0, r3, r0
 8004fe0:	bf18      	it	ne
 8004fe2:	2001      	movne	r0, #1
 8004fe4:	bd38      	pop	{r3, r4, r5, pc}
 8004fe6:	f023 0307 	bic.w	r3, r3, #7
 8004fea:	4303      	orrs	r3, r0
 8004fec:	60e3      	str	r3, [r4, #12]
 8004fee:	f000 f8f7 	bl	80051e0 <HAL_GetTick>
 8004ff2:	4605      	mov	r5, r0
 8004ff4:	e005      	b.n	8005002 <HAL_PWREx_ConfigSupply+0x36>
 8004ff6:	f000 f8f3 	bl	80051e0 <HAL_GetTick>
 8004ffa:	1b40      	subs	r0, r0, r5
 8004ffc:	f5b0 7f7a 	cmp.w	r0, #1000	@ 0x3e8
 8005000:	d804      	bhi.n	800500c <HAL_PWREx_ConfigSupply+0x40>
 8005002:	6863      	ldr	r3, [r4, #4]
 8005004:	049b      	lsls	r3, r3, #18
 8005006:	d5f6      	bpl.n	8004ff6 <HAL_PWREx_ConfigSupply+0x2a>
 8005008:	2000      	movs	r0, #0
 800500a:	bd38      	pop	{r3, r4, r5, pc}
 800500c:	2001      	movs	r0, #1
 800500e:	bd38      	pop	{r3, r4, r5, pc}
 8005010:	58024800 	.word	0x58024800

08005014 <HAL_NVIC_SetPriorityGrouping>:
 8005014:	4906      	ldr	r1, [pc, #24]	@ (8005030 <HAL_NVIC_SetPriorityGrouping+0x1c>)
 8005016:	f64f 0cff 	movw	ip, #63743	@ 0xf8ff
 800501a:	0200      	lsls	r0, r0, #8
 800501c:	4b05      	ldr	r3, [pc, #20]	@ (8005034 <HAL_NVIC_SetPriorityGrouping+0x20>)
 800501e:	68ca      	ldr	r2, [r1, #12]
 8005020:	f400 60e0 	and.w	r0, r0, #1792	@ 0x700
 8005024:	ea02 020c 	and.w	r2, r2, ip
 8005028:	4310      	orrs	r0, r2
 800502a:	4303      	orrs	r3, r0
 800502c:	60cb      	str	r3, [r1, #12]
 800502e:	4770      	bx	lr
 8005030:	e000ed00 	.word	0xe000ed00
 8005034:	05fa0000 	.word	0x05fa0000

08005038 <HAL_NVIC_SetPriority>:
 8005038:	4b1a      	ldr	r3, [pc, #104]	@ (80050a4 <HAL_NVIC_SetPriority+0x6c>)
 800503a:	68db      	ldr	r3, [r3, #12]
 800503c:	f3c3 2302 	ubfx	r3, r3, #8, #3
 8005040:	b500      	push	{lr}
 8005042:	f1c3 0e07 	rsb	lr, r3, #7
 8005046:	f103 0c04 	add.w	ip, r3, #4
 800504a:	f1be 0f04 	cmp.w	lr, #4
 800504e:	bf28      	it	cs
 8005050:	f04f 0e04 	movcs.w	lr, #4
 8005054:	f1bc 0f06 	cmp.w	ip, #6
 8005058:	d91a      	bls.n	8005090 <HAL_NVIC_SetPriority+0x58>
 800505a:	f1a3 0c03 	sub.w	ip, r3, #3
 800505e:	f04f 33ff 	mov.w	r3, #4294967295
 8005062:	fa03 f30c 	lsl.w	r3, r3, ip
 8005066:	ea22 0203 	bic.w	r2, r2, r3
 800506a:	f04f 33ff 	mov.w	r3, #4294967295
 800506e:	2800      	cmp	r0, #0
 8005070:	fa03 f30e 	lsl.w	r3, r3, lr
 8005074:	ea21 0303 	bic.w	r3, r1, r3
 8005078:	fa03 f30c 	lsl.w	r3, r3, ip
 800507c:	ea43 0302 	orr.w	r3, r3, r2
 8005080:	ea4f 1303 	mov.w	r3, r3, lsl #4
 8005084:	b2db      	uxtb	r3, r3
 8005086:	db06      	blt.n	8005096 <HAL_NVIC_SetPriority+0x5e>
 8005088:	4a07      	ldr	r2, [pc, #28]	@ (80050a8 <HAL_NVIC_SetPriority+0x70>)
 800508a:	5413      	strb	r3, [r2, r0]
 800508c:	f85d fb04 	ldr.w	pc, [sp], #4
 8005090:	2200      	movs	r2, #0
 8005092:	4694      	mov	ip, r2
 8005094:	e7e9      	b.n	800506a <HAL_NVIC_SetPriority+0x32>
 8005096:	f000 000f 	and.w	r0, r0, #15
 800509a:	4a04      	ldr	r2, [pc, #16]	@ (80050ac <HAL_NVIC_SetPriority+0x74>)
 800509c:	5413      	strb	r3, [r2, r0]
 800509e:	f85d fb04 	ldr.w	pc, [sp], #4
 80050a2:	bf00      	nop
 80050a4:	e000ed00 	.word	0xe000ed00
 80050a8:	e000e400 	.word	0xe000e400
 80050ac:	e000ed14 	.word	0xe000ed14

080050b0 <HAL_NVIC_EnableIRQ>:
 80050b0:	2800      	cmp	r0, #0
 80050b2:	db07      	blt.n	80050c4 <HAL_NVIC_EnableIRQ+0x14>
 80050b4:	2301      	movs	r3, #1
 80050b6:	f000 011f 	and.w	r1, r0, #31
 80050ba:	4a03      	ldr	r2, [pc, #12]	@ (80050c8 <HAL_NVIC_EnableIRQ+0x18>)
 80050bc:	0940      	lsrs	r0, r0, #5
 80050be:	408b      	lsls	r3, r1
 80050c0:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
 80050c4:	4770      	bx	lr
 80050c6:	bf00      	nop
 80050c8:	e000e100 	.word	0xe000e100

080050cc <HAL_MPU_Disable>:
 80050cc:	f3bf 8f5f 	dmb	sy
 80050d0:	4b04      	ldr	r3, [pc, #16]	@ (80050e4 <HAL_MPU_Disable+0x18>)
 80050d2:	2100      	movs	r1, #0
 80050d4:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 80050d6:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
 80050da:	625a      	str	r2, [r3, #36]	@ 0x24
 80050dc:	f8c3 1094 	str.w	r1, [r3, #148]	@ 0x94
 80050e0:	4770      	bx	lr
 80050e2:	bf00      	nop
 80050e4:	e000ed00 	.word	0xe000ed00

080050e8 <HAL_MPU_Enable>:
 80050e8:	4b06      	ldr	r3, [pc, #24]	@ (8005104 <HAL_MPU_Enable+0x1c>)
 80050ea:	f040 0001 	orr.w	r0, r0, #1
 80050ee:	f8c3 0094 	str.w	r0, [r3, #148]	@ 0x94
 80050f2:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 80050f4:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
 80050f8:	625a      	str	r2, [r3, #36]	@ 0x24
 80050fa:	f3bf 8f4f 	dsb	sy
 80050fe:	f3bf 8f6f 	isb	sy
 8005102:	4770      	bx	lr
 8005104:	e000ed00 	.word	0xe000ed00

08005108 <HAL_MPU_ConfigRegion>:
 8005108:	4a16      	ldr	r2, [pc, #88]	@ (8005164 <HAL_MPU_ConfigRegion+0x5c>)
 800510a:	7843      	ldrb	r3, [r0, #1]
 800510c:	f8c2 3098 	str.w	r3, [r2, #152]	@ 0x98
 8005110:	f8d2 30a0 	ldr.w	r3, [r2, #160]	@ 0xa0
 8005114:	f023 0301 	bic.w	r3, r3, #1
 8005118:	f8c2 30a0 	str.w	r3, [r2, #160]	@ 0xa0
 800511c:	6843      	ldr	r3, [r0, #4]
 800511e:	f8c2 309c 	str.w	r3, [r2, #156]	@ 0x9c
 8005122:	7ac3      	ldrb	r3, [r0, #11]
 8005124:	f890 c00c 	ldrb.w	ip, [r0, #12]
 8005128:	061b      	lsls	r3, r3, #24
 800512a:	7801      	ldrb	r1, [r0, #0]
 800512c:	ea43 730c 	orr.w	r3, r3, ip, lsl #28
 8005130:	f890 c00a 	ldrb.w	ip, [r0, #10]
 8005134:	430b      	orrs	r3, r1
 8005136:	7b41      	ldrb	r1, [r0, #13]
 8005138:	ea43 43cc 	orr.w	r3, r3, ip, lsl #19
 800513c:	f890 c00e 	ldrb.w	ip, [r0, #14]
 8005140:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
 8005144:	7bc1      	ldrb	r1, [r0, #15]
 8005146:	ea43 434c 	orr.w	r3, r3, ip, lsl #17
 800514a:	f890 c009 	ldrb.w	ip, [r0, #9]
 800514e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8005152:	7a01      	ldrb	r1, [r0, #8]
 8005154:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
 8005158:	ea43 0341 	orr.w	r3, r3, r1, lsl #1
 800515c:	f8c2 30a0 	str.w	r3, [r2, #160]	@ 0xa0
 8005160:	4770      	bx	lr
 8005162:	bf00      	nop
 8005164:	e000ed00 	.word	0xe000ed00

08005168 <HAL_Init>:
 8005168:	b510      	push	{r4, lr}
 800516a:	2003      	movs	r0, #3
 800516c:	4c12      	ldr	r4, [pc, #72]	@ (80051b8 <HAL_Init+0x50>)
 800516e:	f7ff ff51 	bl	8005014 <HAL_NVIC_SetPriorityGrouping>
 8005172:	f7fc fd71 	bl	8001c58 <HAL_RCC_GetSysClockFreq>
 8005176:	4b11      	ldr	r3, [pc, #68]	@ (80051bc <HAL_Init+0x54>)
 8005178:	4911      	ldr	r1, [pc, #68]	@ (80051c0 <HAL_Init+0x58>)
 800517a:	699a      	ldr	r2, [r3, #24]
 800517c:	699b      	ldr	r3, [r3, #24]
 800517e:	f3c2 2203 	ubfx	r2, r2, #8, #4
 8005182:	f003 030f 	and.w	r3, r3, #15
 8005186:	5c8a      	ldrb	r2, [r1, r2]
 8005188:	5ccb      	ldrb	r3, [r1, r3]
 800518a:	f002 021f 	and.w	r2, r2, #31
 800518e:	490d      	ldr	r1, [pc, #52]	@ (80051c4 <HAL_Init+0x5c>)
 8005190:	f003 031f 	and.w	r3, r3, #31
 8005194:	40d0      	lsrs	r0, r2
 8005196:	fa20 f303 	lsr.w	r3, r0, r3
 800519a:	6008      	str	r0, [r1, #0]
 800519c:	200f      	movs	r0, #15
 800519e:	6023      	str	r3, [r4, #0]
 80051a0:	f003 fdb4 	bl	8008d0c <HAL_InitTick>
 80051a4:	b110      	cbz	r0, 80051ac <HAL_Init+0x44>
 80051a6:	2401      	movs	r4, #1
 80051a8:	4620      	mov	r0, r4
 80051aa:	bd10      	pop	{r4, pc}
 80051ac:	4604      	mov	r4, r0
 80051ae:	f003 fd93 	bl	8008cd8 <HAL_MspInit>
 80051b2:	4620      	mov	r0, r4
 80051b4:	bd10      	pop	{r4, pc}
 80051b6:	bf00      	nop
 80051b8:	20000000 	.word	0x20000000
 80051bc:	58024400 	.word	0x58024400
 80051c0:	0800d62c 	.word	0x0800d62c
 80051c4:	20000004 	.word	0x20000004

080051c8 <HAL_IncTick>:
 80051c8:	4a03      	ldr	r2, [pc, #12]	@ (80051d8 <HAL_IncTick+0x10>)
 80051ca:	4b04      	ldr	r3, [pc, #16]	@ (80051dc <HAL_IncTick+0x14>)
 80051cc:	6811      	ldr	r1, [r2, #0]
 80051ce:	781b      	ldrb	r3, [r3, #0]
 80051d0:	440b      	add	r3, r1
 80051d2:	6013      	str	r3, [r2, #0]
 80051d4:	4770      	bx	lr
 80051d6:	bf00      	nop
 80051d8:	20000274 	.word	0x20000274
 80051dc:	20000008 	.word	0x20000008

080051e0 <HAL_GetTick>:
 80051e0:	4b01      	ldr	r3, [pc, #4]	@ (80051e8 <HAL_GetTick+0x8>)
 80051e2:	6818      	ldr	r0, [r3, #0]
 80051e4:	4770      	bx	lr
 80051e6:	bf00      	nop
 80051e8:	20000274 	.word	0x20000274

080051ec <HAL_GetREVID>:
 80051ec:	4b01      	ldr	r3, [pc, #4]	@ (80051f4 <HAL_GetREVID+0x8>)
 80051ee:	6818      	ldr	r0, [r3, #0]
 80051f0:	0c00      	lsrs	r0, r0, #16
 80051f2:	4770      	bx	lr
 80051f4:	5c001000 	.word	0x5c001000

080051f8 <HAL_SYSCFG_AnalogSwitchConfig>:
 80051f8:	4a03      	ldr	r2, [pc, #12]	@ (8005208 <HAL_SYSCFG_AnalogSwitchConfig+0x10>)
 80051fa:	6853      	ldr	r3, [r2, #4]
 80051fc:	ea23 0300 	bic.w	r3, r3, r0
 8005200:	430b      	orrs	r3, r1
 8005202:	6053      	str	r3, [r2, #4]
 8005204:	4770      	bx	lr
 8005206:	bf00      	nop
 8005208:	58000400 	.word	0x58000400

0800520c <HAL_FDCAN_Init>:
 800520c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005210:	b099      	sub	sp, #100	@ 0x64
 8005212:	4604      	mov	r4, r0
 8005214:	224c      	movs	r2, #76	@ 0x4c
 8005216:	4948      	ldr	r1, [pc, #288]	@ (8005338 <HAL_FDCAN_Init+0x12c>)
 8005218:	a805      	add	r0, sp, #20
 800521a:	f006 f9f6 	bl	800b60a <memcpy>
 800521e:	2c00      	cmp	r4, #0
 8005220:	d07a      	beq.n	8005318 <HAL_FDCAN_Init+0x10c>
 8005222:	6823      	ldr	r3, [r4, #0]
 8005224:	4a45      	ldr	r2, [pc, #276]	@ (800533c <HAL_FDCAN_Init+0x130>)
 8005226:	4293      	cmp	r3, r2
 8005228:	f000 8081 	beq.w	800532e <HAL_FDCAN_Init+0x122>
 800522c:	f894 2098 	ldrb.w	r2, [r4, #152]	@ 0x98
 8005230:	f002 01ff 	and.w	r1, r2, #255	@ 0xff
 8005234:	2a00      	cmp	r2, #0
 8005236:	d073      	beq.n	8005320 <HAL_FDCAN_Init+0x114>
 8005238:	699a      	ldr	r2, [r3, #24]
 800523a:	f022 0210 	bic.w	r2, r2, #16
 800523e:	619a      	str	r2, [r3, #24]
 8005240:	f7ff ffce 	bl	80051e0 <HAL_GetTick>
 8005244:	4605      	mov	r5, r0
 8005246:	e004      	b.n	8005252 <HAL_FDCAN_Init+0x46>
 8005248:	f7ff ffca 	bl	80051e0 <HAL_GetTick>
 800524c:	1b40      	subs	r0, r0, r5
 800524e:	280a      	cmp	r0, #10
 8005250:	d859      	bhi.n	8005306 <HAL_FDCAN_Init+0xfa>
 8005252:	6823      	ldr	r3, [r4, #0]
 8005254:	699a      	ldr	r2, [r3, #24]
 8005256:	0711      	lsls	r1, r2, #28
 8005258:	d4f6      	bmi.n	8005248 <HAL_FDCAN_Init+0x3c>
 800525a:	699a      	ldr	r2, [r3, #24]
 800525c:	f042 0201 	orr.w	r2, r2, #1
 8005260:	619a      	str	r2, [r3, #24]
 8005262:	f7ff ffbd 	bl	80051e0 <HAL_GetTick>
 8005266:	4605      	mov	r5, r0
 8005268:	e004      	b.n	8005274 <HAL_FDCAN_Init+0x68>
 800526a:	f7ff ffb9 	bl	80051e0 <HAL_GetTick>
 800526e:	1b40      	subs	r0, r0, r5
 8005270:	280a      	cmp	r0, #10
 8005272:	d848      	bhi.n	8005306 <HAL_FDCAN_Init+0xfa>
 8005274:	6823      	ldr	r3, [r4, #0]
 8005276:	699a      	ldr	r2, [r3, #24]
 8005278:	07d2      	lsls	r2, r2, #31
 800527a:	d5f6      	bpl.n	800526a <HAL_FDCAN_Init+0x5e>
 800527c:	699a      	ldr	r2, [r3, #24]
 800527e:	f042 0202 	orr.w	r2, r2, #2
 8005282:	619a      	str	r2, [r3, #24]
 8005284:	7c22      	ldrb	r2, [r4, #16]
 8005286:	2a01      	cmp	r2, #1
 8005288:	699a      	ldr	r2, [r3, #24]
 800528a:	bf0c      	ite	eq
 800528c:	f022 0240 	biceq.w	r2, r2, #64	@ 0x40
 8005290:	f042 0240 	orrne.w	r2, r2, #64	@ 0x40
 8005294:	619a      	str	r2, [r3, #24]
 8005296:	7c62      	ldrb	r2, [r4, #17]
 8005298:	2a01      	cmp	r2, #1
 800529a:	699a      	ldr	r2, [r3, #24]
 800529c:	bf0c      	ite	eq
 800529e:	f442 4280 	orreq.w	r2, r2, #16384	@ 0x4000
 80052a2:	f422 4280 	bicne.w	r2, r2, #16384	@ 0x4000
 80052a6:	619a      	str	r2, [r3, #24]
 80052a8:	7ca2      	ldrb	r2, [r4, #18]
 80052aa:	2a01      	cmp	r2, #1
 80052ac:	699a      	ldr	r2, [r3, #24]
 80052ae:	bf0c      	ite	eq
 80052b0:	f422 5280 	biceq.w	r2, r2, #4096	@ 0x1000
 80052b4:	f442 5280 	orrne.w	r2, r2, #4096	@ 0x1000
 80052b8:	619a      	str	r2, [r3, #24]
 80052ba:	699a      	ldr	r2, [r3, #24]
 80052bc:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
 80052c0:	f422 7240 	bic.w	r2, r2, #768	@ 0x300
 80052c4:	2901      	cmp	r1, #1
 80052c6:	ea42 0200 	orr.w	r2, r2, r0
 80052ca:	619a      	str	r2, [r3, #24]
 80052cc:	699a      	ldr	r2, [r3, #24]
 80052ce:	f022 02a4 	bic.w	r2, r2, #164	@ 0xa4
 80052d2:	619a      	str	r2, [r3, #24]
 80052d4:	691a      	ldr	r2, [r3, #16]
 80052d6:	f022 0210 	bic.w	r2, r2, #16
 80052da:	611a      	str	r2, [r3, #16]
 80052dc:	d030      	beq.n	8005340 <HAL_FDCAN_Init+0x134>
 80052de:	2900      	cmp	r1, #0
 80052e0:	d032      	beq.n	8005348 <HAL_FDCAN_Init+0x13c>
 80052e2:	2902      	cmp	r1, #2
 80052e4:	699a      	ldr	r2, [r3, #24]
 80052e6:	f000 817c 	beq.w	80055e2 <HAL_FDCAN_Init+0x3d6>
 80052ea:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
 80052ee:	2903      	cmp	r1, #3
 80052f0:	619a      	str	r2, [r3, #24]
 80052f2:	691a      	ldr	r2, [r3, #16]
 80052f4:	f042 0210 	orr.w	r2, r2, #16
 80052f8:	611a      	str	r2, [r3, #16]
 80052fa:	d125      	bne.n	8005348 <HAL_FDCAN_Init+0x13c>
 80052fc:	699a      	ldr	r2, [r3, #24]
 80052fe:	f042 0220 	orr.w	r2, r2, #32
 8005302:	619a      	str	r2, [r3, #24]
 8005304:	e020      	b.n	8005348 <HAL_FDCAN_Init+0x13c>
 8005306:	f8d4 309c 	ldr.w	r3, [r4, #156]	@ 0x9c
 800530a:	2203      	movs	r2, #3
 800530c:	f043 0301 	orr.w	r3, r3, #1
 8005310:	f8c4 309c 	str.w	r3, [r4, #156]	@ 0x9c
 8005314:	f884 2098 	strb.w	r2, [r4, #152]	@ 0x98
 8005318:	2001      	movs	r0, #1
 800531a:	b019      	add	sp, #100	@ 0x64
 800531c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005320:	4620      	mov	r0, r4
 8005322:	f884 1099 	strb.w	r1, [r4, #153]	@ 0x99
 8005326:	f003 fab3 	bl	8008890 <HAL_FDCAN_MspInit>
 800532a:	6823      	ldr	r3, [r4, #0]
 800532c:	e784      	b.n	8005238 <HAL_FDCAN_Init+0x2c>
 800532e:	f502 7280 	add.w	r2, r2, #256	@ 0x100
 8005332:	6062      	str	r2, [r4, #4]
 8005334:	e77a      	b.n	800522c <HAL_FDCAN_Init+0x20>
 8005336:	bf00      	nop
 8005338:	0800d5d8 	.word	0x0800d5d8
 800533c:	4000a000 	.word	0x4000a000
 8005340:	699a      	ldr	r2, [r3, #24]
 8005342:	f042 0204 	orr.w	r2, r2, #4
 8005346:	619a      	str	r2, [r3, #24]
 8005348:	f5b0 7f40 	cmp.w	r0, #768	@ 0x300
 800534c:	e9d4 1206 	ldrd	r1, r2, [r4, #24]
 8005350:	f102 32ff 	add.w	r2, r2, #4294967295
 8005354:	f101 31ff 	add.w	r1, r1, #4294967295
 8005358:	ea4f 2202 	mov.w	r2, r2, lsl #8
 800535c:	ea42 6241 	orr.w	r2, r2, r1, lsl #25
 8005360:	6a21      	ldr	r1, [r4, #32]
 8005362:	f101 31ff 	add.w	r1, r1, #4294967295
 8005366:	ea42 0201 	orr.w	r2, r2, r1
 800536a:	6961      	ldr	r1, [r4, #20]
 800536c:	f101 31ff 	add.w	r1, r1, #4294967295
 8005370:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8005374:	61da      	str	r2, [r3, #28]
 8005376:	d10e      	bne.n	8005396 <HAL_FDCAN_Init+0x18a>
 8005378:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 800537a:	e9d4 020b 	ldrd	r0, r2, [r4, #44]	@ 0x2c
 800537e:	3901      	subs	r1, #1
 8005380:	3a01      	subs	r2, #1
 8005382:	3801      	subs	r0, #1
 8005384:	0112      	lsls	r2, r2, #4
 8005386:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 800538a:	430a      	orrs	r2, r1
 800538c:	6a61      	ldr	r1, [r4, #36]	@ 0x24
 800538e:	3901      	subs	r1, #1
 8005390:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8005394:	60da      	str	r2, [r3, #12]
 8005396:	f8d4 b060 	ldr.w	fp, [r4, #96]	@ 0x60
 800539a:	f1bb 0f00 	cmp.w	fp, #0
 800539e:	d005      	beq.n	80053ac <HAL_FDCAN_Init+0x1a0>
 80053a0:	f8d3 20c0 	ldr.w	r2, [r3, #192]	@ 0xc0
 80053a4:	6e61      	ldr	r1, [r4, #100]	@ 0x64
 80053a6:	430a      	orrs	r2, r1
 80053a8:	f8c3 20c0 	str.w	r2, [r3, #192]	@ 0xc0
 80053ac:	6de2      	ldr	r2, [r4, #92]	@ 0x5c
 80053ae:	6ea1      	ldr	r1, [r4, #104]	@ 0x68
 80053b0:	eb1b 0f02 	cmn.w	fp, r2
 80053b4:	9201      	str	r2, [sp, #4]
 80053b6:	9103      	str	r1, [sp, #12]
 80053b8:	d00b      	beq.n	80053d2 <HAL_FDCAN_Init+0x1c6>
 80053ba:	a818      	add	r0, sp, #96	@ 0x60
 80053bc:	f8d3 20c8 	ldr.w	r2, [r3, #200]	@ 0xc8
 80053c0:	eb00 0181 	add.w	r1, r0, r1, lsl #2
 80053c4:	f022 0207 	bic.w	r2, r2, #7
 80053c8:	f851 1c4c 	ldr.w	r1, [r1, #-76]
 80053cc:	430a      	orrs	r2, r1
 80053ce:	f8c3 20c8 	str.w	r2, [r3, #200]	@ 0xc8
 80053d2:	e9d4 8510 	ldrd	r8, r5, [r4, #64]	@ 0x40
 80053d6:	f1b8 0f00 	cmp.w	r8, #0
 80053da:	d00b      	beq.n	80053f4 <HAL_FDCAN_Init+0x1e8>
 80053dc:	a918      	add	r1, sp, #96	@ 0x60
 80053de:	f8d3 20bc 	ldr.w	r2, [r3, #188]	@ 0xbc
 80053e2:	eb01 0185 	add.w	r1, r1, r5, lsl #2
 80053e6:	f022 0207 	bic.w	r2, r2, #7
 80053ea:	f851 1c4c 	ldr.w	r1, [r1, #-76]
 80053ee:	430a      	orrs	r2, r1
 80053f0:	f8c3 20bc 	str.w	r2, [r3, #188]	@ 0xbc
 80053f4:	e9d4 6012 	ldrd	r6, r0, [r4, #72]	@ 0x48
 80053f8:	b166      	cbz	r6, 8005414 <HAL_FDCAN_Init+0x208>
 80053fa:	a918      	add	r1, sp, #96	@ 0x60
 80053fc:	f8d3 20bc 	ldr.w	r2, [r3, #188]	@ 0xbc
 8005400:	eb01 0180 	add.w	r1, r1, r0, lsl #2
 8005404:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
 8005408:	f851 1c4c 	ldr.w	r1, [r1, #-76]
 800540c:	ea42 1201 	orr.w	r2, r2, r1, lsl #4
 8005410:	f8c3 20bc 	str.w	r2, [r3, #188]	@ 0xbc
 8005414:	e9d4 2714 	ldrd	r2, r7, [r4, #80]	@ 0x50
 8005418:	b16a      	cbz	r2, 8005436 <HAL_FDCAN_Init+0x22a>
 800541a:	f10d 0c60 	add.w	ip, sp, #96	@ 0x60
 800541e:	f8d3 10bc 	ldr.w	r1, [r3, #188]	@ 0xbc
 8005422:	eb0c 0c87 	add.w	ip, ip, r7, lsl #2
 8005426:	f421 61e0 	bic.w	r1, r1, #1792	@ 0x700
 800542a:	f85c cc4c 	ldr.w	ip, [ip, #-76]
 800542e:	ea41 210c 	orr.w	r1, r1, ip, lsl #8
 8005432:	f8c3 10bc 	str.w	r1, [r3, #188]	@ 0xbc
 8005436:	496d      	ldr	r1, [pc, #436]	@ (80055ec <HAL_FDCAN_Init+0x3e0>)
 8005438:	428b      	cmp	r3, r1
 800543a:	f000 80c9 	beq.w	80055d0 <HAL_FDCAN_Init+0x3c4>
 800543e:	fb07 f202 	mul.w	r2, r7, r2
 8005442:	f8d4 e034 	ldr.w	lr, [r4, #52]	@ 0x34
 8005446:	fb05 f908 	mul.w	r9, r5, r8
 800544a:	4d69      	ldr	r5, [pc, #420]	@ (80055f0 <HAL_FDCAN_Init+0x3e4>)
 800544c:	9202      	str	r2, [sp, #8]
 800544e:	2200      	movs	r2, #0
 8005450:	f8d4 c038 	ldr.w	ip, [r4, #56]	@ 0x38
 8005454:	fb00 fa06 	mul.w	sl, r0, r6
 8005458:	f8c4 209c 	str.w	r2, [r4, #156]	@ 0x9c
 800545c:	f8c4 2094 	str.w	r2, [r4, #148]	@ 0x94
 8005460:	2201      	movs	r2, #1
 8005462:	6be7      	ldr	r7, [r4, #60]	@ 0x3c
 8005464:	f884 2098 	strb.w	r2, [r4, #152]	@ 0x98
 8005468:	f8d3 2084 	ldr.w	r2, [r3, #132]	@ 0x84
 800546c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 800546e:	402a      	ands	r2, r5
 8005470:	ea42 028e 	orr.w	r2, r2, lr, lsl #2
 8005474:	f8c3 2084 	str.w	r2, [r3, #132]	@ 0x84
 8005478:	f8d3 2084 	ldr.w	r2, [r3, #132]	@ 0x84
 800547c:	f422 027f 	bic.w	r2, r2, #16711680	@ 0xff0000
 8005480:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
 8005484:	f8c3 2084 	str.w	r2, [r3, #132]	@ 0x84
 8005488:	eb0e 020c 	add.w	r2, lr, ip
 800548c:	f8d3 1088 	ldr.w	r1, [r3, #136]	@ 0x88
 8005490:	4029      	ands	r1, r5
 8005492:	ea41 0182 	orr.w	r1, r1, r2, lsl #2
 8005496:	eb02 0247 	add.w	r2, r2, r7, lsl #1
 800549a:	f8c3 1088 	str.w	r1, [r3, #136]	@ 0x88
 800549e:	f8d3 1088 	ldr.w	r1, [r3, #136]	@ 0x88
 80054a2:	f421 01fe 	bic.w	r1, r1, #8323072	@ 0x7f0000
 80054a6:	ea41 4107 	orr.w	r1, r1, r7, lsl #16
 80054aa:	f8c3 1088 	str.w	r1, [r3, #136]	@ 0x88
 80054ae:	f8d3 10a0 	ldr.w	r1, [r3, #160]	@ 0xa0
 80054b2:	4029      	ands	r1, r5
 80054b4:	ea41 0182 	orr.w	r1, r1, r2, lsl #2
 80054b8:	444a      	add	r2, r9
 80054ba:	f8c3 10a0 	str.w	r1, [r3, #160]	@ 0xa0
 80054be:	f8d3 10a0 	ldr.w	r1, [r3, #160]	@ 0xa0
 80054c2:	f421 01fe 	bic.w	r1, r1, #8323072	@ 0x7f0000
 80054c6:	ea41 4108 	orr.w	r1, r1, r8, lsl #16
 80054ca:	f8c3 10a0 	str.w	r1, [r3, #160]	@ 0xa0
 80054ce:	f8d3 10b0 	ldr.w	r1, [r3, #176]	@ 0xb0
 80054d2:	4029      	ands	r1, r5
 80054d4:	ea41 0182 	orr.w	r1, r1, r2, lsl #2
 80054d8:	f8c3 10b0 	str.w	r1, [r3, #176]	@ 0xb0
 80054dc:	eb02 010a 	add.w	r1, r2, sl
 80054e0:	f8d3 20b0 	ldr.w	r2, [r3, #176]	@ 0xb0
 80054e4:	f422 08fe 	bic.w	r8, r2, #8323072	@ 0x7f0000
 80054e8:	ea48 4606 	orr.w	r6, r8, r6, lsl #16
 80054ec:	f8c3 60b0 	str.w	r6, [r3, #176]	@ 0xb0
 80054f0:	f8d3 20ac 	ldr.w	r2, [r3, #172]	@ 0xac
 80054f4:	9e02      	ldr	r6, [sp, #8]
 80054f6:	402a      	ands	r2, r5
 80054f8:	ea42 0281 	orr.w	r2, r2, r1, lsl #2
 80054fc:	4431      	add	r1, r6
 80054fe:	f8c3 20ac 	str.w	r2, [r3, #172]	@ 0xac
 8005502:	f8d3 20f0 	ldr.w	r2, [r3, #240]	@ 0xf0
 8005506:	402a      	ands	r2, r5
 8005508:	ea42 0281 	orr.w	r2, r2, r1, lsl #2
 800550c:	eb01 0140 	add.w	r1, r1, r0, lsl #1
 8005510:	f8c3 20f0 	str.w	r2, [r3, #240]	@ 0xf0
 8005514:	f8d3 20f0 	ldr.w	r2, [r3, #240]	@ 0xf0
 8005518:	f422 127c 	bic.w	r2, r2, #4128768	@ 0x3f0000
 800551c:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
 8005520:	f8c3 20f0 	str.w	r2, [r3, #240]	@ 0xf0
 8005524:	4a33      	ldr	r2, [pc, #204]	@ (80055f4 <HAL_FDCAN_Init+0x3e8>)
 8005526:	4472      	add	r2, lr
 8005528:	0092      	lsls	r2, r2, #2
 800552a:	eb02 0c8c 	add.w	ip, r2, ip, lsl #2
 800552e:	eb0c 07c7 	add.w	r7, ip, r7, lsl #3
 8005532:	eb07 0989 	add.w	r9, r7, r9, lsl #2
 8005536:	eb09 088a 	add.w	r8, r9, sl, lsl #2
 800553a:	f8d3 a0c0 	ldr.w	sl, [r3, #192]	@ 0xc0
 800553e:	ea0a 0a05 	and.w	sl, sl, r5
 8005542:	eb08 0e86 	add.w	lr, r8, r6, lsl #2
 8005546:	ea4a 0181 	orr.w	r1, sl, r1, lsl #2
 800554a:	eb0e 06c0 	add.w	r6, lr, r0, lsl #3
 800554e:	f8c3 10c0 	str.w	r1, [r3, #192]	@ 0xc0
 8005552:	f8d3 10c0 	ldr.w	r1, [r3, #192]	@ 0xc0
 8005556:	9d01      	ldr	r5, [sp, #4]
 8005558:	f421 117c 	bic.w	r1, r1, #4128768	@ 0x3f0000
 800555c:	9803      	ldr	r0, [sp, #12]
 800555e:	ea41 4105 	orr.w	r1, r1, r5, lsl #16
 8005562:	fb00 f505 	mul.w	r5, r0, r5
 8005566:	f8c3 10c0 	str.w	r1, [r3, #192]	@ 0xc0
 800556a:	eb06 0585 	add.w	r5, r6, r5, lsl #2
 800556e:	f8d3 a0c0 	ldr.w	sl, [r3, #192]	@ 0xc0
 8005572:	fb00 f10b 	mul.w	r1, r0, fp
 8005576:	f02a 5a7c 	bic.w	sl, sl, #1056964608	@ 0x3f000000
 800557a:	eb05 0181 	add.w	r1, r5, r1, lsl #2
 800557e:	ea4a 6a0b 	orr.w	sl, sl, fp, lsl #24
 8005582:	f8c3 a0c0 	str.w	sl, [r3, #192]	@ 0xc0
 8005586:	4b1c      	ldr	r3, [pc, #112]	@ (80055f8 <HAL_FDCAN_Init+0x3ec>)
 8005588:	f8c4 5088 	str.w	r5, [r4, #136]	@ 0x88
 800558c:	4299      	cmp	r1, r3
 800558e:	66e2      	str	r2, [r4, #108]	@ 0x6c
 8005590:	f8c4 1090 	str.w	r1, [r4, #144]	@ 0x90
 8005594:	e9c4 c71c 	strd	ip, r7, [r4, #112]	@ 0x70
 8005598:	e9c4 981e 	strd	r9, r8, [r4, #120]	@ 0x78
 800559c:	e9c4 e620 	strd	lr, r6, [r4, #128]	@ 0x80
 80055a0:	d80c      	bhi.n	80055bc <HAL_FDCAN_Init+0x3b0>
 80055a2:	428a      	cmp	r2, r1
 80055a4:	d206      	bcs.n	80055b4 <HAL_FDCAN_Init+0x3a8>
 80055a6:	2300      	movs	r3, #0
 80055a8:	f842 3b04 	str.w	r3, [r2], #4
 80055ac:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80055b0:	429a      	cmp	r2, r3
 80055b2:	d3f8      	bcc.n	80055a6 <HAL_FDCAN_Init+0x39a>
 80055b4:	2000      	movs	r0, #0
 80055b6:	b019      	add	sp, #100	@ 0x64
 80055b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80055bc:	f8d4 309c 	ldr.w	r3, [r4, #156]	@ 0x9c
 80055c0:	2203      	movs	r2, #3
 80055c2:	f043 0320 	orr.w	r3, r3, #32
 80055c6:	f8c4 309c 	str.w	r3, [r4, #156]	@ 0x9c
 80055ca:	f884 2098 	strb.w	r2, [r4, #152]	@ 0x98
 80055ce:	e6a3      	b.n	8005318 <HAL_FDCAN_Init+0x10c>
 80055d0:	f8d4 c004 	ldr.w	ip, [r4, #4]
 80055d4:	f8dc 1008 	ldr.w	r1, [ip, #8]
 80055d8:	f021 0103 	bic.w	r1, r1, #3
 80055dc:	f8cc 1008 	str.w	r1, [ip, #8]
 80055e0:	e72d      	b.n	800543e <HAL_FDCAN_Init+0x232>
 80055e2:	f042 0220 	orr.w	r2, r2, #32
 80055e6:	619a      	str	r2, [r3, #24]
 80055e8:	e6ae      	b.n	8005348 <HAL_FDCAN_Init+0x13c>
 80055ea:	bf00      	nop
 80055ec:	4000a000 	.word	0x4000a000
 80055f0:	ffff0003 	.word	0xffff0003
 80055f4:	10002b00 	.word	0x10002b00
 80055f8:	4000d3fc 	.word	0x4000d3fc

080055fc <HAL_UARTEx_RxEventCallback>:
 80055fc:	4770      	bx	lr
 80055fe:	bf00      	nop

08005600 <UART_EndRxTransfer>:
 8005600:	6802      	ldr	r2, [r0, #0]
 8005602:	b410      	push	{r4}
 8005604:	e852 3f00 	ldrex	r3, [r2]
 8005608:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 800560c:	e842 3100 	strex	r1, r3, [r2]
 8005610:	2900      	cmp	r1, #0
 8005612:	d1f7      	bne.n	8005604 <UART_EndRxTransfer+0x4>
 8005614:	4c14      	ldr	r4, [pc, #80]	@ (8005668 <UART_EndRxTransfer+0x68>)
 8005616:	f102 0308 	add.w	r3, r2, #8
 800561a:	e853 3f00 	ldrex	r3, [r3]
 800561e:	4023      	ands	r3, r4
 8005620:	f102 0c08 	add.w	ip, r2, #8
 8005624:	e84c 3100 	strex	r1, r3, [ip]
 8005628:	2900      	cmp	r1, #0
 800562a:	d1f4      	bne.n	8005616 <UART_EndRxTransfer+0x16>
 800562c:	6ec3      	ldr	r3, [r0, #108]	@ 0x6c
 800562e:	2b01      	cmp	r3, #1
 8005630:	d008      	beq.n	8005644 <UART_EndRxTransfer+0x44>
 8005632:	2300      	movs	r3, #0
 8005634:	2220      	movs	r2, #32
 8005636:	f85d 4b04 	ldr.w	r4, [sp], #4
 800563a:	f8c0 208c 	str.w	r2, [r0, #140]	@ 0x8c
 800563e:	6743      	str	r3, [r0, #116]	@ 0x74
 8005640:	66c3      	str	r3, [r0, #108]	@ 0x6c
 8005642:	4770      	bx	lr
 8005644:	e852 3f00 	ldrex	r3, [r2]
 8005648:	f023 0310 	bic.w	r3, r3, #16
 800564c:	e842 3100 	strex	r1, r3, [r2]
 8005650:	2900      	cmp	r1, #0
 8005652:	d0ee      	beq.n	8005632 <UART_EndRxTransfer+0x32>
 8005654:	e852 3f00 	ldrex	r3, [r2]
 8005658:	f023 0310 	bic.w	r3, r3, #16
 800565c:	e842 3100 	strex	r1, r3, [r2]
 8005660:	2900      	cmp	r1, #0
 8005662:	d1ef      	bne.n	8005644 <UART_EndRxTransfer+0x44>
 8005664:	e7e5      	b.n	8005632 <UART_EndRxTransfer+0x32>
 8005666:	bf00      	nop
 8005668:	effffffe 	.word	0xeffffffe

0800566c <UART_DMATransmitCplt>:
 800566c:	69c3      	ldr	r3, [r0, #28]
 800566e:	6b80      	ldr	r0, [r0, #56]	@ 0x38
 8005670:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8005674:	d018      	beq.n	80056a8 <UART_DMATransmitCplt+0x3c>
 8005676:	2300      	movs	r3, #0
 8005678:	6802      	ldr	r2, [r0, #0]
 800567a:	f8a0 3056 	strh.w	r3, [r0, #86]	@ 0x56
 800567e:	f102 0308 	add.w	r3, r2, #8
 8005682:	e853 3f00 	ldrex	r3, [r3]
 8005686:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 800568a:	f102 0008 	add.w	r0, r2, #8
 800568e:	e840 3100 	strex	r1, r3, [r0]
 8005692:	2900      	cmp	r1, #0
 8005694:	d1f3      	bne.n	800567e <UART_DMATransmitCplt+0x12>
 8005696:	e852 3f00 	ldrex	r3, [r2]
 800569a:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800569e:	e842 3100 	strex	r1, r3, [r2]
 80056a2:	2900      	cmp	r1, #0
 80056a4:	d1f7      	bne.n	8005696 <UART_DMATransmitCplt+0x2a>
 80056a6:	4770      	bx	lr
 80056a8:	f8d0 3098 	ldr.w	r3, [r0, #152]	@ 0x98
 80056ac:	4718      	bx	r3
 80056ae:	bf00      	nop

080056b0 <UART_DMATxHalfCplt>:
 80056b0:	6b80      	ldr	r0, [r0, #56]	@ 0x38
 80056b2:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
 80056b6:	4718      	bx	r3

080056b8 <UART_DMAReceiveCplt>:
 80056b8:	69c3      	ldr	r3, [r0, #28]
 80056ba:	6b80      	ldr	r0, [r0, #56]	@ 0x38
 80056bc:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 80056c0:	d029      	beq.n	8005716 <UART_DMAReceiveCplt+0x5e>
 80056c2:	2200      	movs	r2, #0
 80056c4:	6803      	ldr	r3, [r0, #0]
 80056c6:	f8a0 205e 	strh.w	r2, [r0, #94]	@ 0x5e
 80056ca:	e853 2f00 	ldrex	r2, [r3]
 80056ce:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 80056d2:	e843 2100 	strex	r1, r2, [r3]
 80056d6:	2900      	cmp	r1, #0
 80056d8:	d1f7      	bne.n	80056ca <UART_DMAReceiveCplt+0x12>
 80056da:	f103 0208 	add.w	r2, r3, #8
 80056de:	e852 2f00 	ldrex	r2, [r2]
 80056e2:	f022 0201 	bic.w	r2, r2, #1
 80056e6:	f103 0c08 	add.w	ip, r3, #8
 80056ea:	e84c 2100 	strex	r1, r2, [ip]
 80056ee:	2900      	cmp	r1, #0
 80056f0:	d1f3      	bne.n	80056da <UART_DMAReceiveCplt+0x22>
 80056f2:	f103 0208 	add.w	r2, r3, #8
 80056f6:	e852 2f00 	ldrex	r2, [r2]
 80056fa:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 80056fe:	f103 0c08 	add.w	ip, r3, #8
 8005702:	e84c 2100 	strex	r1, r2, [ip]
 8005706:	2900      	cmp	r1, #0
 8005708:	d1f3      	bne.n	80056f2 <UART_DMAReceiveCplt+0x3a>
 800570a:	2220      	movs	r2, #32
 800570c:	f8c0 208c 	str.w	r2, [r0, #140]	@ 0x8c
 8005710:	6ec2      	ldr	r2, [r0, #108]	@ 0x6c
 8005712:	2a01      	cmp	r2, #1
 8005714:	d007      	beq.n	8005726 <UART_DMAReceiveCplt+0x6e>
 8005716:	2300      	movs	r3, #0
 8005718:	6703      	str	r3, [r0, #112]	@ 0x70
 800571a:	6ec3      	ldr	r3, [r0, #108]	@ 0x6c
 800571c:	2b01      	cmp	r3, #1
 800571e:	d013      	beq.n	8005748 <UART_DMAReceiveCplt+0x90>
 8005720:	f8d0 30a0 	ldr.w	r3, [r0, #160]	@ 0xa0
 8005724:	4718      	bx	r3
 8005726:	e853 2f00 	ldrex	r2, [r3]
 800572a:	f022 0210 	bic.w	r2, r2, #16
 800572e:	e843 2100 	strex	r1, r2, [r3]
 8005732:	2900      	cmp	r1, #0
 8005734:	d0ef      	beq.n	8005716 <UART_DMAReceiveCplt+0x5e>
 8005736:	e853 2f00 	ldrex	r2, [r3]
 800573a:	f022 0210 	bic.w	r2, r2, #16
 800573e:	e843 2100 	strex	r1, r2, [r3]
 8005742:	2900      	cmp	r1, #0
 8005744:	d1ef      	bne.n	8005726 <UART_DMAReceiveCplt+0x6e>
 8005746:	e7e6      	b.n	8005716 <UART_DMAReceiveCplt+0x5e>
 8005748:	f8d0 30c0 	ldr.w	r3, [r0, #192]	@ 0xc0
 800574c:	f8b0 105c 	ldrh.w	r1, [r0, #92]	@ 0x5c
 8005750:	4718      	bx	r3
 8005752:	bf00      	nop

08005754 <UART_DMARxHalfCplt>:
 8005754:	2301      	movs	r3, #1
 8005756:	6b80      	ldr	r0, [r0, #56]	@ 0x38
 8005758:	6703      	str	r3, [r0, #112]	@ 0x70
 800575a:	6ec3      	ldr	r3, [r0, #108]	@ 0x6c
 800575c:	2b01      	cmp	r3, #1
 800575e:	d002      	beq.n	8005766 <UART_DMARxHalfCplt+0x12>
 8005760:	f8d0 309c 	ldr.w	r3, [r0, #156]	@ 0x9c
 8005764:	4718      	bx	r3
 8005766:	f8b0 105c 	ldrh.w	r1, [r0, #92]	@ 0x5c
 800576a:	f8d0 30c0 	ldr.w	r3, [r0, #192]	@ 0xc0
 800576e:	0849      	lsrs	r1, r1, #1
 8005770:	4718      	bx	r3
 8005772:	bf00      	nop

08005774 <UART_DMAAbortOnError>:
 8005774:	6b80      	ldr	r0, [r0, #56]	@ 0x38
 8005776:	2200      	movs	r2, #0
 8005778:	f8d0 30a4 	ldr.w	r3, [r0, #164]	@ 0xa4
 800577c:	f8a0 205e 	strh.w	r2, [r0, #94]	@ 0x5e
 8005780:	4718      	bx	r3
 8005782:	bf00      	nop

08005784 <HAL_UART_AbortReceiveCpltCallback>:
 8005784:	4770      	bx	lr
 8005786:	bf00      	nop

08005788 <HAL_UART_TxCpltCallback>:
 8005788:	4770      	bx	lr
 800578a:	bf00      	nop

0800578c <HAL_UART_TxHalfCpltCallback>:
 800578c:	4770      	bx	lr
 800578e:	bf00      	nop

08005790 <HAL_UART_RxCpltCallback>:
 8005790:	4770      	bx	lr
 8005792:	bf00      	nop

08005794 <HAL_UART_RxHalfCpltCallback>:
 8005794:	4770      	bx	lr
 8005796:	bf00      	nop

08005798 <HAL_UART_ErrorCallback>:
 8005798:	4770      	bx	lr
 800579a:	bf00      	nop

0800579c <HAL_UART_AbortCpltCallback>:
 800579c:	4770      	bx	lr
 800579e:	bf00      	nop

080057a0 <HAL_UART_AbortTransmitCpltCallback>:
 80057a0:	4770      	bx	lr
 80057a2:	bf00      	nop

080057a4 <UART_DMAError>:
 80057a4:	6b80      	ldr	r0, [r0, #56]	@ 0x38
 80057a6:	6803      	ldr	r3, [r0, #0]
 80057a8:	f8d0 1088 	ldr.w	r1, [r0, #136]	@ 0x88
 80057ac:	b510      	push	{r4, lr}
 80057ae:	f8d0 408c 	ldr.w	r4, [r0, #140]	@ 0x8c
 80057b2:	689a      	ldr	r2, [r3, #8]
 80057b4:	0612      	lsls	r2, r2, #24
 80057b6:	d501      	bpl.n	80057bc <UART_DMAError+0x18>
 80057b8:	2921      	cmp	r1, #33	@ 0x21
 80057ba:	d015      	beq.n	80057e8 <UART_DMAError+0x44>
 80057bc:	689b      	ldr	r3, [r3, #8]
 80057be:	065b      	lsls	r3, r3, #25
 80057c0:	d501      	bpl.n	80057c6 <UART_DMAError+0x22>
 80057c2:	2c22      	cmp	r4, #34	@ 0x22
 80057c4:	d00a      	beq.n	80057dc <UART_DMAError+0x38>
 80057c6:	f8d0 3090 	ldr.w	r3, [r0, #144]	@ 0x90
 80057ca:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
 80057ce:	f043 0310 	orr.w	r3, r3, #16
 80057d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80057d6:	f8c0 3090 	str.w	r3, [r0, #144]	@ 0x90
 80057da:	4710      	bx	r2
 80057dc:	2300      	movs	r3, #0
 80057de:	f8a0 305e 	strh.w	r3, [r0, #94]	@ 0x5e
 80057e2:	f7ff ff0d 	bl	8005600 <UART_EndRxTransfer>
 80057e6:	e7ee      	b.n	80057c6 <UART_DMAError+0x22>
 80057e8:	2200      	movs	r2, #0
 80057ea:	f8a0 2056 	strh.w	r2, [r0, #86]	@ 0x56
 80057ee:	e853 2f00 	ldrex	r2, [r3]
 80057f2:	f022 02c0 	bic.w	r2, r2, #192	@ 0xc0
 80057f6:	e843 2100 	strex	r1, r2, [r3]
 80057fa:	2900      	cmp	r1, #0
 80057fc:	d1f7      	bne.n	80057ee <UART_DMAError+0x4a>
 80057fe:	f103 0208 	add.w	r2, r3, #8
 8005802:	e852 2f00 	ldrex	r2, [r2]
 8005806:	f422 0200 	bic.w	r2, r2, #8388608	@ 0x800000
 800580a:	f103 0c08 	add.w	ip, r3, #8
 800580e:	e84c 2100 	strex	r1, r2, [ip]
 8005812:	2900      	cmp	r1, #0
 8005814:	d1f3      	bne.n	80057fe <UART_DMAError+0x5a>
 8005816:	2220      	movs	r2, #32
 8005818:	f8c0 2088 	str.w	r2, [r0, #136]	@ 0x88
 800581c:	e7ce      	b.n	80057bc <UART_DMAError+0x18>
 800581e:	bf00      	nop

08005820 <HAL_UART_Transmit_DMA>:
 8005820:	b570      	push	{r4, r5, r6, lr}
 8005822:	f8d0 6088 	ldr.w	r6, [r0, #136]	@ 0x88
 8005826:	4604      	mov	r4, r0
 8005828:	2e20      	cmp	r6, #32
 800582a:	d125      	bne.n	8005878 <HAL_UART_Transmit_DMA+0x58>
 800582c:	b311      	cbz	r1, 8005874 <HAL_UART_Transmit_DMA+0x54>
 800582e:	4613      	mov	r3, r2
 8005830:	fab2 f282 	clz	r2, r2
 8005834:	0952      	lsrs	r2, r2, #5
 8005836:	b1eb      	cbz	r3, 8005874 <HAL_UART_Transmit_DMA+0x54>
 8005838:	f8a0 3056 	strh.w	r3, [r0, #86]	@ 0x56
 800583c:	6501      	str	r1, [r0, #80]	@ 0x50
 800583e:	f8a0 3054 	strh.w	r3, [r0, #84]	@ 0x54
 8005842:	f8c0 2090 	str.w	r2, [r0, #144]	@ 0x90
 8005846:	2021      	movs	r0, #33	@ 0x21
 8005848:	6825      	ldr	r5, [r4, #0]
 800584a:	f8c4 0088 	str.w	r0, [r4, #136]	@ 0x88
 800584e:	6fe0      	ldr	r0, [r4, #124]	@ 0x7c
 8005850:	b1a8      	cbz	r0, 800587e <HAL_UART_Transmit_DMA+0x5e>
 8005852:	6502      	str	r2, [r0, #80]	@ 0x50
 8005854:	f105 0228 	add.w	r2, r5, #40	@ 0x28
 8005858:	4d11      	ldr	r5, [pc, #68]	@ (80058a0 <HAL_UART_Transmit_DMA+0x80>)
 800585a:	63c5      	str	r5, [r0, #60]	@ 0x3c
 800585c:	4d11      	ldr	r5, [pc, #68]	@ (80058a4 <HAL_UART_Transmit_DMA+0x84>)
 800585e:	6405      	str	r5, [r0, #64]	@ 0x40
 8005860:	4d11      	ldr	r5, [pc, #68]	@ (80058a8 <HAL_UART_Transmit_DMA+0x88>)
 8005862:	64c5      	str	r5, [r0, #76]	@ 0x4c
 8005864:	f7fe fd26 	bl	80042b4 <HAL_DMA_Start_IT>
 8005868:	b140      	cbz	r0, 800587c <HAL_UART_Transmit_DMA+0x5c>
 800586a:	2310      	movs	r3, #16
 800586c:	f8c4 3090 	str.w	r3, [r4, #144]	@ 0x90
 8005870:	f8c4 6088 	str.w	r6, [r4, #136]	@ 0x88
 8005874:	2001      	movs	r0, #1
 8005876:	bd70      	pop	{r4, r5, r6, pc}
 8005878:	2002      	movs	r0, #2
 800587a:	bd70      	pop	{r4, r5, r6, pc}
 800587c:	6825      	ldr	r5, [r4, #0]
 800587e:	2340      	movs	r3, #64	@ 0x40
 8005880:	622b      	str	r3, [r5, #32]
 8005882:	f105 0308 	add.w	r3, r5, #8
 8005886:	e853 3f00 	ldrex	r3, [r3]
 800588a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800588e:	f105 0108 	add.w	r1, r5, #8
 8005892:	e841 3200 	strex	r2, r3, [r1]
 8005896:	2a00      	cmp	r2, #0
 8005898:	d1f3      	bne.n	8005882 <HAL_UART_Transmit_DMA+0x62>
 800589a:	2000      	movs	r0, #0
 800589c:	bd70      	pop	{r4, r5, r6, pc}
 800589e:	bf00      	nop
 80058a0:	0800566d 	.word	0x0800566d
 80058a4:	080056b1 	.word	0x080056b1
 80058a8:	080057a5 	.word	0x080057a5

080058ac <HAL_UART_IRQHandler>:
 80058ac:	6803      	ldr	r3, [r0, #0]
 80058ae:	f640 0c0f 	movw	ip, #2063	@ 0x80f
 80058b2:	69da      	ldr	r2, [r3, #28]
 80058b4:	ea12 0f0c 	tst.w	r2, ip
 80058b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80058bc:	681d      	ldr	r5, [r3, #0]
 80058be:	4604      	mov	r4, r0
 80058c0:	6899      	ldr	r1, [r3, #8]
 80058c2:	d133      	bne.n	800592c <HAL_UART_IRQHandler+0x80>
 80058c4:	0696      	lsls	r6, r2, #26
 80058c6:	d506      	bpl.n	80058d6 <HAL_UART_IRQHandler+0x2a>
 80058c8:	f005 0620 	and.w	r6, r5, #32
 80058cc:	f001 5780 	and.w	r7, r1, #268435456	@ 0x10000000
 80058d0:	433e      	orrs	r6, r7
 80058d2:	f040 80f8 	bne.w	8005ac6 <HAL_UART_IRQHandler+0x21a>
 80058d6:	6ee0      	ldr	r0, [r4, #108]	@ 0x6c
 80058d8:	2801      	cmp	r0, #1
 80058da:	f000 8086 	beq.w	80059ea <HAL_UART_IRQHandler+0x13e>
 80058de:	02d7      	lsls	r7, r2, #11
 80058e0:	d419      	bmi.n	8005916 <HAL_UART_IRQHandler+0x6a>
 80058e2:	0610      	lsls	r0, r2, #24
 80058e4:	d506      	bpl.n	80058f4 <HAL_UART_IRQHandler+0x48>
 80058e6:	f401 0100 	and.w	r1, r1, #8388608	@ 0x800000
 80058ea:	f005 0080 	and.w	r0, r5, #128	@ 0x80
 80058ee:	4308      	orrs	r0, r1
 80058f0:	f040 80f0 	bne.w	8005ad4 <HAL_UART_IRQHandler+0x228>
 80058f4:	0657      	lsls	r7, r2, #25
 80058f6:	d502      	bpl.n	80058fe <HAL_UART_IRQHandler+0x52>
 80058f8:	066e      	lsls	r6, r5, #25
 80058fa:	f100 80d1 	bmi.w	8005aa0 <HAL_UART_IRQHandler+0x1f4>
 80058fe:	0210      	lsls	r0, r2, #8
 8005900:	d502      	bpl.n	8005908 <HAL_UART_IRQHandler+0x5c>
 8005902:	0069      	lsls	r1, r5, #1
 8005904:	f100 813e 	bmi.w	8005b84 <HAL_UART_IRQHandler+0x2d8>
 8005908:	01d3      	lsls	r3, r2, #7
 800590a:	d502      	bpl.n	8005912 <HAL_UART_IRQHandler+0x66>
 800590c:	2d00      	cmp	r5, #0
 800590e:	f2c0 8144 	blt.w	8005b9a <HAL_UART_IRQHandler+0x2ee>
 8005912:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005916:	024e      	lsls	r6, r1, #9
 8005918:	d5e3      	bpl.n	80058e2 <HAL_UART_IRQHandler+0x36>
 800591a:	f44f 1180 	mov.w	r1, #1048576	@ 0x100000
 800591e:	f8d4 20b4 	ldr.w	r2, [r4, #180]	@ 0xb4
 8005922:	4620      	mov	r0, r4
 8005924:	6219      	str	r1, [r3, #32]
 8005926:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800592a:	4710      	bx	r2
 800592c:	48b8      	ldr	r0, [pc, #736]	@ (8005c10 <HAL_UART_IRQHandler+0x364>)
 800592e:	461e      	mov	r6, r3
 8005930:	4008      	ands	r0, r1
 8005932:	f040 80f1 	bne.w	8005b18 <HAL_UART_IRQHandler+0x26c>
 8005936:	4fb7      	ldr	r7, [pc, #732]	@ (8005c14 <HAL_UART_IRQHandler+0x368>)
 8005938:	423d      	tst	r5, r7
 800593a:	d0cc      	beq.n	80058d6 <HAL_UART_IRQHandler+0x2a>
 800593c:	07d7      	lsls	r7, r2, #31
 800593e:	d51a      	bpl.n	8005976 <HAL_UART_IRQHandler+0xca>
 8005940:	05ef      	lsls	r7, r5, #23
 8005942:	f140 80cf 	bpl.w	8005ae4 <HAL_UART_IRQHandler+0x238>
 8005946:	2701      	movs	r7, #1
 8005948:	621f      	str	r7, [r3, #32]
 800594a:	f8d4 7090 	ldr.w	r7, [r4, #144]	@ 0x90
 800594e:	f047 0701 	orr.w	r7, r7, #1
 8005952:	f8c4 7090 	str.w	r7, [r4, #144]	@ 0x90
 8005956:	0797      	lsls	r7, r2, #30
 8005958:	f140 80c7 	bpl.w	8005aea <HAL_UART_IRQHandler+0x23e>
 800595c:	07cf      	lsls	r7, r1, #31
 800595e:	d50a      	bpl.n	8005976 <HAL_UART_IRQHandler+0xca>
 8005960:	2702      	movs	r7, #2
 8005962:	621f      	str	r7, [r3, #32]
 8005964:	f8d4 7090 	ldr.w	r7, [r4, #144]	@ 0x90
 8005968:	f047 0704 	orr.w	r7, r7, #4
 800596c:	f8c4 7090 	str.w	r7, [r4, #144]	@ 0x90
 8005970:	0757      	lsls	r7, r2, #29
 8005972:	f100 80c0 	bmi.w	8005af6 <HAL_UART_IRQHandler+0x24a>
 8005976:	0717      	lsls	r7, r2, #28
 8005978:	d50b      	bpl.n	8005992 <HAL_UART_IRQHandler+0xe6>
 800597a:	f005 0720 	and.w	r7, r5, #32
 800597e:	4307      	orrs	r7, r0
 8005980:	d007      	beq.n	8005992 <HAL_UART_IRQHandler+0xe6>
 8005982:	2008      	movs	r0, #8
 8005984:	6218      	str	r0, [r3, #32]
 8005986:	f8d4 0090 	ldr.w	r0, [r4, #144]	@ 0x90
 800598a:	f040 0008 	orr.w	r0, r0, #8
 800598e:	f8c4 0090 	str.w	r0, [r4, #144]	@ 0x90
 8005992:	0517      	lsls	r7, r2, #20
 8005994:	d50a      	bpl.n	80059ac <HAL_UART_IRQHandler+0x100>
 8005996:	0168      	lsls	r0, r5, #5
 8005998:	d508      	bpl.n	80059ac <HAL_UART_IRQHandler+0x100>
 800599a:	f44f 6000 	mov.w	r0, #2048	@ 0x800
 800599e:	6218      	str	r0, [r3, #32]
 80059a0:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80059a4:	f043 0320 	orr.w	r3, r3, #32
 80059a8:	f8c4 3090 	str.w	r3, [r4, #144]	@ 0x90
 80059ac:	f8d4 3090 	ldr.w	r3, [r4, #144]	@ 0x90
 80059b0:	2b00      	cmp	r3, #0
 80059b2:	d0ae      	beq.n	8005912 <HAL_UART_IRQHandler+0x66>
 80059b4:	0693      	lsls	r3, r2, #26
 80059b6:	d506      	bpl.n	80059c6 <HAL_UART_IRQHandler+0x11a>
 80059b8:	f005 0520 	and.w	r5, r5, #32
 80059bc:	f001 5180 	and.w	r1, r1, #268435456	@ 0x10000000
 80059c0:	430d      	orrs	r5, r1
 80059c2:	f040 80a1 	bne.w	8005b08 <HAL_UART_IRQHandler+0x25c>
 80059c6:	f8d4 2090 	ldr.w	r2, [r4, #144]	@ 0x90
 80059ca:	68b3      	ldr	r3, [r6, #8]
 80059cc:	f002 0228 	and.w	r2, r2, #40	@ 0x28
 80059d0:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 80059d4:	ea53 0502 	orrs.w	r5, r3, r2
 80059d8:	f040 80a5 	bne.w	8005b26 <HAL_UART_IRQHandler+0x27a>
 80059dc:	f8d4 30a4 	ldr.w	r3, [r4, #164]	@ 0xa4
 80059e0:	4620      	mov	r0, r4
 80059e2:	4798      	blx	r3
 80059e4:	f8c4 5090 	str.w	r5, [r4, #144]	@ 0x90
 80059e8:	e793      	b.n	8005912 <HAL_UART_IRQHandler+0x66>
 80059ea:	06d6      	lsls	r6, r2, #27
 80059ec:	f57f af77 	bpl.w	80058de <HAL_UART_IRQHandler+0x32>
 80059f0:	06e8      	lsls	r0, r5, #27
 80059f2:	f57f af74 	bpl.w	80058de <HAL_UART_IRQHandler+0x32>
 80059f6:	2210      	movs	r2, #16
 80059f8:	f8b4 505c 	ldrh.w	r5, [r4, #92]	@ 0x5c
 80059fc:	621a      	str	r2, [r3, #32]
 80059fe:	689a      	ldr	r2, [r3, #8]
 8005a00:	0652      	lsls	r2, r2, #25
 8005a02:	f140 80ce 	bpl.w	8005ba2 <HAL_UART_IRQHandler+0x2f6>
 8005a06:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
 8005a0a:	6801      	ldr	r1, [r0, #0]
 8005a0c:	6849      	ldr	r1, [r1, #4]
 8005a0e:	b289      	uxth	r1, r1
 8005a10:	2900      	cmp	r1, #0
 8005a12:	f000 810b 	beq.w	8005c2c <HAL_UART_IRQHandler+0x380>
 8005a16:	42a9      	cmp	r1, r5
 8005a18:	f080 8108 	bcs.w	8005c2c <HAL_UART_IRQHandler+0x380>
 8005a1c:	69c2      	ldr	r2, [r0, #28]
 8005a1e:	f8a4 105e 	strh.w	r1, [r4, #94]	@ 0x5e
 8005a22:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
 8005a26:	d02f      	beq.n	8005a88 <HAL_UART_IRQHandler+0x1dc>
 8005a28:	e853 2f00 	ldrex	r2, [r3]
 8005a2c:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8005a30:	e843 2100 	strex	r1, r2, [r3]
 8005a34:	2900      	cmp	r1, #0
 8005a36:	d1f7      	bne.n	8005a28 <HAL_UART_IRQHandler+0x17c>
 8005a38:	f103 0208 	add.w	r2, r3, #8
 8005a3c:	e852 2f00 	ldrex	r2, [r2]
 8005a40:	f022 0201 	bic.w	r2, r2, #1
 8005a44:	f103 0508 	add.w	r5, r3, #8
 8005a48:	e845 2100 	strex	r1, r2, [r5]
 8005a4c:	2900      	cmp	r1, #0
 8005a4e:	d1f3      	bne.n	8005a38 <HAL_UART_IRQHandler+0x18c>
 8005a50:	f103 0208 	add.w	r2, r3, #8
 8005a54:	e852 2f00 	ldrex	r2, [r2]
 8005a58:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8005a5c:	f103 0508 	add.w	r5, r3, #8
 8005a60:	e845 2100 	strex	r1, r2, [r5]
 8005a64:	2900      	cmp	r1, #0
 8005a66:	d1f3      	bne.n	8005a50 <HAL_UART_IRQHandler+0x1a4>
 8005a68:	2220      	movs	r2, #32
 8005a6a:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 8005a6e:	66e1      	str	r1, [r4, #108]	@ 0x6c
 8005a70:	e853 2f00 	ldrex	r2, [r3]
 8005a74:	f022 0210 	bic.w	r2, r2, #16
 8005a78:	e843 2100 	strex	r1, r2, [r3]
 8005a7c:	2900      	cmp	r1, #0
 8005a7e:	d1f7      	bne.n	8005a70 <HAL_UART_IRQHandler+0x1c4>
 8005a80:	f7fe fe12 	bl	80046a8 <HAL_DMA_Abort>
 8005a84:	f8b4 505c 	ldrh.w	r5, [r4, #92]	@ 0x5c
 8005a88:	2202      	movs	r2, #2
 8005a8a:	f8d4 30c0 	ldr.w	r3, [r4, #192]	@ 0xc0
 8005a8e:	4620      	mov	r0, r4
 8005a90:	6722      	str	r2, [r4, #112]	@ 0x70
 8005a92:	f8b4 105e 	ldrh.w	r1, [r4, #94]	@ 0x5e
 8005a96:	1a69      	subs	r1, r5, r1
 8005a98:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005a9c:	b289      	uxth	r1, r1
 8005a9e:	4718      	bx	r3
 8005aa0:	e853 2f00 	ldrex	r2, [r3]
 8005aa4:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8005aa8:	e843 2100 	strex	r1, r2, [r3]
 8005aac:	2900      	cmp	r1, #0
 8005aae:	d1f7      	bne.n	8005aa0 <HAL_UART_IRQHandler+0x1f4>
 8005ab0:	2120      	movs	r1, #32
 8005ab2:	2200      	movs	r2, #0
 8005ab4:	f8d4 3098 	ldr.w	r3, [r4, #152]	@ 0x98
 8005ab8:	4620      	mov	r0, r4
 8005aba:	f8c4 1088 	str.w	r1, [r4, #136]	@ 0x88
 8005abe:	67a2      	str	r2, [r4, #120]	@ 0x78
 8005ac0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005ac4:	4718      	bx	r3
 8005ac6:	6f43      	ldr	r3, [r0, #116]	@ 0x74
 8005ac8:	2b00      	cmp	r3, #0
 8005aca:	f43f af22 	beq.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005ace:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005ad2:	4718      	bx	r3
 8005ad4:	6fa3      	ldr	r3, [r4, #120]	@ 0x78
 8005ad6:	2b00      	cmp	r3, #0
 8005ad8:	f43f af1b 	beq.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005adc:	4620      	mov	r0, r4
 8005ade:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005ae2:	4718      	bx	r3
 8005ae4:	0797      	lsls	r7, r2, #30
 8005ae6:	f53f af46 	bmi.w	8005976 <HAL_UART_IRQHandler+0xca>
 8005aea:	0757      	lsls	r7, r2, #29
 8005aec:	f57f af43 	bpl.w	8005976 <HAL_UART_IRQHandler+0xca>
 8005af0:	07cf      	lsls	r7, r1, #31
 8005af2:	f57f af40 	bpl.w	8005976 <HAL_UART_IRQHandler+0xca>
 8005af6:	2704      	movs	r7, #4
 8005af8:	621f      	str	r7, [r3, #32]
 8005afa:	f8d4 7090 	ldr.w	r7, [r4, #144]	@ 0x90
 8005afe:	f047 0702 	orr.w	r7, r7, #2
 8005b02:	f8c4 7090 	str.w	r7, [r4, #144]	@ 0x90
 8005b06:	e736      	b.n	8005976 <HAL_UART_IRQHandler+0xca>
 8005b08:	6f63      	ldr	r3, [r4, #116]	@ 0x74
 8005b0a:	2b00      	cmp	r3, #0
 8005b0c:	f43f af5b 	beq.w	80059c6 <HAL_UART_IRQHandler+0x11a>
 8005b10:	4620      	mov	r0, r4
 8005b12:	4798      	blx	r3
 8005b14:	6826      	ldr	r6, [r4, #0]
 8005b16:	e756      	b.n	80059c6 <HAL_UART_IRQHandler+0x11a>
 8005b18:	07d7      	lsls	r7, r2, #31
 8005b1a:	f57f af1c 	bpl.w	8005956 <HAL_UART_IRQHandler+0xaa>
 8005b1e:	05ef      	lsls	r7, r5, #23
 8005b20:	f57f af19 	bpl.w	8005956 <HAL_UART_IRQHandler+0xaa>
 8005b24:	e70f      	b.n	8005946 <HAL_UART_IRQHandler+0x9a>
 8005b26:	4620      	mov	r0, r4
 8005b28:	f7ff fd6a 	bl	8005600 <UART_EndRxTransfer>
 8005b2c:	68b3      	ldr	r3, [r6, #8]
 8005b2e:	065f      	lsls	r7, r3, #25
 8005b30:	d52e      	bpl.n	8005b90 <HAL_UART_IRQHandler+0x2e4>
 8005b32:	f106 0308 	add.w	r3, r6, #8
 8005b36:	e853 3f00 	ldrex	r3, [r3]
 8005b3a:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
 8005b3e:	f106 0108 	add.w	r1, r6, #8
 8005b42:	e841 3200 	strex	r2, r3, [r1]
 8005b46:	b162      	cbz	r2, 8005b62 <HAL_UART_IRQHandler+0x2b6>
 8005b48:	6823      	ldr	r3, [r4, #0]
 8005b4a:	f103 0208 	add.w	r2, r3, #8
 8005b4e:	e852 2f00 	ldrex	r2, [r2]
 8005b52:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8005b56:	f103 0008 	add.w	r0, r3, #8
 8005b5a:	e840 2100 	strex	r1, r2, [r0]
 8005b5e:	2900      	cmp	r1, #0
 8005b60:	d1f3      	bne.n	8005b4a <HAL_UART_IRQHandler+0x29e>
 8005b62:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
 8005b66:	2800      	cmp	r0, #0
 8005b68:	d05a      	beq.n	8005c20 <HAL_UART_IRQHandler+0x374>
 8005b6a:	4b2b      	ldr	r3, [pc, #172]	@ (8005c18 <HAL_UART_IRQHandler+0x36c>)
 8005b6c:	6503      	str	r3, [r0, #80]	@ 0x50
 8005b6e:	f7fe ff51 	bl	8004a14 <HAL_DMA_Abort_IT>
 8005b72:	2800      	cmp	r0, #0
 8005b74:	f43f aecd 	beq.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005b78:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
 8005b7c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005b80:	6d03      	ldr	r3, [r0, #80]	@ 0x50
 8005b82:	4718      	bx	r3
 8005b84:	f8d4 30bc 	ldr.w	r3, [r4, #188]	@ 0xbc
 8005b88:	4620      	mov	r0, r4
 8005b8a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005b8e:	4718      	bx	r3
 8005b90:	f8d4 30a4 	ldr.w	r3, [r4, #164]	@ 0xa4
 8005b94:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005b98:	4718      	bx	r3
 8005b9a:	f8d4 30b8 	ldr.w	r3, [r4, #184]	@ 0xb8
 8005b9e:	4620      	mov	r0, r4
 8005ba0:	e79d      	b.n	8005ade <HAL_UART_IRQHandler+0x232>
 8005ba2:	f8b4 105e 	ldrh.w	r1, [r4, #94]	@ 0x5e
 8005ba6:	f8b4 205e 	ldrh.w	r2, [r4, #94]	@ 0x5e
 8005baa:	1a6d      	subs	r5, r5, r1
 8005bac:	b292      	uxth	r2, r2
 8005bae:	b2a9      	uxth	r1, r5
 8005bb0:	2900      	cmp	r1, #0
 8005bb2:	f43f aeae 	beq.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005bb6:	2a00      	cmp	r2, #0
 8005bb8:	f43f aeab 	beq.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005bbc:	e853 2f00 	ldrex	r2, [r3]
 8005bc0:	f422 7290 	bic.w	r2, r2, #288	@ 0x120
 8005bc4:	e843 2000 	strex	r0, r2, [r3]
 8005bc8:	2800      	cmp	r0, #0
 8005bca:	d1f7      	bne.n	8005bbc <HAL_UART_IRQHandler+0x310>
 8005bcc:	4d13      	ldr	r5, [pc, #76]	@ (8005c1c <HAL_UART_IRQHandler+0x370>)
 8005bce:	f103 0208 	add.w	r2, r3, #8
 8005bd2:	e852 2f00 	ldrex	r2, [r2]
 8005bd6:	402a      	ands	r2, r5
 8005bd8:	f103 0608 	add.w	r6, r3, #8
 8005bdc:	e846 2000 	strex	r0, r2, [r6]
 8005be0:	2800      	cmp	r0, #0
 8005be2:	d1f4      	bne.n	8005bce <HAL_UART_IRQHandler+0x322>
 8005be4:	2220      	movs	r2, #32
 8005be6:	6760      	str	r0, [r4, #116]	@ 0x74
 8005be8:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 8005bec:	66e0      	str	r0, [r4, #108]	@ 0x6c
 8005bee:	e853 2f00 	ldrex	r2, [r3]
 8005bf2:	f022 0210 	bic.w	r2, r2, #16
 8005bf6:	e843 2000 	strex	r0, r2, [r3]
 8005bfa:	2800      	cmp	r0, #0
 8005bfc:	d1f7      	bne.n	8005bee <HAL_UART_IRQHandler+0x342>
 8005bfe:	2202      	movs	r2, #2
 8005c00:	f8d4 30c0 	ldr.w	r3, [r4, #192]	@ 0xc0
 8005c04:	4620      	mov	r0, r4
 8005c06:	6722      	str	r2, [r4, #112]	@ 0x70
 8005c08:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005c0c:	4718      	bx	r3
 8005c0e:	bf00      	nop
 8005c10:	10000001 	.word	0x10000001
 8005c14:	04000120 	.word	0x04000120
 8005c18:	08005775 	.word	0x08005775
 8005c1c:	effffffe 	.word	0xeffffffe
 8005c20:	f8d4 30a4 	ldr.w	r3, [r4, #164]	@ 0xa4
 8005c24:	4620      	mov	r0, r4
 8005c26:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8005c2a:	4718      	bx	r3
 8005c2c:	42a9      	cmp	r1, r5
 8005c2e:	f47f ae70 	bne.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005c32:	69c3      	ldr	r3, [r0, #28]
 8005c34:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8005c38:	f47f ae6b 	bne.w	8005912 <HAL_UART_IRQHandler+0x66>
 8005c3c:	e7df      	b.n	8005bfe <HAL_UART_IRQHandler+0x352>
 8005c3e:	bf00      	nop

08005c40 <UART_SetConfig>:
 8005c40:	6901      	ldr	r1, [r0, #16]
 8005c42:	6882      	ldr	r2, [r0, #8]
 8005c44:	6803      	ldr	r3, [r0, #0]
 8005c46:	430a      	orrs	r2, r1
 8005c48:	b570      	push	{r4, r5, r6, lr}
 8005c4a:	4604      	mov	r4, r0
 8005c4c:	681d      	ldr	r5, [r3, #0]
 8005c4e:	69c0      	ldr	r0, [r0, #28]
 8005c50:	b086      	sub	sp, #24
 8005c52:	6961      	ldr	r1, [r4, #20]
 8005c54:	430a      	orrs	r2, r1
 8005c56:	49a0      	ldr	r1, [pc, #640]	@ (8005ed8 <UART_SetConfig+0x298>)
 8005c58:	4302      	orrs	r2, r0
 8005c5a:	4029      	ands	r1, r5
 8005c5c:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8005c5e:	430a      	orrs	r2, r1
 8005c60:	68e1      	ldr	r1, [r4, #12]
 8005c62:	601a      	str	r2, [r3, #0]
 8005c64:	685a      	ldr	r2, [r3, #4]
 8005c66:	f422 5240 	bic.w	r2, r2, #12288	@ 0x3000
 8005c6a:	430a      	orrs	r2, r1
 8005c6c:	69a1      	ldr	r1, [r4, #24]
 8005c6e:	605a      	str	r2, [r3, #4]
 8005c70:	4a9a      	ldr	r2, [pc, #616]	@ (8005edc <UART_SetConfig+0x29c>)
 8005c72:	4293      	cmp	r3, r2
 8005c74:	f000 8119 	beq.w	8005eaa <UART_SetConfig+0x26a>
 8005c78:	6a22      	ldr	r2, [r4, #32]
 8005c7a:	689e      	ldr	r6, [r3, #8]
 8005c7c:	4311      	orrs	r1, r2
 8005c7e:	4a98      	ldr	r2, [pc, #608]	@ (8005ee0 <UART_SetConfig+0x2a0>)
 8005c80:	4032      	ands	r2, r6
 8005c82:	4311      	orrs	r1, r2
 8005c84:	6099      	str	r1, [r3, #8]
 8005c86:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8005c88:	f022 020f 	bic.w	r2, r2, #15
 8005c8c:	432a      	orrs	r2, r5
 8005c8e:	62da      	str	r2, [r3, #44]	@ 0x2c
 8005c90:	4a94      	ldr	r2, [pc, #592]	@ (8005ee4 <UART_SetConfig+0x2a4>)
 8005c92:	4293      	cmp	r3, r2
 8005c94:	d028      	beq.n	8005ce8 <UART_SetConfig+0xa8>
 8005c96:	4a94      	ldr	r2, [pc, #592]	@ (8005ee8 <UART_SetConfig+0x2a8>)
 8005c98:	4293      	cmp	r3, r2
 8005c9a:	d01a      	beq.n	8005cd2 <UART_SetConfig+0x92>
 8005c9c:	4a93      	ldr	r2, [pc, #588]	@ (8005eec <UART_SetConfig+0x2ac>)
 8005c9e:	4293      	cmp	r3, r2
 8005ca0:	d017      	beq.n	8005cd2 <UART_SetConfig+0x92>
 8005ca2:	4a93      	ldr	r2, [pc, #588]	@ (8005ef0 <UART_SetConfig+0x2b0>)
 8005ca4:	4293      	cmp	r3, r2
 8005ca6:	d014      	beq.n	8005cd2 <UART_SetConfig+0x92>
 8005ca8:	4a92      	ldr	r2, [pc, #584]	@ (8005ef4 <UART_SetConfig+0x2b4>)
 8005caa:	4293      	cmp	r3, r2
 8005cac:	d011      	beq.n	8005cd2 <UART_SetConfig+0x92>
 8005cae:	4a92      	ldr	r2, [pc, #584]	@ (8005ef8 <UART_SetConfig+0x2b8>)
 8005cb0:	4293      	cmp	r3, r2
 8005cb2:	d019      	beq.n	8005ce8 <UART_SetConfig+0xa8>
 8005cb4:	4a91      	ldr	r2, [pc, #580]	@ (8005efc <UART_SetConfig+0x2bc>)
 8005cb6:	4293      	cmp	r3, r2
 8005cb8:	d00b      	beq.n	8005cd2 <UART_SetConfig+0x92>
 8005cba:	4a91      	ldr	r2, [pc, #580]	@ (8005f00 <UART_SetConfig+0x2c0>)
 8005cbc:	4293      	cmp	r3, r2
 8005cbe:	d008      	beq.n	8005cd2 <UART_SetConfig+0x92>
 8005cc0:	2001      	movs	r0, #1
 8005cc2:	2300      	movs	r3, #0
 8005cc4:	f04f 1201 	mov.w	r2, #65537	@ 0x10001
 8005cc8:	6763      	str	r3, [r4, #116]	@ 0x74
 8005cca:	66a2      	str	r2, [r4, #104]	@ 0x68
 8005ccc:	67a3      	str	r3, [r4, #120]	@ 0x78
 8005cce:	b006      	add	sp, #24
 8005cd0:	bd70      	pop	{r4, r5, r6, pc}
 8005cd2:	4b8c      	ldr	r3, [pc, #560]	@ (8005f04 <UART_SetConfig+0x2c4>)
 8005cd4:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8005cd6:	f003 0307 	and.w	r3, r3, #7
 8005cda:	2b05      	cmp	r3, #5
 8005cdc:	d8f0      	bhi.n	8005cc0 <UART_SetConfig+0x80>
 8005cde:	e8df f003 	tbb	[pc, r3]
 8005ce2:	7e9e      	.short	0x7e9e
 8005ce4:	785f9189 	.word	0x785f9189
 8005ce8:	4b86      	ldr	r3, [pc, #536]	@ (8005f04 <UART_SetConfig+0x2c4>)
 8005cea:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8005cec:	f003 0338 	and.w	r3, r3, #56	@ 0x38
 8005cf0:	2b28      	cmp	r3, #40	@ 0x28
 8005cf2:	d8e5      	bhi.n	8005cc0 <UART_SetConfig+0x80>
 8005cf4:	a201      	add	r2, pc, #4	@ (adr r2, 8005cfc <UART_SetConfig+0xbc>)
 8005cf6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8005cfa:	bf00      	nop
 8005cfc:	08005e79 	.word	0x08005e79
 8005d00:	08005cc1 	.word	0x08005cc1
 8005d04:	08005cc1 	.word	0x08005cc1
 8005d08:	08005cc1 	.word	0x08005cc1
 8005d0c:	08005cc1 	.word	0x08005cc1
 8005d10:	08005cc1 	.word	0x08005cc1
 8005d14:	08005cc1 	.word	0x08005cc1
 8005d18:	08005cc1 	.word	0x08005cc1
 8005d1c:	08005ddf 	.word	0x08005ddf
 8005d20:	08005cc1 	.word	0x08005cc1
 8005d24:	08005cc1 	.word	0x08005cc1
 8005d28:	08005cc1 	.word	0x08005cc1
 8005d2c:	08005cc1 	.word	0x08005cc1
 8005d30:	08005cc1 	.word	0x08005cc1
 8005d34:	08005cc1 	.word	0x08005cc1
 8005d38:	08005cc1 	.word	0x08005cc1
 8005d3c:	08005df5 	.word	0x08005df5
 8005d40:	08005cc1 	.word	0x08005cc1
 8005d44:	08005cc1 	.word	0x08005cc1
 8005d48:	08005cc1 	.word	0x08005cc1
 8005d4c:	08005cc1 	.word	0x08005cc1
 8005d50:	08005cc1 	.word	0x08005cc1
 8005d54:	08005cc1 	.word	0x08005cc1
 8005d58:	08005cc1 	.word	0x08005cc1
 8005d5c:	08005e05 	.word	0x08005e05
 8005d60:	08005cc1 	.word	0x08005cc1
 8005d64:	08005cc1 	.word	0x08005cc1
 8005d68:	08005cc1 	.word	0x08005cc1
 8005d6c:	08005cc1 	.word	0x08005cc1
 8005d70:	08005cc1 	.word	0x08005cc1
 8005d74:	08005cc1 	.word	0x08005cc1
 8005d78:	08005cc1 	.word	0x08005cc1
 8005d7c:	08005da1 	.word	0x08005da1
 8005d80:	08005cc1 	.word	0x08005cc1
 8005d84:	08005cc1 	.word	0x08005cc1
 8005d88:	08005cc1 	.word	0x08005cc1
 8005d8c:	08005cc1 	.word	0x08005cc1
 8005d90:	08005cc1 	.word	0x08005cc1
 8005d94:	08005cc1 	.word	0x08005cc1
 8005d98:	08005cc1 	.word	0x08005cc1
 8005d9c:	08005dd3 	.word	0x08005dd3
 8005da0:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005da4:	4858      	ldr	r0, [pc, #352]	@ (8005f08 <UART_SetConfig+0x2c8>)
 8005da6:	d047      	beq.n	8005e38 <UART_SetConfig+0x1f8>
 8005da8:	4a58      	ldr	r2, [pc, #352]	@ (8005f0c <UART_SetConfig+0x2cc>)
 8005daa:	6863      	ldr	r3, [r4, #4]
 8005dac:	f832 1015 	ldrh.w	r1, [r2, r5, lsl #1]
 8005db0:	f64f 72ef 	movw	r2, #65519	@ 0xffef
 8005db4:	fbb0 f0f1 	udiv	r0, r0, r1
 8005db8:	eb00 0053 	add.w	r0, r0, r3, lsr #1
 8005dbc:	fbb0 f0f3 	udiv	r0, r0, r3
 8005dc0:	f1a0 0310 	sub.w	r3, r0, #16
 8005dc4:	4293      	cmp	r3, r2
 8005dc6:	f63f af7b 	bhi.w	8005cc0 <UART_SetConfig+0x80>
 8005dca:	6823      	ldr	r3, [r4, #0]
 8005dcc:	60d8      	str	r0, [r3, #12]
 8005dce:	2000      	movs	r0, #0
 8005dd0:	e777      	b.n	8005cc2 <UART_SetConfig+0x82>
 8005dd2:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005dd6:	d02f      	beq.n	8005e38 <UART_SetConfig+0x1f8>
 8005dd8:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8005ddc:	e7e4      	b.n	8005da8 <UART_SetConfig+0x168>
 8005dde:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005de2:	d022      	beq.n	8005e2a <UART_SetConfig+0x1ea>
 8005de4:	4668      	mov	r0, sp
 8005de6:	f7fd f957 	bl	8003098 <HAL_RCCEx_GetPLL2ClockFreq>
 8005dea:	9801      	ldr	r0, [sp, #4]
 8005dec:	2800      	cmp	r0, #0
 8005dee:	d0ee      	beq.n	8005dce <UART_SetConfig+0x18e>
 8005df0:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8005df2:	e7d9      	b.n	8005da8 <UART_SetConfig+0x168>
 8005df4:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005df8:	d04f      	beq.n	8005e9a <UART_SetConfig+0x25a>
 8005dfa:	a803      	add	r0, sp, #12
 8005dfc:	f7fd f9e6 	bl	80031cc <HAL_RCCEx_GetPLL3ClockFreq>
 8005e00:	9804      	ldr	r0, [sp, #16]
 8005e02:	e7f3      	b.n	8005dec <UART_SetConfig+0x1ac>
 8005e04:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005e08:	d03c      	beq.n	8005e84 <UART_SetConfig+0x244>
 8005e0a:	4b3e      	ldr	r3, [pc, #248]	@ (8005f04 <UART_SetConfig+0x2c4>)
 8005e0c:	681a      	ldr	r2, [r3, #0]
 8005e0e:	0691      	lsls	r1, r2, #26
 8005e10:	d52d      	bpl.n	8005e6e <UART_SetConfig+0x22e>
 8005e12:	681b      	ldr	r3, [r3, #0]
 8005e14:	483e      	ldr	r0, [pc, #248]	@ (8005f10 <UART_SetConfig+0x2d0>)
 8005e16:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 8005e1a:	40d8      	lsrs	r0, r3
 8005e1c:	e7c4      	b.n	8005da8 <UART_SetConfig+0x168>
 8005e1e:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005e22:	d026      	beq.n	8005e72 <UART_SetConfig+0x232>
 8005e24:	f7fc f8a4 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8005e28:	e7e0      	b.n	8005dec <UART_SetConfig+0x1ac>
 8005e2a:	4668      	mov	r0, sp
 8005e2c:	f7fd f934 	bl	8003098 <HAL_RCCEx_GetPLL2ClockFreq>
 8005e30:	9801      	ldr	r0, [sp, #4]
 8005e32:	2800      	cmp	r0, #0
 8005e34:	d0cb      	beq.n	8005dce <UART_SetConfig+0x18e>
 8005e36:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8005e38:	4b34      	ldr	r3, [pc, #208]	@ (8005f0c <UART_SetConfig+0x2cc>)
 8005e3a:	6862      	ldr	r2, [r4, #4]
 8005e3c:	f833 1015 	ldrh.w	r1, [r3, r5, lsl #1]
 8005e40:	0853      	lsrs	r3, r2, #1
 8005e42:	fbb0 f0f1 	udiv	r0, r0, r1
 8005e46:	eb03 0340 	add.w	r3, r3, r0, lsl #1
 8005e4a:	f64f 71ef 	movw	r1, #65519	@ 0xffef
 8005e4e:	fbb3 f3f2 	udiv	r3, r3, r2
 8005e52:	f1a3 0210 	sub.w	r2, r3, #16
 8005e56:	428a      	cmp	r2, r1
 8005e58:	f63f af32 	bhi.w	8005cc0 <UART_SetConfig+0x80>
 8005e5c:	f023 020f 	bic.w	r2, r3, #15
 8005e60:	f3c3 0342 	ubfx	r3, r3, #1, #3
 8005e64:	6821      	ldr	r1, [r4, #0]
 8005e66:	b292      	uxth	r2, r2
 8005e68:	4313      	orrs	r3, r2
 8005e6a:	60cb      	str	r3, [r1, #12]
 8005e6c:	e7af      	b.n	8005dce <UART_SetConfig+0x18e>
 8005e6e:	4828      	ldr	r0, [pc, #160]	@ (8005f10 <UART_SetConfig+0x2d0>)
 8005e70:	e79a      	b.n	8005da8 <UART_SetConfig+0x168>
 8005e72:	f7fc f87d 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8005e76:	e7dc      	b.n	8005e32 <UART_SetConfig+0x1f2>
 8005e78:	f5b0 4f00 	cmp.w	r0, #32768	@ 0x8000
 8005e7c:	d012      	beq.n	8005ea4 <UART_SetConfig+0x264>
 8005e7e:	f7fc f889 	bl	8001f94 <HAL_RCC_GetPCLK2Freq>
 8005e82:	e7b3      	b.n	8005dec <UART_SetConfig+0x1ac>
 8005e84:	4b1f      	ldr	r3, [pc, #124]	@ (8005f04 <UART_SetConfig+0x2c4>)
 8005e86:	681a      	ldr	r2, [r3, #0]
 8005e88:	0690      	lsls	r0, r2, #26
 8005e8a:	f140 808b 	bpl.w	8005fa4 <UART_SetConfig+0x364>
 8005e8e:	681b      	ldr	r3, [r3, #0]
 8005e90:	481f      	ldr	r0, [pc, #124]	@ (8005f10 <UART_SetConfig+0x2d0>)
 8005e92:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 8005e96:	40d8      	lsrs	r0, r3
 8005e98:	e7ce      	b.n	8005e38 <UART_SetConfig+0x1f8>
 8005e9a:	a803      	add	r0, sp, #12
 8005e9c:	f7fd f996 	bl	80031cc <HAL_RCCEx_GetPLL3ClockFreq>
 8005ea0:	9804      	ldr	r0, [sp, #16]
 8005ea2:	e7c6      	b.n	8005e32 <UART_SetConfig+0x1f2>
 8005ea4:	f7fc f876 	bl	8001f94 <HAL_RCC_GetPCLK2Freq>
 8005ea8:	e7c3      	b.n	8005e32 <UART_SetConfig+0x1f2>
 8005eaa:	6898      	ldr	r0, [r3, #8]
 8005eac:	4a0c      	ldr	r2, [pc, #48]	@ (8005ee0 <UART_SetConfig+0x2a0>)
 8005eae:	4002      	ands	r2, r0
 8005eb0:	430a      	orrs	r2, r1
 8005eb2:	4914      	ldr	r1, [pc, #80]	@ (8005f04 <UART_SetConfig+0x2c4>)
 8005eb4:	609a      	str	r2, [r3, #8]
 8005eb6:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8005eb8:	f022 020f 	bic.w	r2, r2, #15
 8005ebc:	432a      	orrs	r2, r5
 8005ebe:	62da      	str	r2, [r3, #44]	@ 0x2c
 8005ec0:	6d8b      	ldr	r3, [r1, #88]	@ 0x58
 8005ec2:	f003 0307 	and.w	r3, r3, #7
 8005ec6:	2b05      	cmp	r3, #5
 8005ec8:	f63f aefa 	bhi.w	8005cc0 <UART_SetConfig+0x80>
 8005ecc:	e8df f003 	tbb	[pc, r3]
 8005ed0:	224e575c 	.word	0x224e575c
 8005ed4:	5f62      	.short	0x5f62
 8005ed6:	bf00      	nop
 8005ed8:	cfff69f3 	.word	0xcfff69f3
 8005edc:	58000c00 	.word	0x58000c00
 8005ee0:	11fff4ff 	.word	0x11fff4ff
 8005ee4:	40011000 	.word	0x40011000
 8005ee8:	40004400 	.word	0x40004400
 8005eec:	40004800 	.word	0x40004800
 8005ef0:	40004c00 	.word	0x40004c00
 8005ef4:	40005000 	.word	0x40005000
 8005ef8:	40011400 	.word	0x40011400
 8005efc:	40007800 	.word	0x40007800
 8005f00:	40007c00 	.word	0x40007c00
 8005f04:	58024400 	.word	0x58024400
 8005f08:	003d0900 	.word	0x003d0900
 8005f0c:	0800d644 	.word	0x0800d644
 8005f10:	03d09000 	.word	0x03d09000
 8005f14:	4b24      	ldr	r3, [pc, #144]	@ (8005fa8 <UART_SetConfig+0x368>)
 8005f16:	681a      	ldr	r2, [r3, #0]
 8005f18:	0692      	lsls	r2, r2, #26
 8005f1a:	d43d      	bmi.n	8005f98 <UART_SetConfig+0x358>
 8005f1c:	4823      	ldr	r0, [pc, #140]	@ (8005fac <UART_SetConfig+0x36c>)
 8005f1e:	4b24      	ldr	r3, [pc, #144]	@ (8005fb0 <UART_SetConfig+0x370>)
 8005f20:	6866      	ldr	r6, [r4, #4]
 8005f22:	f833 2015 	ldrh.w	r2, [r3, r5, lsl #1]
 8005f26:	eb06 0146 	add.w	r1, r6, r6, lsl #1
 8005f2a:	fbb0 f3f2 	udiv	r3, r0, r2
 8005f2e:	4299      	cmp	r1, r3
 8005f30:	f63f aec6 	bhi.w	8005cc0 <UART_SetConfig+0x80>
 8005f34:	ebb3 3f06 	cmp.w	r3, r6, lsl #12
 8005f38:	f63f aec2 	bhi.w	8005cc0 <UART_SetConfig+0x80>
 8005f3c:	2300      	movs	r3, #0
 8005f3e:	4619      	mov	r1, r3
 8005f40:	f7fa f9ce 	bl	80002e0 <__aeabi_uldivmod>
 8005f44:	4632      	mov	r2, r6
 8005f46:	0209      	lsls	r1, r1, #8
 8005f48:	0203      	lsls	r3, r0, #8
 8005f4a:	ea41 6110 	orr.w	r1, r1, r0, lsr #24
 8005f4e:	0870      	lsrs	r0, r6, #1
 8005f50:	1818      	adds	r0, r3, r0
 8005f52:	f04f 0300 	mov.w	r3, #0
 8005f56:	f141 0100 	adc.w	r1, r1, #0
 8005f5a:	f7fa f9c1 	bl	80002e0 <__aeabi_uldivmod>
 8005f5e:	4b15      	ldr	r3, [pc, #84]	@ (8005fb4 <UART_SetConfig+0x374>)
 8005f60:	f5a0 7240 	sub.w	r2, r0, #768	@ 0x300
 8005f64:	429a      	cmp	r2, r3
 8005f66:	f63f aeab 	bhi.w	8005cc0 <UART_SetConfig+0x80>
 8005f6a:	e72e      	b.n	8005dca <UART_SetConfig+0x18a>
 8005f6c:	a803      	add	r0, sp, #12
 8005f6e:	f7fd f92d 	bl	80031cc <HAL_RCCEx_GetPLL3ClockFreq>
 8005f72:	9804      	ldr	r0, [sp, #16]
 8005f74:	2800      	cmp	r0, #0
 8005f76:	f43f af2a 	beq.w	8005dce <UART_SetConfig+0x18e>
 8005f7a:	6a65      	ldr	r5, [r4, #36]	@ 0x24
 8005f7c:	e7cf      	b.n	8005f1e <UART_SetConfig+0x2de>
 8005f7e:	4668      	mov	r0, sp
 8005f80:	f7fd f88a 	bl	8003098 <HAL_RCCEx_GetPLL2ClockFreq>
 8005f84:	9801      	ldr	r0, [sp, #4]
 8005f86:	e7f5      	b.n	8005f74 <UART_SetConfig+0x334>
 8005f88:	f7fd f874 	bl	8003074 <HAL_RCCEx_GetD3PCLK1Freq>
 8005f8c:	e7f2      	b.n	8005f74 <UART_SetConfig+0x334>
 8005f8e:	f44f 4000 	mov.w	r0, #32768	@ 0x8000
 8005f92:	e7c4      	b.n	8005f1e <UART_SetConfig+0x2de>
 8005f94:	4808      	ldr	r0, [pc, #32]	@ (8005fb8 <UART_SetConfig+0x378>)
 8005f96:	e7c2      	b.n	8005f1e <UART_SetConfig+0x2de>
 8005f98:	681b      	ldr	r3, [r3, #0]
 8005f9a:	4804      	ldr	r0, [pc, #16]	@ (8005fac <UART_SetConfig+0x36c>)
 8005f9c:	f3c3 03c1 	ubfx	r3, r3, #3, #2
 8005fa0:	40d8      	lsrs	r0, r3
 8005fa2:	e7bc      	b.n	8005f1e <UART_SetConfig+0x2de>
 8005fa4:	4801      	ldr	r0, [pc, #4]	@ (8005fac <UART_SetConfig+0x36c>)
 8005fa6:	e747      	b.n	8005e38 <UART_SetConfig+0x1f8>
 8005fa8:	58024400 	.word	0x58024400
 8005fac:	03d09000 	.word	0x03d09000
 8005fb0:	0800d644 	.word	0x0800d644
 8005fb4:	000ffcff 	.word	0x000ffcff
 8005fb8:	003d0900 	.word	0x003d0900

08005fbc <UART_AdvFeatureConfig>:
 8005fbc:	6a83      	ldr	r3, [r0, #40]	@ 0x28
 8005fbe:	071a      	lsls	r2, r3, #28
 8005fc0:	b410      	push	{r4}
 8005fc2:	d506      	bpl.n	8005fd2 <UART_AdvFeatureConfig+0x16>
 8005fc4:	6801      	ldr	r1, [r0, #0]
 8005fc6:	6b84      	ldr	r4, [r0, #56]	@ 0x38
 8005fc8:	684a      	ldr	r2, [r1, #4]
 8005fca:	f422 4200 	bic.w	r2, r2, #32768	@ 0x8000
 8005fce:	4322      	orrs	r2, r4
 8005fd0:	604a      	str	r2, [r1, #4]
 8005fd2:	07dc      	lsls	r4, r3, #31
 8005fd4:	d506      	bpl.n	8005fe4 <UART_AdvFeatureConfig+0x28>
 8005fd6:	6801      	ldr	r1, [r0, #0]
 8005fd8:	6ac4      	ldr	r4, [r0, #44]	@ 0x2c
 8005fda:	684a      	ldr	r2, [r1, #4]
 8005fdc:	f422 3200 	bic.w	r2, r2, #131072	@ 0x20000
 8005fe0:	4322      	orrs	r2, r4
 8005fe2:	604a      	str	r2, [r1, #4]
 8005fe4:	0799      	lsls	r1, r3, #30
 8005fe6:	d506      	bpl.n	8005ff6 <UART_AdvFeatureConfig+0x3a>
 8005fe8:	6801      	ldr	r1, [r0, #0]
 8005fea:	6b04      	ldr	r4, [r0, #48]	@ 0x30
 8005fec:	684a      	ldr	r2, [r1, #4]
 8005fee:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
 8005ff2:	4322      	orrs	r2, r4
 8005ff4:	604a      	str	r2, [r1, #4]
 8005ff6:	075a      	lsls	r2, r3, #29
 8005ff8:	d506      	bpl.n	8006008 <UART_AdvFeatureConfig+0x4c>
 8005ffa:	6801      	ldr	r1, [r0, #0]
 8005ffc:	6b44      	ldr	r4, [r0, #52]	@ 0x34
 8005ffe:	684a      	ldr	r2, [r1, #4]
 8006000:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
 8006004:	4322      	orrs	r2, r4
 8006006:	604a      	str	r2, [r1, #4]
 8006008:	06dc      	lsls	r4, r3, #27
 800600a:	d506      	bpl.n	800601a <UART_AdvFeatureConfig+0x5e>
 800600c:	6801      	ldr	r1, [r0, #0]
 800600e:	6bc4      	ldr	r4, [r0, #60]	@ 0x3c
 8006010:	688a      	ldr	r2, [r1, #8]
 8006012:	f422 5280 	bic.w	r2, r2, #4096	@ 0x1000
 8006016:	4322      	orrs	r2, r4
 8006018:	608a      	str	r2, [r1, #8]
 800601a:	0699      	lsls	r1, r3, #26
 800601c:	d506      	bpl.n	800602c <UART_AdvFeatureConfig+0x70>
 800601e:	6801      	ldr	r1, [r0, #0]
 8006020:	6c04      	ldr	r4, [r0, #64]	@ 0x40
 8006022:	688a      	ldr	r2, [r1, #8]
 8006024:	f422 5200 	bic.w	r2, r2, #8192	@ 0x2000
 8006028:	4322      	orrs	r2, r4
 800602a:	608a      	str	r2, [r1, #8]
 800602c:	065a      	lsls	r2, r3, #25
 800602e:	d50a      	bpl.n	8006046 <UART_AdvFeatureConfig+0x8a>
 8006030:	6801      	ldr	r1, [r0, #0]
 8006032:	6c44      	ldr	r4, [r0, #68]	@ 0x44
 8006034:	684a      	ldr	r2, [r1, #4]
 8006036:	f5b4 1f80 	cmp.w	r4, #1048576	@ 0x100000
 800603a:	f422 1280 	bic.w	r2, r2, #1048576	@ 0x100000
 800603e:	ea42 0204 	orr.w	r2, r2, r4
 8006042:	604a      	str	r2, [r1, #4]
 8006044:	d00b      	beq.n	800605e <UART_AdvFeatureConfig+0xa2>
 8006046:	061b      	lsls	r3, r3, #24
 8006048:	d506      	bpl.n	8006058 <UART_AdvFeatureConfig+0x9c>
 800604a:	6802      	ldr	r2, [r0, #0]
 800604c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
 800604e:	6853      	ldr	r3, [r2, #4]
 8006050:	f423 2300 	bic.w	r3, r3, #524288	@ 0x80000
 8006054:	430b      	orrs	r3, r1
 8006056:	6053      	str	r3, [r2, #4]
 8006058:	f85d 4b04 	ldr.w	r4, [sp], #4
 800605c:	4770      	bx	lr
 800605e:	684a      	ldr	r2, [r1, #4]
 8006060:	6c84      	ldr	r4, [r0, #72]	@ 0x48
 8006062:	f422 02c0 	bic.w	r2, r2, #6291456	@ 0x600000
 8006066:	4322      	orrs	r2, r4
 8006068:	604a      	str	r2, [r1, #4]
 800606a:	e7ec      	b.n	8006046 <UART_AdvFeatureConfig+0x8a>

0800606c <UART_WaitOnFlagUntilTimeout>:
 800606c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006070:	9e08      	ldr	r6, [sp, #32]
 8006072:	460c      	mov	r4, r1
 8006074:	4607      	mov	r7, r0
 8006076:	4615      	mov	r5, r2
 8006078:	4698      	mov	r8, r3
 800607a:	6801      	ldr	r1, [r0, #0]
 800607c:	69ca      	ldr	r2, [r1, #28]
 800607e:	ea34 0202 	bics.w	r2, r4, r2
 8006082:	bf0c      	ite	eq
 8006084:	2301      	moveq	r3, #1
 8006086:	2300      	movne	r3, #0
 8006088:	42ab      	cmp	r3, r5
 800608a:	d109      	bne.n	80060a0 <UART_WaitOnFlagUntilTimeout+0x34>
 800608c:	1c73      	adds	r3, r6, #1
 800608e:	d10b      	bne.n	80060a8 <UART_WaitOnFlagUntilTimeout+0x3c>
 8006090:	69cb      	ldr	r3, [r1, #28]
 8006092:	ea34 0303 	bics.w	r3, r4, r3
 8006096:	bf0c      	ite	eq
 8006098:	2301      	moveq	r3, #1
 800609a:	2300      	movne	r3, #0
 800609c:	42ab      	cmp	r3, r5
 800609e:	d0f7      	beq.n	8006090 <UART_WaitOnFlagUntilTimeout+0x24>
 80060a0:	2300      	movs	r3, #0
 80060a2:	4618      	mov	r0, r3
 80060a4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80060a8:	f7ff f89a 	bl	80051e0 <HAL_GetTick>
 80060ac:	eba0 0008 	sub.w	r0, r0, r8
 80060b0:	fab6 f986 	clz	r9, r6
 80060b4:	42b0      	cmp	r0, r6
 80060b6:	ea4f 1959 	mov.w	r9, r9, lsr #5
 80060ba:	d81a      	bhi.n	80060f2 <UART_WaitOnFlagUntilTimeout+0x86>
 80060bc:	b1ce      	cbz	r6, 80060f2 <UART_WaitOnFlagUntilTimeout+0x86>
 80060be:	6839      	ldr	r1, [r7, #0]
 80060c0:	680b      	ldr	r3, [r1, #0]
 80060c2:	0758      	lsls	r0, r3, #29
 80060c4:	d5da      	bpl.n	800607c <UART_WaitOnFlagUntilTimeout+0x10>
 80060c6:	2c80      	cmp	r4, #128	@ 0x80
 80060c8:	d0d8      	beq.n	800607c <UART_WaitOnFlagUntilTimeout+0x10>
 80060ca:	2c40      	cmp	r4, #64	@ 0x40
 80060cc:	d0d6      	beq.n	800607c <UART_WaitOnFlagUntilTimeout+0x10>
 80060ce:	69cb      	ldr	r3, [r1, #28]
 80060d0:	f013 0a08 	ands.w	sl, r3, #8
 80060d4:	d10f      	bne.n	80060f6 <UART_WaitOnFlagUntilTimeout+0x8a>
 80060d6:	69ca      	ldr	r2, [r1, #28]
 80060d8:	0512      	lsls	r2, r2, #20
 80060da:	d5cf      	bpl.n	800607c <UART_WaitOnFlagUntilTimeout+0x10>
 80060dc:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 80060e0:	4638      	mov	r0, r7
 80060e2:	620a      	str	r2, [r1, #32]
 80060e4:	f7ff fa8c 	bl	8005600 <UART_EndRxTransfer>
 80060e8:	2220      	movs	r2, #32
 80060ea:	f887 a084 	strb.w	sl, [r7, #132]	@ 0x84
 80060ee:	f8c7 2090 	str.w	r2, [r7, #144]	@ 0x90
 80060f2:	2303      	movs	r3, #3
 80060f4:	e7d5      	b.n	80060a2 <UART_WaitOnFlagUntilTimeout+0x36>
 80060f6:	2408      	movs	r4, #8
 80060f8:	4638      	mov	r0, r7
 80060fa:	620c      	str	r4, [r1, #32]
 80060fc:	f7ff fa80 	bl	8005600 <UART_EndRxTransfer>
 8006100:	2301      	movs	r3, #1
 8006102:	f8c7 4090 	str.w	r4, [r7, #144]	@ 0x90
 8006106:	f887 9084 	strb.w	r9, [r7, #132]	@ 0x84
 800610a:	e7ca      	b.n	80060a2 <UART_WaitOnFlagUntilTimeout+0x36>

0800610c <UART_CheckIdleState>:
 800610c:	b570      	push	{r4, r5, r6, lr}
 800610e:	2600      	movs	r6, #0
 8006110:	4604      	mov	r4, r0
 8006112:	b082      	sub	sp, #8
 8006114:	f8c0 6090 	str.w	r6, [r0, #144]	@ 0x90
 8006118:	f7ff f862 	bl	80051e0 <HAL_GetTick>
 800611c:	6823      	ldr	r3, [r4, #0]
 800611e:	4605      	mov	r5, r0
 8006120:	681a      	ldr	r2, [r3, #0]
 8006122:	0712      	lsls	r2, r2, #28
 8006124:	d410      	bmi.n	8006148 <UART_CheckIdleState+0x3c>
 8006126:	681b      	ldr	r3, [r3, #0]
 8006128:	075b      	lsls	r3, r3, #29
 800612a:	d427      	bmi.n	800617c <UART_CheckIdleState+0x70>
 800612c:	2300      	movs	r3, #0
 800612e:	2220      	movs	r2, #32
 8006130:	4618      	mov	r0, r3
 8006132:	f8c4 2088 	str.w	r2, [r4, #136]	@ 0x88
 8006136:	f8c4 208c 	str.w	r2, [r4, #140]	@ 0x8c
 800613a:	66e3      	str	r3, [r4, #108]	@ 0x6c
 800613c:	6723      	str	r3, [r4, #112]	@ 0x70
 800613e:	2300      	movs	r3, #0
 8006140:	f884 3084 	strb.w	r3, [r4, #132]	@ 0x84
 8006144:	b002      	add	sp, #8
 8006146:	bd70      	pop	{r4, r5, r6, pc}
 8006148:	f06f 417e 	mvn.w	r1, #4261412864	@ 0xfe000000
 800614c:	4603      	mov	r3, r0
 800614e:	4632      	mov	r2, r6
 8006150:	4620      	mov	r0, r4
 8006152:	9100      	str	r1, [sp, #0]
 8006154:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 8006158:	f7ff ff88 	bl	800606c <UART_WaitOnFlagUntilTimeout>
 800615c:	6823      	ldr	r3, [r4, #0]
 800615e:	2800      	cmp	r0, #0
 8006160:	d0e1      	beq.n	8006126 <UART_CheckIdleState+0x1a>
 8006162:	e853 2f00 	ldrex	r2, [r3]
 8006166:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 800616a:	e843 2100 	strex	r1, r2, [r3]
 800616e:	2900      	cmp	r1, #0
 8006170:	d1f7      	bne.n	8006162 <UART_CheckIdleState+0x56>
 8006172:	2320      	movs	r3, #32
 8006174:	f8c4 3088 	str.w	r3, [r4, #136]	@ 0x88
 8006178:	2003      	movs	r0, #3
 800617a:	e7e0      	b.n	800613e <UART_CheckIdleState+0x32>
 800617c:	f06f 407e 	mvn.w	r0, #4261412864	@ 0xfe000000
 8006180:	462b      	mov	r3, r5
 8006182:	2200      	movs	r2, #0
 8006184:	f44f 0180 	mov.w	r1, #4194304	@ 0x400000
 8006188:	9000      	str	r0, [sp, #0]
 800618a:	4620      	mov	r0, r4
 800618c:	f7ff ff6e 	bl	800606c <UART_WaitOnFlagUntilTimeout>
 8006190:	2800      	cmp	r0, #0
 8006192:	d0cb      	beq.n	800612c <UART_CheckIdleState+0x20>
 8006194:	6823      	ldr	r3, [r4, #0]
 8006196:	e853 2f00 	ldrex	r2, [r3]
 800619a:	f422 7290 	bic.w	r2, r2, #288	@ 0x120
 800619e:	e843 2100 	strex	r1, r2, [r3]
 80061a2:	2900      	cmp	r1, #0
 80061a4:	d1f7      	bne.n	8006196 <UART_CheckIdleState+0x8a>
 80061a6:	f103 0208 	add.w	r2, r3, #8
 80061aa:	e852 2f00 	ldrex	r2, [r2]
 80061ae:	f022 0201 	bic.w	r2, r2, #1
 80061b2:	f103 0008 	add.w	r0, r3, #8
 80061b6:	e840 2100 	strex	r1, r2, [r0]
 80061ba:	2900      	cmp	r1, #0
 80061bc:	d1f3      	bne.n	80061a6 <UART_CheckIdleState+0x9a>
 80061be:	2320      	movs	r3, #32
 80061c0:	f8c4 308c 	str.w	r3, [r4, #140]	@ 0x8c
 80061c4:	e7d8      	b.n	8006178 <UART_CheckIdleState+0x6c>
 80061c6:	bf00      	nop

080061c8 <HAL_UART_Init>:
 80061c8:	2800      	cmp	r0, #0
 80061ca:	d053      	beq.n	8006274 <HAL_UART_Init+0xac>
 80061cc:	f8d0 3088 	ldr.w	r3, [r0, #136]	@ 0x88
 80061d0:	b510      	push	{r4, lr}
 80061d2:	4604      	mov	r4, r0
 80061d4:	b30b      	cbz	r3, 800621a <HAL_UART_Init+0x52>
 80061d6:	6822      	ldr	r2, [r4, #0]
 80061d8:	2324      	movs	r3, #36	@ 0x24
 80061da:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
 80061dc:	f8c4 3088 	str.w	r3, [r4, #136]	@ 0x88
 80061e0:	6813      	ldr	r3, [r2, #0]
 80061e2:	f023 0301 	bic.w	r3, r3, #1
 80061e6:	6013      	str	r3, [r2, #0]
 80061e8:	2900      	cmp	r1, #0
 80061ea:	d13a      	bne.n	8006262 <HAL_UART_Init+0x9a>
 80061ec:	4620      	mov	r0, r4
 80061ee:	f7ff fd27 	bl	8005c40 <UART_SetConfig>
 80061f2:	2801      	cmp	r0, #1
 80061f4:	d033      	beq.n	800625e <HAL_UART_Init+0x96>
 80061f6:	6823      	ldr	r3, [r4, #0]
 80061f8:	4620      	mov	r0, r4
 80061fa:	685a      	ldr	r2, [r3, #4]
 80061fc:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 8006200:	605a      	str	r2, [r3, #4]
 8006202:	689a      	ldr	r2, [r3, #8]
 8006204:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 8006208:	609a      	str	r2, [r3, #8]
 800620a:	681a      	ldr	r2, [r3, #0]
 800620c:	f042 0201 	orr.w	r2, r2, #1
 8006210:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006214:	601a      	str	r2, [r3, #0]
 8006216:	f7ff bf79 	b.w	800610c <UART_CheckIdleState>
 800621a:	4a17      	ldr	r2, [pc, #92]	@ (8006278 <HAL_UART_Init+0xb0>)
 800621c:	4817      	ldr	r0, [pc, #92]	@ (800627c <HAL_UART_Init+0xb4>)
 800621e:	4918      	ldr	r1, [pc, #96]	@ (8006280 <HAL_UART_Init+0xb8>)
 8006220:	f884 3084 	strb.w	r3, [r4, #132]	@ 0x84
 8006224:	f8c4 2094 	str.w	r2, [r4, #148]	@ 0x94
 8006228:	4b16      	ldr	r3, [pc, #88]	@ (8006284 <HAL_UART_Init+0xbc>)
 800622a:	4a17      	ldr	r2, [pc, #92]	@ (8006288 <HAL_UART_Init+0xc0>)
 800622c:	e9c4 0126 	strd	r0, r1, [r4, #152]	@ 0x98
 8006230:	e9c4 2328 	strd	r2, r3, [r4, #160]	@ 0xa0
 8006234:	4815      	ldr	r0, [pc, #84]	@ (800628c <HAL_UART_Init+0xc4>)
 8006236:	4916      	ldr	r1, [pc, #88]	@ (8006290 <HAL_UART_Init+0xc8>)
 8006238:	4a16      	ldr	r2, [pc, #88]	@ (8006294 <HAL_UART_Init+0xcc>)
 800623a:	4b17      	ldr	r3, [pc, #92]	@ (8006298 <HAL_UART_Init+0xd0>)
 800623c:	e9c4 012a 	strd	r0, r1, [r4, #168]	@ 0xa8
 8006240:	e9c4 232c 	strd	r2, r3, [r4, #176]	@ 0xb0
 8006244:	4815      	ldr	r0, [pc, #84]	@ (800629c <HAL_UART_Init+0xd4>)
 8006246:	4916      	ldr	r1, [pc, #88]	@ (80062a0 <HAL_UART_Init+0xd8>)
 8006248:	4a16      	ldr	r2, [pc, #88]	@ (80062a4 <HAL_UART_Init+0xdc>)
 800624a:	f8d4 30c4 	ldr.w	r3, [r4, #196]	@ 0xc4
 800624e:	f8c4 20c0 	str.w	r2, [r4, #192]	@ 0xc0
 8006252:	e9c4 012e 	strd	r0, r1, [r4, #184]	@ 0xb8
 8006256:	b143      	cbz	r3, 800626a <HAL_UART_Init+0xa2>
 8006258:	4620      	mov	r0, r4
 800625a:	4798      	blx	r3
 800625c:	e7bb      	b.n	80061d6 <HAL_UART_Init+0xe>
 800625e:	2001      	movs	r0, #1
 8006260:	bd10      	pop	{r4, pc}
 8006262:	4620      	mov	r0, r4
 8006264:	f7ff feaa 	bl	8005fbc <UART_AdvFeatureConfig>
 8006268:	e7c0      	b.n	80061ec <HAL_UART_Init+0x24>
 800626a:	4a0f      	ldr	r2, [pc, #60]	@ (80062a8 <HAL_UART_Init+0xe0>)
 800626c:	4613      	mov	r3, r2
 800626e:	f8c4 20c4 	str.w	r2, [r4, #196]	@ 0xc4
 8006272:	e7f1      	b.n	8006258 <HAL_UART_Init+0x90>
 8006274:	2001      	movs	r0, #1
 8006276:	4770      	bx	lr
 8006278:	0800578d 	.word	0x0800578d
 800627c:	08005789 	.word	0x08005789
 8006280:	08005795 	.word	0x08005795
 8006284:	08005799 	.word	0x08005799
 8006288:	08005791 	.word	0x08005791
 800628c:	0800579d 	.word	0x0800579d
 8006290:	080057a1 	.word	0x080057a1
 8006294:	08005785 	.word	0x08005785
 8006298:	080063d9 	.word	0x080063d9
 800629c:	080063dd 	.word	0x080063dd
 80062a0:	080063e1 	.word	0x080063e1
 80062a4:	080055fd 	.word	0x080055fd
 80062a8:	08008a29 	.word	0x08008a29

080062ac <UART_Start_Receive_DMA>:
 80062ac:	b570      	push	{r4, r5, r6, lr}
 80062ae:	4613      	mov	r3, r2
 80062b0:	2600      	movs	r6, #0
 80062b2:	2222      	movs	r2, #34	@ 0x22
 80062b4:	4605      	mov	r5, r0
 80062b6:	f8c0 6090 	str.w	r6, [r0, #144]	@ 0x90
 80062ba:	6581      	str	r1, [r0, #88]	@ 0x58
 80062bc:	f8a0 305c 	strh.w	r3, [r0, #92]	@ 0x5c
 80062c0:	f8c0 208c 	str.w	r2, [r0, #140]	@ 0x8c
 80062c4:	f8d0 0080 	ldr.w	r0, [r0, #128]	@ 0x80
 80062c8:	682c      	ldr	r4, [r5, #0]
 80062ca:	b168      	cbz	r0, 80062e8 <UART_Start_Receive_DMA+0x3c>
 80062cc:	460a      	mov	r2, r1
 80062ce:	f104 0124 	add.w	r1, r4, #36	@ 0x24
 80062d2:	4c1b      	ldr	r4, [pc, #108]	@ (8006340 <UART_Start_Receive_DMA+0x94>)
 80062d4:	6506      	str	r6, [r0, #80]	@ 0x50
 80062d6:	63c4      	str	r4, [r0, #60]	@ 0x3c
 80062d8:	4c1a      	ldr	r4, [pc, #104]	@ (8006344 <UART_Start_Receive_DMA+0x98>)
 80062da:	6404      	str	r4, [r0, #64]	@ 0x40
 80062dc:	4c1a      	ldr	r4, [pc, #104]	@ (8006348 <UART_Start_Receive_DMA+0x9c>)
 80062de:	64c4      	str	r4, [r0, #76]	@ 0x4c
 80062e0:	f7fd ffe8 	bl	80042b4 <HAL_DMA_Start_IT>
 80062e4:	bb18      	cbnz	r0, 800632e <UART_Start_Receive_DMA+0x82>
 80062e6:	682c      	ldr	r4, [r5, #0]
 80062e8:	692b      	ldr	r3, [r5, #16]
 80062ea:	b13b      	cbz	r3, 80062fc <UART_Start_Receive_DMA+0x50>
 80062ec:	e854 3f00 	ldrex	r3, [r4]
 80062f0:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80062f4:	e844 3200 	strex	r2, r3, [r4]
 80062f8:	2a00      	cmp	r2, #0
 80062fa:	d1f7      	bne.n	80062ec <UART_Start_Receive_DMA+0x40>
 80062fc:	f104 0308 	add.w	r3, r4, #8
 8006300:	e853 3f00 	ldrex	r3, [r3]
 8006304:	f043 0301 	orr.w	r3, r3, #1
 8006308:	f104 0108 	add.w	r1, r4, #8
 800630c:	e841 3200 	strex	r2, r3, [r1]
 8006310:	2a00      	cmp	r2, #0
 8006312:	d1f3      	bne.n	80062fc <UART_Start_Receive_DMA+0x50>
 8006314:	f104 0308 	add.w	r3, r4, #8
 8006318:	e853 3f00 	ldrex	r3, [r3]
 800631c:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8006320:	f104 0208 	add.w	r2, r4, #8
 8006324:	e842 3000 	strex	r0, r3, [r2]
 8006328:	2800      	cmp	r0, #0
 800632a:	d1f3      	bne.n	8006314 <UART_Start_Receive_DMA+0x68>
 800632c:	bd70      	pop	{r4, r5, r6, pc}
 800632e:	2210      	movs	r2, #16
 8006330:	2320      	movs	r3, #32
 8006332:	2001      	movs	r0, #1
 8006334:	f8c5 2090 	str.w	r2, [r5, #144]	@ 0x90
 8006338:	f8c5 308c 	str.w	r3, [r5, #140]	@ 0x8c
 800633c:	bd70      	pop	{r4, r5, r6, pc}
 800633e:	bf00      	nop
 8006340:	080056b9 	.word	0x080056b9
 8006344:	08005755 	.word	0x08005755
 8006348:	080057a5 	.word	0x080057a5

0800634c <HAL_UART_Receive_DMA>:
 800634c:	f8d0 308c 	ldr.w	r3, [r0, #140]	@ 0x8c
 8006350:	2b20      	cmp	r3, #32
 8006352:	d11a      	bne.n	800638a <HAL_UART_Receive_DMA+0x3e>
 8006354:	b1b9      	cbz	r1, 8006386 <HAL_UART_Receive_DMA+0x3a>
 8006356:	fab2 f382 	clz	r3, r2
 800635a:	095b      	lsrs	r3, r3, #5
 800635c:	b19a      	cbz	r2, 8006386 <HAL_UART_Receive_DMA+0x3a>
 800635e:	b430      	push	{r4, r5}
 8006360:	6804      	ldr	r4, [r0, #0]
 8006362:	66c3      	str	r3, [r0, #108]	@ 0x6c
 8006364:	4b0a      	ldr	r3, [pc, #40]	@ (8006390 <HAL_UART_Receive_DMA+0x44>)
 8006366:	429c      	cmp	r4, r3
 8006368:	d00a      	beq.n	8006380 <HAL_UART_Receive_DMA+0x34>
 800636a:	6863      	ldr	r3, [r4, #4]
 800636c:	021b      	lsls	r3, r3, #8
 800636e:	d507      	bpl.n	8006380 <HAL_UART_Receive_DMA+0x34>
 8006370:	e854 3f00 	ldrex	r3, [r4]
 8006374:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 8006378:	e844 3500 	strex	r5, r3, [r4]
 800637c:	2d00      	cmp	r5, #0
 800637e:	d1f7      	bne.n	8006370 <HAL_UART_Receive_DMA+0x24>
 8006380:	bc30      	pop	{r4, r5}
 8006382:	f7ff bf93 	b.w	80062ac <UART_Start_Receive_DMA>
 8006386:	2001      	movs	r0, #1
 8006388:	4770      	bx	lr
 800638a:	2002      	movs	r0, #2
 800638c:	4770      	bx	lr
 800638e:	bf00      	nop
 8006390:	58000c00 	.word	0x58000c00

08006394 <UARTEx_SetNbDataToProcess.part.0>:
 8006394:	6803      	ldr	r3, [r0, #0]
 8006396:	4a0e      	ldr	r2, [pc, #56]	@ (80063d0 <UARTEx_SetNbDataToProcess.part.0+0x3c>)
 8006398:	6899      	ldr	r1, [r3, #8]
 800639a:	689b      	ldr	r3, [r3, #8]
 800639c:	f3c1 6142 	ubfx	r1, r1, #25, #3
 80063a0:	ea4f 7c53 	mov.w	ip, r3, lsr #29
 80063a4:	5c53      	ldrb	r3, [r2, r1]
 80063a6:	f812 200c 	ldrb.w	r2, [r2, ip]
 80063aa:	011b      	lsls	r3, r3, #4
 80063ac:	0112      	lsls	r2, r2, #4
 80063ae:	b410      	push	{r4}
 80063b0:	4c08      	ldr	r4, [pc, #32]	@ (80063d4 <UARTEx_SetNbDataToProcess.part.0+0x40>)
 80063b2:	f814 c00c 	ldrb.w	ip, [r4, ip]
 80063b6:	5c61      	ldrb	r1, [r4, r1]
 80063b8:	f85d 4b04 	ldr.w	r4, [sp], #4
 80063bc:	fbb2 f2fc 	udiv	r2, r2, ip
 80063c0:	fbb3 f3f1 	udiv	r3, r3, r1
 80063c4:	f8a0 206a 	strh.w	r2, [r0, #106]	@ 0x6a
 80063c8:	f8a0 3068 	strh.w	r3, [r0, #104]	@ 0x68
 80063cc:	4770      	bx	lr
 80063ce:	bf00      	nop
 80063d0:	0800d664 	.word	0x0800d664
 80063d4:	0800d65c 	.word	0x0800d65c

080063d8 <HAL_UARTEx_WakeupCallback>:
 80063d8:	4770      	bx	lr
 80063da:	bf00      	nop

080063dc <HAL_UARTEx_RxFifoFullCallback>:
 80063dc:	4770      	bx	lr
 80063de:	bf00      	nop

080063e0 <HAL_UARTEx_TxFifoEmptyCallback>:
 80063e0:	4770      	bx	lr
 80063e2:	bf00      	nop

080063e4 <HAL_UARTEx_DisableFifoMode>:
 80063e4:	f890 2084 	ldrb.w	r2, [r0, #132]	@ 0x84
 80063e8:	2a01      	cmp	r2, #1
 80063ea:	d017      	beq.n	800641c <HAL_UARTEx_DisableFifoMode+0x38>
 80063ec:	6802      	ldr	r2, [r0, #0]
 80063ee:	4603      	mov	r3, r0
 80063f0:	2024      	movs	r0, #36	@ 0x24
 80063f2:	2100      	movs	r1, #0
 80063f4:	b430      	push	{r4, r5}
 80063f6:	f8c3 0088 	str.w	r0, [r3, #136]	@ 0x88
 80063fa:	2520      	movs	r5, #32
 80063fc:	6810      	ldr	r0, [r2, #0]
 80063fe:	6814      	ldr	r4, [r2, #0]
 8006400:	f020 5000 	bic.w	r0, r0, #536870912	@ 0x20000000
 8006404:	f024 0401 	bic.w	r4, r4, #1
 8006408:	6014      	str	r4, [r2, #0]
 800640a:	6659      	str	r1, [r3, #100]	@ 0x64
 800640c:	6010      	str	r0, [r2, #0]
 800640e:	4608      	mov	r0, r1
 8006410:	f8c3 5088 	str.w	r5, [r3, #136]	@ 0x88
 8006414:	f883 1084 	strb.w	r1, [r3, #132]	@ 0x84
 8006418:	bc30      	pop	{r4, r5}
 800641a:	4770      	bx	lr
 800641c:	2002      	movs	r0, #2
 800641e:	4770      	bx	lr

08006420 <HAL_UARTEx_SetTxFifoThreshold>:
 8006420:	f890 3084 	ldrb.w	r3, [r0, #132]	@ 0x84
 8006424:	2b01      	cmp	r3, #1
 8006426:	d020      	beq.n	800646a <HAL_UARTEx_SetTxFifoThreshold+0x4a>
 8006428:	2324      	movs	r3, #36	@ 0x24
 800642a:	b570      	push	{r4, r5, r6, lr}
 800642c:	6805      	ldr	r5, [r0, #0]
 800642e:	4604      	mov	r4, r0
 8006430:	f8c0 3088 	str.w	r3, [r0, #136]	@ 0x88
 8006434:	682e      	ldr	r6, [r5, #0]
 8006436:	682b      	ldr	r3, [r5, #0]
 8006438:	f023 0301 	bic.w	r3, r3, #1
 800643c:	602b      	str	r3, [r5, #0]
 800643e:	68ab      	ldr	r3, [r5, #8]
 8006440:	f023 4360 	bic.w	r3, r3, #3758096384	@ 0xe0000000
 8006444:	4319      	orrs	r1, r3
 8006446:	6e43      	ldr	r3, [r0, #100]	@ 0x64
 8006448:	60a9      	str	r1, [r5, #8]
 800644a:	b153      	cbz	r3, 8006462 <HAL_UARTEx_SetTxFifoThreshold+0x42>
 800644c:	f7ff ffa2 	bl	8006394 <UARTEx_SetNbDataToProcess.part.0>
 8006450:	2300      	movs	r3, #0
 8006452:	2220      	movs	r2, #32
 8006454:	602e      	str	r6, [r5, #0]
 8006456:	4618      	mov	r0, r3
 8006458:	f8c4 2088 	str.w	r2, [r4, #136]	@ 0x88
 800645c:	f884 3084 	strb.w	r3, [r4, #132]	@ 0x84
 8006460:	bd70      	pop	{r4, r5, r6, pc}
 8006462:	f04f 1301 	mov.w	r3, #65537	@ 0x10001
 8006466:	6683      	str	r3, [r0, #104]	@ 0x68
 8006468:	e7f2      	b.n	8006450 <HAL_UARTEx_SetTxFifoThreshold+0x30>
 800646a:	2002      	movs	r0, #2
 800646c:	4770      	bx	lr
 800646e:	bf00      	nop

08006470 <HAL_UARTEx_SetRxFifoThreshold>:
 8006470:	f890 3084 	ldrb.w	r3, [r0, #132]	@ 0x84
 8006474:	2b01      	cmp	r3, #1
 8006476:	d020      	beq.n	80064ba <HAL_UARTEx_SetRxFifoThreshold+0x4a>
 8006478:	2324      	movs	r3, #36	@ 0x24
 800647a:	b570      	push	{r4, r5, r6, lr}
 800647c:	6805      	ldr	r5, [r0, #0]
 800647e:	4604      	mov	r4, r0
 8006480:	f8c0 3088 	str.w	r3, [r0, #136]	@ 0x88
 8006484:	682e      	ldr	r6, [r5, #0]
 8006486:	682b      	ldr	r3, [r5, #0]
 8006488:	f023 0301 	bic.w	r3, r3, #1
 800648c:	602b      	str	r3, [r5, #0]
 800648e:	68ab      	ldr	r3, [r5, #8]
 8006490:	f023 6360 	bic.w	r3, r3, #234881024	@ 0xe000000
 8006494:	4319      	orrs	r1, r3
 8006496:	6e43      	ldr	r3, [r0, #100]	@ 0x64
 8006498:	60a9      	str	r1, [r5, #8]
 800649a:	b153      	cbz	r3, 80064b2 <HAL_UARTEx_SetRxFifoThreshold+0x42>
 800649c:	f7ff ff7a 	bl	8006394 <UARTEx_SetNbDataToProcess.part.0>
 80064a0:	2300      	movs	r3, #0
 80064a2:	2220      	movs	r2, #32
 80064a4:	602e      	str	r6, [r5, #0]
 80064a6:	4618      	mov	r0, r3
 80064a8:	f8c4 2088 	str.w	r2, [r4, #136]	@ 0x88
 80064ac:	f884 3084 	strb.w	r3, [r4, #132]	@ 0x84
 80064b0:	bd70      	pop	{r4, r5, r6, pc}
 80064b2:	f04f 1301 	mov.w	r3, #65537	@ 0x10001
 80064b6:	6683      	str	r3, [r0, #104]	@ 0x68
 80064b8:	e7f2      	b.n	80064a0 <HAL_UARTEx_SetRxFifoThreshold+0x30>
 80064ba:	2002      	movs	r0, #2
 80064bc:	4770      	bx	lr
 80064be:	bf00      	nop

080064c0 <vListInitialise>:
 80064c0:	f100 0308 	add.w	r3, r0, #8
 80064c4:	f04f 31ff 	mov.w	r1, #4294967295
 80064c8:	2200      	movs	r2, #0
 80064ca:	6081      	str	r1, [r0, #8]
 80064cc:	6002      	str	r2, [r0, #0]
 80064ce:	6043      	str	r3, [r0, #4]
 80064d0:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80064d4:	4770      	bx	lr
 80064d6:	bf00      	nop

080064d8 <vListInitialiseItem>:
 80064d8:	2300      	movs	r3, #0
 80064da:	6103      	str	r3, [r0, #16]
 80064dc:	4770      	bx	lr
 80064de:	bf00      	nop

080064e0 <vListInsertEnd>:
 80064e0:	6803      	ldr	r3, [r0, #0]
 80064e2:	6842      	ldr	r2, [r0, #4]
 80064e4:	3301      	adds	r3, #1
 80064e6:	b410      	push	{r4}
 80064e8:	6894      	ldr	r4, [r2, #8]
 80064ea:	e9c1 2401 	strd	r2, r4, [r1, #4]
 80064ee:	6061      	str	r1, [r4, #4]
 80064f0:	6091      	str	r1, [r2, #8]
 80064f2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80064f6:	6108      	str	r0, [r1, #16]
 80064f8:	6003      	str	r3, [r0, #0]
 80064fa:	4770      	bx	lr

080064fc <vListInsert>:
 80064fc:	b430      	push	{r4, r5}
 80064fe:	680d      	ldr	r5, [r1, #0]
 8006500:	1c6b      	adds	r3, r5, #1
 8006502:	d010      	beq.n	8006526 <vListInsert+0x2a>
 8006504:	f100 0308 	add.w	r3, r0, #8
 8006508:	461c      	mov	r4, r3
 800650a:	685b      	ldr	r3, [r3, #4]
 800650c:	681a      	ldr	r2, [r3, #0]
 800650e:	42aa      	cmp	r2, r5
 8006510:	d9fa      	bls.n	8006508 <vListInsert+0xc>
 8006512:	6802      	ldr	r2, [r0, #0]
 8006514:	604b      	str	r3, [r1, #4]
 8006516:	3201      	adds	r2, #1
 8006518:	6099      	str	r1, [r3, #8]
 800651a:	608c      	str	r4, [r1, #8]
 800651c:	6061      	str	r1, [r4, #4]
 800651e:	6108      	str	r0, [r1, #16]
 8006520:	6002      	str	r2, [r0, #0]
 8006522:	bc30      	pop	{r4, r5}
 8006524:	4770      	bx	lr
 8006526:	6904      	ldr	r4, [r0, #16]
 8006528:	6863      	ldr	r3, [r4, #4]
 800652a:	e7f2      	b.n	8006512 <vListInsert+0x16>

0800652c <uxListRemove>:
 800652c:	6903      	ldr	r3, [r0, #16]
 800652e:	b410      	push	{r4}
 8006530:	685c      	ldr	r4, [r3, #4]
 8006532:	e9d0 1201 	ldrd	r1, r2, [r0, #4]
 8006536:	4284      	cmp	r4, r0
 8006538:	f85d 4b04 	ldr.w	r4, [sp], #4
 800653c:	608a      	str	r2, [r1, #8]
 800653e:	6051      	str	r1, [r2, #4]
 8006540:	f04f 0100 	mov.w	r1, #0
 8006544:	bf08      	it	eq
 8006546:	605a      	streq	r2, [r3, #4]
 8006548:	681a      	ldr	r2, [r3, #0]
 800654a:	6101      	str	r1, [r0, #16]
 800654c:	3a01      	subs	r2, #1
 800654e:	601a      	str	r2, [r3, #0]
 8006550:	6818      	ldr	r0, [r3, #0]
 8006552:	4770      	bx	lr

08006554 <prvCopyDataToQueue>:
 8006554:	b570      	push	{r4, r5, r6, lr}
 8006556:	4616      	mov	r6, r2
 8006558:	6c02      	ldr	r2, [r0, #64]	@ 0x40
 800655a:	4604      	mov	r4, r0
 800655c:	6b85      	ldr	r5, [r0, #56]	@ 0x38
 800655e:	b92a      	cbnz	r2, 800656c <prvCopyDataToQueue+0x18>
 8006560:	6806      	ldr	r6, [r0, #0]
 8006562:	3501      	adds	r5, #1
 8006564:	b32e      	cbz	r6, 80065b2 <prvCopyDataToQueue+0x5e>
 8006566:	4610      	mov	r0, r2
 8006568:	63a5      	str	r5, [r4, #56]	@ 0x38
 800656a:	bd70      	pop	{r4, r5, r6, pc}
 800656c:	b97e      	cbnz	r6, 800658e <prvCopyDataToQueue+0x3a>
 800656e:	6840      	ldr	r0, [r0, #4]
 8006570:	3501      	adds	r5, #1
 8006572:	f005 f84a 	bl	800b60a <memcpy>
 8006576:	6863      	ldr	r3, [r4, #4]
 8006578:	6c21      	ldr	r1, [r4, #64]	@ 0x40
 800657a:	68a2      	ldr	r2, [r4, #8]
 800657c:	440b      	add	r3, r1
 800657e:	4293      	cmp	r3, r2
 8006580:	6063      	str	r3, [r4, #4]
 8006582:	bf24      	itt	cs
 8006584:	6823      	ldrcs	r3, [r4, #0]
 8006586:	6063      	strcs	r3, [r4, #4]
 8006588:	2000      	movs	r0, #0
 800658a:	63a5      	str	r5, [r4, #56]	@ 0x38
 800658c:	bd70      	pop	{r4, r5, r6, pc}
 800658e:	68c0      	ldr	r0, [r0, #12]
 8006590:	f005 f83b 	bl	800b60a <memcpy>
 8006594:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8006596:	68e3      	ldr	r3, [r4, #12]
 8006598:	4251      	negs	r1, r2
 800659a:	1a9b      	subs	r3, r3, r2
 800659c:	6822      	ldr	r2, [r4, #0]
 800659e:	4293      	cmp	r3, r2
 80065a0:	60e3      	str	r3, [r4, #12]
 80065a2:	d202      	bcs.n	80065aa <prvCopyDataToQueue+0x56>
 80065a4:	68a3      	ldr	r3, [r4, #8]
 80065a6:	440b      	add	r3, r1
 80065a8:	60e3      	str	r3, [r4, #12]
 80065aa:	2e02      	cmp	r6, #2
 80065ac:	d006      	beq.n	80065bc <prvCopyDataToQueue+0x68>
 80065ae:	3501      	adds	r5, #1
 80065b0:	e7ea      	b.n	8006588 <prvCopyDataToQueue+0x34>
 80065b2:	6880      	ldr	r0, [r0, #8]
 80065b4:	f001 f8fe 	bl	80077b4 <xTaskPriorityDisinherit>
 80065b8:	60a6      	str	r6, [r4, #8]
 80065ba:	e7d5      	b.n	8006568 <prvCopyDataToQueue+0x14>
 80065bc:	2d01      	cmp	r5, #1
 80065be:	f04f 0000 	mov.w	r0, #0
 80065c2:	bf38      	it	cc
 80065c4:	2501      	movcc	r5, #1
 80065c6:	e7cf      	b.n	8006568 <prvCopyDataToQueue+0x14>

080065c8 <prvUnlockQueue>:
 80065c8:	b570      	push	{r4, r5, r6, lr}
 80065ca:	4605      	mov	r5, r0
 80065cc:	f001 fdca 	bl	8008164 <vPortEnterCritical>
 80065d0:	f895 3045 	ldrb.w	r3, [r5, #69]	@ 0x45
 80065d4:	b25c      	sxtb	r4, r3
 80065d6:	2c00      	cmp	r4, #0
 80065d8:	dd14      	ble.n	8006604 <prvUnlockQueue+0x3c>
 80065da:	f105 0624 	add.w	r6, r5, #36	@ 0x24
 80065de:	e003      	b.n	80065e8 <prvUnlockQueue+0x20>
 80065e0:	1e63      	subs	r3, r4, #1
 80065e2:	b2da      	uxtb	r2, r3
 80065e4:	b25c      	sxtb	r4, r3
 80065e6:	b16a      	cbz	r2, 8006604 <prvUnlockQueue+0x3c>
 80065e8:	6a6b      	ldr	r3, [r5, #36]	@ 0x24
 80065ea:	4630      	mov	r0, r6
 80065ec:	b153      	cbz	r3, 8006604 <prvUnlockQueue+0x3c>
 80065ee:	f000 fff7 	bl	80075e0 <xTaskRemoveFromEventList>
 80065f2:	2800      	cmp	r0, #0
 80065f4:	d0f4      	beq.n	80065e0 <prvUnlockQueue+0x18>
 80065f6:	f001 f887 	bl	8007708 <vTaskMissedYield>
 80065fa:	1e63      	subs	r3, r4, #1
 80065fc:	b2da      	uxtb	r2, r3
 80065fe:	b25c      	sxtb	r4, r3
 8006600:	2a00      	cmp	r2, #0
 8006602:	d1f1      	bne.n	80065e8 <prvUnlockQueue+0x20>
 8006604:	23ff      	movs	r3, #255	@ 0xff
 8006606:	f885 3045 	strb.w	r3, [r5, #69]	@ 0x45
 800660a:	f001 fdcd 	bl	80081a8 <vPortExitCritical>
 800660e:	f001 fda9 	bl	8008164 <vPortEnterCritical>
 8006612:	f895 3044 	ldrb.w	r3, [r5, #68]	@ 0x44
 8006616:	b25c      	sxtb	r4, r3
 8006618:	2c00      	cmp	r4, #0
 800661a:	dd14      	ble.n	8006646 <prvUnlockQueue+0x7e>
 800661c:	f105 0610 	add.w	r6, r5, #16
 8006620:	e003      	b.n	800662a <prvUnlockQueue+0x62>
 8006622:	1e63      	subs	r3, r4, #1
 8006624:	b2da      	uxtb	r2, r3
 8006626:	b25c      	sxtb	r4, r3
 8006628:	b16a      	cbz	r2, 8006646 <prvUnlockQueue+0x7e>
 800662a:	692b      	ldr	r3, [r5, #16]
 800662c:	4630      	mov	r0, r6
 800662e:	b153      	cbz	r3, 8006646 <prvUnlockQueue+0x7e>
 8006630:	f000 ffd6 	bl	80075e0 <xTaskRemoveFromEventList>
 8006634:	2800      	cmp	r0, #0
 8006636:	d0f4      	beq.n	8006622 <prvUnlockQueue+0x5a>
 8006638:	f001 f866 	bl	8007708 <vTaskMissedYield>
 800663c:	1e63      	subs	r3, r4, #1
 800663e:	b2da      	uxtb	r2, r3
 8006640:	b25c      	sxtb	r4, r3
 8006642:	2a00      	cmp	r2, #0
 8006644:	d1f1      	bne.n	800662a <prvUnlockQueue+0x62>
 8006646:	23ff      	movs	r3, #255	@ 0xff
 8006648:	f885 3044 	strb.w	r3, [r5, #68]	@ 0x44
 800664c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8006650:	f001 bdaa 	b.w	80081a8 <vPortExitCritical>

08006654 <xQueueGenericReset>:
 8006654:	b538      	push	{r3, r4, r5, lr}
 8006656:	b1e0      	cbz	r0, 8006692 <xQueueGenericReset+0x3e>
 8006658:	4604      	mov	r4, r0
 800665a:	460d      	mov	r5, r1
 800665c:	f001 fd82 	bl	8008164 <vPortEnterCritical>
 8006660:	6822      	ldr	r2, [r4, #0]
 8006662:	e9d4 310f 	ldrd	r3, r1, [r4, #60]	@ 0x3c
 8006666:	6062      	str	r2, [r4, #4]
 8006668:	fb01 f303 	mul.w	r3, r1, r3
 800666c:	1a59      	subs	r1, r3, r1
 800666e:	4413      	add	r3, r2
 8006670:	440a      	add	r2, r1
 8006672:	60a3      	str	r3, [r4, #8]
 8006674:	2100      	movs	r1, #0
 8006676:	23ff      	movs	r3, #255	@ 0xff
 8006678:	60e2      	str	r2, [r4, #12]
 800667a:	63a1      	str	r1, [r4, #56]	@ 0x38
 800667c:	f884 3044 	strb.w	r3, [r4, #68]	@ 0x44
 8006680:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
 8006684:	b975      	cbnz	r5, 80066a4 <xQueueGenericReset+0x50>
 8006686:	6923      	ldr	r3, [r4, #16]
 8006688:	b9c3      	cbnz	r3, 80066bc <xQueueGenericReset+0x68>
 800668a:	f001 fd8d 	bl	80081a8 <vPortExitCritical>
 800668e:	2001      	movs	r0, #1
 8006690:	bd38      	pop	{r3, r4, r5, pc}
 8006692:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006696:	f383 8811 	msr	BASEPRI, r3
 800669a:	f3bf 8f6f 	isb	sy
 800669e:	f3bf 8f4f 	dsb	sy
 80066a2:	e7fe      	b.n	80066a2 <xQueueGenericReset+0x4e>
 80066a4:	f104 0010 	add.w	r0, r4, #16
 80066a8:	f7ff ff0a 	bl	80064c0 <vListInitialise>
 80066ac:	f104 0024 	add.w	r0, r4, #36	@ 0x24
 80066b0:	f7ff ff06 	bl	80064c0 <vListInitialise>
 80066b4:	f001 fd78 	bl	80081a8 <vPortExitCritical>
 80066b8:	2001      	movs	r0, #1
 80066ba:	bd38      	pop	{r3, r4, r5, pc}
 80066bc:	f104 0010 	add.w	r0, r4, #16
 80066c0:	f000 ff8e 	bl	80075e0 <xTaskRemoveFromEventList>
 80066c4:	2800      	cmp	r0, #0
 80066c6:	d0e0      	beq.n	800668a <xQueueGenericReset+0x36>
 80066c8:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 80066cc:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 80066d0:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 80066d4:	f3bf 8f4f 	dsb	sy
 80066d8:	f3bf 8f6f 	isb	sy
 80066dc:	e7d5      	b.n	800668a <xQueueGenericReset+0x36>
 80066de:	bf00      	nop

080066e0 <xQueueGenericCreateStatic>:
 80066e0:	b530      	push	{r4, r5, lr}
 80066e2:	b085      	sub	sp, #20
 80066e4:	f89d 4020 	ldrb.w	r4, [sp, #32]
 80066e8:	b940      	cbnz	r0, 80066fc <xQueueGenericCreateStatic+0x1c>
 80066ea:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80066ee:	f383 8811 	msr	BASEPRI, r3
 80066f2:	f3bf 8f6f 	isb	sy
 80066f6:	f3bf 8f4f 	dsb	sy
 80066fa:	e7fe      	b.n	80066fa <xQueueGenericCreateStatic+0x1a>
 80066fc:	b153      	cbz	r3, 8006714 <xQueueGenericCreateStatic+0x34>
 80066fe:	b30a      	cbz	r2, 8006744 <xQueueGenericCreateStatic+0x64>
 8006700:	b989      	cbnz	r1, 8006726 <xQueueGenericCreateStatic+0x46>
 8006702:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006706:	f383 8811 	msr	BASEPRI, r3
 800670a:	f3bf 8f6f 	isb	sy
 800670e:	f3bf 8f4f 	dsb	sy
 8006712:	e7fe      	b.n	8006712 <xQueueGenericCreateStatic+0x32>
 8006714:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006718:	f383 8811 	msr	BASEPRI, r3
 800671c:	f3bf 8f6f 	isb	sy
 8006720:	f3bf 8f4f 	dsb	sy
 8006724:	e7fe      	b.n	8006724 <xQueueGenericCreateStatic+0x44>
 8006726:	b16a      	cbz	r2, 8006744 <xQueueGenericCreateStatic+0x64>
 8006728:	2550      	movs	r5, #80	@ 0x50
 800672a:	9503      	str	r5, [sp, #12]
 800672c:	9d03      	ldr	r5, [sp, #12]
 800672e:	2d50      	cmp	r5, #80	@ 0x50
 8006730:	d013      	beq.n	800675a <xQueueGenericCreateStatic+0x7a>
 8006732:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006736:	f383 8811 	msr	BASEPRI, r3
 800673a:	f3bf 8f6f 	isb	sy
 800673e:	f3bf 8f4f 	dsb	sy
 8006742:	e7fe      	b.n	8006742 <xQueueGenericCreateStatic+0x62>
 8006744:	2900      	cmp	r1, #0
 8006746:	d0ef      	beq.n	8006728 <xQueueGenericCreateStatic+0x48>
 8006748:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800674c:	f383 8811 	msr	BASEPRI, r3
 8006750:	f3bf 8f6f 	isb	sy
 8006754:	f3bf 8f4f 	dsb	sy
 8006758:	e7fe      	b.n	8006758 <xQueueGenericCreateStatic+0x78>
 800675a:	2900      	cmp	r1, #0
 800675c:	bf08      	it	eq
 800675e:	461a      	moveq	r2, r3
 8006760:	6419      	str	r1, [r3, #64]	@ 0x40
 8006762:	2101      	movs	r1, #1
 8006764:	63d8      	str	r0, [r3, #60]	@ 0x3c
 8006766:	601a      	str	r2, [r3, #0]
 8006768:	4618      	mov	r0, r3
 800676a:	f883 1046 	strb.w	r1, [r3, #70]	@ 0x46
 800676e:	9301      	str	r3, [sp, #4]
 8006770:	9a03      	ldr	r2, [sp, #12]
 8006772:	f7ff ff6f 	bl	8006654 <xQueueGenericReset>
 8006776:	9b01      	ldr	r3, [sp, #4]
 8006778:	4618      	mov	r0, r3
 800677a:	f883 404c 	strb.w	r4, [r3, #76]	@ 0x4c
 800677e:	b005      	add	sp, #20
 8006780:	bd30      	pop	{r4, r5, pc}
 8006782:	bf00      	nop

08006784 <xQueueGenericSend>:
 8006784:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006788:	b085      	sub	sp, #20
 800678a:	9201      	str	r2, [sp, #4]
 800678c:	2800      	cmp	r0, #0
 800678e:	d07e      	beq.n	800688e <xQueueGenericSend+0x10a>
 8006790:	460f      	mov	r7, r1
 8006792:	4604      	mov	r4, r0
 8006794:	461e      	mov	r6, r3
 8006796:	2900      	cmp	r1, #0
 8006798:	d069      	beq.n	800686e <xQueueGenericSend+0xea>
 800679a:	2e02      	cmp	r6, #2
 800679c:	d10b      	bne.n	80067b6 <xQueueGenericSend+0x32>
 800679e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 80067a0:	2b01      	cmp	r3, #1
 80067a2:	d008      	beq.n	80067b6 <xQueueGenericSend+0x32>
 80067a4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80067a8:	f383 8811 	msr	BASEPRI, r3
 80067ac:	f3bf 8f6f 	isb	sy
 80067b0:	f3bf 8f4f 	dsb	sy
 80067b4:	e7fe      	b.n	80067b4 <xQueueGenericSend+0x30>
 80067b6:	f000 ffad 	bl	8007714 <xTaskGetSchedulerState>
 80067ba:	2800      	cmp	r0, #0
 80067bc:	d070      	beq.n	80068a0 <xQueueGenericSend+0x11c>
 80067be:	f1a6 0802 	sub.w	r8, r6, #2
 80067c2:	2500      	movs	r5, #0
 80067c4:	fab8 f888 	clz	r8, r8
 80067c8:	46a9      	mov	r9, r5
 80067ca:	ea4f 1858 	mov.w	r8, r8, lsr #5
 80067ce:	e007      	b.n	80067e0 <xQueueGenericSend+0x5c>
 80067d0:	f001 fcea 	bl	80081a8 <vPortExitCritical>
 80067d4:	4620      	mov	r0, r4
 80067d6:	f7ff fef7 	bl	80065c8 <prvUnlockQueue>
 80067da:	f000 fe43 	bl	8007464 <xTaskResumeAll>
 80067de:	2501      	movs	r5, #1
 80067e0:	f001 fcc0 	bl	8008164 <vPortEnterCritical>
 80067e4:	6ba0      	ldr	r0, [r4, #56]	@ 0x38
 80067e6:	6be2      	ldr	r2, [r4, #60]	@ 0x3c
 80067e8:	4290      	cmp	r0, r2
 80067ea:	d365      	bcc.n	80068b8 <xQueueGenericSend+0x134>
 80067ec:	f1b8 0f00 	cmp.w	r8, #0
 80067f0:	d162      	bne.n	80068b8 <xQueueGenericSend+0x134>
 80067f2:	9b01      	ldr	r3, [sp, #4]
 80067f4:	2b00      	cmp	r3, #0
 80067f6:	d077      	beq.n	80068e8 <xQueueGenericSend+0x164>
 80067f8:	2d00      	cmp	r5, #0
 80067fa:	d044      	beq.n	8006886 <xQueueGenericSend+0x102>
 80067fc:	f001 fcd4 	bl	80081a8 <vPortExitCritical>
 8006800:	f000 fce4 	bl	80071cc <vTaskSuspendAll>
 8006804:	f001 fcae 	bl	8008164 <vPortEnterCritical>
 8006808:	f894 3044 	ldrb.w	r3, [r4, #68]	@ 0x44
 800680c:	2bff      	cmp	r3, #255	@ 0xff
 800680e:	d101      	bne.n	8006814 <xQueueGenericSend+0x90>
 8006810:	f884 9044 	strb.w	r9, [r4, #68]	@ 0x44
 8006814:	f894 3045 	ldrb.w	r3, [r4, #69]	@ 0x45
 8006818:	2bff      	cmp	r3, #255	@ 0xff
 800681a:	d101      	bne.n	8006820 <xQueueGenericSend+0x9c>
 800681c:	f884 9045 	strb.w	r9, [r4, #69]	@ 0x45
 8006820:	f001 fcc2 	bl	80081a8 <vPortExitCritical>
 8006824:	a901      	add	r1, sp, #4
 8006826:	a802      	add	r0, sp, #8
 8006828:	f000 ff2c 	bl	8007684 <xTaskCheckForTimeOut>
 800682c:	2800      	cmp	r0, #0
 800682e:	d15f      	bne.n	80068f0 <xQueueGenericSend+0x16c>
 8006830:	f001 fc98 	bl	8008164 <vPortEnterCritical>
 8006834:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
 8006836:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 8006838:	429a      	cmp	r2, r3
 800683a:	d1c9      	bne.n	80067d0 <xQueueGenericSend+0x4c>
 800683c:	f001 fcb4 	bl	80081a8 <vPortExitCritical>
 8006840:	9901      	ldr	r1, [sp, #4]
 8006842:	f104 0010 	add.w	r0, r4, #16
 8006846:	f000 fe93 	bl	8007570 <vTaskPlaceOnEventList>
 800684a:	4620      	mov	r0, r4
 800684c:	f7ff febc 	bl	80065c8 <prvUnlockQueue>
 8006850:	f000 fe08 	bl	8007464 <xTaskResumeAll>
 8006854:	2800      	cmp	r0, #0
 8006856:	d1c2      	bne.n	80067de <xQueueGenericSend+0x5a>
 8006858:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 800685c:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006860:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8006864:	f3bf 8f4f 	dsb	sy
 8006868:	f3bf 8f6f 	isb	sy
 800686c:	e7b7      	b.n	80067de <xQueueGenericSend+0x5a>
 800686e:	6c03      	ldr	r3, [r0, #64]	@ 0x40
 8006870:	2b00      	cmp	r3, #0
 8006872:	d092      	beq.n	800679a <xQueueGenericSend+0x16>
 8006874:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006878:	f383 8811 	msr	BASEPRI, r3
 800687c:	f3bf 8f6f 	isb	sy
 8006880:	f3bf 8f4f 	dsb	sy
 8006884:	e7fe      	b.n	8006884 <xQueueGenericSend+0x100>
 8006886:	a802      	add	r0, sp, #8
 8006888:	f000 fef0 	bl	800766c <vTaskInternalSetTimeOutState>
 800688c:	e7b6      	b.n	80067fc <xQueueGenericSend+0x78>
 800688e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006892:	f383 8811 	msr	BASEPRI, r3
 8006896:	f3bf 8f6f 	isb	sy
 800689a:	f3bf 8f4f 	dsb	sy
 800689e:	e7fe      	b.n	800689e <xQueueGenericSend+0x11a>
 80068a0:	9b01      	ldr	r3, [sp, #4]
 80068a2:	2b00      	cmp	r3, #0
 80068a4:	d08b      	beq.n	80067be <xQueueGenericSend+0x3a>
 80068a6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80068aa:	f383 8811 	msr	BASEPRI, r3
 80068ae:	f3bf 8f6f 	isb	sy
 80068b2:	f3bf 8f4f 	dsb	sy
 80068b6:	e7fe      	b.n	80068b6 <xQueueGenericSend+0x132>
 80068b8:	4632      	mov	r2, r6
 80068ba:	4639      	mov	r1, r7
 80068bc:	4620      	mov	r0, r4
 80068be:	f7ff fe49 	bl	8006554 <prvCopyDataToQueue>
 80068c2:	6a63      	ldr	r3, [r4, #36]	@ 0x24
 80068c4:	b9d3      	cbnz	r3, 80068fc <xQueueGenericSend+0x178>
 80068c6:	b148      	cbz	r0, 80068dc <xQueueGenericSend+0x158>
 80068c8:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 80068cc:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 80068d0:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 80068d4:	f3bf 8f4f 	dsb	sy
 80068d8:	f3bf 8f6f 	isb	sy
 80068dc:	f001 fc64 	bl	80081a8 <vPortExitCritical>
 80068e0:	2001      	movs	r0, #1
 80068e2:	b005      	add	sp, #20
 80068e4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80068e8:	f001 fc5e 	bl	80081a8 <vPortExitCritical>
 80068ec:	2000      	movs	r0, #0
 80068ee:	e7f8      	b.n	80068e2 <xQueueGenericSend+0x15e>
 80068f0:	4620      	mov	r0, r4
 80068f2:	f7ff fe69 	bl	80065c8 <prvUnlockQueue>
 80068f6:	f000 fdb5 	bl	8007464 <xTaskResumeAll>
 80068fa:	e7f7      	b.n	80068ec <xQueueGenericSend+0x168>
 80068fc:	f104 0024 	add.w	r0, r4, #36	@ 0x24
 8006900:	f000 fe6e 	bl	80075e0 <xTaskRemoveFromEventList>
 8006904:	2800      	cmp	r0, #0
 8006906:	d0e9      	beq.n	80068dc <xQueueGenericSend+0x158>
 8006908:	e7de      	b.n	80068c8 <xQueueGenericSend+0x144>
 800690a:	bf00      	nop

0800690c <xQueueCreateMutex>:
 800690c:	b570      	push	{r4, r5, r6, lr}
 800690e:	4605      	mov	r5, r0
 8006910:	2050      	movs	r0, #80	@ 0x50
 8006912:	f001 fadd 	bl	8007ed0 <pvPortMalloc>
 8006916:	4604      	mov	r4, r0
 8006918:	b198      	cbz	r0, 8006942 <xQueueCreateMutex+0x36>
 800691a:	2600      	movs	r6, #0
 800691c:	2101      	movs	r1, #1
 800691e:	6020      	str	r0, [r4, #0]
 8006920:	f880 6046 	strb.w	r6, [r0, #70]	@ 0x46
 8006924:	e9c0 160f 	strd	r1, r6, [r0, #60]	@ 0x3c
 8006928:	f7ff fe94 	bl	8006654 <xQueueGenericReset>
 800692c:	4633      	mov	r3, r6
 800692e:	4632      	mov	r2, r6
 8006930:	4631      	mov	r1, r6
 8006932:	4620      	mov	r0, r4
 8006934:	f884 504c 	strb.w	r5, [r4, #76]	@ 0x4c
 8006938:	60a6      	str	r6, [r4, #8]
 800693a:	6026      	str	r6, [r4, #0]
 800693c:	60e6      	str	r6, [r4, #12]
 800693e:	f7ff ff21 	bl	8006784 <xQueueGenericSend>
 8006942:	4620      	mov	r0, r4
 8006944:	bd70      	pop	{r4, r5, r6, pc}
 8006946:	bf00      	nop

08006948 <xQueueGenericSendFromISR>:
 8006948:	2800      	cmp	r0, #0
 800694a:	d04b      	beq.n	80069e4 <xQueueGenericSendFromISR+0x9c>
 800694c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006950:	460e      	mov	r6, r1
 8006952:	4604      	mov	r4, r0
 8006954:	4617      	mov	r7, r2
 8006956:	461d      	mov	r5, r3
 8006958:	b339      	cbz	r1, 80069aa <xQueueGenericSendFromISR+0x62>
 800695a:	2d02      	cmp	r5, #2
 800695c:	d10b      	bne.n	8006976 <xQueueGenericSendFromISR+0x2e>
 800695e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 8006960:	2b01      	cmp	r3, #1
 8006962:	d008      	beq.n	8006976 <xQueueGenericSendFromISR+0x2e>
 8006964:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006968:	f383 8811 	msr	BASEPRI, r3
 800696c:	f3bf 8f6f 	isb	sy
 8006970:	f3bf 8f4f 	dsb	sy
 8006974:	e7fe      	b.n	8006974 <xQueueGenericSendFromISR+0x2c>
 8006976:	f001 fd11 	bl	800839c <vPortValidateInterruptPriority>
 800697a:	f3ef 8811 	mrs	r8, BASEPRI
 800697e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006982:	f383 8811 	msr	BASEPRI, r3
 8006986:	f3bf 8f6f 	isb	sy
 800698a:	f3bf 8f4f 	dsb	sy
 800698e:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
 8006990:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 8006992:	429a      	cmp	r2, r3
 8006994:	d315      	bcc.n	80069c2 <xQueueGenericSendFromISR+0x7a>
 8006996:	f1a5 0002 	sub.w	r0, r5, #2
 800699a:	fab0 f080 	clz	r0, r0
 800699e:	0940      	lsrs	r0, r0, #5
 80069a0:	b978      	cbnz	r0, 80069c2 <xQueueGenericSendFromISR+0x7a>
 80069a2:	f388 8811 	msr	BASEPRI, r8
 80069a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80069aa:	6c03      	ldr	r3, [r0, #64]	@ 0x40
 80069ac:	2b00      	cmp	r3, #0
 80069ae:	d0d4      	beq.n	800695a <xQueueGenericSendFromISR+0x12>
 80069b0:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80069b4:	f383 8811 	msr	BASEPRI, r3
 80069b8:	f3bf 8f6f 	isb	sy
 80069bc:	f3bf 8f4f 	dsb	sy
 80069c0:	e7fe      	b.n	80069c0 <xQueueGenericSendFromISR+0x78>
 80069c2:	462a      	mov	r2, r5
 80069c4:	f894 5045 	ldrb.w	r5, [r4, #69]	@ 0x45
 80069c8:	4631      	mov	r1, r6
 80069ca:	4620      	mov	r0, r4
 80069cc:	b26d      	sxtb	r5, r5
 80069ce:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 80069d0:	f7ff fdc0 	bl	8006554 <prvCopyDataToQueue>
 80069d4:	1c6b      	adds	r3, r5, #1
 80069d6:	d00e      	beq.n	80069f6 <xQueueGenericSendFromISR+0xae>
 80069d8:	1c6b      	adds	r3, r5, #1
 80069da:	b25b      	sxtb	r3, r3
 80069dc:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
 80069e0:	2001      	movs	r0, #1
 80069e2:	e7de      	b.n	80069a2 <xQueueGenericSendFromISR+0x5a>
 80069e4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80069e8:	f383 8811 	msr	BASEPRI, r3
 80069ec:	f3bf 8f6f 	isb	sy
 80069f0:	f3bf 8f4f 	dsb	sy
 80069f4:	e7fe      	b.n	80069f4 <xQueueGenericSendFromISR+0xac>
 80069f6:	6a63      	ldr	r3, [r4, #36]	@ 0x24
 80069f8:	2b00      	cmp	r3, #0
 80069fa:	d0f1      	beq.n	80069e0 <xQueueGenericSendFromISR+0x98>
 80069fc:	f104 0024 	add.w	r0, r4, #36	@ 0x24
 8006a00:	f000 fdee 	bl	80075e0 <xTaskRemoveFromEventList>
 8006a04:	2f00      	cmp	r7, #0
 8006a06:	d0eb      	beq.n	80069e0 <xQueueGenericSendFromISR+0x98>
 8006a08:	2800      	cmp	r0, #0
 8006a0a:	d0e9      	beq.n	80069e0 <xQueueGenericSendFromISR+0x98>
 8006a0c:	2301      	movs	r3, #1
 8006a0e:	603b      	str	r3, [r7, #0]
 8006a10:	e7e6      	b.n	80069e0 <xQueueGenericSendFromISR+0x98>
 8006a12:	bf00      	nop

08006a14 <xQueueReceive>:
 8006a14:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006a16:	b085      	sub	sp, #20
 8006a18:	9201      	str	r2, [sp, #4]
 8006a1a:	2800      	cmp	r0, #0
 8006a1c:	f000 8084 	beq.w	8006b28 <xQueueReceive+0x114>
 8006a20:	460e      	mov	r6, r1
 8006a22:	4604      	mov	r4, r0
 8006a24:	2900      	cmp	r1, #0
 8006a26:	d041      	beq.n	8006aac <xQueueReceive+0x98>
 8006a28:	f000 fe74 	bl	8007714 <xTaskGetSchedulerState>
 8006a2c:	2800      	cmp	r0, #0
 8006a2e:	d049      	beq.n	8006ac4 <xQueueReceive+0xb0>
 8006a30:	f001 fb98 	bl	8008164 <vPortEnterCritical>
 8006a34:	6ba5      	ldr	r5, [r4, #56]	@ 0x38
 8006a36:	2d00      	cmp	r5, #0
 8006a38:	d17f      	bne.n	8006b3a <xQueueReceive+0x126>
 8006a3a:	9b01      	ldr	r3, [sp, #4]
 8006a3c:	b38b      	cbz	r3, 8006aa2 <xQueueReceive+0x8e>
 8006a3e:	462f      	mov	r7, r5
 8006a40:	a802      	add	r0, sp, #8
 8006a42:	f000 fe13 	bl	800766c <vTaskInternalSetTimeOutState>
 8006a46:	f001 fbaf 	bl	80081a8 <vPortExitCritical>
 8006a4a:	f000 fbbf 	bl	80071cc <vTaskSuspendAll>
 8006a4e:	f001 fb89 	bl	8008164 <vPortEnterCritical>
 8006a52:	f894 3044 	ldrb.w	r3, [r4, #68]	@ 0x44
 8006a56:	2bff      	cmp	r3, #255	@ 0xff
 8006a58:	d101      	bne.n	8006a5e <xQueueReceive+0x4a>
 8006a5a:	f884 7044 	strb.w	r7, [r4, #68]	@ 0x44
 8006a5e:	f894 3045 	ldrb.w	r3, [r4, #69]	@ 0x45
 8006a62:	2bff      	cmp	r3, #255	@ 0xff
 8006a64:	d101      	bne.n	8006a6a <xQueueReceive+0x56>
 8006a66:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
 8006a6a:	f001 fb9d 	bl	80081a8 <vPortExitCritical>
 8006a6e:	a901      	add	r1, sp, #4
 8006a70:	a802      	add	r0, sp, #8
 8006a72:	f000 fe07 	bl	8007684 <xTaskCheckForTimeOut>
 8006a76:	2800      	cmp	r0, #0
 8006a78:	d130      	bne.n	8006adc <xQueueReceive+0xc8>
 8006a7a:	f001 fb73 	bl	8008164 <vPortEnterCritical>
 8006a7e:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8006a80:	2b00      	cmp	r3, #0
 8006a82:	d038      	beq.n	8006af6 <xQueueReceive+0xe2>
 8006a84:	f001 fb90 	bl	80081a8 <vPortExitCritical>
 8006a88:	4620      	mov	r0, r4
 8006a8a:	f7ff fd9d 	bl	80065c8 <prvUnlockQueue>
 8006a8e:	f000 fce9 	bl	8007464 <xTaskResumeAll>
 8006a92:	f001 fb67 	bl	8008164 <vPortEnterCritical>
 8006a96:	6ba5      	ldr	r5, [r4, #56]	@ 0x38
 8006a98:	2d00      	cmp	r5, #0
 8006a9a:	d14e      	bne.n	8006b3a <xQueueReceive+0x126>
 8006a9c:	9b01      	ldr	r3, [sp, #4]
 8006a9e:	2b00      	cmp	r3, #0
 8006aa0:	d1d1      	bne.n	8006a46 <xQueueReceive+0x32>
 8006aa2:	f001 fb81 	bl	80081a8 <vPortExitCritical>
 8006aa6:	2000      	movs	r0, #0
 8006aa8:	b005      	add	sp, #20
 8006aaa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006aac:	6c03      	ldr	r3, [r0, #64]	@ 0x40
 8006aae:	2b00      	cmp	r3, #0
 8006ab0:	d0ba      	beq.n	8006a28 <xQueueReceive+0x14>
 8006ab2:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006ab6:	f383 8811 	msr	BASEPRI, r3
 8006aba:	f3bf 8f6f 	isb	sy
 8006abe:	f3bf 8f4f 	dsb	sy
 8006ac2:	e7fe      	b.n	8006ac2 <xQueueReceive+0xae>
 8006ac4:	9b01      	ldr	r3, [sp, #4]
 8006ac6:	2b00      	cmp	r3, #0
 8006ac8:	d0b2      	beq.n	8006a30 <xQueueReceive+0x1c>
 8006aca:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006ace:	f383 8811 	msr	BASEPRI, r3
 8006ad2:	f3bf 8f6f 	isb	sy
 8006ad6:	f3bf 8f4f 	dsb	sy
 8006ada:	e7fe      	b.n	8006ada <xQueueReceive+0xc6>
 8006adc:	4620      	mov	r0, r4
 8006ade:	f7ff fd73 	bl	80065c8 <prvUnlockQueue>
 8006ae2:	f000 fcbf 	bl	8007464 <xTaskResumeAll>
 8006ae6:	f001 fb3d 	bl	8008164 <vPortEnterCritical>
 8006aea:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8006aec:	2b00      	cmp	r3, #0
 8006aee:	d0d8      	beq.n	8006aa2 <xQueueReceive+0x8e>
 8006af0:	f001 fb5a 	bl	80081a8 <vPortExitCritical>
 8006af4:	e7cd      	b.n	8006a92 <xQueueReceive+0x7e>
 8006af6:	f001 fb57 	bl	80081a8 <vPortExitCritical>
 8006afa:	9901      	ldr	r1, [sp, #4]
 8006afc:	f104 0024 	add.w	r0, r4, #36	@ 0x24
 8006b00:	f000 fd36 	bl	8007570 <vTaskPlaceOnEventList>
 8006b04:	4620      	mov	r0, r4
 8006b06:	f7ff fd5f 	bl	80065c8 <prvUnlockQueue>
 8006b0a:	f000 fcab 	bl	8007464 <xTaskResumeAll>
 8006b0e:	2800      	cmp	r0, #0
 8006b10:	d1bf      	bne.n	8006a92 <xQueueReceive+0x7e>
 8006b12:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8006b16:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006b1a:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8006b1e:	f3bf 8f4f 	dsb	sy
 8006b22:	f3bf 8f6f 	isb	sy
 8006b26:	e7b4      	b.n	8006a92 <xQueueReceive+0x7e>
 8006b28:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006b2c:	f383 8811 	msr	BASEPRI, r3
 8006b30:	f3bf 8f6f 	isb	sy
 8006b34:	f3bf 8f4f 	dsb	sy
 8006b38:	e7fe      	b.n	8006b38 <xQueueReceive+0x124>
 8006b3a:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 8006b3c:	b152      	cbz	r2, 8006b54 <xQueueReceive+0x140>
 8006b3e:	68e1      	ldr	r1, [r4, #12]
 8006b40:	68a3      	ldr	r3, [r4, #8]
 8006b42:	4411      	add	r1, r2
 8006b44:	4299      	cmp	r1, r3
 8006b46:	60e1      	str	r1, [r4, #12]
 8006b48:	d301      	bcc.n	8006b4e <xQueueReceive+0x13a>
 8006b4a:	6821      	ldr	r1, [r4, #0]
 8006b4c:	60e1      	str	r1, [r4, #12]
 8006b4e:	4630      	mov	r0, r6
 8006b50:	f004 fd5b 	bl	800b60a <memcpy>
 8006b54:	3d01      	subs	r5, #1
 8006b56:	63a5      	str	r5, [r4, #56]	@ 0x38
 8006b58:	6923      	ldr	r3, [r4, #16]
 8006b5a:	b91b      	cbnz	r3, 8006b64 <xQueueReceive+0x150>
 8006b5c:	f001 fb24 	bl	80081a8 <vPortExitCritical>
 8006b60:	2001      	movs	r0, #1
 8006b62:	e7a1      	b.n	8006aa8 <xQueueReceive+0x94>
 8006b64:	f104 0010 	add.w	r0, r4, #16
 8006b68:	f000 fd3a 	bl	80075e0 <xTaskRemoveFromEventList>
 8006b6c:	2800      	cmp	r0, #0
 8006b6e:	d0f5      	beq.n	8006b5c <xQueueReceive+0x148>
 8006b70:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8006b74:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006b78:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8006b7c:	f3bf 8f4f 	dsb	sy
 8006b80:	f3bf 8f6f 	isb	sy
 8006b84:	e7ea      	b.n	8006b5c <xQueueReceive+0x148>
 8006b86:	bf00      	nop

08006b88 <xQueueSemaphoreTake>:
 8006b88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006b8a:	b085      	sub	sp, #20
 8006b8c:	9101      	str	r1, [sp, #4]
 8006b8e:	2800      	cmp	r0, #0
 8006b90:	d057      	beq.n	8006c42 <xQueueSemaphoreTake+0xba>
 8006b92:	6c03      	ldr	r3, [r0, #64]	@ 0x40
 8006b94:	4604      	mov	r4, r0
 8006b96:	b143      	cbz	r3, 8006baa <xQueueSemaphoreTake+0x22>
 8006b98:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006b9c:	f383 8811 	msr	BASEPRI, r3
 8006ba0:	f3bf 8f6f 	isb	sy
 8006ba4:	f3bf 8f4f 	dsb	sy
 8006ba8:	e7fe      	b.n	8006ba8 <xQueueSemaphoreTake+0x20>
 8006baa:	f000 fdb3 	bl	8007714 <xTaskGetSchedulerState>
 8006bae:	2800      	cmp	r0, #0
 8006bb0:	d050      	beq.n	8006c54 <xQueueSemaphoreTake+0xcc>
 8006bb2:	f001 fad7 	bl	8008164 <vPortEnterCritical>
 8006bb6:	6ba5      	ldr	r5, [r4, #56]	@ 0x38
 8006bb8:	2d00      	cmp	r5, #0
 8006bba:	f040 809b 	bne.w	8006cf4 <xQueueSemaphoreTake+0x16c>
 8006bbe:	9b01      	ldr	r3, [sp, #4]
 8006bc0:	2b00      	cmp	r3, #0
 8006bc2:	f000 808b 	beq.w	8006cdc <xQueueSemaphoreTake+0x154>
 8006bc6:	462e      	mov	r6, r5
 8006bc8:	462f      	mov	r7, r5
 8006bca:	a802      	add	r0, sp, #8
 8006bcc:	f000 fd4e 	bl	800766c <vTaskInternalSetTimeOutState>
 8006bd0:	f001 faea 	bl	80081a8 <vPortExitCritical>
 8006bd4:	f000 fafa 	bl	80071cc <vTaskSuspendAll>
 8006bd8:	f001 fac4 	bl	8008164 <vPortEnterCritical>
 8006bdc:	f894 3044 	ldrb.w	r3, [r4, #68]	@ 0x44
 8006be0:	2bff      	cmp	r3, #255	@ 0xff
 8006be2:	d101      	bne.n	8006be8 <xQueueSemaphoreTake+0x60>
 8006be4:	f884 7044 	strb.w	r7, [r4, #68]	@ 0x44
 8006be8:	f894 3045 	ldrb.w	r3, [r4, #69]	@ 0x45
 8006bec:	2bff      	cmp	r3, #255	@ 0xff
 8006bee:	d101      	bne.n	8006bf4 <xQueueSemaphoreTake+0x6c>
 8006bf0:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
 8006bf4:	f001 fad8 	bl	80081a8 <vPortExitCritical>
 8006bf8:	a901      	add	r1, sp, #4
 8006bfa:	a802      	add	r0, sp, #8
 8006bfc:	f000 fd42 	bl	8007684 <xTaskCheckForTimeOut>
 8006c00:	2800      	cmp	r0, #0
 8006c02:	d133      	bne.n	8006c6c <xQueueSemaphoreTake+0xe4>
 8006c04:	f001 faae 	bl	8008164 <vPortEnterCritical>
 8006c08:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8006c0a:	2b00      	cmp	r3, #0
 8006c0c:	d040      	beq.n	8006c90 <xQueueSemaphoreTake+0x108>
 8006c0e:	f001 facb 	bl	80081a8 <vPortExitCritical>
 8006c12:	4620      	mov	r0, r4
 8006c14:	f7ff fcd8 	bl	80065c8 <prvUnlockQueue>
 8006c18:	f000 fc24 	bl	8007464 <xTaskResumeAll>
 8006c1c:	f001 faa2 	bl	8008164 <vPortEnterCritical>
 8006c20:	6ba5      	ldr	r5, [r4, #56]	@ 0x38
 8006c22:	2d00      	cmp	r5, #0
 8006c24:	d166      	bne.n	8006cf4 <xQueueSemaphoreTake+0x16c>
 8006c26:	9b01      	ldr	r3, [sp, #4]
 8006c28:	2b00      	cmp	r3, #0
 8006c2a:	d1d1      	bne.n	8006bd0 <xQueueSemaphoreTake+0x48>
 8006c2c:	2e00      	cmp	r6, #0
 8006c2e:	d055      	beq.n	8006cdc <xQueueSemaphoreTake+0x154>
 8006c30:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006c34:	f383 8811 	msr	BASEPRI, r3
 8006c38:	f3bf 8f6f 	isb	sy
 8006c3c:	f3bf 8f4f 	dsb	sy
 8006c40:	e7fe      	b.n	8006c40 <xQueueSemaphoreTake+0xb8>
 8006c42:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006c46:	f383 8811 	msr	BASEPRI, r3
 8006c4a:	f3bf 8f6f 	isb	sy
 8006c4e:	f3bf 8f4f 	dsb	sy
 8006c52:	e7fe      	b.n	8006c52 <xQueueSemaphoreTake+0xca>
 8006c54:	9b01      	ldr	r3, [sp, #4]
 8006c56:	2b00      	cmp	r3, #0
 8006c58:	d0ab      	beq.n	8006bb2 <xQueueSemaphoreTake+0x2a>
 8006c5a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006c5e:	f383 8811 	msr	BASEPRI, r3
 8006c62:	f3bf 8f6f 	isb	sy
 8006c66:	f3bf 8f4f 	dsb	sy
 8006c6a:	e7fe      	b.n	8006c6a <xQueueSemaphoreTake+0xe2>
 8006c6c:	4620      	mov	r0, r4
 8006c6e:	f7ff fcab 	bl	80065c8 <prvUnlockQueue>
 8006c72:	f000 fbf7 	bl	8007464 <xTaskResumeAll>
 8006c76:	f001 fa75 	bl	8008164 <vPortEnterCritical>
 8006c7a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8006c7c:	b92b      	cbnz	r3, 8006c8a <xQueueSemaphoreTake+0x102>
 8006c7e:	f001 fa93 	bl	80081a8 <vPortExitCritical>
 8006c82:	bb06      	cbnz	r6, 8006cc6 <xQueueSemaphoreTake+0x13e>
 8006c84:	2000      	movs	r0, #0
 8006c86:	b005      	add	sp, #20
 8006c88:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006c8a:	f001 fa8d 	bl	80081a8 <vPortExitCritical>
 8006c8e:	e7c5      	b.n	8006c1c <xQueueSemaphoreTake+0x94>
 8006c90:	f001 fa8a 	bl	80081a8 <vPortExitCritical>
 8006c94:	6823      	ldr	r3, [r4, #0]
 8006c96:	b323      	cbz	r3, 8006ce2 <xQueueSemaphoreTake+0x15a>
 8006c98:	9901      	ldr	r1, [sp, #4]
 8006c9a:	f104 0024 	add.w	r0, r4, #36	@ 0x24
 8006c9e:	f000 fc67 	bl	8007570 <vTaskPlaceOnEventList>
 8006ca2:	4620      	mov	r0, r4
 8006ca4:	f7ff fc90 	bl	80065c8 <prvUnlockQueue>
 8006ca8:	f000 fbdc 	bl	8007464 <xTaskResumeAll>
 8006cac:	2800      	cmp	r0, #0
 8006cae:	d1b5      	bne.n	8006c1c <xQueueSemaphoreTake+0x94>
 8006cb0:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8006cb4:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006cb8:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8006cbc:	f3bf 8f4f 	dsb	sy
 8006cc0:	f3bf 8f6f 	isb	sy
 8006cc4:	e7aa      	b.n	8006c1c <xQueueSemaphoreTake+0x94>
 8006cc6:	f001 fa4d 	bl	8008164 <vPortEnterCritical>
 8006cca:	6a61      	ldr	r1, [r4, #36]	@ 0x24
 8006ccc:	b119      	cbz	r1, 8006cd6 <xQueueSemaphoreTake+0x14e>
 8006cce:	6b23      	ldr	r3, [r4, #48]	@ 0x30
 8006cd0:	6819      	ldr	r1, [r3, #0]
 8006cd2:	f1c1 0138 	rsb	r1, r1, #56	@ 0x38
 8006cd6:	68a0      	ldr	r0, [r4, #8]
 8006cd8:	f000 fdb0 	bl	800783c <vTaskPriorityDisinheritAfterTimeout>
 8006cdc:	f001 fa64 	bl	80081a8 <vPortExitCritical>
 8006ce0:	e7d0      	b.n	8006c84 <xQueueSemaphoreTake+0xfc>
 8006ce2:	f001 fa3f 	bl	8008164 <vPortEnterCritical>
 8006ce6:	68a0      	ldr	r0, [r4, #8]
 8006ce8:	f000 fd24 	bl	8007734 <xTaskPriorityInherit>
 8006cec:	4606      	mov	r6, r0
 8006cee:	f001 fa5b 	bl	80081a8 <vPortExitCritical>
 8006cf2:	e7d1      	b.n	8006c98 <xQueueSemaphoreTake+0x110>
 8006cf4:	3d01      	subs	r5, #1
 8006cf6:	6823      	ldr	r3, [r4, #0]
 8006cf8:	63a5      	str	r5, [r4, #56]	@ 0x38
 8006cfa:	b12b      	cbz	r3, 8006d08 <xQueueSemaphoreTake+0x180>
 8006cfc:	6923      	ldr	r3, [r4, #16]
 8006cfe:	b93b      	cbnz	r3, 8006d10 <xQueueSemaphoreTake+0x188>
 8006d00:	f001 fa52 	bl	80081a8 <vPortExitCritical>
 8006d04:	2001      	movs	r0, #1
 8006d06:	e7be      	b.n	8006c86 <xQueueSemaphoreTake+0xfe>
 8006d08:	f000 fde8 	bl	80078dc <pvTaskIncrementMutexHeldCount>
 8006d0c:	60a0      	str	r0, [r4, #8]
 8006d0e:	e7f5      	b.n	8006cfc <xQueueSemaphoreTake+0x174>
 8006d10:	f104 0010 	add.w	r0, r4, #16
 8006d14:	f000 fc64 	bl	80075e0 <xTaskRemoveFromEventList>
 8006d18:	2800      	cmp	r0, #0
 8006d1a:	d0f1      	beq.n	8006d00 <xQueueSemaphoreTake+0x178>
 8006d1c:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8006d20:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006d24:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8006d28:	f3bf 8f4f 	dsb	sy
 8006d2c:	f3bf 8f6f 	isb	sy
 8006d30:	e7e6      	b.n	8006d00 <xQueueSemaphoreTake+0x178>
 8006d32:	bf00      	nop

08006d34 <vQueueAddToRegistry>:
 8006d34:	2300      	movs	r3, #0
 8006d36:	4a0a      	ldr	r2, [pc, #40]	@ (8006d60 <vQueueAddToRegistry+0x2c>)
 8006d38:	b410      	push	{r4}
 8006d3a:	f852 4033 	ldr.w	r4, [r2, r3, lsl #3]
 8006d3e:	eb02 0cc3 	add.w	ip, r2, r3, lsl #3
 8006d42:	b12c      	cbz	r4, 8006d50 <vQueueAddToRegistry+0x1c>
 8006d44:	3301      	adds	r3, #1
 8006d46:	2b08      	cmp	r3, #8
 8006d48:	d1f7      	bne.n	8006d3a <vQueueAddToRegistry+0x6>
 8006d4a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006d4e:	4770      	bx	lr
 8006d50:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006d54:	f842 1033 	str.w	r1, [r2, r3, lsl #3]
 8006d58:	f8cc 0004 	str.w	r0, [ip, #4]
 8006d5c:	4770      	bx	lr
 8006d5e:	bf00      	nop
 8006d60:	20000278 	.word	0x20000278

08006d64 <vQueueWaitForMessageRestricted>:
 8006d64:	b570      	push	{r4, r5, r6, lr}
 8006d66:	4604      	mov	r4, r0
 8006d68:	460e      	mov	r6, r1
 8006d6a:	4615      	mov	r5, r2
 8006d6c:	f001 f9fa 	bl	8008164 <vPortEnterCritical>
 8006d70:	f894 3044 	ldrb.w	r3, [r4, #68]	@ 0x44
 8006d74:	2bff      	cmp	r3, #255	@ 0xff
 8006d76:	d102      	bne.n	8006d7e <vQueueWaitForMessageRestricted+0x1a>
 8006d78:	2300      	movs	r3, #0
 8006d7a:	f884 3044 	strb.w	r3, [r4, #68]	@ 0x44
 8006d7e:	f894 3045 	ldrb.w	r3, [r4, #69]	@ 0x45
 8006d82:	2bff      	cmp	r3, #255	@ 0xff
 8006d84:	d102      	bne.n	8006d8c <vQueueWaitForMessageRestricted+0x28>
 8006d86:	2300      	movs	r3, #0
 8006d88:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
 8006d8c:	f001 fa0c 	bl	80081a8 <vPortExitCritical>
 8006d90:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8006d92:	b123      	cbz	r3, 8006d9e <vQueueWaitForMessageRestricted+0x3a>
 8006d94:	4620      	mov	r0, r4
 8006d96:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8006d9a:	f7ff bc15 	b.w	80065c8 <prvUnlockQueue>
 8006d9e:	f104 0024 	add.w	r0, r4, #36	@ 0x24
 8006da2:	462a      	mov	r2, r5
 8006da4:	4631      	mov	r1, r6
 8006da6:	f000 fbfd 	bl	80075a4 <vTaskPlaceOnEventListRestricted>
 8006daa:	4620      	mov	r0, r4
 8006dac:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8006db0:	f7ff bc0a 	b.w	80065c8 <prvUnlockQueue>

08006db4 <prvAddNewTaskToReadyList>:
 8006db4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006db8:	4605      	mov	r5, r0
 8006dba:	f001 f9d3 	bl	8008164 <vPortEnterCritical>
 8006dbe:	4a33      	ldr	r2, [pc, #204]	@ (8006e8c <prvAddNewTaskToReadyList+0xd8>)
 8006dc0:	4e33      	ldr	r6, [pc, #204]	@ (8006e90 <prvAddNewTaskToReadyList+0xdc>)
 8006dc2:	6813      	ldr	r3, [r2, #0]
 8006dc4:	3301      	adds	r3, #1
 8006dc6:	6013      	str	r3, [r2, #0]
 8006dc8:	6833      	ldr	r3, [r6, #0]
 8006dca:	2b00      	cmp	r3, #0
 8006dcc:	d031      	beq.n	8006e32 <prvAddNewTaskToReadyList+0x7e>
 8006dce:	4c31      	ldr	r4, [pc, #196]	@ (8006e94 <prvAddNewTaskToReadyList+0xe0>)
 8006dd0:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
 8006dd2:	6823      	ldr	r3, [r4, #0]
 8006dd4:	b333      	cbz	r3, 8006e24 <prvAddNewTaskToReadyList+0x70>
 8006dd6:	4f30      	ldr	r7, [pc, #192]	@ (8006e98 <prvAddNewTaskToReadyList+0xe4>)
 8006dd8:	4a30      	ldr	r2, [pc, #192]	@ (8006e9c <prvAddNewTaskToReadyList+0xe8>)
 8006dda:	4931      	ldr	r1, [pc, #196]	@ (8006ea0 <prvAddNewTaskToReadyList+0xec>)
 8006ddc:	6813      	ldr	r3, [r2, #0]
 8006dde:	3301      	adds	r3, #1
 8006de0:	6013      	str	r3, [r2, #0]
 8006de2:	646b      	str	r3, [r5, #68]	@ 0x44
 8006de4:	680b      	ldr	r3, [r1, #0]
 8006de6:	4283      	cmp	r3, r0
 8006de8:	d200      	bcs.n	8006dec <prvAddNewTaskToReadyList+0x38>
 8006dea:	6008      	str	r0, [r1, #0]
 8006dec:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8006df0:	1d29      	adds	r1, r5, #4
 8006df2:	eb07 0080 	add.w	r0, r7, r0, lsl #2
 8006df6:	f7ff fb73 	bl	80064e0 <vListInsertEnd>
 8006dfa:	f001 f9d5 	bl	80081a8 <vPortExitCritical>
 8006dfe:	6823      	ldr	r3, [r4, #0]
 8006e00:	b173      	cbz	r3, 8006e20 <prvAddNewTaskToReadyList+0x6c>
 8006e02:	6832      	ldr	r2, [r6, #0]
 8006e04:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8006e06:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
 8006e08:	429a      	cmp	r2, r3
 8006e0a:	d209      	bcs.n	8006e20 <prvAddNewTaskToReadyList+0x6c>
 8006e0c:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8006e10:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006e14:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8006e18:	f3bf 8f4f 	dsb	sy
 8006e1c:	f3bf 8f6f 	isb	sy
 8006e20:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006e24:	6833      	ldr	r3, [r6, #0]
 8006e26:	4f1c      	ldr	r7, [pc, #112]	@ (8006e98 <prvAddNewTaskToReadyList+0xe4>)
 8006e28:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8006e2a:	4283      	cmp	r3, r0
 8006e2c:	d8d4      	bhi.n	8006dd8 <prvAddNewTaskToReadyList+0x24>
 8006e2e:	6035      	str	r5, [r6, #0]
 8006e30:	e7d2      	b.n	8006dd8 <prvAddNewTaskToReadyList+0x24>
 8006e32:	6035      	str	r5, [r6, #0]
 8006e34:	6813      	ldr	r3, [r2, #0]
 8006e36:	2b01      	cmp	r3, #1
 8006e38:	d003      	beq.n	8006e42 <prvAddNewTaskToReadyList+0x8e>
 8006e3a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
 8006e3c:	4f16      	ldr	r7, [pc, #88]	@ (8006e98 <prvAddNewTaskToReadyList+0xe4>)
 8006e3e:	4c15      	ldr	r4, [pc, #84]	@ (8006e94 <prvAddNewTaskToReadyList+0xe0>)
 8006e40:	e7ca      	b.n	8006dd8 <prvAddNewTaskToReadyList+0x24>
 8006e42:	4f15      	ldr	r7, [pc, #84]	@ (8006e98 <prvAddNewTaskToReadyList+0xe4>)
 8006e44:	463c      	mov	r4, r7
 8006e46:	f507 688c 	add.w	r8, r7, #1120	@ 0x460
 8006e4a:	4620      	mov	r0, r4
 8006e4c:	3414      	adds	r4, #20
 8006e4e:	f7ff fb37 	bl	80064c0 <vListInitialise>
 8006e52:	4544      	cmp	r4, r8
 8006e54:	d1f9      	bne.n	8006e4a <prvAddNewTaskToReadyList+0x96>
 8006e56:	f8df 8064 	ldr.w	r8, [pc, #100]	@ 8006ebc <prvAddNewTaskToReadyList+0x108>
 8006e5a:	4c12      	ldr	r4, [pc, #72]	@ (8006ea4 <prvAddNewTaskToReadyList+0xf0>)
 8006e5c:	4640      	mov	r0, r8
 8006e5e:	f7ff fb2f 	bl	80064c0 <vListInitialise>
 8006e62:	4620      	mov	r0, r4
 8006e64:	f7ff fb2c 	bl	80064c0 <vListInitialise>
 8006e68:	480f      	ldr	r0, [pc, #60]	@ (8006ea8 <prvAddNewTaskToReadyList+0xf4>)
 8006e6a:	f7ff fb29 	bl	80064c0 <vListInitialise>
 8006e6e:	480f      	ldr	r0, [pc, #60]	@ (8006eac <prvAddNewTaskToReadyList+0xf8>)
 8006e70:	f7ff fb26 	bl	80064c0 <vListInitialise>
 8006e74:	480e      	ldr	r0, [pc, #56]	@ (8006eb0 <prvAddNewTaskToReadyList+0xfc>)
 8006e76:	f7ff fb23 	bl	80064c0 <vListInitialise>
 8006e7a:	4b0e      	ldr	r3, [pc, #56]	@ (8006eb4 <prvAddNewTaskToReadyList+0x100>)
 8006e7c:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
 8006e7e:	f8c3 8000 	str.w	r8, [r3]
 8006e82:	4b0d      	ldr	r3, [pc, #52]	@ (8006eb8 <prvAddNewTaskToReadyList+0x104>)
 8006e84:	601c      	str	r4, [r3, #0]
 8006e86:	4c03      	ldr	r4, [pc, #12]	@ (8006e94 <prvAddNewTaskToReadyList+0xe0>)
 8006e88:	e7a6      	b.n	8006dd8 <prvAddNewTaskToReadyList+0x24>
 8006e8a:	bf00      	nop
 8006e8c:	200002dc 	.word	0x200002dc
 8006e90:	200007b0 	.word	0x200007b0
 8006e94:	200002d0 	.word	0x200002d0
 8006e98:	20000350 	.word	0x20000350
 8006e9c:	200002c0 	.word	0x200002c0
 8006ea0:	200002d4 	.word	0x200002d4
 8006ea4:	20000328 	.word	0x20000328
 8006ea8:	2000030c 	.word	0x2000030c
 8006eac:	200002f8 	.word	0x200002f8
 8006eb0:	200002e0 	.word	0x200002e0
 8006eb4:	20000324 	.word	0x20000324
 8006eb8:	20000320 	.word	0x20000320
 8006ebc:	2000033c 	.word	0x2000033c

08006ec0 <prvAddCurrentTaskToDelayedList>:
 8006ec0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ec2:	4b15      	ldr	r3, [pc, #84]	@ (8006f18 <prvAddCurrentTaskToDelayedList+0x58>)
 8006ec4:	4604      	mov	r4, r0
 8006ec6:	4e15      	ldr	r6, [pc, #84]	@ (8006f1c <prvAddCurrentTaskToDelayedList+0x5c>)
 8006ec8:	460f      	mov	r7, r1
 8006eca:	681d      	ldr	r5, [r3, #0]
 8006ecc:	6833      	ldr	r3, [r6, #0]
 8006ece:	1d18      	adds	r0, r3, #4
 8006ed0:	f7ff fb2c 	bl	800652c <uxListRemove>
 8006ed4:	1c63      	adds	r3, r4, #1
 8006ed6:	d100      	bne.n	8006eda <prvAddCurrentTaskToDelayedList+0x1a>
 8006ed8:	b9bf      	cbnz	r7, 8006f0a <prvAddCurrentTaskToDelayedList+0x4a>
 8006eda:	192d      	adds	r5, r5, r4
 8006edc:	6833      	ldr	r3, [r6, #0]
 8006ede:	605d      	str	r5, [r3, #4]
 8006ee0:	d307      	bcc.n	8006ef2 <prvAddCurrentTaskToDelayedList+0x32>
 8006ee2:	4b0f      	ldr	r3, [pc, #60]	@ (8006f20 <prvAddCurrentTaskToDelayedList+0x60>)
 8006ee4:	6818      	ldr	r0, [r3, #0]
 8006ee6:	6831      	ldr	r1, [r6, #0]
 8006ee8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006eec:	3104      	adds	r1, #4
 8006eee:	f7ff bb05 	b.w	80064fc <vListInsert>
 8006ef2:	4b0c      	ldr	r3, [pc, #48]	@ (8006f24 <prvAddCurrentTaskToDelayedList+0x64>)
 8006ef4:	6818      	ldr	r0, [r3, #0]
 8006ef6:	6831      	ldr	r1, [r6, #0]
 8006ef8:	3104      	adds	r1, #4
 8006efa:	f7ff faff 	bl	80064fc <vListInsert>
 8006efe:	4b0a      	ldr	r3, [pc, #40]	@ (8006f28 <prvAddCurrentTaskToDelayedList+0x68>)
 8006f00:	681a      	ldr	r2, [r3, #0]
 8006f02:	42aa      	cmp	r2, r5
 8006f04:	d900      	bls.n	8006f08 <prvAddCurrentTaskToDelayedList+0x48>
 8006f06:	601d      	str	r5, [r3, #0]
 8006f08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f0a:	6831      	ldr	r1, [r6, #0]
 8006f0c:	4807      	ldr	r0, [pc, #28]	@ (8006f2c <prvAddCurrentTaskToDelayedList+0x6c>)
 8006f0e:	3104      	adds	r1, #4
 8006f10:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006f14:	f7ff bae4 	b.w	80064e0 <vListInsertEnd>
 8006f18:	200002d8 	.word	0x200002d8
 8006f1c:	200007b0 	.word	0x200007b0
 8006f20:	20000320 	.word	0x20000320
 8006f24:	20000324 	.word	0x20000324
 8006f28:	200002bc 	.word	0x200002bc
 8006f2c:	200002e0 	.word	0x200002e0

08006f30 <prvInitialiseNewTask.constprop.0>:
 8006f30:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006f34:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
 8006f36:	0095      	lsls	r5, r2, #2
 8006f38:	4606      	mov	r6, r0
 8006f3a:	4689      	mov	r9, r1
 8006f3c:	462a      	mov	r2, r5
 8006f3e:	21a5      	movs	r1, #165	@ 0xa5
 8006f40:	6b20      	ldr	r0, [r4, #48]	@ 0x30
 8006f42:	461f      	mov	r7, r3
 8006f44:	f8dd 8024 	ldr.w	r8, [sp, #36]	@ 0x24
 8006f48:	3d04      	subs	r5, #4
 8006f4a:	f004 fab7 	bl	800b4bc <memset>
 8006f4e:	6b23      	ldr	r3, [r4, #48]	@ 0x30
 8006f50:	441d      	add	r5, r3
 8006f52:	f025 0507 	bic.w	r5, r5, #7
 8006f56:	f1b9 0f00 	cmp.w	r9, #0
 8006f5a:	d037      	beq.n	8006fcc <prvInitialiseNewTask.constprop.0+0x9c>
 8006f5c:	f109 3cff 	add.w	ip, r9, #4294967295
 8006f60:	f104 0333 	add.w	r3, r4, #51	@ 0x33
 8006f64:	f109 090f 	add.w	r9, r9, #15
 8006f68:	f81c 2f01 	ldrb.w	r2, [ip, #1]!
 8006f6c:	f803 2f01 	strb.w	r2, [r3, #1]!
 8006f70:	b10a      	cbz	r2, 8006f76 <prvInitialiseNewTask.constprop.0+0x46>
 8006f72:	45cc      	cmp	ip, r9
 8006f74:	d1f8      	bne.n	8006f68 <prvInitialiseNewTask.constprop.0+0x38>
 8006f76:	2300      	movs	r3, #0
 8006f78:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 8006f7c:	9b08      	ldr	r3, [sp, #32]
 8006f7e:	f04f 0a00 	mov.w	sl, #0
 8006f82:	1d20      	adds	r0, r4, #4
 8006f84:	2b37      	cmp	r3, #55	@ 0x37
 8006f86:	f8c4 a050 	str.w	sl, [r4, #80]	@ 0x50
 8006f8a:	bf28      	it	cs
 8006f8c:	2337      	movcs	r3, #55	@ 0x37
 8006f8e:	4699      	mov	r9, r3
 8006f90:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8006f92:	64e3      	str	r3, [r4, #76]	@ 0x4c
 8006f94:	f7ff faa0 	bl	80064d8 <vListInitialiseItem>
 8006f98:	f104 0018 	add.w	r0, r4, #24
 8006f9c:	f7ff fa9c 	bl	80064d8 <vListInitialiseItem>
 8006fa0:	f1c9 0338 	rsb	r3, r9, #56	@ 0x38
 8006fa4:	f8c4 a054 	str.w	sl, [r4, #84]	@ 0x54
 8006fa8:	463a      	mov	r2, r7
 8006faa:	4631      	mov	r1, r6
 8006fac:	4628      	mov	r0, r5
 8006fae:	61a3      	str	r3, [r4, #24]
 8006fb0:	f884 a058 	strb.w	sl, [r4, #88]	@ 0x58
 8006fb4:	6124      	str	r4, [r4, #16]
 8006fb6:	6264      	str	r4, [r4, #36]	@ 0x24
 8006fb8:	f001 f8a4 	bl	8008104 <pxPortInitialiseStack>
 8006fbc:	6020      	str	r0, [r4, #0]
 8006fbe:	f1b8 0f00 	cmp.w	r8, #0
 8006fc2:	d001      	beq.n	8006fc8 <prvInitialiseNewTask.constprop.0+0x98>
 8006fc4:	f8c8 4000 	str.w	r4, [r8]
 8006fc8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006fcc:	f884 9034 	strb.w	r9, [r4, #52]	@ 0x34
 8006fd0:	e7d4      	b.n	8006f7c <prvInitialiseNewTask.constprop.0+0x4c>
 8006fd2:	bf00      	nop

08006fd4 <prvIdleTask>:
 8006fd4:	b580      	push	{r7, lr}
 8006fd6:	4c21      	ldr	r4, [pc, #132]	@ (800705c <prvIdleTask+0x88>)
 8006fd8:	4e21      	ldr	r6, [pc, #132]	@ (8007060 <prvIdleTask+0x8c>)
 8006fda:	4d22      	ldr	r5, [pc, #136]	@ (8007064 <prvIdleTask+0x90>)
 8006fdc:	4f22      	ldr	r7, [pc, #136]	@ (8007068 <prvIdleTask+0x94>)
 8006fde:	6823      	ldr	r3, [r4, #0]
 8006fe0:	b353      	cbz	r3, 8007038 <prvIdleTask+0x64>
 8006fe2:	f001 f8bf 	bl	8008164 <vPortEnterCritical>
 8006fe6:	68f3      	ldr	r3, [r6, #12]
 8006fe8:	f8d3 800c 	ldr.w	r8, [r3, #12]
 8006fec:	f108 0004 	add.w	r0, r8, #4
 8006ff0:	f7ff fa9c 	bl	800652c <uxListRemove>
 8006ff4:	682b      	ldr	r3, [r5, #0]
 8006ff6:	3b01      	subs	r3, #1
 8006ff8:	602b      	str	r3, [r5, #0]
 8006ffa:	6823      	ldr	r3, [r4, #0]
 8006ffc:	3b01      	subs	r3, #1
 8006ffe:	6023      	str	r3, [r4, #0]
 8007000:	f001 f8d2 	bl	80081a8 <vPortExitCritical>
 8007004:	f898 3059 	ldrb.w	r3, [r8, #89]	@ 0x59
 8007008:	b163      	cbz	r3, 8007024 <prvIdleTask+0x50>
 800700a:	2b01      	cmp	r3, #1
 800700c:	d022      	beq.n	8007054 <prvIdleTask+0x80>
 800700e:	2b02      	cmp	r3, #2
 8007010:	d0e5      	beq.n	8006fde <prvIdleTask+0xa>
 8007012:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007016:	f383 8811 	msr	BASEPRI, r3
 800701a:	f3bf 8f6f 	isb	sy
 800701e:	f3bf 8f4f 	dsb	sy
 8007022:	e7fe      	b.n	8007022 <prvIdleTask+0x4e>
 8007024:	f8d8 0030 	ldr.w	r0, [r8, #48]	@ 0x30
 8007028:	f000 ffe8 	bl	8007ffc <vPortFree>
 800702c:	4640      	mov	r0, r8
 800702e:	f000 ffe5 	bl	8007ffc <vPortFree>
 8007032:	6823      	ldr	r3, [r4, #0]
 8007034:	2b00      	cmp	r3, #0
 8007036:	d1d4      	bne.n	8006fe2 <prvIdleTask+0xe>
 8007038:	683b      	ldr	r3, [r7, #0]
 800703a:	2b01      	cmp	r3, #1
 800703c:	d9cf      	bls.n	8006fde <prvIdleTask+0xa>
 800703e:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8007042:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8007046:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 800704a:	f3bf 8f4f 	dsb	sy
 800704e:	f3bf 8f6f 	isb	sy
 8007052:	e7c4      	b.n	8006fde <prvIdleTask+0xa>
 8007054:	4640      	mov	r0, r8
 8007056:	f000 ffd1 	bl	8007ffc <vPortFree>
 800705a:	e7c0      	b.n	8006fde <prvIdleTask+0xa>
 800705c:	200002f4 	.word	0x200002f4
 8007060:	200002f8 	.word	0x200002f8
 8007064:	200002dc 	.word	0x200002dc
 8007068:	20000350 	.word	0x20000350

0800706c <xTaskCreateStatic>:
 800706c:	b530      	push	{r4, r5, lr}
 800706e:	b087      	sub	sp, #28
 8007070:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
 8007072:	b1c4      	cbz	r4, 80070a6 <xTaskCreateStatic+0x3a>
 8007074:	9d0c      	ldr	r5, [sp, #48]	@ 0x30
 8007076:	b16d      	cbz	r5, 8007094 <xTaskCreateStatic+0x28>
 8007078:	255c      	movs	r5, #92	@ 0x5c
 800707a:	9505      	str	r5, [sp, #20]
 800707c:	9d05      	ldr	r5, [sp, #20]
 800707e:	2d5c      	cmp	r5, #92	@ 0x5c
 8007080:	d01a      	beq.n	80070b8 <xTaskCreateStatic+0x4c>
 8007082:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007086:	f383 8811 	msr	BASEPRI, r3
 800708a:	f3bf 8f6f 	isb	sy
 800708e:	f3bf 8f4f 	dsb	sy
 8007092:	e7fe      	b.n	8007092 <xTaskCreateStatic+0x26>
 8007094:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007098:	f383 8811 	msr	BASEPRI, r3
 800709c:	f3bf 8f6f 	isb	sy
 80070a0:	f3bf 8f4f 	dsb	sy
 80070a4:	e7fe      	b.n	80070a4 <xTaskCreateStatic+0x38>
 80070a6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80070aa:	f383 8811 	msr	BASEPRI, r3
 80070ae:	f3bf 8f6f 	isb	sy
 80070b2:	f3bf 8f4f 	dsb	sy
 80070b6:	e7fe      	b.n	80070b6 <xTaskCreateStatic+0x4a>
 80070b8:	9d0c      	ldr	r5, [sp, #48]	@ 0x30
 80070ba:	632c      	str	r4, [r5, #48]	@ 0x30
 80070bc:	2402      	movs	r4, #2
 80070be:	9502      	str	r5, [sp, #8]
 80070c0:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
 80070c2:	9500      	str	r5, [sp, #0]
 80070c4:	9d0c      	ldr	r5, [sp, #48]	@ 0x30
 80070c6:	f885 4059 	strb.w	r4, [r5, #89]	@ 0x59
 80070ca:	ac04      	add	r4, sp, #16
 80070cc:	9d05      	ldr	r5, [sp, #20]
 80070ce:	9401      	str	r4, [sp, #4]
 80070d0:	f7ff ff2e 	bl	8006f30 <prvInitialiseNewTask.constprop.0>
 80070d4:	980c      	ldr	r0, [sp, #48]	@ 0x30
 80070d6:	f7ff fe6d 	bl	8006db4 <prvAddNewTaskToReadyList>
 80070da:	9804      	ldr	r0, [sp, #16]
 80070dc:	b007      	add	sp, #28
 80070de:	bd30      	pop	{r4, r5, pc}

080070e0 <xTaskCreate>:
 80070e0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80070e4:	4607      	mov	r7, r0
 80070e6:	b085      	sub	sp, #20
 80070e8:	0090      	lsls	r0, r2, #2
 80070ea:	4615      	mov	r5, r2
 80070ec:	4688      	mov	r8, r1
 80070ee:	4699      	mov	r9, r3
 80070f0:	f000 feee 	bl	8007ed0 <pvPortMalloc>
 80070f4:	b1f0      	cbz	r0, 8007134 <xTaskCreate+0x54>
 80070f6:	4604      	mov	r4, r0
 80070f8:	205c      	movs	r0, #92	@ 0x5c
 80070fa:	f000 fee9 	bl	8007ed0 <pvPortMalloc>
 80070fe:	4606      	mov	r6, r0
 8007100:	b1a8      	cbz	r0, 800712e <xTaskCreate+0x4e>
 8007102:	6304      	str	r4, [r0, #48]	@ 0x30
 8007104:	2400      	movs	r4, #0
 8007106:	464b      	mov	r3, r9
 8007108:	462a      	mov	r2, r5
 800710a:	f886 4059 	strb.w	r4, [r6, #89]	@ 0x59
 800710e:	4641      	mov	r1, r8
 8007110:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
 8007112:	4638      	mov	r0, r7
 8007114:	9602      	str	r6, [sp, #8]
 8007116:	9401      	str	r4, [sp, #4]
 8007118:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
 800711a:	9400      	str	r4, [sp, #0]
 800711c:	f7ff ff08 	bl	8006f30 <prvInitialiseNewTask.constprop.0>
 8007120:	4630      	mov	r0, r6
 8007122:	f7ff fe47 	bl	8006db4 <prvAddNewTaskToReadyList>
 8007126:	2001      	movs	r0, #1
 8007128:	b005      	add	sp, #20
 800712a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800712e:	4620      	mov	r0, r4
 8007130:	f000 ff64 	bl	8007ffc <vPortFree>
 8007134:	f04f 30ff 	mov.w	r0, #4294967295
 8007138:	b005      	add	sp, #20
 800713a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800713e:	bf00      	nop

08007140 <vTaskStartScheduler>:
 8007140:	b510      	push	{r4, lr}
 8007142:	b088      	sub	sp, #32
 8007144:	2400      	movs	r4, #0
 8007146:	aa07      	add	r2, sp, #28
 8007148:	a906      	add	r1, sp, #24
 800714a:	a805      	add	r0, sp, #20
 800714c:	e9cd 4405 	strd	r4, r4, [sp, #20]
 8007150:	f000 fe70 	bl	8007e34 <vApplicationGetIdleTaskMemory>
 8007154:	4623      	mov	r3, r4
 8007156:	9a07      	ldr	r2, [sp, #28]
 8007158:	9400      	str	r4, [sp, #0]
 800715a:	e9dd 0105 	ldrd	r0, r1, [sp, #20]
 800715e:	e9cd 1001 	strd	r1, r0, [sp, #4]
 8007162:	4915      	ldr	r1, [pc, #84]	@ (80071b8 <vTaskStartScheduler+0x78>)
 8007164:	4815      	ldr	r0, [pc, #84]	@ (80071bc <vTaskStartScheduler+0x7c>)
 8007166:	f7ff ff81 	bl	800706c <xTaskCreateStatic>
 800716a:	b170      	cbz	r0, 800718a <vTaskStartScheduler+0x4a>
 800716c:	f000 fbf8 	bl	8007960 <xTimerCreateTimerTask>
 8007170:	2801      	cmp	r0, #1
 8007172:	d00c      	beq.n	800718e <vTaskStartScheduler+0x4e>
 8007174:	3001      	adds	r0, #1
 8007176:	d108      	bne.n	800718a <vTaskStartScheduler+0x4a>
 8007178:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800717c:	f383 8811 	msr	BASEPRI, r3
 8007180:	f3bf 8f6f 	isb	sy
 8007184:	f3bf 8f4f 	dsb	sy
 8007188:	e7fe      	b.n	8007188 <vTaskStartScheduler+0x48>
 800718a:	b008      	add	sp, #32
 800718c:	bd10      	pop	{r4, pc}
 800718e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007192:	f383 8811 	msr	BASEPRI, r3
 8007196:	f3bf 8f6f 	isb	sy
 800719a:	f3bf 8f4f 	dsb	sy
 800719e:	4b08      	ldr	r3, [pc, #32]	@ (80071c0 <vTaskStartScheduler+0x80>)
 80071a0:	f04f 31ff 	mov.w	r1, #4294967295
 80071a4:	4a07      	ldr	r2, [pc, #28]	@ (80071c4 <vTaskStartScheduler+0x84>)
 80071a6:	6019      	str	r1, [r3, #0]
 80071a8:	4b07      	ldr	r3, [pc, #28]	@ (80071c8 <vTaskStartScheduler+0x88>)
 80071aa:	6010      	str	r0, [r2, #0]
 80071ac:	601c      	str	r4, [r3, #0]
 80071ae:	b008      	add	sp, #32
 80071b0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80071b4:	f001 b868 	b.w	8008288 <xPortStartScheduler>
 80071b8:	0800d66c 	.word	0x0800d66c
 80071bc:	08006fd5 	.word	0x08006fd5
 80071c0:	200002bc 	.word	0x200002bc
 80071c4:	200002d0 	.word	0x200002d0
 80071c8:	200002d8 	.word	0x200002d8

080071cc <vTaskSuspendAll>:
 80071cc:	4a02      	ldr	r2, [pc, #8]	@ (80071d8 <vTaskSuspendAll+0xc>)
 80071ce:	6813      	ldr	r3, [r2, #0]
 80071d0:	3301      	adds	r3, #1
 80071d2:	6013      	str	r3, [r2, #0]
 80071d4:	4770      	bx	lr
 80071d6:	bf00      	nop
 80071d8:	200002b8 	.word	0x200002b8

080071dc <xTaskGetTickCount>:
 80071dc:	4b01      	ldr	r3, [pc, #4]	@ (80071e4 <xTaskGetTickCount+0x8>)
 80071de:	6818      	ldr	r0, [r3, #0]
 80071e0:	4770      	bx	lr
 80071e2:	bf00      	nop
 80071e4:	200002d8 	.word	0x200002d8

080071e8 <xTaskIncrementTick>:
 80071e8:	4b4f      	ldr	r3, [pc, #316]	@ (8007328 <xTaskIncrementTick+0x140>)
 80071ea:	681b      	ldr	r3, [r3, #0]
 80071ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80071f0:	b083      	sub	sp, #12
 80071f2:	2b00      	cmp	r3, #0
 80071f4:	d145      	bne.n	8007282 <xTaskIncrementTick+0x9a>
 80071f6:	4b4d      	ldr	r3, [pc, #308]	@ (800732c <xTaskIncrementTick+0x144>)
 80071f8:	681e      	ldr	r6, [r3, #0]
 80071fa:	3601      	adds	r6, #1
 80071fc:	601e      	str	r6, [r3, #0]
 80071fe:	2e00      	cmp	r6, #0
 8007200:	d048      	beq.n	8007294 <xTaskIncrementTick+0xac>
 8007202:	4b4b      	ldr	r3, [pc, #300]	@ (8007330 <xTaskIncrementTick+0x148>)
 8007204:	9301      	str	r3, [sp, #4]
 8007206:	9b01      	ldr	r3, [sp, #4]
 8007208:	681b      	ldr	r3, [r3, #0]
 800720a:	429e      	cmp	r6, r3
 800720c:	d34f      	bcc.n	80072ae <xTaskIncrementTick+0xc6>
 800720e:	4f49      	ldr	r7, [pc, #292]	@ (8007334 <xTaskIncrementTick+0x14c>)
 8007210:	683b      	ldr	r3, [r7, #0]
 8007212:	681d      	ldr	r5, [r3, #0]
 8007214:	2d00      	cmp	r5, #0
 8007216:	d076      	beq.n	8007306 <xTaskIncrementTick+0x11e>
 8007218:	2500      	movs	r5, #0
 800721a:	f8df 912c 	ldr.w	r9, [pc, #300]	@ 8007348 <xTaskIncrementTick+0x160>
 800721e:	f8df a12c 	ldr.w	sl, [pc, #300]	@ 800734c <xTaskIncrementTick+0x164>
 8007222:	f8df 812c 	ldr.w	r8, [pc, #300]	@ 8007350 <xTaskIncrementTick+0x168>
 8007226:	e020      	b.n	800726a <xTaskIncrementTick+0x82>
 8007228:	f7ff f980 	bl	800652c <uxListRemove>
 800722c:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
 800722e:	f104 0018 	add.w	r0, r4, #24
 8007232:	b10b      	cbz	r3, 8007238 <xTaskIncrementTick+0x50>
 8007234:	f7ff f97a 	bl	800652c <uxListRemove>
 8007238:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
 800723a:	4659      	mov	r1, fp
 800723c:	f8d8 3000 	ldr.w	r3, [r8]
 8007240:	4298      	cmp	r0, r3
 8007242:	d901      	bls.n	8007248 <xTaskIncrementTick+0x60>
 8007244:	f8c8 0000 	str.w	r0, [r8]
 8007248:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800724c:	eb09 0080 	add.w	r0, r9, r0, lsl #2
 8007250:	f7ff f946 	bl	80064e0 <vListInsertEnd>
 8007254:	f8da 3000 	ldr.w	r3, [sl]
 8007258:	6ae2      	ldr	r2, [r4, #44]	@ 0x2c
 800725a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800725c:	429a      	cmp	r2, r3
 800725e:	bf28      	it	cs
 8007260:	2501      	movcs	r5, #1
 8007262:	683b      	ldr	r3, [r7, #0]
 8007264:	681b      	ldr	r3, [r3, #0]
 8007266:	2b00      	cmp	r3, #0
 8007268:	d051      	beq.n	800730e <xTaskIncrementTick+0x126>
 800726a:	683b      	ldr	r3, [r7, #0]
 800726c:	68db      	ldr	r3, [r3, #12]
 800726e:	68dc      	ldr	r4, [r3, #12]
 8007270:	6863      	ldr	r3, [r4, #4]
 8007272:	f104 0b04 	add.w	fp, r4, #4
 8007276:	429e      	cmp	r6, r3
 8007278:	4658      	mov	r0, fp
 800727a:	d2d5      	bcs.n	8007228 <xTaskIncrementTick+0x40>
 800727c:	9a01      	ldr	r2, [sp, #4]
 800727e:	6013      	str	r3, [r2, #0]
 8007280:	e01a      	b.n	80072b8 <xTaskIncrementTick+0xd0>
 8007282:	4a2d      	ldr	r2, [pc, #180]	@ (8007338 <xTaskIncrementTick+0x150>)
 8007284:	2500      	movs	r5, #0
 8007286:	6813      	ldr	r3, [r2, #0]
 8007288:	4628      	mov	r0, r5
 800728a:	3301      	adds	r3, #1
 800728c:	6013      	str	r3, [r2, #0]
 800728e:	b003      	add	sp, #12
 8007290:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007294:	4b27      	ldr	r3, [pc, #156]	@ (8007334 <xTaskIncrementTick+0x14c>)
 8007296:	681a      	ldr	r2, [r3, #0]
 8007298:	6812      	ldr	r2, [r2, #0]
 800729a:	b30a      	cbz	r2, 80072e0 <xTaskIncrementTick+0xf8>
 800729c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80072a0:	f383 8811 	msr	BASEPRI, r3
 80072a4:	f3bf 8f6f 	isb	sy
 80072a8:	f3bf 8f4f 	dsb	sy
 80072ac:	e7fe      	b.n	80072ac <xTaskIncrementTick+0xc4>
 80072ae:	2500      	movs	r5, #0
 80072b0:	f8df 9094 	ldr.w	r9, [pc, #148]	@ 8007348 <xTaskIncrementTick+0x160>
 80072b4:	f8df a094 	ldr.w	sl, [pc, #148]	@ 800734c <xTaskIncrementTick+0x164>
 80072b8:	f8da 3000 	ldr.w	r3, [sl]
 80072bc:	491f      	ldr	r1, [pc, #124]	@ (800733c <xTaskIncrementTick+0x154>)
 80072be:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80072c0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 80072c4:	009b      	lsls	r3, r3, #2
 80072c6:	f859 2003 	ldr.w	r2, [r9, r3]
 80072ca:	680b      	ldr	r3, [r1, #0]
 80072cc:	2a02      	cmp	r2, #2
 80072ce:	bf28      	it	cs
 80072d0:	2501      	movcs	r5, #1
 80072d2:	2b00      	cmp	r3, #0
 80072d4:	bf18      	it	ne
 80072d6:	2501      	movne	r5, #1
 80072d8:	4628      	mov	r0, r5
 80072da:	b003      	add	sp, #12
 80072dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80072e0:	4a17      	ldr	r2, [pc, #92]	@ (8007340 <xTaskIncrementTick+0x158>)
 80072e2:	6818      	ldr	r0, [r3, #0]
 80072e4:	6811      	ldr	r1, [r2, #0]
 80072e6:	6019      	str	r1, [r3, #0]
 80072e8:	4916      	ldr	r1, [pc, #88]	@ (8007344 <xTaskIncrementTick+0x15c>)
 80072ea:	6010      	str	r0, [r2, #0]
 80072ec:	680a      	ldr	r2, [r1, #0]
 80072ee:	3201      	adds	r2, #1
 80072f0:	600a      	str	r2, [r1, #0]
 80072f2:	681a      	ldr	r2, [r3, #0]
 80072f4:	6812      	ldr	r2, [r2, #0]
 80072f6:	b97a      	cbnz	r2, 8007318 <xTaskIncrementTick+0x130>
 80072f8:	4b0d      	ldr	r3, [pc, #52]	@ (8007330 <xTaskIncrementTick+0x148>)
 80072fa:	461a      	mov	r2, r3
 80072fc:	9301      	str	r3, [sp, #4]
 80072fe:	f04f 33ff 	mov.w	r3, #4294967295
 8007302:	6013      	str	r3, [r2, #0]
 8007304:	e77f      	b.n	8007206 <xTaskIncrementTick+0x1e>
 8007306:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 8007348 <xTaskIncrementTick+0x160>
 800730a:	f8df a040 	ldr.w	sl, [pc, #64]	@ 800734c <xTaskIncrementTick+0x164>
 800730e:	f04f 33ff 	mov.w	r3, #4294967295
 8007312:	9a01      	ldr	r2, [sp, #4]
 8007314:	6013      	str	r3, [r2, #0]
 8007316:	e7cf      	b.n	80072b8 <xTaskIncrementTick+0xd0>
 8007318:	681b      	ldr	r3, [r3, #0]
 800731a:	4a05      	ldr	r2, [pc, #20]	@ (8007330 <xTaskIncrementTick+0x148>)
 800731c:	68db      	ldr	r3, [r3, #12]
 800731e:	9201      	str	r2, [sp, #4]
 8007320:	68db      	ldr	r3, [r3, #12]
 8007322:	685b      	ldr	r3, [r3, #4]
 8007324:	6013      	str	r3, [r2, #0]
 8007326:	e76e      	b.n	8007206 <xTaskIncrementTick+0x1e>
 8007328:	200002b8 	.word	0x200002b8
 800732c:	200002d8 	.word	0x200002d8
 8007330:	200002bc 	.word	0x200002bc
 8007334:	20000324 	.word	0x20000324
 8007338:	200002cc 	.word	0x200002cc
 800733c:	200002c8 	.word	0x200002c8
 8007340:	20000320 	.word	0x20000320
 8007344:	200002c4 	.word	0x200002c4
 8007348:	20000350 	.word	0x20000350
 800734c:	200007b0 	.word	0x200007b0
 8007350:	200002d4 	.word	0x200002d4

08007354 <xTaskResumeAll.part.0>:
 8007354:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007358:	f000 ff04 	bl	8008164 <vPortEnterCritical>
 800735c:	4b37      	ldr	r3, [pc, #220]	@ (800743c <xTaskResumeAll.part.0+0xe8>)
 800735e:	681a      	ldr	r2, [r3, #0]
 8007360:	3a01      	subs	r2, #1
 8007362:	601a      	str	r2, [r3, #0]
 8007364:	681b      	ldr	r3, [r3, #0]
 8007366:	2b00      	cmp	r3, #0
 8007368:	d157      	bne.n	800741a <xTaskResumeAll.part.0+0xc6>
 800736a:	4b35      	ldr	r3, [pc, #212]	@ (8007440 <xTaskResumeAll.part.0+0xec>)
 800736c:	681b      	ldr	r3, [r3, #0]
 800736e:	2b00      	cmp	r3, #0
 8007370:	d053      	beq.n	800741a <xTaskResumeAll.part.0+0xc6>
 8007372:	4d34      	ldr	r5, [pc, #208]	@ (8007444 <xTaskResumeAll.part.0+0xf0>)
 8007374:	682b      	ldr	r3, [r5, #0]
 8007376:	2b00      	cmp	r3, #0
 8007378:	d05c      	beq.n	8007434 <xTaskResumeAll.part.0+0xe0>
 800737a:	4e33      	ldr	r6, [pc, #204]	@ (8007448 <xTaskResumeAll.part.0+0xf4>)
 800737c:	f04f 0a01 	mov.w	sl, #1
 8007380:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 800745c <xTaskResumeAll.part.0+0x108>
 8007384:	4f31      	ldr	r7, [pc, #196]	@ (800744c <xTaskResumeAll.part.0+0xf8>)
 8007386:	f8df 90d8 	ldr.w	r9, [pc, #216]	@ 8007460 <xTaskResumeAll.part.0+0x10c>
 800738a:	68eb      	ldr	r3, [r5, #12]
 800738c:	68dc      	ldr	r4, [r3, #12]
 800738e:	f104 0b04 	add.w	fp, r4, #4
 8007392:	f104 0018 	add.w	r0, r4, #24
 8007396:	f7ff f8c9 	bl	800652c <uxListRemove>
 800739a:	4658      	mov	r0, fp
 800739c:	f7ff f8c6 	bl	800652c <uxListRemove>
 80073a0:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
 80073a2:	6832      	ldr	r2, [r6, #0]
 80073a4:	4659      	mov	r1, fp
 80073a6:	eb03 0083 	add.w	r0, r3, r3, lsl #2
 80073aa:	4293      	cmp	r3, r2
 80073ac:	eb08 0080 	add.w	r0, r8, r0, lsl #2
 80073b0:	d900      	bls.n	80073b4 <xTaskResumeAll.part.0+0x60>
 80073b2:	6033      	str	r3, [r6, #0]
 80073b4:	f7ff f894 	bl	80064e0 <vListInsertEnd>
 80073b8:	683b      	ldr	r3, [r7, #0]
 80073ba:	6ae2      	ldr	r2, [r4, #44]	@ 0x2c
 80073bc:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80073be:	429a      	cmp	r2, r3
 80073c0:	d301      	bcc.n	80073c6 <xTaskResumeAll.part.0+0x72>
 80073c2:	f8c9 a000 	str.w	sl, [r9]
 80073c6:	682b      	ldr	r3, [r5, #0]
 80073c8:	2b00      	cmp	r3, #0
 80073ca:	d1de      	bne.n	800738a <xTaskResumeAll.part.0+0x36>
 80073cc:	4b20      	ldr	r3, [pc, #128]	@ (8007450 <xTaskResumeAll.part.0+0xfc>)
 80073ce:	681a      	ldr	r2, [r3, #0]
 80073d0:	6812      	ldr	r2, [r2, #0]
 80073d2:	bb42      	cbnz	r2, 8007426 <xTaskResumeAll.part.0+0xd2>
 80073d4:	4b1f      	ldr	r3, [pc, #124]	@ (8007454 <xTaskResumeAll.part.0+0x100>)
 80073d6:	f04f 32ff 	mov.w	r2, #4294967295
 80073da:	601a      	str	r2, [r3, #0]
 80073dc:	4e1e      	ldr	r6, [pc, #120]	@ (8007458 <xTaskResumeAll.part.0+0x104>)
 80073de:	6834      	ldr	r4, [r6, #0]
 80073e0:	b144      	cbz	r4, 80073f4 <xTaskResumeAll.part.0+0xa0>
 80073e2:	2501      	movs	r5, #1
 80073e4:	f7ff ff00 	bl	80071e8 <xTaskIncrementTick>
 80073e8:	b108      	cbz	r0, 80073ee <xTaskResumeAll.part.0+0x9a>
 80073ea:	f8c9 5000 	str.w	r5, [r9]
 80073ee:	3c01      	subs	r4, #1
 80073f0:	d1f8      	bne.n	80073e4 <xTaskResumeAll.part.0+0x90>
 80073f2:	6034      	str	r4, [r6, #0]
 80073f4:	f8d9 3000 	ldr.w	r3, [r9]
 80073f8:	b17b      	cbz	r3, 800741a <xTaskResumeAll.part.0+0xc6>
 80073fa:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 80073fe:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8007402:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8007406:	f3bf 8f4f 	dsb	sy
 800740a:	f3bf 8f6f 	isb	sy
 800740e:	2401      	movs	r4, #1
 8007410:	f000 feca 	bl	80081a8 <vPortExitCritical>
 8007414:	4620      	mov	r0, r4
 8007416:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800741a:	2400      	movs	r4, #0
 800741c:	f000 fec4 	bl	80081a8 <vPortExitCritical>
 8007420:	4620      	mov	r0, r4
 8007422:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007426:	681a      	ldr	r2, [r3, #0]
 8007428:	4b0a      	ldr	r3, [pc, #40]	@ (8007454 <xTaskResumeAll.part.0+0x100>)
 800742a:	68d2      	ldr	r2, [r2, #12]
 800742c:	68d2      	ldr	r2, [r2, #12]
 800742e:	6852      	ldr	r2, [r2, #4]
 8007430:	601a      	str	r2, [r3, #0]
 8007432:	e7d3      	b.n	80073dc <xTaskResumeAll.part.0+0x88>
 8007434:	f8df 9028 	ldr.w	r9, [pc, #40]	@ 8007460 <xTaskResumeAll.part.0+0x10c>
 8007438:	e7d0      	b.n	80073dc <xTaskResumeAll.part.0+0x88>
 800743a:	bf00      	nop
 800743c:	200002b8 	.word	0x200002b8
 8007440:	200002dc 	.word	0x200002dc
 8007444:	2000030c 	.word	0x2000030c
 8007448:	200002d4 	.word	0x200002d4
 800744c:	200007b0 	.word	0x200007b0
 8007450:	20000324 	.word	0x20000324
 8007454:	200002bc 	.word	0x200002bc
 8007458:	200002cc 	.word	0x200002cc
 800745c:	20000350 	.word	0x20000350
 8007460:	200002c8 	.word	0x200002c8

08007464 <xTaskResumeAll>:
 8007464:	4b06      	ldr	r3, [pc, #24]	@ (8007480 <xTaskResumeAll+0x1c>)
 8007466:	681b      	ldr	r3, [r3, #0]
 8007468:	b943      	cbnz	r3, 800747c <xTaskResumeAll+0x18>
 800746a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800746e:	f383 8811 	msr	BASEPRI, r3
 8007472:	f3bf 8f6f 	isb	sy
 8007476:	f3bf 8f4f 	dsb	sy
 800747a:	e7fe      	b.n	800747a <xTaskResumeAll+0x16>
 800747c:	f7ff bf6a 	b.w	8007354 <xTaskResumeAll.part.0>
 8007480:	200002b8 	.word	0x200002b8

08007484 <vTaskDelay>:
 8007484:	b510      	push	{r4, lr}
 8007486:	b950      	cbnz	r0, 800749e <vTaskDelay+0x1a>
 8007488:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 800748c:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8007490:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8007494:	f3bf 8f4f 	dsb	sy
 8007498:	f3bf 8f6f 	isb	sy
 800749c:	bd10      	pop	{r4, pc}
 800749e:	4c10      	ldr	r4, [pc, #64]	@ (80074e0 <vTaskDelay+0x5c>)
 80074a0:	6821      	ldr	r1, [r4, #0]
 80074a2:	b141      	cbz	r1, 80074b6 <vTaskDelay+0x32>
 80074a4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80074a8:	f383 8811 	msr	BASEPRI, r3
 80074ac:	f3bf 8f6f 	isb	sy
 80074b0:	f3bf 8f4f 	dsb	sy
 80074b4:	e7fe      	b.n	80074b4 <vTaskDelay+0x30>
 80074b6:	6823      	ldr	r3, [r4, #0]
 80074b8:	3301      	adds	r3, #1
 80074ba:	6023      	str	r3, [r4, #0]
 80074bc:	f7ff fd00 	bl	8006ec0 <prvAddCurrentTaskToDelayedList>
 80074c0:	6823      	ldr	r3, [r4, #0]
 80074c2:	b943      	cbnz	r3, 80074d6 <vTaskDelay+0x52>
 80074c4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80074c8:	f383 8811 	msr	BASEPRI, r3
 80074cc:	f3bf 8f6f 	isb	sy
 80074d0:	f3bf 8f4f 	dsb	sy
 80074d4:	e7fe      	b.n	80074d4 <vTaskDelay+0x50>
 80074d6:	f7ff ff3d 	bl	8007354 <xTaskResumeAll.part.0>
 80074da:	2800      	cmp	r0, #0
 80074dc:	d0d4      	beq.n	8007488 <vTaskDelay+0x4>
 80074de:	bd10      	pop	{r4, pc}
 80074e0:	200002b8 	.word	0x200002b8

080074e4 <vTaskSwitchContext>:
 80074e4:	4b1d      	ldr	r3, [pc, #116]	@ (800755c <vTaskSwitchContext+0x78>)
 80074e6:	681b      	ldr	r3, [r3, #0]
 80074e8:	b11b      	cbz	r3, 80074f2 <vTaskSwitchContext+0xe>
 80074ea:	4b1d      	ldr	r3, [pc, #116]	@ (8007560 <vTaskSwitchContext+0x7c>)
 80074ec:	2201      	movs	r2, #1
 80074ee:	601a      	str	r2, [r3, #0]
 80074f0:	4770      	bx	lr
 80074f2:	4a1b      	ldr	r2, [pc, #108]	@ (8007560 <vTaskSwitchContext+0x7c>)
 80074f4:	491b      	ldr	r1, [pc, #108]	@ (8007564 <vTaskSwitchContext+0x80>)
 80074f6:	b410      	push	{r4}
 80074f8:	4c1b      	ldr	r4, [pc, #108]	@ (8007568 <vTaskSwitchContext+0x84>)
 80074fa:	6013      	str	r3, [r2, #0]
 80074fc:	6823      	ldr	r3, [r4, #0]
 80074fe:	eb03 0283 	add.w	r2, r3, r3, lsl #2
 8007502:	0098      	lsls	r0, r3, #2
 8007504:	0092      	lsls	r2, r2, #2
 8007506:	588a      	ldr	r2, [r1, r2]
 8007508:	b942      	cbnz	r2, 800751c <vTaskSwitchContext+0x38>
 800750a:	b1d3      	cbz	r3, 8007542 <vTaskSwitchContext+0x5e>
 800750c:	3b01      	subs	r3, #1
 800750e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
 8007512:	0098      	lsls	r0, r3, #2
 8007514:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8007518:	2a00      	cmp	r2, #0
 800751a:	d0f6      	beq.n	800750a <vTaskSwitchContext+0x26>
 800751c:	4418      	add	r0, r3
 800751e:	eb01 0c80 	add.w	ip, r1, r0, lsl #2
 8007522:	f8dc 1004 	ldr.w	r1, [ip, #4]
 8007526:	4662      	mov	r2, ip
 8007528:	6849      	ldr	r1, [r1, #4]
 800752a:	3208      	adds	r2, #8
 800752c:	4291      	cmp	r1, r2
 800752e:	f8cc 1004 	str.w	r1, [ip, #4]
 8007532:	d00f      	beq.n	8007554 <vTaskSwitchContext+0x70>
 8007534:	68c9      	ldr	r1, [r1, #12]
 8007536:	4a0d      	ldr	r2, [pc, #52]	@ (800756c <vTaskSwitchContext+0x88>)
 8007538:	6011      	str	r1, [r2, #0]
 800753a:	6023      	str	r3, [r4, #0]
 800753c:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007540:	4770      	bx	lr
 8007542:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007546:	f383 8811 	msr	BASEPRI, r3
 800754a:	f3bf 8f6f 	isb	sy
 800754e:	f3bf 8f4f 	dsb	sy
 8007552:	e7fe      	b.n	8007552 <vTaskSwitchContext+0x6e>
 8007554:	6849      	ldr	r1, [r1, #4]
 8007556:	f8cc 1004 	str.w	r1, [ip, #4]
 800755a:	e7eb      	b.n	8007534 <vTaskSwitchContext+0x50>
 800755c:	200002b8 	.word	0x200002b8
 8007560:	200002c8 	.word	0x200002c8
 8007564:	20000350 	.word	0x20000350
 8007568:	200002d4 	.word	0x200002d4
 800756c:	200007b0 	.word	0x200007b0

08007570 <vTaskPlaceOnEventList>:
 8007570:	b160      	cbz	r0, 800758c <vTaskPlaceOnEventList+0x1c>
 8007572:	4b0b      	ldr	r3, [pc, #44]	@ (80075a0 <vTaskPlaceOnEventList+0x30>)
 8007574:	b510      	push	{r4, lr}
 8007576:	460c      	mov	r4, r1
 8007578:	6819      	ldr	r1, [r3, #0]
 800757a:	3118      	adds	r1, #24
 800757c:	f7fe ffbe 	bl	80064fc <vListInsert>
 8007580:	4620      	mov	r0, r4
 8007582:	2101      	movs	r1, #1
 8007584:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007588:	f7ff bc9a 	b.w	8006ec0 <prvAddCurrentTaskToDelayedList>
 800758c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007590:	f383 8811 	msr	BASEPRI, r3
 8007594:	f3bf 8f6f 	isb	sy
 8007598:	f3bf 8f4f 	dsb	sy
 800759c:	e7fe      	b.n	800759c <vTaskPlaceOnEventList+0x2c>
 800759e:	bf00      	nop
 80075a0:	200007b0 	.word	0x200007b0

080075a4 <vTaskPlaceOnEventListRestricted>:
 80075a4:	b538      	push	{r3, r4, r5, lr}
 80075a6:	b180      	cbz	r0, 80075ca <vTaskPlaceOnEventListRestricted+0x26>
 80075a8:	4b0c      	ldr	r3, [pc, #48]	@ (80075dc <vTaskPlaceOnEventListRestricted+0x38>)
 80075aa:	460d      	mov	r5, r1
 80075ac:	4614      	mov	r4, r2
 80075ae:	6819      	ldr	r1, [r3, #0]
 80075b0:	3118      	adds	r1, #24
 80075b2:	f7fe ff95 	bl	80064e0 <vListInsertEnd>
 80075b6:	2c00      	cmp	r4, #0
 80075b8:	4621      	mov	r1, r4
 80075ba:	bf0c      	ite	eq
 80075bc:	4628      	moveq	r0, r5
 80075be:	f04f 30ff 	movne.w	r0, #4294967295
 80075c2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80075c6:	f7ff bc7b 	b.w	8006ec0 <prvAddCurrentTaskToDelayedList>
 80075ca:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80075ce:	f383 8811 	msr	BASEPRI, r3
 80075d2:	f3bf 8f6f 	isb	sy
 80075d6:	f3bf 8f4f 	dsb	sy
 80075da:	e7fe      	b.n	80075da <vTaskPlaceOnEventListRestricted+0x36>
 80075dc:	200007b0 	.word	0x200007b0

080075e0 <xTaskRemoveFromEventList>:
 80075e0:	b538      	push	{r3, r4, r5, lr}
 80075e2:	68c3      	ldr	r3, [r0, #12]
 80075e4:	68dc      	ldr	r4, [r3, #12]
 80075e6:	b34c      	cbz	r4, 800763c <xTaskRemoveFromEventList+0x5c>
 80075e8:	f104 0518 	add.w	r5, r4, #24
 80075ec:	4628      	mov	r0, r5
 80075ee:	f7fe ff9d 	bl	800652c <uxListRemove>
 80075f2:	4b18      	ldr	r3, [pc, #96]	@ (8007654 <xTaskRemoveFromEventList+0x74>)
 80075f4:	681b      	ldr	r3, [r3, #0]
 80075f6:	b173      	cbz	r3, 8007616 <xTaskRemoveFromEventList+0x36>
 80075f8:	4629      	mov	r1, r5
 80075fa:	4817      	ldr	r0, [pc, #92]	@ (8007658 <xTaskRemoveFromEventList+0x78>)
 80075fc:	f7fe ff70 	bl	80064e0 <vListInsertEnd>
 8007600:	4b16      	ldr	r3, [pc, #88]	@ (800765c <xTaskRemoveFromEventList+0x7c>)
 8007602:	6ae2      	ldr	r2, [r4, #44]	@ 0x2c
 8007604:	681b      	ldr	r3, [r3, #0]
 8007606:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007608:	429a      	cmp	r2, r3
 800760a:	d920      	bls.n	800764e <xTaskRemoveFromEventList+0x6e>
 800760c:	2301      	movs	r3, #1
 800760e:	4a14      	ldr	r2, [pc, #80]	@ (8007660 <xTaskRemoveFromEventList+0x80>)
 8007610:	4618      	mov	r0, r3
 8007612:	6013      	str	r3, [r2, #0]
 8007614:	bd38      	pop	{r3, r4, r5, pc}
 8007616:	1d25      	adds	r5, r4, #4
 8007618:	4628      	mov	r0, r5
 800761a:	f7fe ff87 	bl	800652c <uxListRemove>
 800761e:	4b11      	ldr	r3, [pc, #68]	@ (8007664 <xTaskRemoveFromEventList+0x84>)
 8007620:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
 8007622:	681a      	ldr	r2, [r3, #0]
 8007624:	4290      	cmp	r0, r2
 8007626:	d900      	bls.n	800762a <xTaskRemoveFromEventList+0x4a>
 8007628:	6018      	str	r0, [r3, #0]
 800762a:	4b0f      	ldr	r3, [pc, #60]	@ (8007668 <xTaskRemoveFromEventList+0x88>)
 800762c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8007630:	4629      	mov	r1, r5
 8007632:	eb03 0080 	add.w	r0, r3, r0, lsl #2
 8007636:	f7fe ff53 	bl	80064e0 <vListInsertEnd>
 800763a:	e7e1      	b.n	8007600 <xTaskRemoveFromEventList+0x20>
 800763c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007640:	f383 8811 	msr	BASEPRI, r3
 8007644:	f3bf 8f6f 	isb	sy
 8007648:	f3bf 8f4f 	dsb	sy
 800764c:	e7fe      	b.n	800764c <xTaskRemoveFromEventList+0x6c>
 800764e:	2000      	movs	r0, #0
 8007650:	bd38      	pop	{r3, r4, r5, pc}
 8007652:	bf00      	nop
 8007654:	200002b8 	.word	0x200002b8
 8007658:	2000030c 	.word	0x2000030c
 800765c:	200007b0 	.word	0x200007b0
 8007660:	200002c8 	.word	0x200002c8
 8007664:	200002d4 	.word	0x200002d4
 8007668:	20000350 	.word	0x20000350

0800766c <vTaskInternalSetTimeOutState>:
 800766c:	4a03      	ldr	r2, [pc, #12]	@ (800767c <vTaskInternalSetTimeOutState+0x10>)
 800766e:	4b04      	ldr	r3, [pc, #16]	@ (8007680 <vTaskInternalSetTimeOutState+0x14>)
 8007670:	6812      	ldr	r2, [r2, #0]
 8007672:	681b      	ldr	r3, [r3, #0]
 8007674:	e9c0 2300 	strd	r2, r3, [r0]
 8007678:	4770      	bx	lr
 800767a:	bf00      	nop
 800767c:	200002c4 	.word	0x200002c4
 8007680:	200002d8 	.word	0x200002d8

08007684 <xTaskCheckForTimeOut>:
 8007684:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007686:	b308      	cbz	r0, 80076cc <xTaskCheckForTimeOut+0x48>
 8007688:	460d      	mov	r5, r1
 800768a:	b1b1      	cbz	r1, 80076ba <xTaskCheckForTimeOut+0x36>
 800768c:	4604      	mov	r4, r0
 800768e:	f000 fd69 	bl	8008164 <vPortEnterCritical>
 8007692:	682b      	ldr	r3, [r5, #0]
 8007694:	4a1a      	ldr	r2, [pc, #104]	@ (8007700 <xTaskCheckForTimeOut+0x7c>)
 8007696:	1c58      	adds	r0, r3, #1
 8007698:	6811      	ldr	r1, [r2, #0]
 800769a:	d02c      	beq.n	80076f6 <xTaskCheckForTimeOut+0x72>
 800769c:	f8df c064 	ldr.w	ip, [pc, #100]	@ 8007704 <xTaskCheckForTimeOut+0x80>
 80076a0:	6826      	ldr	r6, [r4, #0]
 80076a2:	f8dc 7000 	ldr.w	r7, [ip]
 80076a6:	6860      	ldr	r0, [r4, #4]
 80076a8:	42be      	cmp	r6, r7
 80076aa:	d018      	beq.n	80076de <xTaskCheckForTimeOut+0x5a>
 80076ac:	4288      	cmp	r0, r1
 80076ae:	d816      	bhi.n	80076de <xTaskCheckForTimeOut+0x5a>
 80076b0:	2401      	movs	r4, #1
 80076b2:	f000 fd79 	bl	80081a8 <vPortExitCritical>
 80076b6:	4620      	mov	r0, r4
 80076b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80076ba:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80076be:	f383 8811 	msr	BASEPRI, r3
 80076c2:	f3bf 8f6f 	isb	sy
 80076c6:	f3bf 8f4f 	dsb	sy
 80076ca:	e7fe      	b.n	80076ca <xTaskCheckForTimeOut+0x46>
 80076cc:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80076d0:	f383 8811 	msr	BASEPRI, r3
 80076d4:	f3bf 8f6f 	isb	sy
 80076d8:	f3bf 8f4f 	dsb	sy
 80076dc:	e7fe      	b.n	80076dc <xTaskCheckForTimeOut+0x58>
 80076de:	eba1 0e00 	sub.w	lr, r1, r0
 80076e2:	4573      	cmp	r3, lr
 80076e4:	d909      	bls.n	80076fa <xTaskCheckForTimeOut+0x76>
 80076e6:	1a5b      	subs	r3, r3, r1
 80076e8:	f8dc 1000 	ldr.w	r1, [ip]
 80076ec:	6812      	ldr	r2, [r2, #0]
 80076ee:	4403      	add	r3, r0
 80076f0:	602b      	str	r3, [r5, #0]
 80076f2:	e9c4 1200 	strd	r1, r2, [r4]
 80076f6:	2400      	movs	r4, #0
 80076f8:	e7db      	b.n	80076b2 <xTaskCheckForTimeOut+0x2e>
 80076fa:	2300      	movs	r3, #0
 80076fc:	602b      	str	r3, [r5, #0]
 80076fe:	e7d7      	b.n	80076b0 <xTaskCheckForTimeOut+0x2c>
 8007700:	200002d8 	.word	0x200002d8
 8007704:	200002c4 	.word	0x200002c4

08007708 <vTaskMissedYield>:
 8007708:	4b01      	ldr	r3, [pc, #4]	@ (8007710 <vTaskMissedYield+0x8>)
 800770a:	2201      	movs	r2, #1
 800770c:	601a      	str	r2, [r3, #0]
 800770e:	4770      	bx	lr
 8007710:	200002c8 	.word	0x200002c8

08007714 <xTaskGetSchedulerState>:
 8007714:	4b05      	ldr	r3, [pc, #20]	@ (800772c <xTaskGetSchedulerState+0x18>)
 8007716:	681b      	ldr	r3, [r3, #0]
 8007718:	b133      	cbz	r3, 8007728 <xTaskGetSchedulerState+0x14>
 800771a:	4b05      	ldr	r3, [pc, #20]	@ (8007730 <xTaskGetSchedulerState+0x1c>)
 800771c:	6818      	ldr	r0, [r3, #0]
 800771e:	fab0 f080 	clz	r0, r0
 8007722:	0940      	lsrs	r0, r0, #5
 8007724:	0040      	lsls	r0, r0, #1
 8007726:	4770      	bx	lr
 8007728:	2001      	movs	r0, #1
 800772a:	4770      	bx	lr
 800772c:	200002d0 	.word	0x200002d0
 8007730:	200002b8 	.word	0x200002b8

08007734 <xTaskPriorityInherit>:
 8007734:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007736:	4604      	mov	r4, r0
 8007738:	b1c8      	cbz	r0, 800776e <xTaskPriorityInherit+0x3a>
 800773a:	4d1b      	ldr	r5, [pc, #108]	@ (80077a8 <xTaskPriorityInherit+0x74>)
 800773c:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
 800773e:	682a      	ldr	r2, [r5, #0]
 8007740:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
 8007742:	4293      	cmp	r3, r2
 8007744:	d214      	bcs.n	8007770 <xTaskPriorityInherit+0x3c>
 8007746:	6982      	ldr	r2, [r0, #24]
 8007748:	2a00      	cmp	r2, #0
 800774a:	db04      	blt.n	8007756 <xTaskPriorityInherit+0x22>
 800774c:	682a      	ldr	r2, [r5, #0]
 800774e:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
 8007750:	f1c2 0238 	rsb	r2, r2, #56	@ 0x38
 8007754:	6182      	str	r2, [r0, #24]
 8007756:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 800775a:	4e14      	ldr	r6, [pc, #80]	@ (80077ac <xTaskPriorityInherit+0x78>)
 800775c:	6962      	ldr	r2, [r4, #20]
 800775e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8007762:	429a      	cmp	r2, r3
 8007764:	d00c      	beq.n	8007780 <xTaskPriorityInherit+0x4c>
 8007766:	682b      	ldr	r3, [r5, #0]
 8007768:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800776a:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800776c:	2001      	movs	r0, #1
 800776e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007770:	682b      	ldr	r3, [r5, #0]
 8007772:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
 8007774:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007776:	4298      	cmp	r0, r3
 8007778:	bf2c      	ite	cs
 800777a:	2000      	movcs	r0, #0
 800777c:	2001      	movcc	r0, #1
 800777e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007780:	1d27      	adds	r7, r4, #4
 8007782:	4638      	mov	r0, r7
 8007784:	f7fe fed2 	bl	800652c <uxListRemove>
 8007788:	682a      	ldr	r2, [r5, #0]
 800778a:	4b09      	ldr	r3, [pc, #36]	@ (80077b0 <xTaskPriorityInherit+0x7c>)
 800778c:	6ad0      	ldr	r0, [r2, #44]	@ 0x2c
 800778e:	681a      	ldr	r2, [r3, #0]
 8007790:	62e0      	str	r0, [r4, #44]	@ 0x2c
 8007792:	4290      	cmp	r0, r2
 8007794:	d900      	bls.n	8007798 <xTaskPriorityInherit+0x64>
 8007796:	6018      	str	r0, [r3, #0]
 8007798:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800779c:	4639      	mov	r1, r7
 800779e:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 80077a2:	f7fe fe9d 	bl	80064e0 <vListInsertEnd>
 80077a6:	e7e1      	b.n	800776c <xTaskPriorityInherit+0x38>
 80077a8:	200007b0 	.word	0x200007b0
 80077ac:	20000350 	.word	0x20000350
 80077b0:	200002d4 	.word	0x200002d4

080077b4 <xTaskPriorityDisinherit>:
 80077b4:	b308      	cbz	r0, 80077fa <xTaskPriorityDisinherit+0x46>
 80077b6:	b538      	push	{r3, r4, r5, lr}
 80077b8:	4b1d      	ldr	r3, [pc, #116]	@ (8007830 <xTaskPriorityDisinherit+0x7c>)
 80077ba:	681c      	ldr	r4, [r3, #0]
 80077bc:	4284      	cmp	r4, r0
 80077be:	d008      	beq.n	80077d2 <xTaskPriorityDisinherit+0x1e>
 80077c0:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80077c4:	f383 8811 	msr	BASEPRI, r3
 80077c8:	f3bf 8f6f 	isb	sy
 80077cc:	f3bf 8f4f 	dsb	sy
 80077d0:	e7fe      	b.n	80077d0 <xTaskPriorityDisinherit+0x1c>
 80077d2:	6d23      	ldr	r3, [r4, #80]	@ 0x50
 80077d4:	b143      	cbz	r3, 80077e8 <xTaskPriorityDisinherit+0x34>
 80077d6:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
 80077d8:	3b01      	subs	r3, #1
 80077da:	6ce2      	ldr	r2, [r4, #76]	@ 0x4c
 80077dc:	6523      	str	r3, [r4, #80]	@ 0x50
 80077de:	4291      	cmp	r1, r2
 80077e0:	d000      	beq.n	80077e4 <xTaskPriorityDisinherit+0x30>
 80077e2:	b163      	cbz	r3, 80077fe <xTaskPriorityDisinherit+0x4a>
 80077e4:	2000      	movs	r0, #0
 80077e6:	bd38      	pop	{r3, r4, r5, pc}
 80077e8:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80077ec:	f383 8811 	msr	BASEPRI, r3
 80077f0:	f3bf 8f6f 	isb	sy
 80077f4:	f3bf 8f4f 	dsb	sy
 80077f8:	e7fe      	b.n	80077f8 <xTaskPriorityDisinherit+0x44>
 80077fa:	2000      	movs	r0, #0
 80077fc:	4770      	bx	lr
 80077fe:	1d25      	adds	r5, r4, #4
 8007800:	4628      	mov	r0, r5
 8007802:	f7fe fe93 	bl	800652c <uxListRemove>
 8007806:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
 8007808:	4b0a      	ldr	r3, [pc, #40]	@ (8007834 <xTaskPriorityDisinherit+0x80>)
 800780a:	f1c0 0238 	rsb	r2, r0, #56	@ 0x38
 800780e:	62e0      	str	r0, [r4, #44]	@ 0x2c
 8007810:	61a2      	str	r2, [r4, #24]
 8007812:	681a      	ldr	r2, [r3, #0]
 8007814:	4290      	cmp	r0, r2
 8007816:	d900      	bls.n	800781a <xTaskPriorityDisinherit+0x66>
 8007818:	6018      	str	r0, [r3, #0]
 800781a:	4b07      	ldr	r3, [pc, #28]	@ (8007838 <xTaskPriorityDisinherit+0x84>)
 800781c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8007820:	4629      	mov	r1, r5
 8007822:	eb03 0080 	add.w	r0, r3, r0, lsl #2
 8007826:	f7fe fe5b 	bl	80064e0 <vListInsertEnd>
 800782a:	2001      	movs	r0, #1
 800782c:	bd38      	pop	{r3, r4, r5, pc}
 800782e:	bf00      	nop
 8007830:	200007b0 	.word	0x200007b0
 8007834:	200002d4 	.word	0x200002d4
 8007838:	20000350 	.word	0x20000350

0800783c <vTaskPriorityDisinheritAfterTimeout>:
 800783c:	2800      	cmp	r0, #0
 800783e:	d03c      	beq.n	80078ba <vTaskPriorityDisinheritAfterTimeout+0x7e>
 8007840:	6d03      	ldr	r3, [r0, #80]	@ 0x50
 8007842:	b570      	push	{r4, r5, r6, lr}
 8007844:	4604      	mov	r4, r0
 8007846:	b14b      	cbz	r3, 800785c <vTaskPriorityDisinheritAfterTimeout+0x20>
 8007848:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
 800784a:	6ae2      	ldr	r2, [r4, #44]	@ 0x2c
 800784c:	4281      	cmp	r1, r0
 800784e:	bf38      	it	cc
 8007850:	4601      	movcc	r1, r0
 8007852:	2b01      	cmp	r3, #1
 8007854:	d101      	bne.n	800785a <vTaskPriorityDisinheritAfterTimeout+0x1e>
 8007856:	428a      	cmp	r2, r1
 8007858:	d109      	bne.n	800786e <vTaskPriorityDisinheritAfterTimeout+0x32>
 800785a:	bd70      	pop	{r4, r5, r6, pc}
 800785c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007860:	f383 8811 	msr	BASEPRI, r3
 8007864:	f3bf 8f6f 	isb	sy
 8007868:	f3bf 8f4f 	dsb	sy
 800786c:	e7fe      	b.n	800786c <vTaskPriorityDisinheritAfterTimeout+0x30>
 800786e:	4b18      	ldr	r3, [pc, #96]	@ (80078d0 <vTaskPriorityDisinheritAfterTimeout+0x94>)
 8007870:	681b      	ldr	r3, [r3, #0]
 8007872:	42a3      	cmp	r3, r4
 8007874:	d022      	beq.n	80078bc <vTaskPriorityDisinheritAfterTimeout+0x80>
 8007876:	69a3      	ldr	r3, [r4, #24]
 8007878:	62e1      	str	r1, [r4, #44]	@ 0x2c
 800787a:	2b00      	cmp	r3, #0
 800787c:	db02      	blt.n	8007884 <vTaskPriorityDisinheritAfterTimeout+0x48>
 800787e:	f1c1 0138 	rsb	r1, r1, #56	@ 0x38
 8007882:	61a1      	str	r1, [r4, #24]
 8007884:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8007888:	4d12      	ldr	r5, [pc, #72]	@ (80078d4 <vTaskPriorityDisinheritAfterTimeout+0x98>)
 800788a:	6961      	ldr	r1, [r4, #20]
 800788c:	eb05 0382 	add.w	r3, r5, r2, lsl #2
 8007890:	4299      	cmp	r1, r3
 8007892:	d1e2      	bne.n	800785a <vTaskPriorityDisinheritAfterTimeout+0x1e>
 8007894:	1d26      	adds	r6, r4, #4
 8007896:	4630      	mov	r0, r6
 8007898:	f7fe fe48 	bl	800652c <uxListRemove>
 800789c:	4b0e      	ldr	r3, [pc, #56]	@ (80078d8 <vTaskPriorityDisinheritAfterTimeout+0x9c>)
 800789e:	6ae0      	ldr	r0, [r4, #44]	@ 0x2c
 80078a0:	681a      	ldr	r2, [r3, #0]
 80078a2:	4290      	cmp	r0, r2
 80078a4:	d900      	bls.n	80078a8 <vTaskPriorityDisinheritAfterTimeout+0x6c>
 80078a6:	6018      	str	r0, [r3, #0]
 80078a8:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80078ac:	4631      	mov	r1, r6
 80078ae:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 80078b2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80078b6:	f7fe be13 	b.w	80064e0 <vListInsertEnd>
 80078ba:	4770      	bx	lr
 80078bc:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80078c0:	f383 8811 	msr	BASEPRI, r3
 80078c4:	f3bf 8f6f 	isb	sy
 80078c8:	f3bf 8f4f 	dsb	sy
 80078cc:	e7fe      	b.n	80078cc <vTaskPriorityDisinheritAfterTimeout+0x90>
 80078ce:	bf00      	nop
 80078d0:	200007b0 	.word	0x200007b0
 80078d4:	20000350 	.word	0x20000350
 80078d8:	200002d4 	.word	0x200002d4

080078dc <pvTaskIncrementMutexHeldCount>:
 80078dc:	4b04      	ldr	r3, [pc, #16]	@ (80078f0 <pvTaskIncrementMutexHeldCount+0x14>)
 80078de:	681a      	ldr	r2, [r3, #0]
 80078e0:	b11a      	cbz	r2, 80078ea <pvTaskIncrementMutexHeldCount+0xe>
 80078e2:	6819      	ldr	r1, [r3, #0]
 80078e4:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
 80078e6:	3201      	adds	r2, #1
 80078e8:	650a      	str	r2, [r1, #80]	@ 0x50
 80078ea:	6818      	ldr	r0, [r3, #0]
 80078ec:	4770      	bx	lr
 80078ee:	bf00      	nop
 80078f0:	200007b0 	.word	0x200007b0

080078f4 <prvCheckForValidListAndQueue>:
 80078f4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80078f6:	4c12      	ldr	r4, [pc, #72]	@ (8007940 <prvCheckForValidListAndQueue+0x4c>)
 80078f8:	b083      	sub	sp, #12
 80078fa:	f000 fc33 	bl	8008164 <vPortEnterCritical>
 80078fe:	6825      	ldr	r5, [r4, #0]
 8007900:	b125      	cbz	r5, 800790c <prvCheckForValidListAndQueue+0x18>
 8007902:	b003      	add	sp, #12
 8007904:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8007908:	f000 bc4e 	b.w	80081a8 <vPortExitCritical>
 800790c:	4f0d      	ldr	r7, [pc, #52]	@ (8007944 <prvCheckForValidListAndQueue+0x50>)
 800790e:	4e0e      	ldr	r6, [pc, #56]	@ (8007948 <prvCheckForValidListAndQueue+0x54>)
 8007910:	4638      	mov	r0, r7
 8007912:	f7fe fdd5 	bl	80064c0 <vListInitialise>
 8007916:	4630      	mov	r0, r6
 8007918:	f7fe fdd2 	bl	80064c0 <vListInitialise>
 800791c:	4a0b      	ldr	r2, [pc, #44]	@ (800794c <prvCheckForValidListAndQueue+0x58>)
 800791e:	9500      	str	r5, [sp, #0]
 8007920:	2110      	movs	r1, #16
 8007922:	6017      	str	r7, [r2, #0]
 8007924:	200a      	movs	r0, #10
 8007926:	4a0a      	ldr	r2, [pc, #40]	@ (8007950 <prvCheckForValidListAndQueue+0x5c>)
 8007928:	4b0a      	ldr	r3, [pc, #40]	@ (8007954 <prvCheckForValidListAndQueue+0x60>)
 800792a:	6016      	str	r6, [r2, #0]
 800792c:	4a0a      	ldr	r2, [pc, #40]	@ (8007958 <prvCheckForValidListAndQueue+0x64>)
 800792e:	f7fe fed7 	bl	80066e0 <xQueueGenericCreateStatic>
 8007932:	6020      	str	r0, [r4, #0]
 8007934:	2800      	cmp	r0, #0
 8007936:	d0e4      	beq.n	8007902 <prvCheckForValidListAndQueue+0xe>
 8007938:	4908      	ldr	r1, [pc, #32]	@ (800795c <prvCheckForValidListAndQueue+0x68>)
 800793a:	f7ff f9fb 	bl	8006d34 <vQueueAddToRegistry>
 800793e:	e7e0      	b.n	8007902 <prvCheckForValidListAndQueue+0xe>
 8007940:	200008ac 	.word	0x200008ac
 8007944:	200008cc 	.word	0x200008cc
 8007948:	200008b8 	.word	0x200008b8
 800794c:	200008b4 	.word	0x200008b4
 8007950:	200008b0 	.word	0x200008b0
 8007954:	200007b4 	.word	0x200007b4
 8007958:	20000804 	.word	0x20000804
 800795c:	0800d674 	.word	0x0800d674

08007960 <xTimerCreateTimerTask>:
 8007960:	b530      	push	{r4, r5, lr}
 8007962:	b089      	sub	sp, #36	@ 0x24
 8007964:	f7ff ffc6 	bl	80078f4 <prvCheckForValidListAndQueue>
 8007968:	4b12      	ldr	r3, [pc, #72]	@ (80079b4 <xTimerCreateTimerTask+0x54>)
 800796a:	681b      	ldr	r3, [r3, #0]
 800796c:	b1cb      	cbz	r3, 80079a2 <xTimerCreateTimerTask+0x42>
 800796e:	2400      	movs	r4, #0
 8007970:	aa07      	add	r2, sp, #28
 8007972:	a906      	add	r1, sp, #24
 8007974:	a805      	add	r0, sp, #20
 8007976:	2502      	movs	r5, #2
 8007978:	e9cd 4405 	strd	r4, r4, [sp, #20]
 800797c:	f000 fa68 	bl	8007e50 <vApplicationGetTimerTaskMemory>
 8007980:	4623      	mov	r3, r4
 8007982:	9a07      	ldr	r2, [sp, #28]
 8007984:	9500      	str	r5, [sp, #0]
 8007986:	e9dd 0105 	ldrd	r0, r1, [sp, #20]
 800798a:	e9cd 1001 	strd	r1, r0, [sp, #4]
 800798e:	490a      	ldr	r1, [pc, #40]	@ (80079b8 <xTimerCreateTimerTask+0x58>)
 8007990:	480a      	ldr	r0, [pc, #40]	@ (80079bc <xTimerCreateTimerTask+0x5c>)
 8007992:	f7ff fb6b 	bl	800706c <xTaskCreateStatic>
 8007996:	4b0a      	ldr	r3, [pc, #40]	@ (80079c0 <xTimerCreateTimerTask+0x60>)
 8007998:	6018      	str	r0, [r3, #0]
 800799a:	b110      	cbz	r0, 80079a2 <xTimerCreateTimerTask+0x42>
 800799c:	2001      	movs	r0, #1
 800799e:	b009      	add	sp, #36	@ 0x24
 80079a0:	bd30      	pop	{r4, r5, pc}
 80079a2:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80079a6:	f383 8811 	msr	BASEPRI, r3
 80079aa:	f3bf 8f6f 	isb	sy
 80079ae:	f3bf 8f4f 	dsb	sy
 80079b2:	e7fe      	b.n	80079b2 <xTimerCreateTimerTask+0x52>
 80079b4:	200008ac 	.word	0x200008ac
 80079b8:	0800d67c 	.word	0x0800d67c
 80079bc:	08007aad 	.word	0x08007aad
 80079c0:	200008a8 	.word	0x200008a8

080079c4 <xTimerGenericCommand>:
 80079c4:	b1c8      	cbz	r0, 80079fa <xTimerGenericCommand+0x36>
 80079c6:	b530      	push	{r4, r5, lr}
 80079c8:	4d18      	ldr	r5, [pc, #96]	@ (8007a2c <xTimerGenericCommand+0x68>)
 80079ca:	b085      	sub	sp, #20
 80079cc:	682c      	ldr	r4, [r5, #0]
 80079ce:	b18c      	cbz	r4, 80079f4 <xTimerGenericCommand+0x30>
 80079d0:	2905      	cmp	r1, #5
 80079d2:	9002      	str	r0, [sp, #8]
 80079d4:	e9cd 1200 	strd	r1, r2, [sp]
 80079d8:	dc18      	bgt.n	8007a0c <xTimerGenericCommand+0x48>
 80079da:	f7ff fe9b 	bl	8007714 <xTaskGetSchedulerState>
 80079de:	2802      	cmp	r0, #2
 80079e0:	f04f 0300 	mov.w	r3, #0
 80079e4:	d01b      	beq.n	8007a1e <xTimerGenericCommand+0x5a>
 80079e6:	4669      	mov	r1, sp
 80079e8:	461a      	mov	r2, r3
 80079ea:	6828      	ldr	r0, [r5, #0]
 80079ec:	f7fe feca 	bl	8006784 <xQueueGenericSend>
 80079f0:	b005      	add	sp, #20
 80079f2:	bd30      	pop	{r4, r5, pc}
 80079f4:	4620      	mov	r0, r4
 80079f6:	b005      	add	sp, #20
 80079f8:	bd30      	pop	{r4, r5, pc}
 80079fa:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80079fe:	f383 8811 	msr	BASEPRI, r3
 8007a02:	f3bf 8f6f 	isb	sy
 8007a06:	f3bf 8f4f 	dsb	sy
 8007a0a:	e7fe      	b.n	8007a0a <xTimerGenericCommand+0x46>
 8007a0c:	469c      	mov	ip, r3
 8007a0e:	4669      	mov	r1, sp
 8007a10:	2300      	movs	r3, #0
 8007a12:	4620      	mov	r0, r4
 8007a14:	4662      	mov	r2, ip
 8007a16:	f7fe ff97 	bl	8006948 <xQueueGenericSendFromISR>
 8007a1a:	b005      	add	sp, #20
 8007a1c:	bd30      	pop	{r4, r5, pc}
 8007a1e:	9a08      	ldr	r2, [sp, #32]
 8007a20:	4669      	mov	r1, sp
 8007a22:	6828      	ldr	r0, [r5, #0]
 8007a24:	f7fe feae 	bl	8006784 <xQueueGenericSend>
 8007a28:	e7e5      	b.n	80079f6 <xTimerGenericCommand+0x32>
 8007a2a:	bf00      	nop
 8007a2c:	200008ac 	.word	0x200008ac

08007a30 <prvSwitchTimerLists>:
 8007a30:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007a32:	4e1c      	ldr	r6, [pc, #112]	@ (8007aa4 <prvSwitchTimerLists+0x74>)
 8007a34:	b083      	sub	sp, #12
 8007a36:	e00d      	b.n	8007a54 <prvSwitchTimerLists+0x24>
 8007a38:	68db      	ldr	r3, [r3, #12]
 8007a3a:	68dc      	ldr	r4, [r3, #12]
 8007a3c:	681f      	ldr	r7, [r3, #0]
 8007a3e:	1d25      	adds	r5, r4, #4
 8007a40:	4628      	mov	r0, r5
 8007a42:	f7fe fd73 	bl	800652c <uxListRemove>
 8007a46:	6a23      	ldr	r3, [r4, #32]
 8007a48:	4620      	mov	r0, r4
 8007a4a:	4798      	blx	r3
 8007a4c:	f894 3028 	ldrb.w	r3, [r4, #40]	@ 0x28
 8007a50:	075b      	lsls	r3, r3, #29
 8007a52:	d409      	bmi.n	8007a68 <prvSwitchTimerLists+0x38>
 8007a54:	6833      	ldr	r3, [r6, #0]
 8007a56:	681a      	ldr	r2, [r3, #0]
 8007a58:	2a00      	cmp	r2, #0
 8007a5a:	d1ed      	bne.n	8007a38 <prvSwitchTimerLists+0x8>
 8007a5c:	4a12      	ldr	r2, [pc, #72]	@ (8007aa8 <prvSwitchTimerLists+0x78>)
 8007a5e:	6811      	ldr	r1, [r2, #0]
 8007a60:	6013      	str	r3, [r2, #0]
 8007a62:	6031      	str	r1, [r6, #0]
 8007a64:	b003      	add	sp, #12
 8007a66:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007a68:	69a2      	ldr	r2, [r4, #24]
 8007a6a:	4629      	mov	r1, r5
 8007a6c:	2300      	movs	r3, #0
 8007a6e:	4620      	mov	r0, r4
 8007a70:	18bd      	adds	r5, r7, r2
 8007a72:	463a      	mov	r2, r7
 8007a74:	42af      	cmp	r7, r5
 8007a76:	d205      	bcs.n	8007a84 <prvSwitchTimerLists+0x54>
 8007a78:	6830      	ldr	r0, [r6, #0]
 8007a7a:	6065      	str	r5, [r4, #4]
 8007a7c:	6124      	str	r4, [r4, #16]
 8007a7e:	f7fe fd3d 	bl	80064fc <vListInsert>
 8007a82:	e7e7      	b.n	8007a54 <prvSwitchTimerLists+0x24>
 8007a84:	4619      	mov	r1, r3
 8007a86:	9300      	str	r3, [sp, #0]
 8007a88:	f7ff ff9c 	bl	80079c4 <xTimerGenericCommand>
 8007a8c:	2800      	cmp	r0, #0
 8007a8e:	d1e1      	bne.n	8007a54 <prvSwitchTimerLists+0x24>
 8007a90:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007a94:	f383 8811 	msr	BASEPRI, r3
 8007a98:	f3bf 8f6f 	isb	sy
 8007a9c:	f3bf 8f4f 	dsb	sy
 8007aa0:	e7fe      	b.n	8007aa0 <prvSwitchTimerLists+0x70>
 8007aa2:	bf00      	nop
 8007aa4:	200008b4 	.word	0x200008b4
 8007aa8:	200008b0 	.word	0x200008b0

08007aac <prvTimerTask>:
 8007aac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007ab0:	f8df 8260 	ldr.w	r8, [pc, #608]	@ 8007d14 <prvTimerTask+0x268>
 8007ab4:	b087      	sub	sp, #28
 8007ab6:	4e95      	ldr	r6, [pc, #596]	@ (8007d0c <prvTimerTask+0x260>)
 8007ab8:	f8df 925c 	ldr.w	r9, [pc, #604]	@ 8007d18 <prvTimerTask+0x26c>
 8007abc:	4c94      	ldr	r4, [pc, #592]	@ (8007d10 <prvTimerTask+0x264>)
 8007abe:	f8d8 2000 	ldr.w	r2, [r8]
 8007ac2:	f8d2 a000 	ldr.w	sl, [r2]
 8007ac6:	f1ba 0f00 	cmp.w	sl, #0
 8007aca:	f000 80a9 	beq.w	8007c20 <prvTimerTask+0x174>
 8007ace:	68d3      	ldr	r3, [r2, #12]
 8007ad0:	f8d3 a000 	ldr.w	sl, [r3]
 8007ad4:	f7ff fb7a 	bl	80071cc <vTaskSuspendAll>
 8007ad8:	f7ff fb80 	bl	80071dc <xTaskGetTickCount>
 8007adc:	6832      	ldr	r2, [r6, #0]
 8007ade:	4605      	mov	r5, r0
 8007ae0:	4290      	cmp	r0, r2
 8007ae2:	f0c0 80a5 	bcc.w	8007c30 <prvTimerTask+0x184>
 8007ae6:	4582      	cmp	sl, r0
 8007ae8:	6030      	str	r0, [r6, #0]
 8007aea:	f200 80aa 	bhi.w	8007c42 <prvTimerTask+0x196>
 8007aee:	f7ff fcb9 	bl	8007464 <xTaskResumeAll>
 8007af2:	f8d8 2000 	ldr.w	r2, [r8]
 8007af6:	68d2      	ldr	r2, [r2, #12]
 8007af8:	68d7      	ldr	r7, [r2, #12]
 8007afa:	f107 0b04 	add.w	fp, r7, #4
 8007afe:	4658      	mov	r0, fp
 8007b00:	f7fe fd14 	bl	800652c <uxListRemove>
 8007b04:	f897 2028 	ldrb.w	r2, [r7, #40]	@ 0x28
 8007b08:	0750      	lsls	r0, r2, #29
 8007b0a:	f100 80c2 	bmi.w	8007c92 <prvTimerTask+0x1e6>
 8007b0e:	f022 0201 	bic.w	r2, r2, #1
 8007b12:	f887 2028 	strb.w	r2, [r7, #40]	@ 0x28
 8007b16:	6a3b      	ldr	r3, [r7, #32]
 8007b18:	4638      	mov	r0, r7
 8007b1a:	4798      	blx	r3
 8007b1c:	2200      	movs	r2, #0
 8007b1e:	a902      	add	r1, sp, #8
 8007b20:	6820      	ldr	r0, [r4, #0]
 8007b22:	f7fe ff77 	bl	8006a14 <xQueueReceive>
 8007b26:	2800      	cmp	r0, #0
 8007b28:	d0c9      	beq.n	8007abe <prvTimerTask+0x12>
 8007b2a:	9b02      	ldr	r3, [sp, #8]
 8007b2c:	9804      	ldr	r0, [sp, #16]
 8007b2e:	2b00      	cmp	r3, #0
 8007b30:	db6e      	blt.n	8007c10 <prvTimerTask+0x164>
 8007b32:	9d04      	ldr	r5, [sp, #16]
 8007b34:	696b      	ldr	r3, [r5, #20]
 8007b36:	b113      	cbz	r3, 8007b3e <prvTimerTask+0x92>
 8007b38:	1d28      	adds	r0, r5, #4
 8007b3a:	f7fe fcf7 	bl	800652c <uxListRemove>
 8007b3e:	f7ff fb4d 	bl	80071dc <xTaskGetTickCount>
 8007b42:	6833      	ldr	r3, [r6, #0]
 8007b44:	4607      	mov	r7, r0
 8007b46:	4298      	cmp	r0, r3
 8007b48:	d378      	bcc.n	8007c3c <prvTimerTask+0x190>
 8007b4a:	9b02      	ldr	r3, [sp, #8]
 8007b4c:	6037      	str	r7, [r6, #0]
 8007b4e:	2b09      	cmp	r3, #9
 8007b50:	d8e4      	bhi.n	8007b1c <prvTimerTask+0x70>
 8007b52:	e8df f003 	tbb	[pc, r3]
 8007b56:	0505      	.short	0x0505
 8007b58:	54354d05 	.word	0x54354d05
 8007b5c:	354d0505 	.word	0x354d0505
 8007b60:	f895 2028 	ldrb.w	r2, [r5, #40]	@ 0x28
 8007b64:	9b03      	ldr	r3, [sp, #12]
 8007b66:	f042 0201 	orr.w	r2, r2, #1
 8007b6a:	69a9      	ldr	r1, [r5, #24]
 8007b6c:	612d      	str	r5, [r5, #16]
 8007b6e:	f885 2028 	strb.w	r2, [r5, #40]	@ 0x28
 8007b72:	185a      	adds	r2, r3, r1
 8007b74:	bf2c      	ite	cs
 8007b76:	2001      	movcs	r0, #1
 8007b78:	2000      	movcc	r0, #0
 8007b7a:	42ba      	cmp	r2, r7
 8007b7c:	606a      	str	r2, [r5, #4]
 8007b7e:	d87e      	bhi.n	8007c7e <prvTimerTask+0x1d2>
 8007b80:	1afb      	subs	r3, r7, r3
 8007b82:	4299      	cmp	r1, r3
 8007b84:	f200 80ad 	bhi.w	8007ce2 <prvTimerTask+0x236>
 8007b88:	6a2b      	ldr	r3, [r5, #32]
 8007b8a:	4628      	mov	r0, r5
 8007b8c:	4798      	blx	r3
 8007b8e:	f895 3028 	ldrb.w	r3, [r5, #40]	@ 0x28
 8007b92:	0759      	lsls	r1, r3, #29
 8007b94:	d5c2      	bpl.n	8007b1c <prvTimerTask+0x70>
 8007b96:	2200      	movs	r2, #0
 8007b98:	69ab      	ldr	r3, [r5, #24]
 8007b9a:	4628      	mov	r0, r5
 8007b9c:	9200      	str	r2, [sp, #0]
 8007b9e:	9a03      	ldr	r2, [sp, #12]
 8007ba0:	441a      	add	r2, r3
 8007ba2:	2300      	movs	r3, #0
 8007ba4:	4619      	mov	r1, r3
 8007ba6:	f7ff ff0d 	bl	80079c4 <xTimerGenericCommand>
 8007baa:	2800      	cmp	r0, #0
 8007bac:	d1b6      	bne.n	8007b1c <prvTimerTask+0x70>
 8007bae:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007bb2:	f383 8811 	msr	BASEPRI, r3
 8007bb6:	f3bf 8f6f 	isb	sy
 8007bba:	f3bf 8f4f 	dsb	sy
 8007bbe:	e7fe      	b.n	8007bbe <prvTimerTask+0x112>
 8007bc0:	f895 2028 	ldrb.w	r2, [r5, #40]	@ 0x28
 8007bc4:	9b03      	ldr	r3, [sp, #12]
 8007bc6:	f042 0201 	orr.w	r2, r2, #1
 8007bca:	61ab      	str	r3, [r5, #24]
 8007bcc:	f885 2028 	strb.w	r2, [r5, #40]	@ 0x28
 8007bd0:	2b00      	cmp	r3, #0
 8007bd2:	f000 8092 	beq.w	8007cfa <prvTimerTask+0x24e>
 8007bd6:	443b      	add	r3, r7
 8007bd8:	1d29      	adds	r1, r5, #4
 8007bda:	612d      	str	r5, [r5, #16]
 8007bdc:	42bb      	cmp	r3, r7
 8007bde:	606b      	str	r3, [r5, #4]
 8007be0:	bf94      	ite	ls
 8007be2:	f8d9 0000 	ldrls.w	r0, [r9]
 8007be6:	f8d8 0000 	ldrhi.w	r0, [r8]
 8007bea:	f7fe fc87 	bl	80064fc <vListInsert>
 8007bee:	e795      	b.n	8007b1c <prvTimerTask+0x70>
 8007bf0:	f895 3028 	ldrb.w	r3, [r5, #40]	@ 0x28
 8007bf4:	f023 0301 	bic.w	r3, r3, #1
 8007bf8:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
 8007bfc:	e78e      	b.n	8007b1c <prvTimerTask+0x70>
 8007bfe:	f895 3028 	ldrb.w	r3, [r5, #40]	@ 0x28
 8007c02:	079a      	lsls	r2, r3, #30
 8007c04:	d552      	bpl.n	8007cac <prvTimerTask+0x200>
 8007c06:	f023 0301 	bic.w	r3, r3, #1
 8007c0a:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
 8007c0e:	e785      	b.n	8007b1c <prvTimerTask+0x70>
 8007c10:	9b03      	ldr	r3, [sp, #12]
 8007c12:	9905      	ldr	r1, [sp, #20]
 8007c14:	4798      	blx	r3
 8007c16:	9b02      	ldr	r3, [sp, #8]
 8007c18:	2b00      	cmp	r3, #0
 8007c1a:	f6ff af7f 	blt.w	8007b1c <prvTimerTask+0x70>
 8007c1e:	e788      	b.n	8007b32 <prvTimerTask+0x86>
 8007c20:	f7ff fad4 	bl	80071cc <vTaskSuspendAll>
 8007c24:	f7ff fada 	bl	80071dc <xTaskGetTickCount>
 8007c28:	6832      	ldr	r2, [r6, #0]
 8007c2a:	4605      	mov	r5, r0
 8007c2c:	4290      	cmp	r0, r2
 8007c2e:	d21e      	bcs.n	8007c6e <prvTimerTask+0x1c2>
 8007c30:	f7ff fefe 	bl	8007a30 <prvSwitchTimerLists>
 8007c34:	6035      	str	r5, [r6, #0]
 8007c36:	f7ff fc15 	bl	8007464 <xTaskResumeAll>
 8007c3a:	e76f      	b.n	8007b1c <prvTimerTask+0x70>
 8007c3c:	f7ff fef8 	bl	8007a30 <prvSwitchTimerLists>
 8007c40:	e783      	b.n	8007b4a <prvTimerTask+0x9e>
 8007c42:	2200      	movs	r2, #0
 8007c44:	ebaa 0105 	sub.w	r1, sl, r5
 8007c48:	6820      	ldr	r0, [r4, #0]
 8007c4a:	f7ff f88b 	bl	8006d64 <vQueueWaitForMessageRestricted>
 8007c4e:	f7ff fc09 	bl	8007464 <xTaskResumeAll>
 8007c52:	2800      	cmp	r0, #0
 8007c54:	f47f af62 	bne.w	8007b1c <prvTimerTask+0x70>
 8007c58:	f04f 22e0 	mov.w	r2, #3758153728	@ 0xe000e000
 8007c5c:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
 8007c60:	f8c2 3d04 	str.w	r3, [r2, #3332]	@ 0xd04
 8007c64:	f3bf 8f4f 	dsb	sy
 8007c68:	f3bf 8f6f 	isb	sy
 8007c6c:	e756      	b.n	8007b1c <prvTimerTask+0x70>
 8007c6e:	f8d9 2000 	ldr.w	r2, [r9]
 8007c72:	6035      	str	r5, [r6, #0]
 8007c74:	6812      	ldr	r2, [r2, #0]
 8007c76:	fab2 f282 	clz	r2, r2
 8007c7a:	0952      	lsrs	r2, r2, #5
 8007c7c:	e7e2      	b.n	8007c44 <prvTimerTask+0x198>
 8007c7e:	42bb      	cmp	r3, r7
 8007c80:	d901      	bls.n	8007c86 <prvTimerTask+0x1da>
 8007c82:	2800      	cmp	r0, #0
 8007c84:	d080      	beq.n	8007b88 <prvTimerTask+0xdc>
 8007c86:	1d29      	adds	r1, r5, #4
 8007c88:	f8d8 0000 	ldr.w	r0, [r8]
 8007c8c:	f7fe fc36 	bl	80064fc <vListInsert>
 8007c90:	e744      	b.n	8007b1c <prvTimerTask+0x70>
 8007c92:	69b9      	ldr	r1, [r7, #24]
 8007c94:	613f      	str	r7, [r7, #16]
 8007c96:	eb0a 0201 	add.w	r2, sl, r1
 8007c9a:	4295      	cmp	r5, r2
 8007c9c:	607a      	str	r2, [r7, #4]
 8007c9e:	d209      	bcs.n	8007cb4 <prvTimerTask+0x208>
 8007ca0:	4659      	mov	r1, fp
 8007ca2:	f8d8 0000 	ldr.w	r0, [r8]
 8007ca6:	f7fe fc29 	bl	80064fc <vListInsert>
 8007caa:	e734      	b.n	8007b16 <prvTimerTask+0x6a>
 8007cac:	4628      	mov	r0, r5
 8007cae:	f000 f9a5 	bl	8007ffc <vPortFree>
 8007cb2:	e733      	b.n	8007b1c <prvTimerTask+0x70>
 8007cb4:	eba5 050a 	sub.w	r5, r5, sl
 8007cb8:	42a9      	cmp	r1, r5
 8007cba:	d818      	bhi.n	8007cee <prvTimerTask+0x242>
 8007cbc:	2300      	movs	r3, #0
 8007cbe:	4652      	mov	r2, sl
 8007cc0:	4638      	mov	r0, r7
 8007cc2:	4619      	mov	r1, r3
 8007cc4:	9300      	str	r3, [sp, #0]
 8007cc6:	f7ff fe7d 	bl	80079c4 <xTimerGenericCommand>
 8007cca:	2800      	cmp	r0, #0
 8007ccc:	f47f af23 	bne.w	8007b16 <prvTimerTask+0x6a>
 8007cd0:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007cd4:	f383 8811 	msr	BASEPRI, r3
 8007cd8:	f3bf 8f6f 	isb	sy
 8007cdc:	f3bf 8f4f 	dsb	sy
 8007ce0:	e7fe      	b.n	8007ce0 <prvTimerTask+0x234>
 8007ce2:	1d29      	adds	r1, r5, #4
 8007ce4:	f8d9 0000 	ldr.w	r0, [r9]
 8007ce8:	f7fe fc08 	bl	80064fc <vListInsert>
 8007cec:	e716      	b.n	8007b1c <prvTimerTask+0x70>
 8007cee:	4659      	mov	r1, fp
 8007cf0:	f8d9 0000 	ldr.w	r0, [r9]
 8007cf4:	f7fe fc02 	bl	80064fc <vListInsert>
 8007cf8:	e70d      	b.n	8007b16 <prvTimerTask+0x6a>
 8007cfa:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007cfe:	f383 8811 	msr	BASEPRI, r3
 8007d02:	f3bf 8f6f 	isb	sy
 8007d06:	f3bf 8f4f 	dsb	sy
 8007d0a:	e7fe      	b.n	8007d0a <prvTimerTask+0x25e>
 8007d0c:	200008a4 	.word	0x200008a4
 8007d10:	200008ac 	.word	0x200008ac
 8007d14:	200008b4 	.word	0x200008b4
 8007d18:	200008b0 	.word	0x200008b0

08007d1c <SysTick_Handler>:
 8007d1c:	b508      	push	{r3, lr}
 8007d1e:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8007d22:	691b      	ldr	r3, [r3, #16]
 8007d24:	f7ff fcf6 	bl	8007714 <xTaskGetSchedulerState>
 8007d28:	2801      	cmp	r0, #1
 8007d2a:	d100      	bne.n	8007d2e <SysTick_Handler+0x12>
 8007d2c:	bd08      	pop	{r3, pc}
 8007d2e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8007d32:	f000 ba7f 	b.w	8008234 <xPortSysTickHandler>
 8007d36:	bf00      	nop

08007d38 <osKernelInitialize>:
 8007d38:	f3ef 8305 	mrs	r3, IPSR
 8007d3c:	b92b      	cbnz	r3, 8007d4a <osKernelInitialize+0x12>
 8007d3e:	4b06      	ldr	r3, [pc, #24]	@ (8007d58 <osKernelInitialize+0x20>)
 8007d40:	6818      	ldr	r0, [r3, #0]
 8007d42:	b928      	cbnz	r0, 8007d50 <osKernelInitialize+0x18>
 8007d44:	2201      	movs	r2, #1
 8007d46:	601a      	str	r2, [r3, #0]
 8007d48:	4770      	bx	lr
 8007d4a:	f06f 0005 	mvn.w	r0, #5
 8007d4e:	4770      	bx	lr
 8007d50:	f04f 30ff 	mov.w	r0, #4294967295
 8007d54:	4770      	bx	lr
 8007d56:	bf00      	nop
 8007d58:	20000f98 	.word	0x20000f98

08007d5c <osKernelStart>:
 8007d5c:	b510      	push	{r4, lr}
 8007d5e:	f3ef 8405 	mrs	r4, IPSR
 8007d62:	b974      	cbnz	r4, 8007d82 <osKernelStart+0x26>
 8007d64:	4b08      	ldr	r3, [pc, #32]	@ (8007d88 <osKernelStart+0x2c>)
 8007d66:	681a      	ldr	r2, [r3, #0]
 8007d68:	2a01      	cmp	r2, #1
 8007d6a:	d107      	bne.n	8007d7c <osKernelStart+0x20>
 8007d6c:	4907      	ldr	r1, [pc, #28]	@ (8007d8c <osKernelStart+0x30>)
 8007d6e:	2202      	movs	r2, #2
 8007d70:	77cc      	strb	r4, [r1, #31]
 8007d72:	601a      	str	r2, [r3, #0]
 8007d74:	f7ff f9e4 	bl	8007140 <vTaskStartScheduler>
 8007d78:	4620      	mov	r0, r4
 8007d7a:	bd10      	pop	{r4, pc}
 8007d7c:	f04f 30ff 	mov.w	r0, #4294967295
 8007d80:	bd10      	pop	{r4, pc}
 8007d82:	f06f 0005 	mvn.w	r0, #5
 8007d86:	bd10      	pop	{r4, pc}
 8007d88:	20000f98 	.word	0x20000f98
 8007d8c:	e000ed00 	.word	0xe000ed00

08007d90 <osThreadNew>:
 8007d90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007d92:	2500      	movs	r5, #0
 8007d94:	b087      	sub	sp, #28
 8007d96:	9505      	str	r5, [sp, #20]
 8007d98:	f3ef 8305 	mrs	r3, IPSR
 8007d9c:	b340      	cbz	r0, 8007df0 <osThreadNew+0x60>
 8007d9e:	bb3b      	cbnz	r3, 8007df0 <osThreadNew+0x60>
 8007da0:	4614      	mov	r4, r2
 8007da2:	b1d2      	cbz	r2, 8007dda <osThreadNew+0x4a>
 8007da4:	6996      	ldr	r6, [r2, #24]
 8007da6:	bb36      	cbnz	r6, 8007df6 <osThreadNew+0x66>
 8007da8:	2618      	movs	r6, #24
 8007daa:	6863      	ldr	r3, [r4, #4]
 8007dac:	07db      	lsls	r3, r3, #31
 8007dae:	d41f      	bmi.n	8007df0 <osThreadNew+0x60>
 8007db0:	6963      	ldr	r3, [r4, #20]
 8007db2:	b323      	cbz	r3, 8007dfe <osThreadNew+0x6e>
 8007db4:	089a      	lsrs	r2, r3, #2
 8007db6:	68a5      	ldr	r5, [r4, #8]
 8007db8:	f8d4 c000 	ldr.w	ip, [r4]
 8007dbc:	68e7      	ldr	r7, [r4, #12]
 8007dbe:	b305      	cbz	r5, 8007e02 <osThreadNew+0x72>
 8007dc0:	2f5b      	cmp	r7, #91	@ 0x5b
 8007dc2:	d915      	bls.n	8007df0 <osThreadNew+0x60>
 8007dc4:	6924      	ldr	r4, [r4, #16]
 8007dc6:	b19c      	cbz	r4, 8007df0 <osThreadNew+0x60>
 8007dc8:	b193      	cbz	r3, 8007df0 <osThreadNew+0x60>
 8007dca:	460b      	mov	r3, r1
 8007dcc:	9600      	str	r6, [sp, #0]
 8007dce:	4661      	mov	r1, ip
 8007dd0:	e9cd 4501 	strd	r4, r5, [sp, #4]
 8007dd4:	f7ff f94a 	bl	800706c <xTaskCreateStatic>
 8007dd8:	e00b      	b.n	8007df2 <osThreadNew+0x62>
 8007dda:	2280      	movs	r2, #128	@ 0x80
 8007ddc:	2618      	movs	r6, #24
 8007dde:	460b      	mov	r3, r1
 8007de0:	4621      	mov	r1, r4
 8007de2:	ac05      	add	r4, sp, #20
 8007de4:	9600      	str	r6, [sp, #0]
 8007de6:	9401      	str	r4, [sp, #4]
 8007de8:	f7ff f97a 	bl	80070e0 <xTaskCreate>
 8007dec:	2801      	cmp	r0, #1
 8007dee:	d010      	beq.n	8007e12 <osThreadNew+0x82>
 8007df0:	2000      	movs	r0, #0
 8007df2:	b007      	add	sp, #28
 8007df4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007df6:	1e72      	subs	r2, r6, #1
 8007df8:	2a37      	cmp	r2, #55	@ 0x37
 8007dfa:	d9d6      	bls.n	8007daa <osThreadNew+0x1a>
 8007dfc:	e7f8      	b.n	8007df0 <osThreadNew+0x60>
 8007dfe:	2280      	movs	r2, #128	@ 0x80
 8007e00:	e7d9      	b.n	8007db6 <osThreadNew+0x26>
 8007e02:	2f00      	cmp	r7, #0
 8007e04:	d1f4      	bne.n	8007df0 <osThreadNew+0x60>
 8007e06:	6923      	ldr	r3, [r4, #16]
 8007e08:	2b00      	cmp	r3, #0
 8007e0a:	d1f1      	bne.n	8007df0 <osThreadNew+0x60>
 8007e0c:	b292      	uxth	r2, r2
 8007e0e:	4664      	mov	r4, ip
 8007e10:	e7e5      	b.n	8007dde <osThreadNew+0x4e>
 8007e12:	9805      	ldr	r0, [sp, #20]
 8007e14:	e7ed      	b.n	8007df2 <osThreadNew+0x62>
 8007e16:	bf00      	nop

08007e18 <osDelay>:
 8007e18:	f3ef 8205 	mrs	r2, IPSR
 8007e1c:	b93a      	cbnz	r2, 8007e2e <osDelay+0x16>
 8007e1e:	b508      	push	{r3, lr}
 8007e20:	b908      	cbnz	r0, 8007e26 <osDelay+0xe>
 8007e22:	2000      	movs	r0, #0
 8007e24:	bd08      	pop	{r3, pc}
 8007e26:	f7ff fb2d 	bl	8007484 <vTaskDelay>
 8007e2a:	2000      	movs	r0, #0
 8007e2c:	bd08      	pop	{r3, pc}
 8007e2e:	f06f 0005 	mvn.w	r0, #5
 8007e32:	4770      	bx	lr

08007e34 <vApplicationGetIdleTaskMemory>:
 8007e34:	4b04      	ldr	r3, [pc, #16]	@ (8007e48 <vApplicationGetIdleTaskMemory+0x14>)
 8007e36:	b410      	push	{r4}
 8007e38:	6003      	str	r3, [r0, #0]
 8007e3a:	2380      	movs	r3, #128	@ 0x80
 8007e3c:	4c03      	ldr	r4, [pc, #12]	@ (8007e4c <vApplicationGetIdleTaskMemory+0x18>)
 8007e3e:	600c      	str	r4, [r1, #0]
 8007e40:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007e44:	6013      	str	r3, [r2, #0]
 8007e46:	4770      	bx	lr
 8007e48:	20000f3c 	.word	0x20000f3c
 8007e4c:	20000d3c 	.word	0x20000d3c

08007e50 <vApplicationGetTimerTaskMemory>:
 8007e50:	4b05      	ldr	r3, [pc, #20]	@ (8007e68 <vApplicationGetTimerTaskMemory+0x18>)
 8007e52:	b410      	push	{r4}
 8007e54:	6003      	str	r3, [r0, #0]
 8007e56:	f44f 7380 	mov.w	r3, #256	@ 0x100
 8007e5a:	4c04      	ldr	r4, [pc, #16]	@ (8007e6c <vApplicationGetTimerTaskMemory+0x1c>)
 8007e5c:	600c      	str	r4, [r1, #0]
 8007e5e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007e62:	6013      	str	r3, [r2, #0]
 8007e64:	4770      	bx	lr
 8007e66:	bf00      	nop
 8007e68:	20000ce0 	.word	0x20000ce0
 8007e6c:	200008e0 	.word	0x200008e0

08007e70 <prvInsertBlockIntoFreeList>:
 8007e70:	4b15      	ldr	r3, [pc, #84]	@ (8007ec8 <prvInsertBlockIntoFreeList+0x58>)
 8007e72:	b410      	push	{r4}
 8007e74:	461a      	mov	r2, r3
 8007e76:	681b      	ldr	r3, [r3, #0]
 8007e78:	4283      	cmp	r3, r0
 8007e7a:	d3fb      	bcc.n	8007e74 <prvInsertBlockIntoFreeList+0x4>
 8007e7c:	6854      	ldr	r4, [r2, #4]
 8007e7e:	6841      	ldr	r1, [r0, #4]
 8007e80:	eb02 0c04 	add.w	ip, r2, r4
 8007e84:	4560      	cmp	r0, ip
 8007e86:	d013      	beq.n	8007eb0 <prvInsertBlockIntoFreeList+0x40>
 8007e88:	1844      	adds	r4, r0, r1
 8007e8a:	42a3      	cmp	r3, r4
 8007e8c:	d006      	beq.n	8007e9c <prvInsertBlockIntoFreeList+0x2c>
 8007e8e:	6003      	str	r3, [r0, #0]
 8007e90:	4282      	cmp	r2, r0
 8007e92:	bf18      	it	ne
 8007e94:	6010      	strne	r0, [r2, #0]
 8007e96:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007e9a:	4770      	bx	lr
 8007e9c:	4c0b      	ldr	r4, [pc, #44]	@ (8007ecc <prvInsertBlockIntoFreeList+0x5c>)
 8007e9e:	6824      	ldr	r4, [r4, #0]
 8007ea0:	42a3      	cmp	r3, r4
 8007ea2:	d0f4      	beq.n	8007e8e <prvInsertBlockIntoFreeList+0x1e>
 8007ea4:	e9d3 3400 	ldrd	r3, r4, [r3]
 8007ea8:	4421      	add	r1, r4
 8007eaa:	6003      	str	r3, [r0, #0]
 8007eac:	6041      	str	r1, [r0, #4]
 8007eae:	e7ef      	b.n	8007e90 <prvInsertBlockIntoFreeList+0x20>
 8007eb0:	4421      	add	r1, r4
 8007eb2:	1850      	adds	r0, r2, r1
 8007eb4:	6051      	str	r1, [r2, #4]
 8007eb6:	4283      	cmp	r3, r0
 8007eb8:	d1ed      	bne.n	8007e96 <prvInsertBlockIntoFreeList+0x26>
 8007eba:	4804      	ldr	r0, [pc, #16]	@ (8007ecc <prvInsertBlockIntoFreeList+0x5c>)
 8007ebc:	6800      	ldr	r0, [r0, #0]
 8007ebe:	4283      	cmp	r3, r0
 8007ec0:	d0e9      	beq.n	8007e96 <prvInsertBlockIntoFreeList+0x26>
 8007ec2:	4610      	mov	r0, r2
 8007ec4:	e7ee      	b.n	8007ea4 <prvInsertBlockIntoFreeList+0x34>
 8007ec6:	bf00      	nop
 8007ec8:	20000fb4 	.word	0x20000fb4
 8007ecc:	20000fb0 	.word	0x20000fb0

08007ed0 <pvPortMalloc>:
 8007ed0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007ed4:	4d41      	ldr	r5, [pc, #260]	@ (8007fdc <pvPortMalloc+0x10c>)
 8007ed6:	4604      	mov	r4, r0
 8007ed8:	f7ff f978 	bl	80071cc <vTaskSuspendAll>
 8007edc:	682b      	ldr	r3, [r5, #0]
 8007ede:	2b00      	cmp	r3, #0
 8007ee0:	d05c      	beq.n	8007f9c <pvPortMalloc+0xcc>
 8007ee2:	4b3f      	ldr	r3, [pc, #252]	@ (8007fe0 <pvPortMalloc+0x110>)
 8007ee4:	681e      	ldr	r6, [r3, #0]
 8007ee6:	4234      	tst	r4, r6
 8007ee8:	d12e      	bne.n	8007f48 <pvPortMalloc+0x78>
 8007eea:	b36c      	cbz	r4, 8007f48 <pvPortMalloc+0x78>
 8007eec:	0760      	lsls	r0, r4, #29
 8007eee:	f104 0108 	add.w	r1, r4, #8
 8007ef2:	d002      	beq.n	8007efa <pvPortMalloc+0x2a>
 8007ef4:	f021 0107 	bic.w	r1, r1, #7
 8007ef8:	3108      	adds	r1, #8
 8007efa:	b329      	cbz	r1, 8007f48 <pvPortMalloc+0x78>
 8007efc:	f8df 80f8 	ldr.w	r8, [pc, #248]	@ 8007ff8 <pvPortMalloc+0x128>
 8007f00:	f8d8 7000 	ldr.w	r7, [r8]
 8007f04:	428f      	cmp	r7, r1
 8007f06:	d31f      	bcc.n	8007f48 <pvPortMalloc+0x78>
 8007f08:	4836      	ldr	r0, [pc, #216]	@ (8007fe4 <pvPortMalloc+0x114>)
 8007f0a:	6804      	ldr	r4, [r0, #0]
 8007f0c:	e003      	b.n	8007f16 <pvPortMalloc+0x46>
 8007f0e:	6823      	ldr	r3, [r4, #0]
 8007f10:	b123      	cbz	r3, 8007f1c <pvPortMalloc+0x4c>
 8007f12:	4620      	mov	r0, r4
 8007f14:	461c      	mov	r4, r3
 8007f16:	6862      	ldr	r2, [r4, #4]
 8007f18:	428a      	cmp	r2, r1
 8007f1a:	d3f8      	bcc.n	8007f0e <pvPortMalloc+0x3e>
 8007f1c:	682b      	ldr	r3, [r5, #0]
 8007f1e:	42a3      	cmp	r3, r4
 8007f20:	d012      	beq.n	8007f48 <pvPortMalloc+0x78>
 8007f22:	1a53      	subs	r3, r2, r1
 8007f24:	6825      	ldr	r5, [r4, #0]
 8007f26:	f8d0 9000 	ldr.w	r9, [r0]
 8007f2a:	2b10      	cmp	r3, #16
 8007f2c:	6005      	str	r5, [r0, #0]
 8007f2e:	d916      	bls.n	8007f5e <pvPortMalloc+0x8e>
 8007f30:	1860      	adds	r0, r4, r1
 8007f32:	0742      	lsls	r2, r0, #29
 8007f34:	d00e      	beq.n	8007f54 <pvPortMalloc+0x84>
 8007f36:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007f3a:	f383 8811 	msr	BASEPRI, r3
 8007f3e:	f3bf 8f6f 	isb	sy
 8007f42:	f3bf 8f4f 	dsb	sy
 8007f46:	e7fe      	b.n	8007f46 <pvPortMalloc+0x76>
 8007f48:	2500      	movs	r5, #0
 8007f4a:	f7ff fa8b 	bl	8007464 <xTaskResumeAll>
 8007f4e:	4628      	mov	r0, r5
 8007f50:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007f54:	6043      	str	r3, [r0, #4]
 8007f56:	6061      	str	r1, [r4, #4]
 8007f58:	f7ff ff8a 	bl	8007e70 <prvInsertBlockIntoFreeList>
 8007f5c:	6862      	ldr	r2, [r4, #4]
 8007f5e:	4b22      	ldr	r3, [pc, #136]	@ (8007fe8 <pvPortMalloc+0x118>)
 8007f60:	1abf      	subs	r7, r7, r2
 8007f62:	4332      	orrs	r2, r6
 8007f64:	f109 0508 	add.w	r5, r9, #8
 8007f68:	6819      	ldr	r1, [r3, #0]
 8007f6a:	f8c8 7000 	str.w	r7, [r8]
 8007f6e:	428f      	cmp	r7, r1
 8007f70:	491e      	ldr	r1, [pc, #120]	@ (8007fec <pvPortMalloc+0x11c>)
 8007f72:	bf38      	it	cc
 8007f74:	601f      	strcc	r7, [r3, #0]
 8007f76:	2300      	movs	r3, #0
 8007f78:	e9c4 3200 	strd	r3, r2, [r4]
 8007f7c:	680b      	ldr	r3, [r1, #0]
 8007f7e:	3301      	adds	r3, #1
 8007f80:	600b      	str	r3, [r1, #0]
 8007f82:	f7ff fa6f 	bl	8007464 <xTaskResumeAll>
 8007f86:	076b      	lsls	r3, r5, #29
 8007f88:	d0e1      	beq.n	8007f4e <pvPortMalloc+0x7e>
 8007f8a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007f8e:	f383 8811 	msr	BASEPRI, r3
 8007f92:	f3bf 8f6f 	isb	sy
 8007f96:	f3bf 8f4f 	dsb	sy
 8007f9a:	e7fe      	b.n	8007f9a <pvPortMalloc+0xca>
 8007f9c:	4b14      	ldr	r3, [pc, #80]	@ (8007ff0 <pvPortMalloc+0x120>)
 8007f9e:	2100      	movs	r1, #0
 8007fa0:	4a14      	ldr	r2, [pc, #80]	@ (8007ff4 <pvPortMalloc+0x124>)
 8007fa2:	f04f 4700 	mov.w	r7, #2147483648	@ 0x80000000
 8007fa6:	075e      	lsls	r6, r3, #29
 8007fa8:	4e0e      	ldr	r6, [pc, #56]	@ (8007fe4 <pvPortMalloc+0x114>)
 8007faa:	f022 0207 	bic.w	r2, r2, #7
 8007fae:	bf18      	it	ne
 8007fb0:	3307      	addne	r3, #7
 8007fb2:	6071      	str	r1, [r6, #4]
 8007fb4:	602a      	str	r2, [r5, #0]
 8007fb6:	bf18      	it	ne
 8007fb8:	f023 0307 	bicne.w	r3, r3, #7
 8007fbc:	6033      	str	r3, [r6, #0]
 8007fbe:	4618      	mov	r0, r3
 8007fc0:	1ad3      	subs	r3, r2, r3
 8007fc2:	463e      	mov	r6, r7
 8007fc4:	e9c2 1100 	strd	r1, r1, [r2]
 8007fc8:	e9c0 2300 	strd	r2, r3, [r0]
 8007fcc:	4a06      	ldr	r2, [pc, #24]	@ (8007fe8 <pvPortMalloc+0x118>)
 8007fce:	6013      	str	r3, [r2, #0]
 8007fd0:	4a09      	ldr	r2, [pc, #36]	@ (8007ff8 <pvPortMalloc+0x128>)
 8007fd2:	6013      	str	r3, [r2, #0]
 8007fd4:	4b02      	ldr	r3, [pc, #8]	@ (8007fe0 <pvPortMalloc+0x110>)
 8007fd6:	601f      	str	r7, [r3, #0]
 8007fd8:	e785      	b.n	8007ee6 <pvPortMalloc+0x16>
 8007fda:	bf00      	nop
 8007fdc:	20000fb0 	.word	0x20000fb0
 8007fe0:	20000f9c 	.word	0x20000f9c
 8007fe4:	20000fb4 	.word	0x20000fb4
 8007fe8:	20000fa8 	.word	0x20000fa8
 8007fec:	20000fa4 	.word	0x20000fa4
 8007ff0:	24000000 	.word	0x24000000
 8007ff4:	24003bf8 	.word	0x24003bf8
 8007ff8:	20000fac 	.word	0x20000fac

08007ffc <vPortFree>:
 8007ffc:	b1d0      	cbz	r0, 8008034 <vPortFree+0x38>
 8007ffe:	4a1c      	ldr	r2, [pc, #112]	@ (8008070 <vPortFree+0x74>)
 8008000:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008004:	6812      	ldr	r2, [r2, #0]
 8008006:	4213      	tst	r3, r2
 8008008:	d00b      	beq.n	8008022 <vPortFree+0x26>
 800800a:	f850 1c08 	ldr.w	r1, [r0, #-8]
 800800e:	b191      	cbz	r1, 8008036 <vPortFree+0x3a>
 8008010:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008014:	f383 8811 	msr	BASEPRI, r3
 8008018:	f3bf 8f6f 	isb	sy
 800801c:	f3bf 8f4f 	dsb	sy
 8008020:	e7fe      	b.n	8008020 <vPortFree+0x24>
 8008022:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008026:	f383 8811 	msr	BASEPRI, r3
 800802a:	f3bf 8f6f 	isb	sy
 800802e:	f3bf 8f4f 	dsb	sy
 8008032:	e7fe      	b.n	8008032 <vPortFree+0x36>
 8008034:	4770      	bx	lr
 8008036:	ea23 0302 	bic.w	r3, r3, r2
 800803a:	b500      	push	{lr}
 800803c:	b083      	sub	sp, #12
 800803e:	f840 3c04 	str.w	r3, [r0, #-4]
 8008042:	9001      	str	r0, [sp, #4]
 8008044:	f7ff f8c2 	bl	80071cc <vTaskSuspendAll>
 8008048:	4a0a      	ldr	r2, [pc, #40]	@ (8008074 <vPortFree+0x78>)
 800804a:	9801      	ldr	r0, [sp, #4]
 800804c:	6811      	ldr	r1, [r2, #0]
 800804e:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008052:	3808      	subs	r0, #8
 8008054:	440b      	add	r3, r1
 8008056:	6013      	str	r3, [r2, #0]
 8008058:	f7ff ff0a 	bl	8007e70 <prvInsertBlockIntoFreeList>
 800805c:	4a06      	ldr	r2, [pc, #24]	@ (8008078 <vPortFree+0x7c>)
 800805e:	6813      	ldr	r3, [r2, #0]
 8008060:	3301      	adds	r3, #1
 8008062:	6013      	str	r3, [r2, #0]
 8008064:	b003      	add	sp, #12
 8008066:	f85d eb04 	ldr.w	lr, [sp], #4
 800806a:	f7ff b9fb 	b.w	8007464 <xTaskResumeAll>
 800806e:	bf00      	nop
 8008070:	20000f9c 	.word	0x20000f9c
 8008074:	20000fac 	.word	0x20000fac
 8008078:	20000fa0 	.word	0x20000fa0

0800807c <xPortGetFreeHeapSize>:
 800807c:	4b01      	ldr	r3, [pc, #4]	@ (8008084 <xPortGetFreeHeapSize+0x8>)
 800807e:	6818      	ldr	r0, [r3, #0]
 8008080:	4770      	bx	lr
 8008082:	bf00      	nop
 8008084:	20000fac 	.word	0x20000fac

08008088 <prvPortStartFirstTask>:
 8008088:	4808      	ldr	r0, [pc, #32]	@ (80080ac <prvPortStartFirstTask+0x24>)
 800808a:	6800      	ldr	r0, [r0, #0]
 800808c:	6800      	ldr	r0, [r0, #0]
 800808e:	f380 8808 	msr	MSP, r0
 8008092:	f04f 0000 	mov.w	r0, #0
 8008096:	f380 8814 	msr	CONTROL, r0
 800809a:	b662      	cpsie	i
 800809c:	b661      	cpsie	f
 800809e:	f3bf 8f4f 	dsb	sy
 80080a2:	f3bf 8f6f 	isb	sy
 80080a6:	df00      	svc	0
 80080a8:	bf00      	nop
 80080aa:	0000      	.short	0x0000
 80080ac:	e000ed08 	.word	0xe000ed08

080080b0 <vPortEnableVFP>:
 80080b0:	f8df 000c 	ldr.w	r0, [pc, #12]	@ 80080c0 <vPortEnableVFP+0x10>
 80080b4:	6801      	ldr	r1, [r0, #0]
 80080b6:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
 80080ba:	6001      	str	r1, [r0, #0]
 80080bc:	4770      	bx	lr
 80080be:	0000      	.short	0x0000
 80080c0:	e000ed88 	.word	0xe000ed88

080080c4 <prvTaskExitError>:
 80080c4:	4b0e      	ldr	r3, [pc, #56]	@ (8008100 <prvTaskExitError+0x3c>)
 80080c6:	b082      	sub	sp, #8
 80080c8:	2200      	movs	r2, #0
 80080ca:	681b      	ldr	r3, [r3, #0]
 80080cc:	9201      	str	r2, [sp, #4]
 80080ce:	3301      	adds	r3, #1
 80080d0:	d008      	beq.n	80080e4 <prvTaskExitError+0x20>
 80080d2:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80080d6:	f383 8811 	msr	BASEPRI, r3
 80080da:	f3bf 8f6f 	isb	sy
 80080de:	f3bf 8f4f 	dsb	sy
 80080e2:	e7fe      	b.n	80080e2 <prvTaskExitError+0x1e>
 80080e4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80080e8:	f383 8811 	msr	BASEPRI, r3
 80080ec:	f3bf 8f6f 	isb	sy
 80080f0:	f3bf 8f4f 	dsb	sy
 80080f4:	9b01      	ldr	r3, [sp, #4]
 80080f6:	2b00      	cmp	r3, #0
 80080f8:	d0fc      	beq.n	80080f4 <prvTaskExitError+0x30>
 80080fa:	b002      	add	sp, #8
 80080fc:	4770      	bx	lr
 80080fe:	bf00      	nop
 8008100:	20000010 	.word	0x20000010

08008104 <pxPortInitialiseStack>:
 8008104:	4603      	mov	r3, r0
 8008106:	f021 0101 	bic.w	r1, r1, #1
 800810a:	4809      	ldr	r0, [pc, #36]	@ (8008130 <pxPortInitialiseStack+0x2c>)
 800810c:	b410      	push	{r4}
 800810e:	f04f 7480 	mov.w	r4, #16777216	@ 0x1000000
 8008112:	f843 0c0c 	str.w	r0, [r3, #-12]
 8008116:	f843 2c20 	str.w	r2, [r3, #-32]
 800811a:	f1a3 0044 	sub.w	r0, r3, #68	@ 0x44
 800811e:	e943 1402 	strd	r1, r4, [r3, #-8]
 8008122:	f06f 0102 	mvn.w	r1, #2
 8008126:	f85d 4b04 	ldr.w	r4, [sp], #4
 800812a:	f843 1c24 	str.w	r1, [r3, #-36]
 800812e:	4770      	bx	lr
 8008130:	080080c5 	.word	0x080080c5
	...

08008140 <SVC_Handler>:
 8008140:	4b07      	ldr	r3, [pc, #28]	@ (8008160 <pxCurrentTCBConst2>)
 8008142:	6819      	ldr	r1, [r3, #0]
 8008144:	6808      	ldr	r0, [r1, #0]
 8008146:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800814a:	f380 8809 	msr	PSP, r0
 800814e:	f3bf 8f6f 	isb	sy
 8008152:	f04f 0000 	mov.w	r0, #0
 8008156:	f380 8811 	msr	BASEPRI, r0
 800815a:	4770      	bx	lr
 800815c:	f3af 8000 	nop.w

08008160 <pxCurrentTCBConst2>:
 8008160:	200007b0 	.word	0x200007b0

08008164 <vPortEnterCritical>:
 8008164:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008168:	f383 8811 	msr	BASEPRI, r3
 800816c:	f3bf 8f6f 	isb	sy
 8008170:	f3bf 8f4f 	dsb	sy
 8008174:	4a0b      	ldr	r2, [pc, #44]	@ (80081a4 <vPortEnterCritical+0x40>)
 8008176:	6813      	ldr	r3, [r2, #0]
 8008178:	3301      	adds	r3, #1
 800817a:	2b01      	cmp	r3, #1
 800817c:	6013      	str	r3, [r2, #0]
 800817e:	d000      	beq.n	8008182 <vPortEnterCritical+0x1e>
 8008180:	4770      	bx	lr
 8008182:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8008186:	f8d3 3d04 	ldr.w	r3, [r3, #3332]	@ 0xd04
 800818a:	b2db      	uxtb	r3, r3
 800818c:	2b00      	cmp	r3, #0
 800818e:	d0f7      	beq.n	8008180 <vPortEnterCritical+0x1c>
 8008190:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008194:	f383 8811 	msr	BASEPRI, r3
 8008198:	f3bf 8f6f 	isb	sy
 800819c:	f3bf 8f4f 	dsb	sy
 80081a0:	e7fe      	b.n	80081a0 <vPortEnterCritical+0x3c>
 80081a2:	bf00      	nop
 80081a4:	20000010 	.word	0x20000010

080081a8 <vPortExitCritical>:
 80081a8:	4a08      	ldr	r2, [pc, #32]	@ (80081cc <vPortExitCritical+0x24>)
 80081aa:	6813      	ldr	r3, [r2, #0]
 80081ac:	b943      	cbnz	r3, 80081c0 <vPortExitCritical+0x18>
 80081ae:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80081b2:	f383 8811 	msr	BASEPRI, r3
 80081b6:	f3bf 8f6f 	isb	sy
 80081ba:	f3bf 8f4f 	dsb	sy
 80081be:	e7fe      	b.n	80081be <vPortExitCritical+0x16>
 80081c0:	3b01      	subs	r3, #1
 80081c2:	6013      	str	r3, [r2, #0]
 80081c4:	b90b      	cbnz	r3, 80081ca <vPortExitCritical+0x22>
 80081c6:	f383 8811 	msr	BASEPRI, r3
 80081ca:	4770      	bx	lr
 80081cc:	20000010 	.word	0x20000010

080081d0 <PendSV_Handler>:
 80081d0:	f3ef 8009 	mrs	r0, PSP
 80081d4:	f3bf 8f6f 	isb	sy
 80081d8:	4b15      	ldr	r3, [pc, #84]	@ (8008230 <pxCurrentTCBConst>)
 80081da:	681a      	ldr	r2, [r3, #0]
 80081dc:	f01e 0f10 	tst.w	lr, #16
 80081e0:	bf08      	it	eq
 80081e2:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 80081e6:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80081ea:	6010      	str	r0, [r2, #0]
 80081ec:	e92d 0009 	stmdb	sp!, {r0, r3}
 80081f0:	f04f 0050 	mov.w	r0, #80	@ 0x50
 80081f4:	f380 8811 	msr	BASEPRI, r0
 80081f8:	f3bf 8f4f 	dsb	sy
 80081fc:	f3bf 8f6f 	isb	sy
 8008200:	f7ff f970 	bl	80074e4 <vTaskSwitchContext>
 8008204:	f04f 0000 	mov.w	r0, #0
 8008208:	f380 8811 	msr	BASEPRI, r0
 800820c:	bc09      	pop	{r0, r3}
 800820e:	6819      	ldr	r1, [r3, #0]
 8008210:	6808      	ldr	r0, [r1, #0]
 8008212:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008216:	f01e 0f10 	tst.w	lr, #16
 800821a:	bf08      	it	eq
 800821c:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 8008220:	f380 8809 	msr	PSP, r0
 8008224:	f3bf 8f6f 	isb	sy
 8008228:	4770      	bx	lr
 800822a:	bf00      	nop
 800822c:	f3af 8000 	nop.w

08008230 <pxCurrentTCBConst>:
 8008230:	200007b0 	.word	0x200007b0

08008234 <xPortSysTickHandler>:
 8008234:	b508      	push	{r3, lr}
 8008236:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800823a:	f383 8811 	msr	BASEPRI, r3
 800823e:	f3bf 8f6f 	isb	sy
 8008242:	f3bf 8f4f 	dsb	sy
 8008246:	f7fe ffcf 	bl	80071e8 <xTaskIncrementTick>
 800824a:	b128      	cbz	r0, 8008258 <xPortSysTickHandler+0x24>
 800824c:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8008250:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8008254:	f8c3 2d04 	str.w	r2, [r3, #3332]	@ 0xd04
 8008258:	2300      	movs	r3, #0
 800825a:	f383 8811 	msr	BASEPRI, r3
 800825e:	bd08      	pop	{r3, pc}

08008260 <vPortSetupTimerInterrupt>:
 8008260:	f04f 22e0 	mov.w	r2, #3758153728	@ 0xe000e000
 8008264:	2300      	movs	r3, #0
 8008266:	4806      	ldr	r0, [pc, #24]	@ (8008280 <vPortSetupTimerInterrupt+0x20>)
 8008268:	6113      	str	r3, [r2, #16]
 800826a:	4906      	ldr	r1, [pc, #24]	@ (8008284 <vPortSetupTimerInterrupt+0x24>)
 800826c:	6193      	str	r3, [r2, #24]
 800826e:	6803      	ldr	r3, [r0, #0]
 8008270:	2007      	movs	r0, #7
 8008272:	fba1 1303 	umull	r1, r3, r1, r3
 8008276:	099b      	lsrs	r3, r3, #6
 8008278:	3b01      	subs	r3, #1
 800827a:	6153      	str	r3, [r2, #20]
 800827c:	6110      	str	r0, [r2, #16]
 800827e:	4770      	bx	lr
 8008280:	20000004 	.word	0x20000004
 8008284:	10624dd3 	.word	0x10624dd3

08008288 <xPortStartScheduler>:
 8008288:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 800828c:	4a3d      	ldr	r2, [pc, #244]	@ (8008384 <xPortStartScheduler+0xfc>)
 800828e:	f8d3 1d00 	ldr.w	r1, [r3, #3328]	@ 0xd00
 8008292:	4291      	cmp	r1, r2
 8008294:	d041      	beq.n	800831a <xPortStartScheduler+0x92>
 8008296:	f8d3 2d00 	ldr.w	r2, [r3, #3328]	@ 0xd00
 800829a:	4b3b      	ldr	r3, [pc, #236]	@ (8008388 <xPortStartScheduler+0x100>)
 800829c:	429a      	cmp	r2, r3
 800829e:	d033      	beq.n	8008308 <xPortStartScheduler+0x80>
 80082a0:	4b3a      	ldr	r3, [pc, #232]	@ (800838c <xPortStartScheduler+0x104>)
 80082a2:	f04f 0cff 	mov.w	ip, #255	@ 0xff
 80082a6:	483a      	ldr	r0, [pc, #232]	@ (8008390 <xPortStartScheduler+0x108>)
 80082a8:	493a      	ldr	r1, [pc, #232]	@ (8008394 <xPortStartScheduler+0x10c>)
 80082aa:	b530      	push	{r4, r5, lr}
 80082ac:	781a      	ldrb	r2, [r3, #0]
 80082ae:	b083      	sub	sp, #12
 80082b0:	b2d2      	uxtb	r2, r2
 80082b2:	9201      	str	r2, [sp, #4]
 80082b4:	2207      	movs	r2, #7
 80082b6:	f883 c000 	strb.w	ip, [r3]
 80082ba:	781b      	ldrb	r3, [r3, #0]
 80082bc:	6002      	str	r2, [r0, #0]
 80082be:	b2db      	uxtb	r3, r3
 80082c0:	f88d 3003 	strb.w	r3, [sp, #3]
 80082c4:	f89d 3003 	ldrb.w	r3, [sp, #3]
 80082c8:	f89d 2003 	ldrb.w	r2, [sp, #3]
 80082cc:	f003 0350 	and.w	r3, r3, #80	@ 0x50
 80082d0:	0612      	lsls	r2, r2, #24
 80082d2:	700b      	strb	r3, [r1, #0]
 80082d4:	d50f      	bpl.n	80082f6 <xPortStartScheduler+0x6e>
 80082d6:	2206      	movs	r2, #6
 80082d8:	f89d 3003 	ldrb.w	r3, [sp, #3]
 80082dc:	4611      	mov	r1, r2
 80082de:	3a01      	subs	r2, #1
 80082e0:	005b      	lsls	r3, r3, #1
 80082e2:	b2db      	uxtb	r3, r3
 80082e4:	f88d 3003 	strb.w	r3, [sp, #3]
 80082e8:	f89d 3003 	ldrb.w	r3, [sp, #3]
 80082ec:	061b      	lsls	r3, r3, #24
 80082ee:	d4f3      	bmi.n	80082d8 <xPortStartScheduler+0x50>
 80082f0:	2903      	cmp	r1, #3
 80082f2:	d01b      	beq.n	800832c <xPortStartScheduler+0xa4>
 80082f4:	6001      	str	r1, [r0, #0]
 80082f6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80082fa:	f383 8811 	msr	BASEPRI, r3
 80082fe:	f3bf 8f6f 	isb	sy
 8008302:	f3bf 8f4f 	dsb	sy
 8008306:	e7fe      	b.n	8008306 <xPortStartScheduler+0x7e>
 8008308:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800830c:	f383 8811 	msr	BASEPRI, r3
 8008310:	f3bf 8f6f 	isb	sy
 8008314:	f3bf 8f4f 	dsb	sy
 8008318:	e7fe      	b.n	8008318 <xPortStartScheduler+0x90>
 800831a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800831e:	f383 8811 	msr	BASEPRI, r3
 8008322:	f3bf 8f6f 	isb	sy
 8008326:	f3bf 8f4f 	dsb	sy
 800832a:	e7fe      	b.n	800832a <xPortStartScheduler+0xa2>
 800832c:	9b01      	ldr	r3, [sp, #4]
 800832e:	f04f 24e0 	mov.w	r4, #3758153728	@ 0xe000e000
 8008332:	4a16      	ldr	r2, [pc, #88]	@ (800838c <xPortStartScheduler+0x104>)
 8008334:	f44f 7140 	mov.w	r1, #768	@ 0x300
 8008338:	b2db      	uxtb	r3, r3
 800833a:	2500      	movs	r5, #0
 800833c:	6001      	str	r1, [r0, #0]
 800833e:	7013      	strb	r3, [r2, #0]
 8008340:	f8d4 3d20 	ldr.w	r3, [r4, #3360]	@ 0xd20
 8008344:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 8008348:	f8c4 3d20 	str.w	r3, [r4, #3360]	@ 0xd20
 800834c:	f8d4 3d20 	ldr.w	r3, [r4, #3360]	@ 0xd20
 8008350:	f043 4370 	orr.w	r3, r3, #4026531840	@ 0xf0000000
 8008354:	f8c4 3d20 	str.w	r3, [r4, #3360]	@ 0xd20
 8008358:	f7ff ff82 	bl	8008260 <vPortSetupTimerInterrupt>
 800835c:	4b0e      	ldr	r3, [pc, #56]	@ (8008398 <xPortStartScheduler+0x110>)
 800835e:	601d      	str	r5, [r3, #0]
 8008360:	f7ff fea6 	bl	80080b0 <vPortEnableVFP>
 8008364:	f8d4 3f34 	ldr.w	r3, [r4, #3892]	@ 0xf34
 8008368:	f043 4340 	orr.w	r3, r3, #3221225472	@ 0xc0000000
 800836c:	f8c4 3f34 	str.w	r3, [r4, #3892]	@ 0xf34
 8008370:	f7ff fe8a 	bl	8008088 <prvPortStartFirstTask>
 8008374:	f7ff f8b6 	bl	80074e4 <vTaskSwitchContext>
 8008378:	4628      	mov	r0, r5
 800837a:	f7ff fea3 	bl	80080c4 <prvTaskExitError>
 800837e:	b003      	add	sp, #12
 8008380:	bd30      	pop	{r4, r5, pc}
 8008382:	bf00      	nop
 8008384:	410fc271 	.word	0x410fc271
 8008388:	410fc270 	.word	0x410fc270
 800838c:	e000e400 	.word	0xe000e400
 8008390:	20000fbc 	.word	0x20000fbc
 8008394:	20000fc0 	.word	0x20000fc0
 8008398:	20000010 	.word	0x20000010

0800839c <vPortValidateInterruptPriority>:
 800839c:	f3ef 8305 	mrs	r3, IPSR
 80083a0:	2b0f      	cmp	r3, #15
 80083a2:	d90e      	bls.n	80083c2 <vPortValidateInterruptPriority+0x26>
 80083a4:	4911      	ldr	r1, [pc, #68]	@ (80083ec <vPortValidateInterruptPriority+0x50>)
 80083a6:	4a12      	ldr	r2, [pc, #72]	@ (80083f0 <vPortValidateInterruptPriority+0x54>)
 80083a8:	5c5b      	ldrb	r3, [r3, r1]
 80083aa:	7812      	ldrb	r2, [r2, #0]
 80083ac:	429a      	cmp	r2, r3
 80083ae:	d908      	bls.n	80083c2 <vPortValidateInterruptPriority+0x26>
 80083b0:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80083b4:	f383 8811 	msr	BASEPRI, r3
 80083b8:	f3bf 8f6f 	isb	sy
 80083bc:	f3bf 8f4f 	dsb	sy
 80083c0:	e7fe      	b.n	80083c0 <vPortValidateInterruptPriority+0x24>
 80083c2:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 80083c6:	4a0b      	ldr	r2, [pc, #44]	@ (80083f4 <vPortValidateInterruptPriority+0x58>)
 80083c8:	f8d3 3d0c 	ldr.w	r3, [r3, #3340]	@ 0xd0c
 80083cc:	6812      	ldr	r2, [r2, #0]
 80083ce:	f403 63e0 	and.w	r3, r3, #1792	@ 0x700
 80083d2:	4293      	cmp	r3, r2
 80083d4:	d908      	bls.n	80083e8 <vPortValidateInterruptPriority+0x4c>
 80083d6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80083da:	f383 8811 	msr	BASEPRI, r3
 80083de:	f3bf 8f6f 	isb	sy
 80083e2:	f3bf 8f4f 	dsb	sy
 80083e6:	e7fe      	b.n	80083e6 <vPortValidateInterruptPriority+0x4a>
 80083e8:	4770      	bx	lr
 80083ea:	bf00      	nop
 80083ec:	e000e3f0 	.word	0xe000e3f0
 80083f0:	20000fc0 	.word	0x20000fc0
 80083f4:	20000fbc 	.word	0x20000fbc

080083f8 <SystemClock_Config>:
 80083f8:	b510      	push	{r4, lr}
 80083fa:	b09e      	sub	sp, #120	@ 0x78
 80083fc:	224c      	movs	r2, #76	@ 0x4c
 80083fe:	2100      	movs	r1, #0
 8008400:	a80a      	add	r0, sp, #40	@ 0x28
 8008402:	f003 f85b 	bl	800b4bc <memset>
 8008406:	2220      	movs	r2, #32
 8008408:	2100      	movs	r1, #0
 800840a:	a802      	add	r0, sp, #8
 800840c:	f003 f856 	bl	800b4bc <memset>
 8008410:	2002      	movs	r0, #2
 8008412:	f7fc fddb 	bl	8004fcc <HAL_PWREx_ConfigSupply>
 8008416:	4a24      	ldr	r2, [pc, #144]	@ (80084a8 <SystemClock_Config+0xb0>)
 8008418:	2100      	movs	r1, #0
 800841a:	4b24      	ldr	r3, [pc, #144]	@ (80084ac <SystemClock_Config+0xb4>)
 800841c:	9101      	str	r1, [sp, #4]
 800841e:	6991      	ldr	r1, [r2, #24]
 8008420:	f441 4140 	orr.w	r1, r1, #49152	@ 0xc000
 8008424:	6191      	str	r1, [r2, #24]
 8008426:	6991      	ldr	r1, [r2, #24]
 8008428:	f401 4140 	and.w	r1, r1, #49152	@ 0xc000
 800842c:	9101      	str	r1, [sp, #4]
 800842e:	6ad9      	ldr	r1, [r3, #44]	@ 0x2c
 8008430:	f041 0101 	orr.w	r1, r1, #1
 8008434:	62d9      	str	r1, [r3, #44]	@ 0x2c
 8008436:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8008438:	f003 0301 	and.w	r3, r3, #1
 800843c:	9301      	str	r3, [sp, #4]
 800843e:	9b01      	ldr	r3, [sp, #4]
 8008440:	6993      	ldr	r3, [r2, #24]
 8008442:	049b      	lsls	r3, r3, #18
 8008444:	d5fc      	bpl.n	8008440 <SystemClock_Config+0x48>
 8008446:	2001      	movs	r0, #1
 8008448:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
 800844c:	2302      	movs	r3, #2
 800844e:	2200      	movs	r2, #0
 8008450:	2408      	movs	r4, #8
 8008452:	9319      	str	r3, [sp, #100]	@ 0x64
 8008454:	941a      	str	r4, [sp, #104]	@ 0x68
 8008456:	e9cd 010a 	strd	r0, r1, [sp, #40]	@ 0x28
 800845a:	2105      	movs	r1, #5
 800845c:	a80a      	add	r0, sp, #40	@ 0x28
 800845e:	9115      	str	r1, [sp, #84]	@ 0x54
 8008460:	21c0      	movs	r1, #192	@ 0xc0
 8008462:	e9cd 3313 	strd	r3, r3, [sp, #76]	@ 0x4c
 8008466:	e9cd 3317 	strd	r3, r3, [sp, #92]	@ 0x5c
 800846a:	9116      	str	r1, [sp, #88]	@ 0x58
 800846c:	e9cd 221b 	strd	r2, r2, [sp, #108]	@ 0x6c
 8008470:	f7f9 f904 	bl	800167c <HAL_RCC_OscConfig>
 8008474:	4603      	mov	r3, r0
 8008476:	b108      	cbz	r0, 800847c <SystemClock_Config+0x84>
 8008478:	b672      	cpsid	i
 800847a:	e7fe      	b.n	800847a <SystemClock_Config+0x82>
 800847c:	213f      	movs	r1, #63	@ 0x3f
 800847e:	2240      	movs	r2, #64	@ 0x40
 8008480:	9304      	str	r3, [sp, #16]
 8008482:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8008486:	9102      	str	r1, [sp, #8]
 8008488:	2103      	movs	r1, #3
 800848a:	a802      	add	r0, sp, #8
 800848c:	9207      	str	r2, [sp, #28]
 800848e:	9103      	str	r1, [sp, #12]
 8008490:	2104      	movs	r1, #4
 8008492:	e9cd 4205 	strd	r4, r2, [sp, #20]
 8008496:	e9cd 3208 	strd	r3, r2, [sp, #32]
 800849a:	f7f9 fbff 	bl	8001c9c <HAL_RCC_ClockConfig>
 800849e:	b108      	cbz	r0, 80084a4 <SystemClock_Config+0xac>
 80084a0:	b672      	cpsid	i
 80084a2:	e7fe      	b.n	80084a2 <SystemClock_Config+0xaa>
 80084a4:	b01e      	add	sp, #120	@ 0x78
 80084a6:	bd10      	pop	{r4, pc}
 80084a8:	58024800 	.word	0x58024800
 80084ac:	58000400 	.word	0x58000400

080084b0 <PeriphCommonClock_Config>:
 80084b0:	b500      	push	{lr}
 80084b2:	b0b1      	sub	sp, #196	@ 0xc4
 80084b4:	22a0      	movs	r2, #160	@ 0xa0
 80084b6:	2100      	movs	r1, #0
 80084b8:	a808      	add	r0, sp, #32
 80084ba:	f002 ffff 	bl	800b4bc <memset>
 80084be:	2264      	movs	r2, #100	@ 0x64
 80084c0:	2305      	movs	r3, #5
 80084c2:	2104      	movs	r1, #4
 80084c4:	9203      	str	r2, [sp, #12]
 80084c6:	f04f 5200 	mov.w	r2, #536870912	@ 0x20000000
 80084ca:	4668      	mov	r0, sp
 80084cc:	9302      	str	r3, [sp, #8]
 80084ce:	921c      	str	r2, [sp, #112]	@ 0x70
 80084d0:	ed9f 7b09 	vldr	d7, [pc, #36]	@ 80084f8 <PeriphCommonClock_Config+0x48>
 80084d4:	e9cd 3104 	strd	r3, r1, [sp, #16]
 80084d8:	ed8d 7b00 	vstr	d7, [sp]
 80084dc:	ed9f 7b08 	vldr	d7, [pc, #32]	@ 8008500 <PeriphCommonClock_Config+0x50>
 80084e0:	ed8d 7b06 	vstr	d7, [sp, #24]
 80084e4:	f7f9 fe74 	bl	80021d0 <HAL_RCCEx_PeriphCLKConfig>
 80084e8:	b108      	cbz	r0, 80084ee <PeriphCommonClock_Config+0x3e>
 80084ea:	b672      	cpsid	i
 80084ec:	e7fe      	b.n	80084ec <PeriphCommonClock_Config+0x3c>
 80084ee:	b031      	add	sp, #196	@ 0xc4
 80084f0:	f85d fb04 	ldr.w	pc, [sp], #4
 80084f4:	f3af 8000 	nop.w
 80084f8:	00088000 	.word	0x00088000
 80084fc:	00000000 	.word	0x00000000
 8008500:	00000002 	.word	0x00000002
 8008504:	00000080 	.word	0x00000080

08008508 <main>:
 8008508:	b500      	push	{lr}
 800850a:	2400      	movs	r4, #0
 800850c:	b087      	sub	sp, #28
 800850e:	2501      	movs	r5, #1
 8008510:	e9cd 4402 	strd	r4, r4, [sp, #8]
 8008514:	e9cd 4404 	strd	r4, r4, [sp, #16]
 8008518:	f7fc fdd8 	bl	80050cc <HAL_MPU_Disable>
 800851c:	f248 721f 	movw	r2, #34591	@ 0x871f
 8008520:	f240 1301 	movw	r3, #257	@ 0x101
 8008524:	a802      	add	r0, sp, #8
 8008526:	f8ad 5008 	strh.w	r5, [sp, #8]
 800852a:	9305      	str	r3, [sp, #20]
 800852c:	e9cd 4203 	strd	r4, r2, [sp, #12]
 8008530:	f7fc fdea 	bl	8005108 <HAL_MPU_ConfigRegion>
 8008534:	2004      	movs	r0, #4
 8008536:	f7fc fdd7 	bl	80050e8 <HAL_MPU_Enable>
 800853a:	f7fc fe15 	bl	8005168 <HAL_Init>
 800853e:	f7ff ff5b 	bl	80083f8 <SystemClock_Config>
 8008542:	f7ff ffb5 	bl	80084b0 <PeriphCommonClock_Config>
 8008546:	f000 fcaf 	bl	8008ea8 <dwt_delay_init>
 800854a:	f000 f833 	bl	80085b4 <MX_GPIO_Init>
 800854e:	f000 f91b 	bl	8008788 <MX_BDMA_Init>
 8008552:	f000 fa1d 	bl	8008990 <MX_LPUART1_UART_Init>
 8008556:	f000 f8bd 	bl	80086d4 <MX_ADC3_Init>
 800855a:	f000 f939 	bl	80087d0 <MX_FDCAN1_Init>
 800855e:	f000 f967 	bl	8008830 <MX_FDCAN2_Init>
 8008562:	f000 faf3 	bl	8008b4c <MX_TIM2_Init>
 8008566:	f000 fe87 	bl	8009278 <hal_uart_init>
 800856a:	f001 fe0d 	bl	800a188 <elog_init>
 800856e:	f002 f8b7 	bl	800a6e0 <elog_start>
 8008572:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8008576:	4623      	mov	r3, r4
 8008578:	4906      	ldr	r1, [pc, #24]	@ (8008594 <main+0x8c>)
 800857a:	4807      	ldr	r0, [pc, #28]	@ (8008598 <main+0x90>)
 800857c:	e9cd 5400 	strd	r5, r4, [sp]
 8008580:	f7fe fdae 	bl	80070e0 <xTaskCreate>
 8008584:	f7ff fbd8 	bl	8007d38 <osKernelInitialize>
 8008588:	f000 f894 	bl	80086b4 <MX_FREERTOS_Init>
 800858c:	f7ff fbe6 	bl	8007d5c <osKernelStart>
 8008590:	e7fe      	b.n	8008590 <main+0x88>
 8008592:	bf00      	nop
 8008594:	0800d684 	.word	0x0800d684
 8008598:	08009ec5 	.word	0x08009ec5

0800859c <HAL_TIM_PeriodElapsedCallback>:
 800859c:	4b03      	ldr	r3, [pc, #12]	@ (80085ac <HAL_TIM_PeriodElapsedCallback+0x10>)
 800859e:	6802      	ldr	r2, [r0, #0]
 80085a0:	429a      	cmp	r2, r3
 80085a2:	d000      	beq.n	80085a6 <HAL_TIM_PeriodElapsedCallback+0xa>
 80085a4:	4770      	bx	lr
 80085a6:	f7fc be0f 	b.w	80051c8 <HAL_IncTick>
 80085aa:	bf00      	nop
 80085ac:	40001400 	.word	0x40001400

080085b0 <Error_Handler>:
 80085b0:	b672      	cpsid	i
 80085b2:	e7fe      	b.n	80085b2 <Error_Handler+0x2>

080085b4 <MX_GPIO_Init>:
 80085b4:	b570      	push	{r4, r5, r6, lr}
 80085b6:	4b39      	ldr	r3, [pc, #228]	@ (800869c <MX_GPIO_Init+0xe8>)
 80085b8:	b08c      	sub	sp, #48	@ 0x30
 80085ba:	2400      	movs	r4, #0
 80085bc:	2201      	movs	r2, #1
 80085be:	4d38      	ldr	r5, [pc, #224]	@ (80086a0 <MX_GPIO_Init+0xec>)
 80085c0:	940a      	str	r4, [sp, #40]	@ 0x28
 80085c2:	4e38      	ldr	r6, [pc, #224]	@ (80086a4 <MX_GPIO_Init+0xf0>)
 80085c4:	4628      	mov	r0, r5
 80085c6:	e9cd 4406 	strd	r4, r4, [sp, #24]
 80085ca:	e9cd 4408 	strd	r4, r4, [sp, #32]
 80085ce:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 80085d2:	f041 0110 	orr.w	r1, r1, #16
 80085d6:	f8c3 10e0 	str.w	r1, [r3, #224]	@ 0xe0
 80085da:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 80085de:	f001 0110 	and.w	r1, r1, #16
 80085e2:	9101      	str	r1, [sp, #4]
 80085e4:	9901      	ldr	r1, [sp, #4]
 80085e6:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 80085ea:	f041 0104 	orr.w	r1, r1, #4
 80085ee:	f8c3 10e0 	str.w	r1, [r3, #224]	@ 0xe0
 80085f2:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 80085f6:	f001 0104 	and.w	r1, r1, #4
 80085fa:	9102      	str	r1, [sp, #8]
 80085fc:	9902      	ldr	r1, [sp, #8]
 80085fe:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 8008602:	f041 0180 	orr.w	r1, r1, #128	@ 0x80
 8008606:	f8c3 10e0 	str.w	r1, [r3, #224]	@ 0xe0
 800860a:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 800860e:	f001 0180 	and.w	r1, r1, #128	@ 0x80
 8008612:	9103      	str	r1, [sp, #12]
 8008614:	9903      	ldr	r1, [sp, #12]
 8008616:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 800861a:	f041 0102 	orr.w	r1, r1, #2
 800861e:	f8c3 10e0 	str.w	r1, [r3, #224]	@ 0xe0
 8008622:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 8008626:	f001 0102 	and.w	r1, r1, #2
 800862a:	9104      	str	r1, [sp, #16]
 800862c:	9904      	ldr	r1, [sp, #16]
 800862e:	f8d3 10e0 	ldr.w	r1, [r3, #224]	@ 0xe0
 8008632:	4311      	orrs	r1, r2
 8008634:	f8c3 10e0 	str.w	r1, [r3, #224]	@ 0xe0
 8008638:	2140      	movs	r1, #64	@ 0x40
 800863a:	f8d3 30e0 	ldr.w	r3, [r3, #224]	@ 0xe0
 800863e:	4013      	ands	r3, r2
 8008640:	9305      	str	r3, [sp, #20]
 8008642:	9b05      	ldr	r3, [sp, #20]
 8008644:	f7fb f9ea 	bl	8003a1c <HAL_GPIO_WritePin>
 8008648:	2201      	movs	r2, #1
 800864a:	4630      	mov	r0, r6
 800864c:	2107      	movs	r1, #7
 800864e:	f7fb f9e5 	bl	8003a1c <HAL_GPIO_WritePin>
 8008652:	2340      	movs	r3, #64	@ 0x40
 8008654:	4628      	mov	r0, r5
 8008656:	2501      	movs	r5, #1
 8008658:	9306      	str	r3, [sp, #24]
 800865a:	2311      	movs	r3, #17
 800865c:	a906      	add	r1, sp, #24
 800865e:	9409      	str	r4, [sp, #36]	@ 0x24
 8008660:	e9cd 3507 	strd	r3, r5, [sp, #28]
 8008664:	f7fb f886 	bl	8003774 <HAL_GPIO_Init>
 8008668:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
 800866c:	2300      	movs	r3, #0
 800866e:	a906      	add	r1, sp, #24
 8008670:	4630      	mov	r0, r6
 8008672:	9508      	str	r5, [sp, #32]
 8008674:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8008678:	f7fb f87c 	bl	8003774 <HAL_GPIO_Init>
 800867c:	2307      	movs	r3, #7
 800867e:	a906      	add	r1, sp, #24
 8008680:	4630      	mov	r0, r6
 8008682:	e9cd 3506 	strd	r3, r5, [sp, #24]
 8008686:	e9cd 4408 	strd	r4, r4, [sp, #32]
 800868a:	f7fb f873 	bl	8003774 <HAL_GPIO_Init>
 800868e:	4621      	mov	r1, r4
 8008690:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
 8008694:	f7fc fdb0 	bl	80051f8 <HAL_SYSCFG_AnalogSwitchConfig>
 8008698:	b00c      	add	sp, #48	@ 0x30
 800869a:	bd70      	pop	{r4, r5, r6, pc}
 800869c:	58024400 	.word	0x58024400
 80086a0:	58021000 	.word	0x58021000
 80086a4:	58020800 	.word	0x58020800

080086a8 <StartDefaultTask>:
 80086a8:	b508      	push	{r3, lr}
 80086aa:	2001      	movs	r0, #1
 80086ac:	f7ff fbb4 	bl	8007e18 <osDelay>
 80086b0:	e7fb      	b.n	80086aa <StartDefaultTask+0x2>
 80086b2:	bf00      	nop

080086b4 <MX_FREERTOS_Init>:
 80086b4:	b508      	push	{r3, lr}
 80086b6:	4a04      	ldr	r2, [pc, #16]	@ (80086c8 <MX_FREERTOS_Init+0x14>)
 80086b8:	2100      	movs	r1, #0
 80086ba:	4804      	ldr	r0, [pc, #16]	@ (80086cc <MX_FREERTOS_Init+0x18>)
 80086bc:	f7ff fb68 	bl	8007d90 <osThreadNew>
 80086c0:	4b03      	ldr	r3, [pc, #12]	@ (80086d0 <MX_FREERTOS_Init+0x1c>)
 80086c2:	6018      	str	r0, [r3, #0]
 80086c4:	bd08      	pop	{r3, pc}
 80086c6:	bf00      	nop
 80086c8:	0800dd3c 	.word	0x0800dd3c
 80086cc:	080086a9 	.word	0x080086a9
 80086d0:	20000fc4 	.word	0x20000fc4

080086d4 <MX_ADC3_Init>:
 80086d4:	b510      	push	{r4, lr}
 80086d6:	481d      	ldr	r0, [pc, #116]	@ (800874c <MX_ADC3_Init+0x78>)
 80086d8:	b088      	sub	sp, #32
 80086da:	2300      	movs	r3, #0
 80086dc:	2201      	movs	r2, #1
 80086de:	4c1c      	ldr	r4, [pc, #112]	@ (8008750 <MX_ADC3_Init+0x7c>)
 80086e0:	2104      	movs	r1, #4
 80086e2:	9301      	str	r3, [sp, #4]
 80086e4:	6004      	str	r4, [r0, #0]
 80086e6:	6101      	str	r1, [r0, #16]
 80086e8:	8283      	strh	r3, [r0, #20]
 80086ea:	6182      	str	r2, [r0, #24]
 80086ec:	7703      	strb	r3, [r0, #28]
 80086ee:	6343      	str	r3, [r0, #52]	@ 0x34
 80086f0:	f880 3038 	strb.w	r3, [r0, #56]	@ 0x38
 80086f4:	63c2      	str	r2, [r0, #60]	@ 0x3c
 80086f6:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80086fa:	e9c0 3309 	strd	r3, r3, [r0, #36]	@ 0x24
 80086fe:	e9c0 330b 	strd	r3, r3, [r0, #44]	@ 0x2c
 8008702:	e9cd 3302 	strd	r3, r3, [sp, #8]
 8008706:	e9cd 3304 	strd	r3, r3, [sp, #16]
 800870a:	e9cd 3306 	strd	r3, r3, [sp, #24]
 800870e:	f7f8 fe37 	bl	8001380 <HAL_ADC_Init>
 8008712:	b9a0      	cbnz	r0, 800873e <MX_ADC3_Init+0x6a>
 8008714:	480f      	ldr	r0, [pc, #60]	@ (8008754 <MX_ADC3_Init+0x80>)
 8008716:	2206      	movs	r2, #6
 8008718:	2300      	movs	r3, #0
 800871a:	f240 74ff 	movw	r4, #2047	@ 0x7ff
 800871e:	a901      	add	r1, sp, #4
 8008720:	f88d 301d 	strb.w	r3, [sp, #29]
 8008724:	e9cd 0201 	strd	r0, r2, [sp, #4]
 8008728:	2204      	movs	r2, #4
 800872a:	4808      	ldr	r0, [pc, #32]	@ (800874c <MX_ADC3_Init+0x78>)
 800872c:	e9cd 3403 	strd	r3, r4, [sp, #12]
 8008730:	e9cd 2305 	strd	r2, r3, [sp, #20]
 8008734:	f7f8 fb68 	bl	8000e08 <HAL_ADC_ConfigChannel>
 8008738:	b920      	cbnz	r0, 8008744 <MX_ADC3_Init+0x70>
 800873a:	b008      	add	sp, #32
 800873c:	bd10      	pop	{r4, pc}
 800873e:	f7ff ff37 	bl	80085b0 <Error_Handler>
 8008742:	e7e7      	b.n	8008714 <MX_ADC3_Init+0x40>
 8008744:	f7ff ff34 	bl	80085b0 <Error_Handler>
 8008748:	b008      	add	sp, #32
 800874a:	bd10      	pop	{r4, pc}
 800874c:	20000fc8 	.word	0x20000fc8
 8008750:	58026000 	.word	0x58026000
 8008754:	cb840000 	.word	0xcb840000

08008758 <HAL_ADC_MspInit>:
 8008758:	4b0a      	ldr	r3, [pc, #40]	@ (8008784 <HAL_ADC_MspInit+0x2c>)
 800875a:	6802      	ldr	r2, [r0, #0]
 800875c:	429a      	cmp	r2, r3
 800875e:	d000      	beq.n	8008762 <HAL_ADC_MspInit+0xa>
 8008760:	4770      	bx	lr
 8008762:	f5a3 53e0 	sub.w	r3, r3, #7168	@ 0x1c00
 8008766:	b082      	sub	sp, #8
 8008768:	f8d3 20e0 	ldr.w	r2, [r3, #224]	@ 0xe0
 800876c:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
 8008770:	f8c3 20e0 	str.w	r2, [r3, #224]	@ 0xe0
 8008774:	f8d3 30e0 	ldr.w	r3, [r3, #224]	@ 0xe0
 8008778:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 800877c:	9301      	str	r3, [sp, #4]
 800877e:	9b01      	ldr	r3, [sp, #4]
 8008780:	b002      	add	sp, #8
 8008782:	4770      	bx	lr
 8008784:	58026000 	.word	0x58026000

08008788 <MX_BDMA_Init>:
 8008788:	4b10      	ldr	r3, [pc, #64]	@ (80087cc <MX_BDMA_Init+0x44>)
 800878a:	2200      	movs	r2, #0
 800878c:	2105      	movs	r1, #5
 800878e:	2081      	movs	r0, #129	@ 0x81
 8008790:	b510      	push	{r4, lr}
 8008792:	f8d3 40e0 	ldr.w	r4, [r3, #224]	@ 0xe0
 8008796:	b082      	sub	sp, #8
 8008798:	f444 1400 	orr.w	r4, r4, #2097152	@ 0x200000
 800879c:	f8c3 40e0 	str.w	r4, [r3, #224]	@ 0xe0
 80087a0:	f8d3 30e0 	ldr.w	r3, [r3, #224]	@ 0xe0
 80087a4:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 80087a8:	9301      	str	r3, [sp, #4]
 80087aa:	9b01      	ldr	r3, [sp, #4]
 80087ac:	f7fc fc44 	bl	8005038 <HAL_NVIC_SetPriority>
 80087b0:	2081      	movs	r0, #129	@ 0x81
 80087b2:	f7fc fc7d 	bl	80050b0 <HAL_NVIC_EnableIRQ>
 80087b6:	2200      	movs	r2, #0
 80087b8:	2105      	movs	r1, #5
 80087ba:	2082      	movs	r0, #130	@ 0x82
 80087bc:	f7fc fc3c 	bl	8005038 <HAL_NVIC_SetPriority>
 80087c0:	2082      	movs	r0, #130	@ 0x82
 80087c2:	b002      	add	sp, #8
 80087c4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80087c8:	f7fc bc72 	b.w	80050b0 <HAL_NVIC_EnableIRQ>
 80087cc:	58024400 	.word	0x58024400

080087d0 <MX_FDCAN1_Init>:
 80087d0:	b538      	push	{r3, r4, r5, lr}
 80087d2:	4815      	ldr	r0, [pc, #84]	@ (8008828 <MX_FDCAN1_Init+0x58>)
 80087d4:	2201      	movs	r2, #1
 80087d6:	2402      	movs	r4, #2
 80087d8:	2300      	movs	r3, #0
 80087da:	2104      	movs	r1, #4
 80087dc:	4d13      	ldr	r5, [pc, #76]	@ (800882c <MX_FDCAN1_Init+0x5c>)
 80087de:	6204      	str	r4, [r0, #32]
 80087e0:	8203      	strh	r3, [r0, #16]
 80087e2:	7483      	strb	r3, [r0, #18]
 80087e4:	6005      	str	r5, [r0, #0]
 80087e6:	e9c0 2406 	strd	r2, r4, [r0, #24]
 80087ea:	2420      	movs	r4, #32
 80087ec:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80087f0:	e9c0 330d 	strd	r3, r3, [r0, #52]	@ 0x34
 80087f4:	e9c0 330f 	strd	r3, r3, [r0, #60]	@ 0x3c
 80087f8:	e9c0 1311 	strd	r1, r3, [r0, #68]	@ 0x44
 80087fc:	e9c0 1313 	strd	r1, r3, [r0, #76]	@ 0x4c
 8008800:	e9c0 1315 	strd	r1, r3, [r0, #84]	@ 0x54
 8008804:	e9c0 4317 	strd	r4, r3, [r0, #92]	@ 0x5c
 8008808:	e9c0 3119 	strd	r3, r1, [r0, #100]	@ 0x64
 800880c:	2332      	movs	r3, #50	@ 0x32
 800880e:	e9c0 2209 	strd	r2, r2, [r0, #36]	@ 0x24
 8008812:	e9c0 220b 	strd	r2, r2, [r0, #44]	@ 0x2c
 8008816:	6143      	str	r3, [r0, #20]
 8008818:	f7fc fcf8 	bl	800520c <HAL_FDCAN_Init>
 800881c:	b900      	cbnz	r0, 8008820 <MX_FDCAN1_Init+0x50>
 800881e:	bd38      	pop	{r3, r4, r5, pc}
 8008820:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8008824:	f7ff bec4 	b.w	80085b0 <Error_Handler>
 8008828:	200010d0 	.word	0x200010d0
 800882c:	4000a000 	.word	0x4000a000

08008830 <MX_FDCAN2_Init>:
 8008830:	b538      	push	{r3, r4, r5, lr}
 8008832:	4815      	ldr	r0, [pc, #84]	@ (8008888 <MX_FDCAN2_Init+0x58>)
 8008834:	2201      	movs	r2, #1
 8008836:	2402      	movs	r4, #2
 8008838:	2300      	movs	r3, #0
 800883a:	2104      	movs	r1, #4
 800883c:	4d13      	ldr	r5, [pc, #76]	@ (800888c <MX_FDCAN2_Init+0x5c>)
 800883e:	6204      	str	r4, [r0, #32]
 8008840:	8203      	strh	r3, [r0, #16]
 8008842:	7483      	strb	r3, [r0, #18]
 8008844:	6005      	str	r5, [r0, #0]
 8008846:	e9c0 2406 	strd	r2, r4, [r0, #24]
 800884a:	2420      	movs	r4, #32
 800884c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8008850:	e9c0 330d 	strd	r3, r3, [r0, #52]	@ 0x34
 8008854:	e9c0 330f 	strd	r3, r3, [r0, #60]	@ 0x3c
 8008858:	e9c0 1311 	strd	r1, r3, [r0, #68]	@ 0x44
 800885c:	e9c0 1313 	strd	r1, r3, [r0, #76]	@ 0x4c
 8008860:	e9c0 1315 	strd	r1, r3, [r0, #84]	@ 0x54
 8008864:	e9c0 4317 	strd	r4, r3, [r0, #92]	@ 0x5c
 8008868:	e9c0 3119 	strd	r3, r1, [r0, #100]	@ 0x64
 800886c:	2332      	movs	r3, #50	@ 0x32
 800886e:	e9c0 2209 	strd	r2, r2, [r0, #36]	@ 0x24
 8008872:	e9c0 220b 	strd	r2, r2, [r0, #44]	@ 0x2c
 8008876:	6143      	str	r3, [r0, #20]
 8008878:	f7fc fcc8 	bl	800520c <HAL_FDCAN_Init>
 800887c:	b900      	cbnz	r0, 8008880 <MX_FDCAN2_Init+0x50>
 800887e:	bd38      	pop	{r3, r4, r5, pc}
 8008880:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8008884:	f7ff be94 	b.w	80085b0 <Error_Handler>
 8008888:	20001030 	.word	0x20001030
 800888c:	4000a400 	.word	0x4000a400

08008890 <HAL_FDCAN_MspInit>:
 8008890:	4939      	ldr	r1, [pc, #228]	@ (8008978 <HAL_FDCAN_MspInit+0xe8>)
 8008892:	2300      	movs	r3, #0
 8008894:	6802      	ldr	r2, [r0, #0]
 8008896:	b510      	push	{r4, lr}
 8008898:	428a      	cmp	r2, r1
 800889a:	b08a      	sub	sp, #40	@ 0x28
 800889c:	e9cd 3304 	strd	r3, r3, [sp, #16]
 80088a0:	e9cd 3306 	strd	r3, r3, [sp, #24]
 80088a4:	9308      	str	r3, [sp, #32]
 80088a6:	d023      	beq.n	80088f0 <HAL_FDCAN_MspInit+0x60>
 80088a8:	4b34      	ldr	r3, [pc, #208]	@ (800897c <HAL_FDCAN_MspInit+0xec>)
 80088aa:	429a      	cmp	r2, r3
 80088ac:	d001      	beq.n	80088b2 <HAL_FDCAN_MspInit+0x22>
 80088ae:	b00a      	add	sp, #40	@ 0x28
 80088b0:	bd10      	pop	{r4, pc}
 80088b2:	4a33      	ldr	r2, [pc, #204]	@ (8008980 <HAL_FDCAN_MspInit+0xf0>)
 80088b4:	6813      	ldr	r3, [r2, #0]
 80088b6:	3301      	adds	r3, #1
 80088b8:	2b01      	cmp	r3, #1
 80088ba:	6013      	str	r3, [r2, #0]
 80088bc:	d045      	beq.n	800894a <HAL_FDCAN_MspInit+0xba>
 80088be:	4b31      	ldr	r3, [pc, #196]	@ (8008984 <HAL_FDCAN_MspInit+0xf4>)
 80088c0:	2409      	movs	r4, #9
 80088c2:	a904      	add	r1, sp, #16
 80088c4:	4830      	ldr	r0, [pc, #192]	@ (8008988 <HAL_FDCAN_MspInit+0xf8>)
 80088c6:	f8d3 20e0 	ldr.w	r2, [r3, #224]	@ 0xe0
 80088ca:	f042 0202 	orr.w	r2, r2, #2
 80088ce:	f8c3 20e0 	str.w	r2, [r3, #224]	@ 0xe0
 80088d2:	f8d3 30e0 	ldr.w	r3, [r3, #224]	@ 0xe0
 80088d6:	9408      	str	r4, [sp, #32]
 80088d8:	f003 0302 	and.w	r3, r3, #2
 80088dc:	ed9f 7b22 	vldr	d7, [pc, #136]	@ 8008968 <HAL_FDCAN_MspInit+0xd8>
 80088e0:	9303      	str	r3, [sp, #12]
 80088e2:	9b03      	ldr	r3, [sp, #12]
 80088e4:	ed8d 7b04 	vstr	d7, [sp, #16]
 80088e8:	f7fa ff44 	bl	8003774 <HAL_GPIO_Init>
 80088ec:	b00a      	add	sp, #40	@ 0x28
 80088ee:	bd10      	pop	{r4, pc}
 80088f0:	4a23      	ldr	r2, [pc, #140]	@ (8008980 <HAL_FDCAN_MspInit+0xf0>)
 80088f2:	6813      	ldr	r3, [r2, #0]
 80088f4:	3301      	adds	r3, #1
 80088f6:	2b01      	cmp	r3, #1
 80088f8:	6013      	str	r3, [r2, #0]
 80088fa:	d018      	beq.n	800892e <HAL_FDCAN_MspInit+0x9e>
 80088fc:	4b21      	ldr	r3, [pc, #132]	@ (8008984 <HAL_FDCAN_MspInit+0xf4>)
 80088fe:	2409      	movs	r4, #9
 8008900:	a904      	add	r1, sp, #16
 8008902:	4822      	ldr	r0, [pc, #136]	@ (800898c <HAL_FDCAN_MspInit+0xfc>)
 8008904:	f8d3 20e0 	ldr.w	r2, [r3, #224]	@ 0xe0
 8008908:	f042 0201 	orr.w	r2, r2, #1
 800890c:	f8c3 20e0 	str.w	r2, [r3, #224]	@ 0xe0
 8008910:	f8d3 30e0 	ldr.w	r3, [r3, #224]	@ 0xe0
 8008914:	9408      	str	r4, [sp, #32]
 8008916:	f003 0301 	and.w	r3, r3, #1
 800891a:	ed9f 7b15 	vldr	d7, [pc, #84]	@ 8008970 <HAL_FDCAN_MspInit+0xe0>
 800891e:	9301      	str	r3, [sp, #4]
 8008920:	9b01      	ldr	r3, [sp, #4]
 8008922:	ed8d 7b04 	vstr	d7, [sp, #16]
 8008926:	f7fa ff25 	bl	8003774 <HAL_GPIO_Init>
 800892a:	b00a      	add	sp, #40	@ 0x28
 800892c:	bd10      	pop	{r4, pc}
 800892e:	4b15      	ldr	r3, [pc, #84]	@ (8008984 <HAL_FDCAN_MspInit+0xf4>)
 8008930:	f8d3 20ec 	ldr.w	r2, [r3, #236]	@ 0xec
 8008934:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8008938:	f8c3 20ec 	str.w	r2, [r3, #236]	@ 0xec
 800893c:	f8d3 30ec 	ldr.w	r3, [r3, #236]	@ 0xec
 8008940:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8008944:	9300      	str	r3, [sp, #0]
 8008946:	9b00      	ldr	r3, [sp, #0]
 8008948:	e7d8      	b.n	80088fc <HAL_FDCAN_MspInit+0x6c>
 800894a:	4b0e      	ldr	r3, [pc, #56]	@ (8008984 <HAL_FDCAN_MspInit+0xf4>)
 800894c:	f8d3 20ec 	ldr.w	r2, [r3, #236]	@ 0xec
 8008950:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8008954:	f8c3 20ec 	str.w	r2, [r3, #236]	@ 0xec
 8008958:	f8d3 30ec 	ldr.w	r3, [r3, #236]	@ 0xec
 800895c:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8008960:	9302      	str	r3, [sp, #8]
 8008962:	9b02      	ldr	r3, [sp, #8]
 8008964:	e7ab      	b.n	80088be <HAL_FDCAN_MspInit+0x2e>
 8008966:	bf00      	nop
 8008968:	00003000 	.word	0x00003000
 800896c:	00000002 	.word	0x00000002
 8008970:	00001800 	.word	0x00001800
 8008974:	00000002 	.word	0x00000002
 8008978:	4000a000 	.word	0x4000a000
 800897c:	4000a400 	.word	0x4000a400
 8008980:	2000102c 	.word	0x2000102c
 8008984:	58024400 	.word	0x58024400
 8008988:	58020400 	.word	0x58020400
 800898c:	58020000 	.word	0x58020000

08008990 <MX_LPUART1_UART_Init>:
 8008990:	ed9f 7b21 	vldr	d7, [pc, #132]	@ 8008a18 <MX_LPUART1_UART_Init+0x88>
 8008994:	b510      	push	{r4, lr}
 8008996:	4822      	ldr	r0, [pc, #136]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 8008998:	2300      	movs	r3, #0
 800899a:	4c22      	ldr	r4, [pc, #136]	@ (8008a24 <MX_LPUART1_UART_Init+0x94>)
 800899c:	f44f 31e1 	mov.w	r1, #115200	@ 0x1c200
 80089a0:	220c      	movs	r2, #12
 80089a2:	6083      	str	r3, [r0, #8]
 80089a4:	6283      	str	r3, [r0, #40]	@ 0x28
 80089a6:	6643      	str	r3, [r0, #100]	@ 0x64
 80089a8:	e9c0 4100 	strd	r4, r1, [r0]
 80089ac:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80089b0:	e9c0 2305 	strd	r2, r3, [r0, #20]
 80089b4:	ed80 7b08 	vstr	d7, [r0, #32]
 80089b8:	f7fd fc06 	bl	80061c8 <HAL_UART_Init>
 80089bc:	b970      	cbnz	r0, 80089dc <MX_LPUART1_UART_Init+0x4c>
 80089be:	2100      	movs	r1, #0
 80089c0:	4817      	ldr	r0, [pc, #92]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 80089c2:	f7fd fd2d 	bl	8006420 <HAL_UARTEx_SetTxFifoThreshold>
 80089c6:	b988      	cbnz	r0, 80089ec <MX_LPUART1_UART_Init+0x5c>
 80089c8:	2100      	movs	r1, #0
 80089ca:	4815      	ldr	r0, [pc, #84]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 80089cc:	f7fd fd50 	bl	8006470 <HAL_UARTEx_SetRxFifoThreshold>
 80089d0:	b9a0      	cbnz	r0, 80089fc <MX_LPUART1_UART_Init+0x6c>
 80089d2:	4813      	ldr	r0, [pc, #76]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 80089d4:	f7fd fd06 	bl	80063e4 <HAL_UARTEx_DisableFifoMode>
 80089d8:	b9b8      	cbnz	r0, 8008a0a <MX_LPUART1_UART_Init+0x7a>
 80089da:	bd10      	pop	{r4, pc}
 80089dc:	f7ff fde8 	bl	80085b0 <Error_Handler>
 80089e0:	2100      	movs	r1, #0
 80089e2:	480f      	ldr	r0, [pc, #60]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 80089e4:	f7fd fd1c 	bl	8006420 <HAL_UARTEx_SetTxFifoThreshold>
 80089e8:	2800      	cmp	r0, #0
 80089ea:	d0ed      	beq.n	80089c8 <MX_LPUART1_UART_Init+0x38>
 80089ec:	f7ff fde0 	bl	80085b0 <Error_Handler>
 80089f0:	2100      	movs	r1, #0
 80089f2:	480b      	ldr	r0, [pc, #44]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 80089f4:	f7fd fd3c 	bl	8006470 <HAL_UARTEx_SetRxFifoThreshold>
 80089f8:	2800      	cmp	r0, #0
 80089fa:	d0ea      	beq.n	80089d2 <MX_LPUART1_UART_Init+0x42>
 80089fc:	f7ff fdd8 	bl	80085b0 <Error_Handler>
 8008a00:	4807      	ldr	r0, [pc, #28]	@ (8008a20 <MX_LPUART1_UART_Init+0x90>)
 8008a02:	f7fd fcef 	bl	80063e4 <HAL_UARTEx_DisableFifoMode>
 8008a06:	2800      	cmp	r0, #0
 8008a08:	d0e7      	beq.n	80089da <MX_LPUART1_UART_Init+0x4a>
 8008a0a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008a0e:	f7ff bdcf 	b.w	80085b0 <Error_Handler>
 8008a12:	bf00      	nop
 8008a14:	f3af 8000 	nop.w
	...
 8008a20:	20001260 	.word	0x20001260
 8008a24:	58000c00 	.word	0x58000c00

08008a28 <HAL_UART_MspInit>:
 8008a28:	b570      	push	{r4, r5, r6, lr}
 8008a2a:	b0b8      	sub	sp, #224	@ 0xe0
 8008a2c:	2100      	movs	r1, #0
 8008a2e:	4604      	mov	r4, r0
 8008a30:	22c0      	movs	r2, #192	@ 0xc0
 8008a32:	a808      	add	r0, sp, #32
 8008a34:	9106      	str	r1, [sp, #24]
 8008a36:	e9cd 1102 	strd	r1, r1, [sp, #8]
 8008a3a:	e9cd 1104 	strd	r1, r1, [sp, #16]
 8008a3e:	f002 fd3d 	bl	800b4bc <memset>
 8008a42:	4b3b      	ldr	r3, [pc, #236]	@ (8008b30 <HAL_UART_MspInit+0x108>)
 8008a44:	6822      	ldr	r2, [r4, #0]
 8008a46:	429a      	cmp	r2, r3
 8008a48:	d001      	beq.n	8008a4e <HAL_UART_MspInit+0x26>
 8008a4a:	b038      	add	sp, #224	@ 0xe0
 8008a4c:	bd70      	pop	{r4, r5, r6, pc}
 8008a4e:	2204      	movs	r2, #4
 8008a50:	2300      	movs	r3, #0
 8008a52:	a808      	add	r0, sp, #32
 8008a54:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8008a58:	f7f9 fbba 	bl	80021d0 <HAL_RCCEx_PeriphCLKConfig>
 8008a5c:	2800      	cmp	r0, #0
 8008a5e:	d15e      	bne.n	8008b1e <HAL_UART_MspInit+0xf6>
 8008a60:	4b34      	ldr	r3, [pc, #208]	@ (8008b34 <HAL_UART_MspInit+0x10c>)
 8008a62:	2003      	movs	r0, #3
 8008a64:	a902      	add	r1, sp, #8
 8008a66:	4e34      	ldr	r6, [pc, #208]	@ (8008b38 <HAL_UART_MspInit+0x110>)
 8008a68:	f8d3 20f4 	ldr.w	r2, [r3, #244]	@ 0xf4
 8008a6c:	f042 0208 	orr.w	r2, r2, #8
 8008a70:	f8c3 20f4 	str.w	r2, [r3, #244]	@ 0xf4
 8008a74:	f8d3 20f4 	ldr.w	r2, [r3, #244]	@ 0xf4
 8008a78:	f002 0208 	and.w	r2, r2, #8
 8008a7c:	9200      	str	r2, [sp, #0]
 8008a7e:	9a00      	ldr	r2, [sp, #0]
 8008a80:	f8d3 20e0 	ldr.w	r2, [r3, #224]	@ 0xe0
 8008a84:	f042 0201 	orr.w	r2, r2, #1
 8008a88:	f8c3 20e0 	str.w	r2, [r3, #224]	@ 0xe0
 8008a8c:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
 8008a90:	f8d3 30e0 	ldr.w	r3, [r3, #224]	@ 0xe0
 8008a94:	9006      	str	r0, [sp, #24]
 8008a96:	f003 0301 	and.w	r3, r3, #1
 8008a9a:	4828      	ldr	r0, [pc, #160]	@ (8008b3c <HAL_UART_MspInit+0x114>)
 8008a9c:	9301      	str	r3, [sp, #4]
 8008a9e:	2302      	movs	r3, #2
 8008aa0:	9d01      	ldr	r5, [sp, #4]
 8008aa2:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8008aa6:	2200      	movs	r2, #0
 8008aa8:	2300      	movs	r3, #0
 8008aaa:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8008aae:	f7fa fe61 	bl	8003774 <HAL_GPIO_Init>
 8008ab2:	4923      	ldr	r1, [pc, #140]	@ (8008b40 <HAL_UART_MspInit+0x118>)
 8008ab4:	220a      	movs	r2, #10
 8008ab6:	2300      	movs	r3, #0
 8008ab8:	4630      	mov	r0, r6
 8008aba:	60f3      	str	r3, [r6, #12]
 8008abc:	6173      	str	r3, [r6, #20]
 8008abe:	6233      	str	r3, [r6, #32]
 8008ac0:	e9c6 1200 	strd	r1, r2, [r6]
 8008ac4:	2140      	movs	r1, #64	@ 0x40
 8008ac6:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8008aca:	e9c6 3306 	strd	r3, r3, [r6, #24]
 8008ace:	60b1      	str	r1, [r6, #8]
 8008ad0:	6132      	str	r2, [r6, #16]
 8008ad2:	f7fb f9c7 	bl	8003e64 <HAL_DMA_Init>
 8008ad6:	bb40      	cbnz	r0, 8008b2a <HAL_UART_MspInit+0x102>
 8008ad8:	4d1a      	ldr	r5, [pc, #104]	@ (8008b44 <HAL_UART_MspInit+0x11c>)
 8008ada:	2300      	movs	r3, #0
 8008adc:	491a      	ldr	r1, [pc, #104]	@ (8008b48 <HAL_UART_MspInit+0x120>)
 8008ade:	2209      	movs	r2, #9
 8008ae0:	4628      	mov	r0, r5
 8008ae2:	67e6      	str	r6, [r4, #124]	@ 0x7c
 8008ae4:	63b4      	str	r4, [r6, #56]	@ 0x38
 8008ae6:	622b      	str	r3, [r5, #32]
 8008ae8:	e885 000e 	stmia.w	r5, {r1, r2, r3}
 8008aec:	f44f 6180 	mov.w	r1, #1024	@ 0x400
 8008af0:	f44f 7280 	mov.w	r2, #256	@ 0x100
 8008af4:	e9c5 3103 	strd	r3, r1, [r5, #12]
 8008af8:	e9c5 3305 	strd	r3, r3, [r5, #20]
 8008afc:	61ea      	str	r2, [r5, #28]
 8008afe:	f7fb f9b1 	bl	8003e64 <HAL_DMA_Init>
 8008b02:	b978      	cbnz	r0, 8008b24 <HAL_UART_MspInit+0xfc>
 8008b04:	2200      	movs	r2, #0
 8008b06:	2105      	movs	r1, #5
 8008b08:	208e      	movs	r0, #142	@ 0x8e
 8008b0a:	f8c4 5080 	str.w	r5, [r4, #128]	@ 0x80
 8008b0e:	63ac      	str	r4, [r5, #56]	@ 0x38
 8008b10:	f7fc fa92 	bl	8005038 <HAL_NVIC_SetPriority>
 8008b14:	208e      	movs	r0, #142	@ 0x8e
 8008b16:	f7fc facb 	bl	80050b0 <HAL_NVIC_EnableIRQ>
 8008b1a:	b038      	add	sp, #224	@ 0xe0
 8008b1c:	bd70      	pop	{r4, r5, r6, pc}
 8008b1e:	f7ff fd47 	bl	80085b0 <Error_Handler>
 8008b22:	e79d      	b.n	8008a60 <HAL_UART_MspInit+0x38>
 8008b24:	f7ff fd44 	bl	80085b0 <Error_Handler>
 8008b28:	e7ec      	b.n	8008b04 <HAL_UART_MspInit+0xdc>
 8008b2a:	f7ff fd41 	bl	80085b0 <Error_Handler>
 8008b2e:	e7d3      	b.n	8008ad8 <HAL_UART_MspInit+0xb0>
 8008b30:	58000c00 	.word	0x58000c00
 8008b34:	58024400 	.word	0x58024400
 8008b38:	200011e8 	.word	0x200011e8
 8008b3c:	58020000 	.word	0x58020000
 8008b40:	58025408 	.word	0x58025408
 8008b44:	20001170 	.word	0x20001170
 8008b48:	5802541c 	.word	0x5802541c

08008b4c <MX_TIM2_Init>:
 8008b4c:	b510      	push	{r4, lr}
 8008b4e:	2300      	movs	r3, #0
 8008b50:	b088      	sub	sp, #32
 8008b52:	4825      	ldr	r0, [pc, #148]	@ (8008be8 <MX_TIM2_Init+0x9c>)
 8008b54:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
 8008b58:	f04f 32ff 	mov.w	r2, #4294967295
 8008b5c:	9304      	str	r3, [sp, #16]
 8008b5e:	6001      	str	r1, [r0, #0]
 8008b60:	9301      	str	r3, [sp, #4]
 8008b62:	6183      	str	r3, [r0, #24]
 8008b64:	9307      	str	r3, [sp, #28]
 8008b66:	e9c0 3301 	strd	r3, r3, [r0, #4]
 8008b6a:	e9c0 2303 	strd	r2, r3, [r0, #12]
 8008b6e:	e9cd 3305 	strd	r3, r3, [sp, #20]
 8008b72:	e9cd 3302 	strd	r3, r3, [sp, #8]
 8008b76:	f7f8 f8b5 	bl	8000ce4 <HAL_TIM_Base_Init>
 8008b7a:	bb58      	cbnz	r0, 8008bd4 <MX_TIM2_Init+0x88>
 8008b7c:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8008b80:	a904      	add	r1, sp, #16
 8008b82:	4819      	ldr	r0, [pc, #100]	@ (8008be8 <MX_TIM2_Init+0x9c>)
 8008b84:	9304      	str	r3, [sp, #16]
 8008b86:	f7f7 febd 	bl	8000904 <HAL_TIM_ConfigClockSource>
 8008b8a:	bb48      	cbnz	r0, 8008be0 <MX_TIM2_Init+0x94>
 8008b8c:	2300      	movs	r3, #0
 8008b8e:	a901      	add	r1, sp, #4
 8008b90:	4815      	ldr	r0, [pc, #84]	@ (8008be8 <MX_TIM2_Init+0x9c>)
 8008b92:	9301      	str	r3, [sp, #4]
 8008b94:	9303      	str	r3, [sp, #12]
 8008b96:	f7f8 f8d7 	bl	8000d48 <HAL_TIMEx_MasterConfigSynchronization>
 8008b9a:	b9f0      	cbnz	r0, 8008bda <MX_TIM2_Init+0x8e>
 8008b9c:	f7f9 f85c 	bl	8001c58 <HAL_RCC_GetSysClockFreq>
 8008ba0:	4604      	mov	r4, r0
 8008ba2:	f7f9 f9e5 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8008ba6:	4284      	cmp	r4, r0
 8008ba8:	d20c      	bcs.n	8008bc4 <MX_TIM2_Init+0x78>
 8008baa:	f7f9 f9e1 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8008bae:	4b0f      	ldr	r3, [pc, #60]	@ (8008bec <MX_TIM2_Init+0xa0>)
 8008bb0:	fba3 2300 	umull	r2, r3, r3, r0
 8008bb4:	0c9b      	lsrs	r3, r3, #18
 8008bb6:	4a0e      	ldr	r2, [pc, #56]	@ (8008bf0 <MX_TIM2_Init+0xa4>)
 8008bb8:	480b      	ldr	r0, [pc, #44]	@ (8008be8 <MX_TIM2_Init+0x9c>)
 8008bba:	6013      	str	r3, [r2, #0]
 8008bbc:	f7f7 fe02 	bl	80007c4 <HAL_TIM_Base_Start>
 8008bc0:	b008      	add	sp, #32
 8008bc2:	bd10      	pop	{r4, pc}
 8008bc4:	f7f9 f9d4 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8008bc8:	4a08      	ldr	r2, [pc, #32]	@ (8008bec <MX_TIM2_Init+0xa0>)
 8008bca:	0043      	lsls	r3, r0, #1
 8008bcc:	fba2 2303 	umull	r2, r3, r2, r3
 8008bd0:	0c9b      	lsrs	r3, r3, #18
 8008bd2:	e7f0      	b.n	8008bb6 <MX_TIM2_Init+0x6a>
 8008bd4:	f7ff fcec 	bl	80085b0 <Error_Handler>
 8008bd8:	e7d0      	b.n	8008b7c <MX_TIM2_Init+0x30>
 8008bda:	f7ff fce9 	bl	80085b0 <Error_Handler>
 8008bde:	e7dd      	b.n	8008b9c <MX_TIM2_Init+0x50>
 8008be0:	f7ff fce6 	bl	80085b0 <Error_Handler>
 8008be4:	e7d2      	b.n	8008b8c <MX_TIM2_Init+0x40>
 8008be6:	bf00      	nop
 8008be8:	20001330 	.word	0x20001330
 8008bec:	431bde83 	.word	0x431bde83
 8008bf0:	2000137c 	.word	0x2000137c

08008bf4 <HAL_TIM_Base_MspInit>:
 8008bf4:	6803      	ldr	r3, [r0, #0]
 8008bf6:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8008bfa:	d000      	beq.n	8008bfe <HAL_TIM_Base_MspInit+0xa>
 8008bfc:	4770      	bx	lr
 8008bfe:	4b08      	ldr	r3, [pc, #32]	@ (8008c20 <HAL_TIM_Base_MspInit+0x2c>)
 8008c00:	b082      	sub	sp, #8
 8008c02:	f8d3 20e8 	ldr.w	r2, [r3, #232]	@ 0xe8
 8008c06:	f042 0201 	orr.w	r2, r2, #1
 8008c0a:	f8c3 20e8 	str.w	r2, [r3, #232]	@ 0xe8
 8008c0e:	f8d3 30e8 	ldr.w	r3, [r3, #232]	@ 0xe8
 8008c12:	f003 0301 	and.w	r3, r3, #1
 8008c16:	9301      	str	r3, [sp, #4]
 8008c18:	9b01      	ldr	r3, [sp, #4]
 8008c1a:	b002      	add	sp, #8
 8008c1c:	4770      	bx	lr
 8008c1e:	bf00      	nop
 8008c20:	58024400 	.word	0x58024400

08008c24 <delay_us>:
 8008c24:	b1f8      	cbz	r0, 8008c66 <delay_us+0x42>
 8008c26:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 8008c2a:	fb03 f000 	mul.w	r0, r3, r0
 8008c2e:	f5b0 7f96 	cmp.w	r0, #300	@ 0x12c
 8008c32:	d919      	bls.n	8008c68 <delay_us+0x44>
 8008c34:	4b0d      	ldr	r3, [pc, #52]	@ (8008c6c <delay_us+0x48>)
 8008c36:	f5a0 7096 	sub.w	r0, r0, #300	@ 0x12c
 8008c3a:	4a0d      	ldr	r2, [pc, #52]	@ (8008c70 <delay_us+0x4c>)
 8008c3c:	681b      	ldr	r3, [r3, #0]
 8008c3e:	fb03 f000 	mul.w	r0, r3, r0
 8008c42:	fba2 3200 	umull	r3, r2, r2, r0
 8008c46:	f5b0 7f7a 	cmp.w	r0, #1000	@ 0x3e8
 8008c4a:	ea4f 1292 	mov.w	r2, r2, lsr #6
 8008c4e:	d30b      	bcc.n	8008c68 <delay_us+0x44>
 8008c50:	4b08      	ldr	r3, [pc, #32]	@ (8008c74 <delay_us+0x50>)
 8008c52:	6819      	ldr	r1, [r3, #0]
 8008c54:	6a48      	ldr	r0, [r1, #36]	@ 0x24
 8008c56:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
 8008c58:	1a1b      	subs	r3, r3, r0
 8008c5a:	4293      	cmp	r3, r2
 8008c5c:	d203      	bcs.n	8008c66 <delay_us+0x42>
 8008c5e:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
 8008c60:	1a1b      	subs	r3, r3, r0
 8008c62:	4293      	cmp	r3, r2
 8008c64:	d3fb      	bcc.n	8008c5e <delay_us+0x3a>
 8008c66:	4770      	bx	lr
 8008c68:	bf00      	nop
 8008c6a:	4770      	bx	lr
 8008c6c:	2000137c 	.word	0x2000137c
 8008c70:	10624dd3 	.word	0x10624dd3
 8008c74:	20001330 	.word	0x20001330

08008c78 <NMI_Handler>:
 8008c78:	e7fe      	b.n	8008c78 <NMI_Handler>
 8008c7a:	bf00      	nop

08008c7c <HardFault_Handler>:
 8008c7c:	e7fe      	b.n	8008c7c <HardFault_Handler>
 8008c7e:	bf00      	nop

08008c80 <MemManage_Handler>:
 8008c80:	e7fe      	b.n	8008c80 <MemManage_Handler>
 8008c82:	bf00      	nop

08008c84 <BusFault_Handler>:
 8008c84:	e7fe      	b.n	8008c84 <BusFault_Handler>
 8008c86:	bf00      	nop

08008c88 <UsageFault_Handler>:
 8008c88:	e7fe      	b.n	8008c88 <UsageFault_Handler>
 8008c8a:	bf00      	nop

08008c8c <DebugMon_Handler>:
 8008c8c:	4770      	bx	lr
 8008c8e:	bf00      	nop

08008c90 <TIM7_IRQHandler>:
 8008c90:	4801      	ldr	r0, [pc, #4]	@ (8008c98 <TIM7_IRQHandler+0x8>)
 8008c92:	f7f7 bf07 	b.w	8000aa4 <HAL_TIM_IRQHandler>
 8008c96:	bf00      	nop
 8008c98:	20001380 	.word	0x20001380

08008c9c <BDMA_Channel0_IRQHandler>:
 8008c9c:	4801      	ldr	r0, [pc, #4]	@ (8008ca4 <BDMA_Channel0_IRQHandler+0x8>)
 8008c9e:	f7fb bf83 	b.w	8004ba8 <HAL_DMA_IRQHandler>
 8008ca2:	bf00      	nop
 8008ca4:	200011e8 	.word	0x200011e8

08008ca8 <BDMA_Channel1_IRQHandler>:
 8008ca8:	4801      	ldr	r0, [pc, #4]	@ (8008cb0 <BDMA_Channel1_IRQHandler+0x8>)
 8008caa:	f7fb bf7d 	b.w	8004ba8 <HAL_DMA_IRQHandler>
 8008cae:	bf00      	nop
 8008cb0:	20001170 	.word	0x20001170

08008cb4 <LPUART1_IRQHandler>:
 8008cb4:	b510      	push	{r4, lr}
 8008cb6:	4c07      	ldr	r4, [pc, #28]	@ (8008cd4 <LPUART1_IRQHandler+0x20>)
 8008cb8:	4620      	mov	r0, r4
 8008cba:	f7fc fdf7 	bl	80058ac <HAL_UART_IRQHandler>
 8008cbe:	6823      	ldr	r3, [r4, #0]
 8008cc0:	69da      	ldr	r2, [r3, #28]
 8008cc2:	06d2      	lsls	r2, r2, #27
 8008cc4:	d400      	bmi.n	8008cc8 <LPUART1_IRQHandler+0x14>
 8008cc6:	bd10      	pop	{r4, pc}
 8008cc8:	2210      	movs	r2, #16
 8008cca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008cce:	621a      	str	r2, [r3, #32]
 8008cd0:	f000 baf6 	b.w	80092c0 <hal_uart_rx_idle_handler>
 8008cd4:	20001260 	.word	0x20001260

08008cd8 <HAL_MspInit>:
 8008cd8:	4b0b      	ldr	r3, [pc, #44]	@ (8008d08 <HAL_MspInit+0x30>)
 8008cda:	2200      	movs	r2, #0
 8008cdc:	210f      	movs	r1, #15
 8008cde:	f06f 0001 	mvn.w	r0, #1
 8008ce2:	b410      	push	{r4}
 8008ce4:	f8d3 40f4 	ldr.w	r4, [r3, #244]	@ 0xf4
 8008ce8:	b083      	sub	sp, #12
 8008cea:	f044 0402 	orr.w	r4, r4, #2
 8008cee:	f8c3 40f4 	str.w	r4, [r3, #244]	@ 0xf4
 8008cf2:	f8d3 30f4 	ldr.w	r3, [r3, #244]	@ 0xf4
 8008cf6:	f003 0302 	and.w	r3, r3, #2
 8008cfa:	9301      	str	r3, [sp, #4]
 8008cfc:	9b01      	ldr	r3, [sp, #4]
 8008cfe:	b003      	add	sp, #12
 8008d00:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008d04:	f7fc b998 	b.w	8005038 <HAL_NVIC_SetPriority>
 8008d08:	58024400 	.word	0x58024400

08008d0c <HAL_InitTick>:
 8008d0c:	280f      	cmp	r0, #15
 8008d0e:	d901      	bls.n	8008d14 <HAL_InitTick+0x8>
 8008d10:	2001      	movs	r0, #1
 8008d12:	4770      	bx	lr
 8008d14:	b530      	push	{r4, r5, lr}
 8008d16:	4601      	mov	r1, r0
 8008d18:	b08b      	sub	sp, #44	@ 0x2c
 8008d1a:	2200      	movs	r2, #0
 8008d1c:	4604      	mov	r4, r0
 8008d1e:	2037      	movs	r0, #55	@ 0x37
 8008d20:	f7fc f98a 	bl	8005038 <HAL_NVIC_SetPriority>
 8008d24:	2037      	movs	r0, #55	@ 0x37
 8008d26:	f7fc f9c3 	bl	80050b0 <HAL_NVIC_EnableIRQ>
 8008d2a:	4b1b      	ldr	r3, [pc, #108]	@ (8008d98 <HAL_InitTick+0x8c>)
 8008d2c:	4a1b      	ldr	r2, [pc, #108]	@ (8008d9c <HAL_InitTick+0x90>)
 8008d2e:	4669      	mov	r1, sp
 8008d30:	a802      	add	r0, sp, #8
 8008d32:	6014      	str	r4, [r2, #0]
 8008d34:	f8d3 20e8 	ldr.w	r2, [r3, #232]	@ 0xe8
 8008d38:	f042 0220 	orr.w	r2, r2, #32
 8008d3c:	f8c3 20e8 	str.w	r2, [r3, #232]	@ 0xe8
 8008d40:	f8d3 30e8 	ldr.w	r3, [r3, #232]	@ 0xe8
 8008d44:	f003 0320 	and.w	r3, r3, #32
 8008d48:	9301      	str	r3, [sp, #4]
 8008d4a:	9b01      	ldr	r3, [sp, #4]
 8008d4c:	f7f9 f934 	bl	8001fb8 <HAL_RCC_GetClockConfig>
 8008d50:	9b07      	ldr	r3, [sp, #28]
 8008d52:	b9c3      	cbnz	r3, 8008d86 <HAL_InitTick+0x7a>
 8008d54:	f7f9 f90c 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8008d58:	4603      	mov	r3, r0
 8008d5a:	4911      	ldr	r1, [pc, #68]	@ (8008da0 <HAL_InitTick+0x94>)
 8008d5c:	2200      	movs	r2, #0
 8008d5e:	4c11      	ldr	r4, [pc, #68]	@ (8008da4 <HAL_InitTick+0x98>)
 8008d60:	fba1 1303 	umull	r1, r3, r1, r3
 8008d64:	4d10      	ldr	r5, [pc, #64]	@ (8008da8 <HAL_InitTick+0x9c>)
 8008d66:	f240 31e7 	movw	r1, #999	@ 0x3e7
 8008d6a:	4620      	mov	r0, r4
 8008d6c:	0c9b      	lsrs	r3, r3, #18
 8008d6e:	6025      	str	r5, [r4, #0]
 8008d70:	60a2      	str	r2, [r4, #8]
 8008d72:	3b01      	subs	r3, #1
 8008d74:	e9c4 1203 	strd	r1, r2, [r4, #12]
 8008d78:	6063      	str	r3, [r4, #4]
 8008d7a:	f7f7 ffb3 	bl	8000ce4 <HAL_TIM_Base_Init>
 8008d7e:	b130      	cbz	r0, 8008d8e <HAL_InitTick+0x82>
 8008d80:	2001      	movs	r0, #1
 8008d82:	b00b      	add	sp, #44	@ 0x2c
 8008d84:	bd30      	pop	{r4, r5, pc}
 8008d86:	f7f9 f8f3 	bl	8001f70 <HAL_RCC_GetPCLK1Freq>
 8008d8a:	0043      	lsls	r3, r0, #1
 8008d8c:	e7e5      	b.n	8008d5a <HAL_InitTick+0x4e>
 8008d8e:	4620      	mov	r0, r4
 8008d90:	f7f7 fd66 	bl	8000860 <HAL_TIM_Base_Start_IT>
 8008d94:	e7f5      	b.n	8008d82 <HAL_InitTick+0x76>
 8008d96:	bf00      	nop
 8008d98:	58024400 	.word	0x58024400
 8008d9c:	2000000c 	.word	0x2000000c
 8008da0:	431bde83 	.word	0x431bde83
 8008da4:	20001380 	.word	0x20001380
 8008da8:	40001400 	.word	0x40001400

08008dac <_sbrk>:
 8008dac:	490d      	ldr	r1, [pc, #52]	@ (8008de4 <_sbrk+0x38>)
 8008dae:	4603      	mov	r3, r0
 8008db0:	4a0d      	ldr	r2, [pc, #52]	@ (8008de8 <_sbrk+0x3c>)
 8008db2:	6808      	ldr	r0, [r1, #0]
 8008db4:	b510      	push	{r4, lr}
 8008db6:	4c0d      	ldr	r4, [pc, #52]	@ (8008dec <_sbrk+0x40>)
 8008db8:	1b12      	subs	r2, r2, r4
 8008dba:	b120      	cbz	r0, 8008dc6 <_sbrk+0x1a>
 8008dbc:	4403      	add	r3, r0
 8008dbe:	4293      	cmp	r3, r2
 8008dc0:	d807      	bhi.n	8008dd2 <_sbrk+0x26>
 8008dc2:	600b      	str	r3, [r1, #0]
 8008dc4:	bd10      	pop	{r4, pc}
 8008dc6:	4c0a      	ldr	r4, [pc, #40]	@ (8008df0 <_sbrk+0x44>)
 8008dc8:	4620      	mov	r0, r4
 8008dca:	600c      	str	r4, [r1, #0]
 8008dcc:	4403      	add	r3, r0
 8008dce:	4293      	cmp	r3, r2
 8008dd0:	d9f7      	bls.n	8008dc2 <_sbrk+0x16>
 8008dd2:	f002 fbed 	bl	800b5b0 <__errno>
 8008dd6:	220c      	movs	r2, #12
 8008dd8:	4603      	mov	r3, r0
 8008dda:	f04f 30ff 	mov.w	r0, #4294967295
 8008dde:	601a      	str	r2, [r3, #0]
 8008de0:	bd10      	pop	{r4, pc}
 8008de2:	bf00      	nop
 8008de4:	200013cc 	.word	0x200013cc
 8008de8:	20020000 	.word	0x20020000
 8008dec:	00000400 	.word	0x00000400
 8008df0:	20001798 	.word	0x20001798

08008df4 <_getpid>:
 8008df4:	2001      	movs	r0, #1
 8008df6:	4770      	bx	lr

08008df8 <_kill>:
 8008df8:	b508      	push	{r3, lr}
 8008dfa:	f002 fbd9 	bl	800b5b0 <__errno>
 8008dfe:	2216      	movs	r2, #22
 8008e00:	4603      	mov	r3, r0
 8008e02:	f04f 30ff 	mov.w	r0, #4294967295
 8008e06:	601a      	str	r2, [r3, #0]
 8008e08:	bd08      	pop	{r3, pc}
 8008e0a:	bf00      	nop

08008e0c <_exit>:
 8008e0c:	b508      	push	{r3, lr}
 8008e0e:	f002 fbcf 	bl	800b5b0 <__errno>
 8008e12:	2316      	movs	r3, #22
 8008e14:	6003      	str	r3, [r0, #0]
 8008e16:	e7fe      	b.n	8008e16 <_exit+0xa>

08008e18 <_read>:
 8008e18:	b570      	push	{r4, r5, r6, lr}
 8008e1a:	1e16      	subs	r6, r2, #0
 8008e1c:	dd07      	ble.n	8008e2e <_read+0x16>
 8008e1e:	460c      	mov	r4, r1
 8008e20:	198d      	adds	r5, r1, r6
 8008e22:	f3af 8000 	nop.w
 8008e26:	f804 0b01 	strb.w	r0, [r4], #1
 8008e2a:	42a5      	cmp	r5, r4
 8008e2c:	d1f9      	bne.n	8008e22 <_read+0xa>
 8008e2e:	4630      	mov	r0, r6
 8008e30:	bd70      	pop	{r4, r5, r6, pc}
 8008e32:	bf00      	nop

08008e34 <_close>:
 8008e34:	f04f 30ff 	mov.w	r0, #4294967295
 8008e38:	4770      	bx	lr
 8008e3a:	bf00      	nop

08008e3c <_fstat>:
 8008e3c:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 8008e40:	2000      	movs	r0, #0
 8008e42:	604b      	str	r3, [r1, #4]
 8008e44:	4770      	bx	lr
 8008e46:	bf00      	nop

08008e48 <_isatty>:
 8008e48:	2001      	movs	r0, #1
 8008e4a:	4770      	bx	lr

08008e4c <_lseek>:
 8008e4c:	2000      	movs	r0, #0
 8008e4e:	4770      	bx	lr

08008e50 <Reset_Handler>:
 8008e50:	f8df d038 	ldr.w	sp, [pc, #56]	@ 8008e8c <LoopFillZerobss+0xe>
 8008e54:	f7f7 fcaa 	bl	80007ac <ExitRun0Mode>
 8008e58:	f7f7 fc32 	bl	80006c0 <SystemInit>
 8008e5c:	480c      	ldr	r0, [pc, #48]	@ (8008e90 <LoopFillZerobss+0x12>)
 8008e5e:	490d      	ldr	r1, [pc, #52]	@ (8008e94 <LoopFillZerobss+0x16>)
 8008e60:	4a0d      	ldr	r2, [pc, #52]	@ (8008e98 <LoopFillZerobss+0x1a>)
 8008e62:	2300      	movs	r3, #0
 8008e64:	e002      	b.n	8008e6c <LoopCopyDataInit>

08008e66 <CopyDataInit>:
 8008e66:	58d4      	ldr	r4, [r2, r3]
 8008e68:	50c4      	str	r4, [r0, r3]
 8008e6a:	3304      	adds	r3, #4

08008e6c <LoopCopyDataInit>:
 8008e6c:	18c4      	adds	r4, r0, r3
 8008e6e:	428c      	cmp	r4, r1
 8008e70:	d3f9      	bcc.n	8008e66 <CopyDataInit>
 8008e72:	4a0a      	ldr	r2, [pc, #40]	@ (8008e9c <LoopFillZerobss+0x1e>)
 8008e74:	4c0a      	ldr	r4, [pc, #40]	@ (8008ea0 <LoopFillZerobss+0x22>)
 8008e76:	2300      	movs	r3, #0
 8008e78:	e001      	b.n	8008e7e <LoopFillZerobss>

08008e7a <FillZerobss>:
 8008e7a:	6013      	str	r3, [r2, #0]
 8008e7c:	3204      	adds	r2, #4

08008e7e <LoopFillZerobss>:
 8008e7e:	42a2      	cmp	r2, r4
 8008e80:	d3fb      	bcc.n	8008e7a <FillZerobss>
 8008e82:	f002 fb9b 	bl	800b5bc <__libc_init_array>
 8008e86:	f7ff fb3f 	bl	8008508 <main>
 8008e8a:	4770      	bx	lr
 8008e8c:	20020000 	.word	0x20020000
 8008e90:	20000000 	.word	0x20000000
 8008e94:	20000254 	.word	0x20000254
 8008e98:	0800e29c 	.word	0x0800e29c
 8008e9c:	20000254 	.word	0x20000254
 8008ea0:	20001794 	.word	0x20001794

08008ea4 <ADC3_IRQHandler>:
 8008ea4:	e7fe      	b.n	8008ea4 <ADC3_IRQHandler>
	...

08008ea8 <dwt_delay_init>:
 8008ea8:	4b11      	ldr	r3, [pc, #68]	@ (8008ef0 <dwt_delay_init+0x48>)
 8008eaa:	4812      	ldr	r0, [pc, #72]	@ (8008ef4 <dwt_delay_init+0x4c>)
 8008eac:	681b      	ldr	r3, [r3, #0]
 8008eae:	4912      	ldr	r1, [pc, #72]	@ (8008ef8 <dwt_delay_init+0x50>)
 8008eb0:	4a12      	ldr	r2, [pc, #72]	@ (8008efc <dwt_delay_init+0x54>)
 8008eb2:	b410      	push	{r4}
 8008eb4:	600b      	str	r3, [r1, #0]
 8008eb6:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
 8008eba:	4c11      	ldr	r4, [pc, #68]	@ (8008f00 <dwt_delay_init+0x58>)
 8008ebc:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
 8008ec0:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
 8008ec4:	f100 40c8 	add.w	r0, r0, #1677721600	@ 0x64000000
 8008ec8:	2100      	movs	r1, #0
 8008eca:	f8c2 4fb0 	str.w	r4, [r2, #4016]	@ 0xfb0
 8008ece:	f5a0 0065 	sub.w	r0, r0, #15007744	@ 0xe50000
 8008ed2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008ed6:	6051      	str	r1, [r2, #4]
 8008ed8:	f6a0 607d 	subw	r0, r0, #3709	@ 0xe7d
 8008edc:	6811      	ldr	r1, [r2, #0]
 8008ede:	fba0 0303 	umull	r0, r3, r0, r3
 8008ee2:	f041 0101 	orr.w	r1, r1, #1
 8008ee6:	4807      	ldr	r0, [pc, #28]	@ (8008f04 <dwt_delay_init+0x5c>)
 8008ee8:	0c9b      	lsrs	r3, r3, #18
 8008eea:	6011      	str	r1, [r2, #0]
 8008eec:	6003      	str	r3, [r0, #0]
 8008eee:	4770      	bx	lr
 8008ef0:	20000004 	.word	0x20000004
 8008ef4:	e000ed00 	.word	0xe000ed00
 8008ef8:	200013d4 	.word	0x200013d4
 8008efc:	e0001000 	.word	0xe0001000
 8008f00:	c5acce55 	.word	0xc5acce55
 8008f04:	200013d0 	.word	0x200013d0

08008f08 <dwt_delay_us>:
 8008f08:	b1e0      	cbz	r0, 8008f44 <dwt_delay_us+0x3c>
 8008f0a:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 8008f0e:	fb03 f000 	mul.w	r0, r3, r0
 8008f12:	28fa      	cmp	r0, #250	@ 0xfa
 8008f14:	d917      	bls.n	8008f46 <dwt_delay_us+0x3e>
 8008f16:	4b0d      	ldr	r3, [pc, #52]	@ (8008f4c <dwt_delay_us+0x44>)
 8008f18:	38fa      	subs	r0, #250	@ 0xfa
 8008f1a:	4a0d      	ldr	r2, [pc, #52]	@ (8008f50 <dwt_delay_us+0x48>)
 8008f1c:	681b      	ldr	r3, [r3, #0]
 8008f1e:	fb03 f000 	mul.w	r0, r3, r0
 8008f22:	fba2 3200 	umull	r3, r2, r2, r0
 8008f26:	f5b0 7f7a 	cmp.w	r0, #1000	@ 0x3e8
 8008f2a:	ea4f 1292 	mov.w	r2, r2, lsr #6
 8008f2e:	d30a      	bcc.n	8008f46 <dwt_delay_us+0x3e>
 8008f30:	4908      	ldr	r1, [pc, #32]	@ (8008f54 <dwt_delay_us+0x4c>)
 8008f32:	6848      	ldr	r0, [r1, #4]
 8008f34:	684b      	ldr	r3, [r1, #4]
 8008f36:	1a1b      	subs	r3, r3, r0
 8008f38:	429a      	cmp	r2, r3
 8008f3a:	d903      	bls.n	8008f44 <dwt_delay_us+0x3c>
 8008f3c:	684b      	ldr	r3, [r1, #4]
 8008f3e:	1a1b      	subs	r3, r3, r0
 8008f40:	4293      	cmp	r3, r2
 8008f42:	d3fb      	bcc.n	8008f3c <dwt_delay_us+0x34>
 8008f44:	4770      	bx	lr
 8008f46:	bf00      	nop
 8008f48:	4770      	bx	lr
 8008f4a:	bf00      	nop
 8008f4c:	200013d0 	.word	0x200013d0
 8008f50:	10624dd3 	.word	0x10624dd3
 8008f54:	e0001000 	.word	0xe0001000

08008f58 <get_tick_ms>:
 8008f58:	f7fc b942 	b.w	80051e0 <HAL_GetTick>

08008f5c <key_get_pin_level>:
 8008f5c:	b289      	uxth	r1, r1
 8008f5e:	b508      	push	{r3, lr}
 8008f60:	f7fa fd56 	bl	8003a10 <HAL_GPIO_ReadPin>
 8008f64:	bd08      	pop	{r3, pc}
 8008f66:	bf00      	nop

08008f68 <key_get_now_ms>:
 8008f68:	f7fc b93a 	b.w	80051e0 <HAL_GetTick>

08008f6c <key_creat>:
 8008f6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008f70:	1e4b      	subs	r3, r1, #1
 8008f72:	2b02      	cmp	r3, #2
 8008f74:	d807      	bhi.n	8008f86 <key_creat+0x1a>
 8008f76:	f8df 8068 	ldr.w	r8, [pc, #104]	@ 8008fe0 <key_creat+0x74>
 8008f7a:	4689      	mov	r9, r1
 8008f7c:	f898 3048 	ldrb.w	r3, [r8, #72]	@ 0x48
 8008f80:	185a      	adds	r2, r3, r1
 8008f82:	2a03      	cmp	r2, #3
 8008f84:	dd01      	ble.n	8008f8a <key_creat+0x1e>
 8008f86:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008f8a:	eb03 0443 	add.w	r4, r3, r3, lsl #1
 8008f8e:	461f      	mov	r7, r3
 8008f90:	eb00 05c3 	add.w	r5, r0, r3, lsl #3
 8008f94:	2600      	movs	r6, #0
 8008f96:	eb08 04c4 	add.w	r4, r8, r4, lsl #3
 8008f9a:	e018      	b.n	8008fce <key_creat+0x62>
 8008f9c:	79aa      	ldrb	r2, [r5, #6]
 8008f9e:	f8d8 3054 	ldr.w	r3, [r8, #84]	@ 0x54
 8008fa2:	71a2      	strb	r2, [r4, #6]
 8008fa4:	682a      	ldr	r2, [r5, #0]
 8008fa6:	6022      	str	r2, [r4, #0]
 8008fa8:	88aa      	ldrh	r2, [r5, #4]
 8008faa:	7226      	strb	r6, [r4, #8]
 8008fac:	75a6      	strb	r6, [r4, #22]
 8008fae:	80a2      	strh	r2, [r4, #4]
 8008fb0:	82a6      	strh	r6, [r4, #20]
 8008fb2:	e9c4 6603 	strd	r6, r6, [r4, #12]
 8008fb6:	b103      	cbz	r3, 8008fba <key_creat+0x4e>
 8008fb8:	4798      	blx	r3
 8008fba:	3701      	adds	r7, #1
 8008fbc:	3418      	adds	r4, #24
 8008fbe:	3508      	adds	r5, #8
 8008fc0:	b2fb      	uxtb	r3, r7
 8008fc2:	2b03      	cmp	r3, #3
 8008fc4:	d007      	beq.n	8008fd6 <key_creat+0x6a>
 8008fc6:	f898 3048 	ldrb.w	r3, [r8, #72]	@ 0x48
 8008fca:	eb03 0209 	add.w	r2, r3, r9
 8008fce:	42ba      	cmp	r2, r7
 8008fd0:	4620      	mov	r0, r4
 8008fd2:	dce3      	bgt.n	8008f9c <key_creat+0x30>
 8008fd4:	b2fb      	uxtb	r3, r7
 8008fd6:	f888 3048 	strb.w	r3, [r8, #72]	@ 0x48
 8008fda:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008fde:	bf00      	nop
 8008fe0:	200013dc 	.word	0x200013dc

08008fe4 <key_init>:
 8008fe4:	4a06      	ldr	r2, [pc, #24]	@ (8009000 <key_init+0x1c>)
 8008fe6:	4b07      	ldr	r3, [pc, #28]	@ (8009004 <key_init+0x20>)
 8008fe8:	b410      	push	{r4}
 8008fea:	4c07      	ldr	r4, [pc, #28]	@ (8009008 <key_init+0x24>)
 8008fec:	7011      	strb	r1, [r2, #0]
 8008fee:	4a07      	ldr	r2, [pc, #28]	@ (800900c <key_init+0x28>)
 8008ff0:	e9c3 4213 	strd	r4, r2, [r3, #76]	@ 0x4c
 8008ff4:	2200      	movs	r2, #0
 8008ff6:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008ffa:	655a      	str	r2, [r3, #84]	@ 0x54
 8008ffc:	f7ff bfb6 	b.w	8008f6c <key_creat>
 8009000:	200013d8 	.word	0x200013d8
 8009004:	200013dc 	.word	0x200013dc
 8009008:	08008f69 	.word	0x08008f69
 800900c:	08008f5d 	.word	0x08008f5d

08009010 <key_scan>:
 8009010:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009014:	4e2f      	ldr	r6, [pc, #188]	@ (80090d4 <key_scan+0xc4>)
 8009016:	f896 3048 	ldrb.w	r3, [r6, #72]	@ 0x48
 800901a:	b34b      	cbz	r3, 8009070 <key_scan+0x60>
 800901c:	2700      	movs	r7, #0
 800901e:	4634      	mov	r4, r6
 8009020:	f04f 0903 	mov.w	r9, #3
 8009024:	46b8      	mov	r8, r7
 8009026:	6d33      	ldr	r3, [r6, #80]	@ 0x50
 8009028:	88a1      	ldrh	r1, [r4, #4]
 800902a:	6820      	ldr	r0, [r4, #0]
 800902c:	4798      	blx	r3
 800902e:	6cf3      	ldr	r3, [r6, #76]	@ 0x4c
 8009030:	f894 a006 	ldrb.w	sl, [r4, #6]
 8009034:	4605      	mov	r5, r0
 8009036:	4798      	blx	r3
 8009038:	7d63      	ldrb	r3, [r4, #21]
 800903a:	2b03      	cmp	r3, #3
 800903c:	d811      	bhi.n	8009062 <key_scan+0x52>
 800903e:	e8df f003 	tbb	[pc, r3]
 8009042:	2c0b      	.short	0x2c0b
 8009044:	1923      	.short	0x1923
 8009046:	7a23      	ldrb	r3, [r4, #8]
 8009048:	2b01      	cmp	r3, #1
 800904a:	d03e      	beq.n	80090ca <key_scan+0xba>
 800904c:	2b02      	cmp	r3, #2
 800904e:	d101      	bne.n	8009054 <key_scan+0x44>
 8009050:	2301      	movs	r3, #1
 8009052:	75a3      	strb	r3, [r4, #22]
 8009054:	2300      	movs	r3, #0
 8009056:	7223      	strb	r3, [r4, #8]
 8009058:	4555      	cmp	r5, sl
 800905a:	d102      	bne.n	8009062 <key_scan+0x52>
 800905c:	2301      	movs	r3, #1
 800905e:	60e0      	str	r0, [r4, #12]
 8009060:	7563      	strb	r3, [r4, #21]
 8009062:	3701      	adds	r7, #1
 8009064:	f896 2048 	ldrb.w	r2, [r6, #72]	@ 0x48
 8009068:	3418      	adds	r4, #24
 800906a:	b2fb      	uxtb	r3, r7
 800906c:	429a      	cmp	r2, r3
 800906e:	d8da      	bhi.n	8009026 <key_scan+0x16>
 8009070:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009074:	7d23      	ldrb	r3, [r4, #20]
 8009076:	f884 8015 	strb.w	r8, [r4, #21]
 800907a:	2b00      	cmp	r3, #0
 800907c:	d0e3      	beq.n	8009046 <key_scan+0x36>
 800907e:	f884 8008 	strb.w	r8, [r4, #8]
 8009082:	f884 8014 	strb.w	r8, [r4, #20]
 8009086:	e7ec      	b.n	8009062 <key_scan+0x52>
 8009088:	4555      	cmp	r5, sl
 800908a:	d013      	beq.n	80090b4 <key_scan+0xa4>
 800908c:	7a23      	ldrb	r3, [r4, #8]
 800908e:	6120      	str	r0, [r4, #16]
 8009090:	3301      	adds	r3, #1
 8009092:	f884 9015 	strb.w	r9, [r4, #21]
 8009096:	7223      	strb	r3, [r4, #8]
 8009098:	e7e3      	b.n	8009062 <key_scan+0x52>
 800909a:	4555      	cmp	r5, sl
 800909c:	d002      	beq.n	80090a4 <key_scan+0x94>
 800909e:	f884 8015 	strb.w	r8, [r4, #21]
 80090a2:	e7de      	b.n	8009062 <key_scan+0x52>
 80090a4:	68e3      	ldr	r3, [r4, #12]
 80090a6:	1ac3      	subs	r3, r0, r3
 80090a8:	2b13      	cmp	r3, #19
 80090aa:	d9da      	bls.n	8009062 <key_scan+0x52>
 80090ac:	2302      	movs	r3, #2
 80090ae:	60e0      	str	r0, [r4, #12]
 80090b0:	7563      	strb	r3, [r4, #21]
 80090b2:	e7d6      	b.n	8009062 <key_scan+0x52>
 80090b4:	68e3      	ldr	r3, [r4, #12]
 80090b6:	1ac3      	subs	r3, r0, r3
 80090b8:	f5b3 7f96 	cmp.w	r3, #300	@ 0x12c
 80090bc:	d3d1      	bcc.n	8009062 <key_scan+0x52>
 80090be:	2302      	movs	r3, #2
 80090c0:	60e0      	str	r0, [r4, #12]
 80090c2:	75a3      	strb	r3, [r4, #22]
 80090c4:	2301      	movs	r3, #1
 80090c6:	7523      	strb	r3, [r4, #20]
 80090c8:	e7cb      	b.n	8009062 <key_scan+0x52>
 80090ca:	2303      	movs	r3, #3
 80090cc:	75a3      	strb	r3, [r4, #22]
 80090ce:	2300      	movs	r3, #0
 80090d0:	7223      	strb	r3, [r4, #8]
 80090d2:	e7c1      	b.n	8009058 <key_scan+0x48>
 80090d4:	200013dc 	.word	0x200013dc

080090d8 <key_get_event>:
 80090d8:	4b06      	ldr	r3, [pc, #24]	@ (80090f4 <key_get_event+0x1c>)
 80090da:	f893 2048 	ldrb.w	r2, [r3, #72]	@ 0x48
 80090de:	4282      	cmp	r2, r0
 80090e0:	d905      	bls.n	80090ee <key_get_event+0x16>
 80090e2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
 80090e6:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
 80090ea:	7d98      	ldrb	r0, [r3, #22]
 80090ec:	4770      	bx	lr
 80090ee:	2000      	movs	r0, #0
 80090f0:	4770      	bx	lr
 80090f2:	bf00      	nop
 80090f4:	200013dc 	.word	0x200013dc

080090f8 <key_reset_event>:
 80090f8:	2803      	cmp	r0, #3
 80090fa:	d80a      	bhi.n	8009112 <key_reset_event+0x1a>
 80090fc:	4b05      	ldr	r3, [pc, #20]	@ (8009114 <key_reset_event+0x1c>)
 80090fe:	f893 2048 	ldrb.w	r2, [r3, #72]	@ 0x48
 8009102:	4282      	cmp	r2, r0
 8009104:	d305      	bcc.n	8009112 <key_reset_event+0x1a>
 8009106:	eb00 0040 	add.w	r0, r0, r0, lsl #1
 800910a:	2200      	movs	r2, #0
 800910c:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
 8009110:	759a      	strb	r2, [r3, #22]
 8009112:	4770      	bx	lr
 8009114:	200013dc 	.word	0x200013dc

08009118 <hal_uart_dma_ht_callback>:
 8009118:	4770      	bx	lr
 800911a:	bf00      	nop

0800911c <hal_uart_dma_continue_transfer>:
 800911c:	b510      	push	{r4, lr}
 800911e:	4c18      	ldr	r4, [pc, #96]	@ (8009180 <hal_uart_dma_continue_transfer+0x64>)
 8009120:	f894 3020 	ldrb.w	r3, [r4, #32]
 8009124:	bb03      	cbnz	r3, 8009168 <hal_uart_dma_continue_transfer+0x4c>
 8009126:	8ae2      	ldrh	r2, [r4, #22]
 8009128:	8b23      	ldrh	r3, [r4, #24]
 800912a:	b292      	uxth	r2, r2
 800912c:	b29b      	uxth	r3, r3
 800912e:	429a      	cmp	r2, r3
 8009130:	d021      	beq.n	8009176 <hal_uart_dma_continue_transfer+0x5a>
 8009132:	8ae2      	ldrh	r2, [r4, #22]
 8009134:	8b23      	ldrh	r3, [r4, #24]
 8009136:	b292      	uxth	r2, r2
 8009138:	b29b      	uxth	r3, r3
 800913a:	429a      	cmp	r2, r3
 800913c:	d815      	bhi.n	800916a <hal_uart_dma_continue_transfer+0x4e>
 800913e:	8b22      	ldrh	r2, [r4, #24]
 8009140:	b292      	uxth	r2, r2
 8009142:	f5c2 6280 	rsb	r2, r2, #1024	@ 0x400
 8009146:	8b23      	ldrh	r3, [r4, #24]
 8009148:	b292      	uxth	r2, r2
 800914a:	6921      	ldr	r1, [r4, #16]
 800914c:	fa12 f383 	uxtah	r3, r2, r3
 8009150:	480c      	ldr	r0, [pc, #48]	@ (8009184 <hal_uart_dma_continue_transfer+0x68>)
 8009152:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8009156:	8363      	strh	r3, [r4, #26]
 8009158:	8b23      	ldrh	r3, [r4, #24]
 800915a:	fa11 f183 	uxtah	r1, r1, r3
 800915e:	f7fc fb5f 	bl	8005820 <HAL_UART_Transmit_DMA>
 8009162:	2301      	movs	r3, #1
 8009164:	f884 3020 	strb.w	r3, [r4, #32]
 8009168:	bd10      	pop	{r4, pc}
 800916a:	8ae2      	ldrh	r2, [r4, #22]
 800916c:	8b23      	ldrh	r3, [r4, #24]
 800916e:	b292      	uxth	r2, r2
 8009170:	b29b      	uxth	r3, r3
 8009172:	1ad2      	subs	r2, r2, r3
 8009174:	e7e7      	b.n	8009146 <hal_uart_dma_continue_transfer+0x2a>
 8009176:	7f23      	ldrb	r3, [r4, #28]
 8009178:	2b01      	cmp	r3, #1
 800917a:	d0da      	beq.n	8009132 <hal_uart_dma_continue_transfer+0x16>
 800917c:	bd10      	pop	{r4, pc}
 800917e:	bf00      	nop
 8009180:	20001434 	.word	0x20001434
 8009184:	20001260 	.word	0x20001260

08009188 <hal_uart_dma_tc_callback>:
 8009188:	4b07      	ldr	r3, [pc, #28]	@ (80091a8 <hal_uart_dma_tc_callback+0x20>)
 800918a:	6802      	ldr	r2, [r0, #0]
 800918c:	429a      	cmp	r2, r3
 800918e:	d000      	beq.n	8009192 <hal_uart_dma_tc_callback+0xa>
 8009190:	4770      	bx	lr
 8009192:	4b06      	ldr	r3, [pc, #24]	@ (80091ac <hal_uart_dma_tc_callback+0x24>)
 8009194:	2100      	movs	r1, #0
 8009196:	8b5a      	ldrh	r2, [r3, #26]
 8009198:	b292      	uxth	r2, r2
 800919a:	831a      	strh	r2, [r3, #24]
 800919c:	7719      	strb	r1, [r3, #28]
 800919e:	f883 1020 	strb.w	r1, [r3, #32]
 80091a2:	f7ff bfbb 	b.w	800911c <hal_uart_dma_continue_transfer>
 80091a6:	bf00      	nop
 80091a8:	58000c00 	.word	0x58000c00
 80091ac:	20001434 	.word	0x20001434

080091b0 <hal_uart_dma_send_bytes.part.0>:
 80091b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80091b2:	4c2e      	ldr	r4, [pc, #184]	@ (800926c <hal_uart_dma_send_bytes.part.0+0xbc>)
 80091b4:	4606      	mov	r6, r0
 80091b6:	460d      	mov	r5, r1
 80091b8:	8ae2      	ldrh	r2, [r4, #22]
 80091ba:	8b23      	ldrh	r3, [r4, #24]
 80091bc:	b292      	uxth	r2, r2
 80091be:	b29b      	uxth	r3, r3
 80091c0:	429a      	cmp	r2, r3
 80091c2:	d347      	bcc.n	8009254 <hal_uart_dma_send_bytes.part.0+0xa4>
 80091c4:	8ae2      	ldrh	r2, [r4, #22]
 80091c6:	8b23      	ldrh	r3, [r4, #24]
 80091c8:	b292      	uxth	r2, r2
 80091ca:	f5c2 6280 	rsb	r2, r2, #1024	@ 0x400
 80091ce:	fa12 f383 	uxtah	r3, r2, r3
 80091d2:	429d      	cmp	r5, r3
 80091d4:	dc45      	bgt.n	8009262 <hal_uart_dma_send_bytes.part.0+0xb2>
 80091d6:	7f23      	ldrb	r3, [r4, #28]
 80091d8:	2b01      	cmp	r3, #1
 80091da:	d042      	beq.n	8009262 <hal_uart_dma_send_bytes.part.0+0xb2>
 80091dc:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
 80091de:	6922      	ldr	r2, [r4, #16]
 80091e0:	3301      	adds	r3, #1
 80091e2:	62a3      	str	r3, [r4, #40]	@ 0x28
 80091e4:	8ae3      	ldrh	r3, [r4, #22]
 80091e6:	fa15 f383 	uxtah	r3, r5, r3
 80091ea:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 80091ee:	dd23      	ble.n	8009238 <hal_uart_dma_send_bytes.part.0+0x88>
 80091f0:	8ae7      	ldrh	r7, [r4, #22]
 80091f2:	4631      	mov	r1, r6
 80091f4:	8ae0      	ldrh	r0, [r4, #22]
 80091f6:	f5c7 6780 	rsb	r7, r7, #1024	@ 0x400
 80091fa:	fa12 f080 	uxtah	r0, r2, r0
 80091fe:	b2bf      	uxth	r7, r7
 8009200:	463a      	mov	r2, r7
 8009202:	f002 fa02 	bl	800b60a <memcpy>
 8009206:	8ae3      	ldrh	r3, [r4, #22]
 8009208:	19f1      	adds	r1, r6, r7
 800920a:	6920      	ldr	r0, [r4, #16]
 800920c:	fa15 f383 	uxtah	r3, r5, r3
 8009210:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8009214:	82e3      	strh	r3, [r4, #22]
 8009216:	8ae2      	ldrh	r2, [r4, #22]
 8009218:	b292      	uxth	r2, r2
 800921a:	f002 f9f6 	bl	800b60a <memcpy>
 800921e:	8ae3      	ldrh	r3, [r4, #22]
 8009220:	8b22      	ldrh	r2, [r4, #24]
 8009222:	b29b      	uxth	r3, r3
 8009224:	b292      	uxth	r2, r2
 8009226:	1a9b      	subs	r3, r3, r2
 8009228:	fab3 f383 	clz	r3, r3
 800922c:	095b      	lsrs	r3, r3, #5
 800922e:	7723      	strb	r3, [r4, #28]
 8009230:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8009234:	f7ff bf72 	b.w	800911c <hal_uart_dma_continue_transfer>
 8009238:	8ae0      	ldrh	r0, [r4, #22]
 800923a:	4631      	mov	r1, r6
 800923c:	fa12 f080 	uxtah	r0, r2, r0
 8009240:	462a      	mov	r2, r5
 8009242:	f002 f9e2 	bl	800b60a <memcpy>
 8009246:	8ae3      	ldrh	r3, [r4, #22]
 8009248:	fa15 f383 	uxtah	r3, r5, r3
 800924c:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8009250:	82e3      	strh	r3, [r4, #22]
 8009252:	e7e4      	b.n	800921e <hal_uart_dma_send_bytes.part.0+0x6e>
 8009254:	8b23      	ldrh	r3, [r4, #24]
 8009256:	8ae2      	ldrh	r2, [r4, #22]
 8009258:	b29b      	uxth	r3, r3
 800925a:	b292      	uxth	r2, r2
 800925c:	1a9b      	subs	r3, r3, r2
 800925e:	429d      	cmp	r5, r3
 8009260:	ddb9      	ble.n	80091d6 <hal_uart_dma_send_bytes.part.0+0x26>
 8009262:	6a63      	ldr	r3, [r4, #36]	@ 0x24
 8009264:	3301      	adds	r3, #1
 8009266:	6263      	str	r3, [r4, #36]	@ 0x24
 8009268:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800926a:	bf00      	nop
 800926c:	20001434 	.word	0x20001434

08009270 <usart1_get_ctx_t>:
 8009270:	4800      	ldr	r0, [pc, #0]	@ (8009274 <usart1_get_ctx_t+0x4>)
 8009272:	4770      	bx	lr
 8009274:	20001434 	.word	0x20001434

08009278 <hal_uart_init>:
 8009278:	4b0b      	ldr	r3, [pc, #44]	@ (80092a8 <hal_uart_init+0x30>)
 800927a:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 800927e:	490b      	ldr	r1, [pc, #44]	@ (80092ac <hal_uart_init+0x34>)
 8009280:	480b      	ldr	r0, [pc, #44]	@ (80092b0 <hal_uart_init+0x38>)
 8009282:	b510      	push	{r4, lr}
 8009284:	4c0b      	ldr	r4, [pc, #44]	@ (80092b4 <hal_uart_init+0x3c>)
 8009286:	829a      	strh	r2, [r3, #20]
 8009288:	809a      	strh	r2, [r3, #4]
 800928a:	6118      	str	r0, [r3, #16]
 800928c:	6019      	str	r1, [r3, #0]
 800928e:	480a      	ldr	r0, [pc, #40]	@ (80092b8 <hal_uart_init+0x40>)
 8009290:	4b0a      	ldr	r3, [pc, #40]	@ (80092bc <hal_uart_init+0x44>)
 8009292:	e9c4 3025 	strd	r3, r0, [r4, #148]	@ 0x94
 8009296:	4620      	mov	r0, r4
 8009298:	f7fd f858 	bl	800634c <HAL_UART_Receive_DMA>
 800929c:	6822      	ldr	r2, [r4, #0]
 800929e:	6813      	ldr	r3, [r2, #0]
 80092a0:	f043 0310 	orr.w	r3, r3, #16
 80092a4:	6013      	str	r3, [r2, #0]
 80092a6:	bd10      	pop	{r4, pc}
 80092a8:	20001434 	.word	0x20001434
 80092ac:	38000400 	.word	0x38000400
 80092b0:	38000000 	.word	0x38000000
 80092b4:	20001260 	.word	0x20001260
 80092b8:	08009189 	.word	0x08009189
 80092bc:	08009119 	.word	0x08009119

080092c0 <hal_uart_rx_idle_handler>:
 80092c0:	4a0e      	ldr	r2, [pc, #56]	@ (80092fc <hal_uart_rx_idle_handler+0x3c>)
 80092c2:	f8d2 2080 	ldr.w	r2, [r2, #128]	@ 0x80
 80092c6:	6812      	ldr	r2, [r2, #0]
 80092c8:	6853      	ldr	r3, [r2, #4]
 80092ca:	4a0d      	ldr	r2, [pc, #52]	@ (8009300 <hal_uart_rx_idle_handler+0x40>)
 80092cc:	f5c3 6380 	rsb	r3, r3, #1024	@ 0x400
 80092d0:	88d0      	ldrh	r0, [r2, #6]
 80092d2:	8b11      	ldrh	r1, [r2, #24]
 80092d4:	b29b      	uxth	r3, r3
 80092d6:	b280      	uxth	r0, r0
 80092d8:	b289      	uxth	r1, r1
 80092da:	4288      	cmp	r0, r1
 80092dc:	b410      	push	{r4}
 80092de:	d003      	beq.n	80092e8 <hal_uart_rx_idle_handler+0x28>
 80092e0:	8911      	ldrh	r1, [r2, #8]
 80092e2:	b289      	uxth	r1, r1
 80092e4:	4299      	cmp	r1, r3
 80092e6:	d003      	beq.n	80092f0 <hal_uart_rx_idle_handler+0x30>
 80092e8:	f85d 4b04 	ldr.w	r4, [sp], #4
 80092ec:	80d3      	strh	r3, [r2, #6]
 80092ee:	4770      	bx	lr
 80092f0:	2101      	movs	r1, #1
 80092f2:	7311      	strb	r1, [r2, #12]
 80092f4:	f85d 4b04 	ldr.w	r4, [sp], #4
 80092f8:	80d3      	strh	r3, [r2, #6]
 80092fa:	4770      	bx	lr
 80092fc:	20001260 	.word	0x20001260
 8009300:	20001434 	.word	0x20001434

08009304 <hal_uart_receive_bytes>:
 8009304:	b570      	push	{r4, r5, r6, lr}
 8009306:	2800      	cmp	r0, #0
 8009308:	d05d      	beq.n	80093c6 <hal_uart_receive_bytes+0xc2>
 800930a:	460e      	mov	r6, r1
 800930c:	2900      	cmp	r1, #0
 800930e:	d05a      	beq.n	80093c6 <hal_uart_receive_bytes+0xc2>
 8009310:	4c31      	ldr	r4, [pc, #196]	@ (80093d8 <hal_uart_receive_bytes+0xd4>)
 8009312:	4603      	mov	r3, r0
 8009314:	88e1      	ldrh	r1, [r4, #6]
 8009316:	8922      	ldrh	r2, [r4, #8]
 8009318:	b289      	uxth	r1, r1
 800931a:	b292      	uxth	r2, r2
 800931c:	4291      	cmp	r1, r2
 800931e:	d04c      	beq.n	80093ba <hal_uart_receive_bytes+0xb6>
 8009320:	88e0      	ldrh	r0, [r4, #6]
 8009322:	8922      	ldrh	r2, [r4, #8]
 8009324:	b280      	uxth	r0, r0
 8009326:	6821      	ldr	r1, [r4, #0]
 8009328:	b292      	uxth	r2, r2
 800932a:	4290      	cmp	r0, r2
 800932c:	d917      	bls.n	800935e <hal_uart_receive_bytes+0x5a>
 800932e:	88e5      	ldrh	r5, [r4, #6]
 8009330:	4618      	mov	r0, r3
 8009332:	8923      	ldrh	r3, [r4, #8]
 8009334:	1aed      	subs	r5, r5, r3
 8009336:	8923      	ldrh	r3, [r4, #8]
 8009338:	b2ad      	uxth	r5, r5
 800933a:	fa11 f183 	uxtah	r1, r1, r3
 800933e:	42b5      	cmp	r5, r6
 8009340:	bf28      	it	cs
 8009342:	4635      	movcs	r5, r6
 8009344:	462a      	mov	r2, r5
 8009346:	f002 f960 	bl	800b60a <memcpy>
 800934a:	8923      	ldrh	r3, [r4, #8]
 800934c:	fa15 f383 	uxtah	r3, r5, r3
 8009350:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8009354:	8123      	strh	r3, [r4, #8]
 8009356:	2300      	movs	r3, #0
 8009358:	7323      	strb	r3, [r4, #12]
 800935a:	4628      	mov	r0, r5
 800935c:	bd70      	pop	{r4, r5, r6, pc}
 800935e:	8925      	ldrh	r5, [r4, #8]
 8009360:	4618      	mov	r0, r3
 8009362:	8922      	ldrh	r2, [r4, #8]
 8009364:	f5c5 6580 	rsb	r5, r5, #1024	@ 0x400
 8009368:	fa11 f182 	uxtah	r1, r1, r2
 800936c:	b2ad      	uxth	r5, r5
 800936e:	42b5      	cmp	r5, r6
 8009370:	bf28      	it	cs
 8009372:	4635      	movcs	r5, r6
 8009374:	462a      	mov	r2, r5
 8009376:	1b76      	subs	r6, r6, r5
 8009378:	f002 f947 	bl	800b60a <memcpy>
 800937c:	8922      	ldrh	r2, [r4, #8]
 800937e:	4603      	mov	r3, r0
 8009380:	fa15 f282 	uxtah	r2, r5, r2
 8009384:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8009388:	8122      	strh	r2, [r4, #8]
 800938a:	88e2      	ldrh	r2, [r4, #6]
 800938c:	b292      	uxth	r2, r2
 800938e:	42b2      	cmp	r2, r6
 8009390:	dd1c      	ble.n	80093cc <hal_uart_receive_bytes+0xc8>
 8009392:	b2b6      	uxth	r6, r6
 8009394:	2e00      	cmp	r6, #0
 8009396:	d0de      	beq.n	8009356 <hal_uart_receive_bytes+0x52>
 8009398:	1958      	adds	r0, r3, r5
 800939a:	8921      	ldrh	r1, [r4, #8]
 800939c:	6823      	ldr	r3, [r4, #0]
 800939e:	4632      	mov	r2, r6
 80093a0:	4435      	add	r5, r6
 80093a2:	fa13 f181 	uxtah	r1, r3, r1
 80093a6:	f002 f930 	bl	800b60a <memcpy>
 80093aa:	8923      	ldrh	r3, [r4, #8]
 80093ac:	b2ad      	uxth	r5, r5
 80093ae:	fa16 f383 	uxtah	r3, r6, r3
 80093b2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80093b6:	8123      	strh	r3, [r4, #8]
 80093b8:	e7cd      	b.n	8009356 <hal_uart_receive_bytes+0x52>
 80093ba:	7b22      	ldrb	r2, [r4, #12]
 80093bc:	f002 05ff 	and.w	r5, r2, #255	@ 0xff
 80093c0:	2a00      	cmp	r2, #0
 80093c2:	d1ad      	bne.n	8009320 <hal_uart_receive_bytes+0x1c>
 80093c4:	e7c9      	b.n	800935a <hal_uart_receive_bytes+0x56>
 80093c6:	2500      	movs	r5, #0
 80093c8:	4628      	mov	r0, r5
 80093ca:	bd70      	pop	{r4, r5, r6, pc}
 80093cc:	88e6      	ldrh	r6, [r4, #6]
 80093ce:	b2b6      	uxth	r6, r6
 80093d0:	2e00      	cmp	r6, #0
 80093d2:	d0c0      	beq.n	8009356 <hal_uart_receive_bytes+0x52>
 80093d4:	e7e0      	b.n	8009398 <hal_uart_receive_bytes+0x94>
 80093d6:	bf00      	nop
 80093d8:	20001434 	.word	0x20001434

080093dc <hal_uart_get_rx_available_size>:
 80093dc:	4b09      	ldr	r3, [pc, #36]	@ (8009404 <hal_uart_get_rx_available_size+0x28>)
 80093de:	7b1a      	ldrb	r2, [r3, #12]
 80093e0:	b96a      	cbnz	r2, 80093fe <hal_uart_get_rx_available_size+0x22>
 80093e2:	88d9      	ldrh	r1, [r3, #6]
 80093e4:	891a      	ldrh	r2, [r3, #8]
 80093e6:	b289      	uxth	r1, r1
 80093e8:	88d8      	ldrh	r0, [r3, #6]
 80093ea:	b292      	uxth	r2, r2
 80093ec:	891b      	ldrh	r3, [r3, #8]
 80093ee:	4291      	cmp	r1, r2
 80093f0:	bf3c      	itt	cc
 80093f2:	b280      	uxthcc	r0, r0
 80093f4:	f500 6080 	addcc.w	r0, r0, #1024	@ 0x400
 80093f8:	1ac0      	subs	r0, r0, r3
 80093fa:	b280      	uxth	r0, r0
 80093fc:	4770      	bx	lr
 80093fe:	f44f 6080 	mov.w	r0, #1024	@ 0x400
 8009402:	4770      	bx	lr
 8009404:	20001434 	.word	0x20001434

08009408 <hal_uart_dma_send_bytes>:
 8009408:	b110      	cbz	r0, 8009410 <hal_uart_dma_send_bytes+0x8>
 800940a:	b109      	cbz	r1, 8009410 <hal_uart_dma_send_bytes+0x8>
 800940c:	f7ff bed0 	b.w	80091b0 <hal_uart_dma_send_bytes.part.0>
 8009410:	4770      	bx	lr
 8009412:	bf00      	nop

08009414 <_write>:
 8009414:	b510      	push	{r4, lr}
 8009416:	4608      	mov	r0, r1
 8009418:	4614      	mov	r4, r2
 800941a:	b119      	cbz	r1, 8009424 <_write+0x10>
 800941c:	b291      	uxth	r1, r2
 800941e:	b109      	cbz	r1, 8009424 <_write+0x10>
 8009420:	f7ff fec6 	bl	80091b0 <hal_uart_dma_send_bytes.part.0>
 8009424:	4620      	mov	r0, r4
 8009426:	bd10      	pop	{r4, pc}

08009428 <ds18b20_interface_init>:
 8009428:	2000      	movs	r0, #0
 800942a:	4770      	bx	lr

0800942c <ds18b20_interface_deinit>:
 800942c:	2000      	movs	r0, #0
 800942e:	4770      	bx	lr

08009430 <ds18b20_interface_read>:
 8009430:	b510      	push	{r4, lr}
 8009432:	2140      	movs	r1, #64	@ 0x40
 8009434:	4604      	mov	r4, r0
 8009436:	4803      	ldr	r0, [pc, #12]	@ (8009444 <ds18b20_interface_read+0x14>)
 8009438:	f7fa faea 	bl	8003a10 <HAL_GPIO_ReadPin>
 800943c:	4603      	mov	r3, r0
 800943e:	2000      	movs	r0, #0
 8009440:	7023      	strb	r3, [r4, #0]
 8009442:	bd10      	pop	{r4, pc}
 8009444:	58021000 	.word	0x58021000

08009448 <ds18b20_interface_write>:
 8009448:	4602      	mov	r2, r0
 800944a:	2140      	movs	r1, #64	@ 0x40
 800944c:	4802      	ldr	r0, [pc, #8]	@ (8009458 <ds18b20_interface_write+0x10>)
 800944e:	b508      	push	{r3, lr}
 8009450:	f7fa fae4 	bl	8003a1c <HAL_GPIO_WritePin>
 8009454:	2000      	movs	r0, #0
 8009456:	bd08      	pop	{r3, pc}
 8009458:	58021000 	.word	0x58021000

0800945c <ds18b20_interface_delay_ms>:
 800945c:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
 8009460:	4b03      	ldr	r3, [pc, #12]	@ (8009470 <ds18b20_interface_delay_ms+0x14>)
 8009462:	fb02 f000 	mul.w	r0, r2, r0
 8009466:	fba3 3000 	umull	r3, r0, r3, r0
 800946a:	0980      	lsrs	r0, r0, #6
 800946c:	f7fe b80a 	b.w	8007484 <vTaskDelay>
 8009470:	10624dd3 	.word	0x10624dd3

08009474 <ds18b20_interface_delay_us>:
 8009474:	f7ff bd48 	b.w	8008f08 <dwt_delay_us>

08009478 <ds18b20_interface_enable_irq>:
 8009478:	4770      	bx	lr
 800947a:	bf00      	nop

0800947c <ds18b20_interface_disable_irq>:
 800947c:	4770      	bx	lr
 800947e:	bf00      	nop

08009480 <ds18b20_interface_debug_print>:
 8009480:	b40f      	push	{r0, r1, r2, r3}
 8009482:	b004      	add	sp, #16
 8009484:	4770      	bx	lr
 8009486:	bf00      	nop

08009488 <a_ds18b20_reset>:
 8009488:	b570      	push	{r4, r5, r6, lr}
 800948a:	4606      	mov	r6, r0
 800948c:	69c3      	ldr	r3, [r0, #28]
 800948e:	b082      	sub	sp, #8
 8009490:	4798      	blx	r3
 8009492:	2000      	movs	r0, #0
 8009494:	68f3      	ldr	r3, [r6, #12]
 8009496:	4798      	blx	r3
 8009498:	bb48      	cbnz	r0, 80094ee <a_ds18b20_reset+0x66>
 800949a:	6973      	ldr	r3, [r6, #20]
 800949c:	f240 20ee 	movw	r0, #750	@ 0x2ee
 80094a0:	4798      	blx	r3
 80094a2:	2001      	movs	r0, #1
 80094a4:	68f3      	ldr	r3, [r6, #12]
 80094a6:	4798      	blx	r3
 80094a8:	4605      	mov	r5, r0
 80094aa:	bb00      	cbnz	r0, 80094ee <a_ds18b20_reset+0x66>
 80094ac:	6973      	ldr	r3, [r6, #20]
 80094ae:	200f      	movs	r0, #15
 80094b0:	4798      	blx	r3
 80094b2:	2301      	movs	r3, #1
 80094b4:	f88d 3007 	strb.w	r3, [sp, #7]
 80094b8:	e007      	b.n	80094ca <a_ds18b20_reset+0x42>
 80094ba:	6973      	ldr	r3, [r6, #20]
 80094bc:	b2ed      	uxtb	r5, r5
 80094be:	4798      	blx	r3
 80094c0:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80094c4:	b1d3      	cbz	r3, 80094fc <a_ds18b20_reset+0x74>
 80094c6:	2dc7      	cmp	r5, #199	@ 0xc7
 80094c8:	d818      	bhi.n	80094fc <a_ds18b20_reset+0x74>
 80094ca:	68b3      	ldr	r3, [r6, #8]
 80094cc:	f10d 0007 	add.w	r0, sp, #7
 80094d0:	4798      	blx	r3
 80094d2:	4604      	mov	r4, r0
 80094d4:	3501      	adds	r5, #1
 80094d6:	2001      	movs	r0, #1
 80094d8:	2c00      	cmp	r4, #0
 80094da:	d0ee      	beq.n	80094ba <a_ds18b20_reset+0x32>
 80094dc:	69b3      	ldr	r3, [r6, #24]
 80094de:	2501      	movs	r5, #1
 80094e0:	4798      	blx	r3
 80094e2:	481b      	ldr	r0, [pc, #108]	@ (8009550 <a_ds18b20_reset+0xc8>)
 80094e4:	6a33      	ldr	r3, [r6, #32]
 80094e6:	4798      	blx	r3
 80094e8:	4628      	mov	r0, r5
 80094ea:	b002      	add	sp, #8
 80094ec:	bd70      	pop	{r4, r5, r6, pc}
 80094ee:	69b3      	ldr	r3, [r6, #24]
 80094f0:	4798      	blx	r3
 80094f2:	4818      	ldr	r0, [pc, #96]	@ (8009554 <a_ds18b20_reset+0xcc>)
 80094f4:	6a33      	ldr	r3, [r6, #32]
 80094f6:	4798      	blx	r3
 80094f8:	2501      	movs	r5, #1
 80094fa:	e7f5      	b.n	80094e8 <a_ds18b20_reset+0x60>
 80094fc:	2dc8      	cmp	r5, #200	@ 0xc8
 80094fe:	d01a      	beq.n	8009536 <a_ds18b20_reset+0xae>
 8009500:	2300      	movs	r3, #0
 8009502:	f88d 3007 	strb.w	r3, [sp, #7]
 8009506:	e007      	b.n	8009518 <a_ds18b20_reset+0x90>
 8009508:	6973      	ldr	r3, [r6, #20]
 800950a:	b2e4      	uxtb	r4, r4
 800950c:	4798      	blx	r3
 800950e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8009512:	b95b      	cbnz	r3, 800952c <a_ds18b20_reset+0xa4>
 8009514:	2cf0      	cmp	r4, #240	@ 0xf0
 8009516:	d014      	beq.n	8009542 <a_ds18b20_reset+0xba>
 8009518:	68b3      	ldr	r3, [r6, #8]
 800951a:	f10d 0007 	add.w	r0, sp, #7
 800951e:	4798      	blx	r3
 8009520:	4605      	mov	r5, r0
 8009522:	3401      	adds	r4, #1
 8009524:	2001      	movs	r0, #1
 8009526:	2d00      	cmp	r5, #0
 8009528:	d0ee      	beq.n	8009508 <a_ds18b20_reset+0x80>
 800952a:	e7d7      	b.n	80094dc <a_ds18b20_reset+0x54>
 800952c:	2cf0      	cmp	r4, #240	@ 0xf0
 800952e:	69b3      	ldr	r3, [r6, #24]
 8009530:	d008      	beq.n	8009544 <a_ds18b20_reset+0xbc>
 8009532:	4798      	blx	r3
 8009534:	e7d8      	b.n	80094e8 <a_ds18b20_reset+0x60>
 8009536:	69b3      	ldr	r3, [r6, #24]
 8009538:	4798      	blx	r3
 800953a:	4807      	ldr	r0, [pc, #28]	@ (8009558 <a_ds18b20_reset+0xd0>)
 800953c:	6a33      	ldr	r3, [r6, #32]
 800953e:	4798      	blx	r3
 8009540:	e7da      	b.n	80094f8 <a_ds18b20_reset+0x70>
 8009542:	69b3      	ldr	r3, [r6, #24]
 8009544:	4798      	blx	r3
 8009546:	4804      	ldr	r0, [pc, #16]	@ (8009558 <a_ds18b20_reset+0xd0>)
 8009548:	6a33      	ldr	r3, [r6, #32]
 800954a:	4798      	blx	r3
 800954c:	e7d4      	b.n	80094f8 <a_ds18b20_reset+0x70>
 800954e:	bf00      	nop
 8009550:	0800d6b8 	.word	0x0800d6b8
 8009554:	0800d69c 	.word	0x0800d69c
 8009558:	0800d6d4 	.word	0x0800d6d4

0800955c <a_ds18b20_read_bit>:
 800955c:	b538      	push	{r3, r4, r5, lr}
 800955e:	4604      	mov	r4, r0
 8009560:	2000      	movs	r0, #0
 8009562:	460d      	mov	r5, r1
 8009564:	68e3      	ldr	r3, [r4, #12]
 8009566:	4798      	blx	r3
 8009568:	b998      	cbnz	r0, 8009592 <a_ds18b20_read_bit+0x36>
 800956a:	6963      	ldr	r3, [r4, #20]
 800956c:	2002      	movs	r0, #2
 800956e:	4798      	blx	r3
 8009570:	2001      	movs	r0, #1
 8009572:	68e3      	ldr	r3, [r4, #12]
 8009574:	4798      	blx	r3
 8009576:	b960      	cbnz	r0, 8009592 <a_ds18b20_read_bit+0x36>
 8009578:	6963      	ldr	r3, [r4, #20]
 800957a:	200c      	movs	r0, #12
 800957c:	4798      	blx	r3
 800957e:	4628      	mov	r0, r5
 8009580:	68a3      	ldr	r3, [r4, #8]
 8009582:	4798      	blx	r3
 8009584:	4605      	mov	r5, r0
 8009586:	b950      	cbnz	r0, 800959e <a_ds18b20_read_bit+0x42>
 8009588:	6963      	ldr	r3, [r4, #20]
 800958a:	2032      	movs	r0, #50	@ 0x32
 800958c:	4798      	blx	r3
 800958e:	4628      	mov	r0, r5
 8009590:	bd38      	pop	{r3, r4, r5, pc}
 8009592:	6a23      	ldr	r3, [r4, #32]
 8009594:	4804      	ldr	r0, [pc, #16]	@ (80095a8 <a_ds18b20_read_bit+0x4c>)
 8009596:	4798      	blx	r3
 8009598:	2501      	movs	r5, #1
 800959a:	4628      	mov	r0, r5
 800959c:	bd38      	pop	{r3, r4, r5, pc}
 800959e:	6a23      	ldr	r3, [r4, #32]
 80095a0:	4802      	ldr	r0, [pc, #8]	@ (80095ac <a_ds18b20_read_bit+0x50>)
 80095a2:	4798      	blx	r3
 80095a4:	e7f8      	b.n	8009598 <a_ds18b20_read_bit+0x3c>
 80095a6:	bf00      	nop
 80095a8:	0800d69c 	.word	0x0800d69c
 80095ac:	0800d6b8 	.word	0x0800d6b8

080095b0 <a_ds18b20_read_byte>:
 80095b0:	2300      	movs	r3, #0
 80095b2:	b570      	push	{r4, r5, r6, lr}
 80095b4:	2408      	movs	r4, #8
 80095b6:	b082      	sub	sp, #8
 80095b8:	700b      	strb	r3, [r1, #0]
 80095ba:	4606      	mov	r6, r0
 80095bc:	69c3      	ldr	r3, [r0, #28]
 80095be:	460d      	mov	r5, r1
 80095c0:	4798      	blx	r3
 80095c2:	f10d 0107 	add.w	r1, sp, #7
 80095c6:	4630      	mov	r0, r6
 80095c8:	f7ff ffc8 	bl	800955c <a_ds18b20_read_bit>
 80095cc:	1e62      	subs	r2, r4, #1
 80095ce:	b978      	cbnz	r0, 80095f0 <a_ds18b20_read_byte+0x40>
 80095d0:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80095d4:	f012 04ff 	ands.w	r4, r2, #255	@ 0xff
 80095d8:	7829      	ldrb	r1, [r5, #0]
 80095da:	ea4f 13c3 	mov.w	r3, r3, lsl #7
 80095de:	ea43 0351 	orr.w	r3, r3, r1, lsr #1
 80095e2:	702b      	strb	r3, [r5, #0]
 80095e4:	d1ed      	bne.n	80095c2 <a_ds18b20_read_byte+0x12>
 80095e6:	69b3      	ldr	r3, [r6, #24]
 80095e8:	4798      	blx	r3
 80095ea:	4620      	mov	r0, r4
 80095ec:	b002      	add	sp, #8
 80095ee:	bd70      	pop	{r4, r5, r6, pc}
 80095f0:	69b3      	ldr	r3, [r6, #24]
 80095f2:	2401      	movs	r4, #1
 80095f4:	4798      	blx	r3
 80095f6:	4803      	ldr	r0, [pc, #12]	@ (8009604 <a_ds18b20_read_byte+0x54>)
 80095f8:	6a33      	ldr	r3, [r6, #32]
 80095fa:	4798      	blx	r3
 80095fc:	4620      	mov	r0, r4
 80095fe:	b002      	add	sp, #8
 8009600:	bd70      	pop	{r4, r5, r6, pc}
 8009602:	bf00      	nop
 8009604:	0800d6f4 	.word	0x0800d6f4

08009608 <a_ds18b20_write_byte>:
 8009608:	b570      	push	{r4, r5, r6, lr}
 800960a:	69c3      	ldr	r3, [r0, #28]
 800960c:	4605      	mov	r5, r0
 800960e:	460e      	mov	r6, r1
 8009610:	2408      	movs	r4, #8
 8009612:	4798      	blx	r3
 8009614:	e011      	b.n	800963a <a_ds18b20_write_byte+0x32>
 8009616:	4790      	blx	r2
 8009618:	4603      	mov	r3, r0
 800961a:	2002      	movs	r0, #2
 800961c:	bb13      	cbnz	r3, 8009664 <a_ds18b20_write_byte+0x5c>
 800961e:	696b      	ldr	r3, [r5, #20]
 8009620:	4798      	blx	r3
 8009622:	68eb      	ldr	r3, [r5, #12]
 8009624:	2001      	movs	r0, #1
 8009626:	4798      	blx	r3
 8009628:	4603      	mov	r3, r0
 800962a:	203c      	movs	r0, #60	@ 0x3c
 800962c:	b9d3      	cbnz	r3, 8009664 <a_ds18b20_write_byte+0x5c>
 800962e:	696b      	ldr	r3, [r5, #20]
 8009630:	4798      	blx	r3
 8009632:	1e63      	subs	r3, r4, #1
 8009634:	f013 04ff 	ands.w	r4, r3, #255	@ 0xff
 8009638:	d01c      	beq.n	8009674 <a_ds18b20_write_byte+0x6c>
 800963a:	f006 0301 	and.w	r3, r6, #1
 800963e:	2000      	movs	r0, #0
 8009640:	68ea      	ldr	r2, [r5, #12]
 8009642:	0876      	lsrs	r6, r6, #1
 8009644:	2b00      	cmp	r3, #0
 8009646:	d1e6      	bne.n	8009616 <a_ds18b20_write_byte+0xe>
 8009648:	4618      	mov	r0, r3
 800964a:	4790      	blx	r2
 800964c:	4603      	mov	r3, r0
 800964e:	203c      	movs	r0, #60	@ 0x3c
 8009650:	b943      	cbnz	r3, 8009664 <a_ds18b20_write_byte+0x5c>
 8009652:	696b      	ldr	r3, [r5, #20]
 8009654:	4798      	blx	r3
 8009656:	68eb      	ldr	r3, [r5, #12]
 8009658:	2001      	movs	r0, #1
 800965a:	4798      	blx	r3
 800965c:	4603      	mov	r3, r0
 800965e:	2002      	movs	r0, #2
 8009660:	2b00      	cmp	r3, #0
 8009662:	d0e4      	beq.n	800962e <a_ds18b20_write_byte+0x26>
 8009664:	69ab      	ldr	r3, [r5, #24]
 8009666:	2401      	movs	r4, #1
 8009668:	4798      	blx	r3
 800966a:	4804      	ldr	r0, [pc, #16]	@ (800967c <a_ds18b20_write_byte+0x74>)
 800966c:	6a2b      	ldr	r3, [r5, #32]
 800966e:	4798      	blx	r3
 8009670:	4620      	mov	r0, r4
 8009672:	bd70      	pop	{r4, r5, r6, pc}
 8009674:	69ab      	ldr	r3, [r5, #24]
 8009676:	4798      	blx	r3
 8009678:	4620      	mov	r0, r4
 800967a:	bd70      	pop	{r4, r5, r6, pc}
 800967c:	0800d69c 	.word	0x0800d69c

08009680 <ds18b20_set_mode>:
 8009680:	4603      	mov	r3, r0
 8009682:	b148      	cbz	r0, 8009698 <ds18b20_set_mode+0x18>
 8009684:	f890 2024 	ldrb.w	r2, [r0, #36]	@ 0x24
 8009688:	2a01      	cmp	r2, #1
 800968a:	d103      	bne.n	8009694 <ds18b20_set_mode+0x14>
 800968c:	2000      	movs	r0, #0
 800968e:	f883 1025 	strb.w	r1, [r3, #37]	@ 0x25
 8009692:	4770      	bx	lr
 8009694:	2003      	movs	r0, #3
 8009696:	4770      	bx	lr
 8009698:	2002      	movs	r0, #2
 800969a:	4770      	bx	lr

0800969c <ds18b20_scratchpad_set_resolution>:
 800969c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80096a0:	b084      	sub	sp, #16
 80096a2:	2800      	cmp	r0, #0
 80096a4:	f000 809a 	beq.w	80097dc <ds18b20_scratchpad_set_resolution+0x140>
 80096a8:	f890 5024 	ldrb.w	r5, [r0, #36]	@ 0x24
 80096ac:	4604      	mov	r4, r0
 80096ae:	2d01      	cmp	r5, #1
 80096b0:	d10c      	bne.n	80096cc <ds18b20_scratchpad_set_resolution+0x30>
 80096b2:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
 80096b6:	460e      	mov	r6, r1
 80096b8:	b16b      	cbz	r3, 80096d6 <ds18b20_scratchpad_set_resolution+0x3a>
 80096ba:	2b01      	cmp	r3, #1
 80096bc:	d022      	beq.n	8009704 <ds18b20_scratchpad_set_resolution+0x68>
 80096be:	6a03      	ldr	r3, [r0, #32]
 80096c0:	4873      	ldr	r0, [pc, #460]	@ (8009890 <ds18b20_scratchpad_set_resolution+0x1f4>)
 80096c2:	4798      	blx	r3
 80096c4:	4628      	mov	r0, r5
 80096c6:	b004      	add	sp, #16
 80096c8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80096cc:	2503      	movs	r5, #3
 80096ce:	4628      	mov	r0, r5
 80096d0:	b004      	add	sp, #16
 80096d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80096d6:	f7ff fed7 	bl	8009488 <a_ds18b20_reset>
 80096da:	b960      	cbnz	r0, 80096f6 <ds18b20_scratchpad_set_resolution+0x5a>
 80096dc:	21cc      	movs	r1, #204	@ 0xcc
 80096de:	4620      	mov	r0, r4
 80096e0:	f7ff ff92 	bl	8009608 <a_ds18b20_write_byte>
 80096e4:	2800      	cmp	r0, #0
 80096e6:	d07e      	beq.n	80097e6 <ds18b20_scratchpad_set_resolution+0x14a>
 80096e8:	6a23      	ldr	r3, [r4, #32]
 80096ea:	486a      	ldr	r0, [pc, #424]	@ (8009894 <ds18b20_scratchpad_set_resolution+0x1f8>)
 80096ec:	4798      	blx	r3
 80096ee:	4628      	mov	r0, r5
 80096f0:	b004      	add	sp, #16
 80096f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80096f6:	6a23      	ldr	r3, [r4, #32]
 80096f8:	4867      	ldr	r0, [pc, #412]	@ (8009898 <ds18b20_scratchpad_set_resolution+0x1fc>)
 80096fa:	4798      	blx	r3
 80096fc:	4628      	mov	r0, r5
 80096fe:	b004      	add	sp, #16
 8009700:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009704:	f7ff fec0 	bl	8009488 <a_ds18b20_reset>
 8009708:	2800      	cmp	r0, #0
 800970a:	d1f4      	bne.n	80096f6 <ds18b20_scratchpad_set_resolution+0x5a>
 800970c:	2155      	movs	r1, #85	@ 0x55
 800970e:	4620      	mov	r0, r4
 8009710:	f7ff ff7a 	bl	8009608 <a_ds18b20_write_byte>
 8009714:	2800      	cmp	r0, #0
 8009716:	d1e7      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009718:	f104 0825 	add.w	r8, r4, #37	@ 0x25
 800971c:	f104 072d 	add.w	r7, r4, #45	@ 0x2d
 8009720:	46c1      	mov	r9, r8
 8009722:	f819 1f01 	ldrb.w	r1, [r9, #1]!
 8009726:	4620      	mov	r0, r4
 8009728:	f7ff ff6e 	bl	8009608 <a_ds18b20_write_byte>
 800972c:	2800      	cmp	r0, #0
 800972e:	d1db      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009730:	45b9      	cmp	r9, r7
 8009732:	d1f6      	bne.n	8009722 <ds18b20_scratchpad_set_resolution+0x86>
 8009734:	21be      	movs	r1, #190	@ 0xbe
 8009736:	4620      	mov	r0, r4
 8009738:	f7ff ff66 	bl	8009608 <a_ds18b20_write_byte>
 800973c:	2800      	cmp	r0, #0
 800973e:	d1d3      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009740:	f10d 090d 	add.w	r9, sp, #13
 8009744:	f10d 0a04 	add.w	sl, sp, #4
 8009748:	4651      	mov	r1, sl
 800974a:	4620      	mov	r0, r4
 800974c:	f10a 0a01 	add.w	sl, sl, #1
 8009750:	f7ff ff2e 	bl	80095b0 <a_ds18b20_read_byte>
 8009754:	2800      	cmp	r0, #0
 8009756:	d16c      	bne.n	8009832 <ds18b20_scratchpad_set_resolution+0x196>
 8009758:	45ca      	cmp	sl, r9
 800975a:	d1f5      	bne.n	8009748 <ds18b20_scratchpad_set_resolution+0xac>
 800975c:	f89d e00c 	ldrb.w	lr, [sp, #12]
 8009760:	f10d 0303 	add.w	r3, sp, #3
 8009764:	f10d 0c0b 	add.w	ip, sp, #11
 8009768:	494c      	ldr	r1, [pc, #304]	@ (800989c <ds18b20_scratchpad_set_resolution+0x200>)
 800976a:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 800976e:	4050      	eors	r0, r2
 8009770:	4563      	cmp	r3, ip
 8009772:	b2c0      	uxtb	r0, r0
 8009774:	5c08      	ldrb	r0, [r1, r0]
 8009776:	d1f8      	bne.n	800976a <ds18b20_scratchpad_set_resolution+0xce>
 8009778:	4586      	cmp	lr, r0
 800977a:	d156      	bne.n	800982a <ds18b20_scratchpad_set_resolution+0x18e>
 800977c:	4620      	mov	r0, r4
 800977e:	f7ff fe83 	bl	8009488 <a_ds18b20_reset>
 8009782:	2800      	cmp	r0, #0
 8009784:	d1b7      	bne.n	80096f6 <ds18b20_scratchpad_set_resolution+0x5a>
 8009786:	2155      	movs	r1, #85	@ 0x55
 8009788:	4620      	mov	r0, r4
 800978a:	f7ff ff3d 	bl	8009608 <a_ds18b20_write_byte>
 800978e:	2800      	cmp	r0, #0
 8009790:	d1aa      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009792:	f818 1f01 	ldrb.w	r1, [r8, #1]!
 8009796:	4620      	mov	r0, r4
 8009798:	f7ff ff36 	bl	8009608 <a_ds18b20_write_byte>
 800979c:	2800      	cmp	r0, #0
 800979e:	d1a3      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 80097a0:	45b8      	cmp	r8, r7
 80097a2:	d1f6      	bne.n	8009792 <ds18b20_scratchpad_set_resolution+0xf6>
 80097a4:	214e      	movs	r1, #78	@ 0x4e
 80097a6:	4620      	mov	r0, r4
 80097a8:	f7ff ff2e 	bl	8009608 <a_ds18b20_write_byte>
 80097ac:	2800      	cmp	r0, #0
 80097ae:	d19b      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 80097b0:	f89d 3008 	ldrb.w	r3, [sp, #8]
 80097b4:	af02      	add	r7, sp, #8
 80097b6:	f023 0360 	bic.w	r3, r3, #96	@ 0x60
 80097ba:	ea43 1346 	orr.w	r3, r3, r6, lsl #5
 80097be:	f10d 0605 	add.w	r6, sp, #5
 80097c2:	f88d 3008 	strb.w	r3, [sp, #8]
 80097c6:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 80097ca:	4620      	mov	r0, r4
 80097cc:	f7ff ff1c 	bl	8009608 <a_ds18b20_write_byte>
 80097d0:	2800      	cmp	r0, #0
 80097d2:	d189      	bne.n	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 80097d4:	42be      	cmp	r6, r7
 80097d6:	d1f6      	bne.n	80097c6 <ds18b20_scratchpad_set_resolution+0x12a>
 80097d8:	2500      	movs	r5, #0
 80097da:	e773      	b.n	80096c4 <ds18b20_scratchpad_set_resolution+0x28>
 80097dc:	2502      	movs	r5, #2
 80097de:	4628      	mov	r0, r5
 80097e0:	b004      	add	sp, #16
 80097e2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80097e6:	21be      	movs	r1, #190	@ 0xbe
 80097e8:	4620      	mov	r0, r4
 80097ea:	f7ff ff0d 	bl	8009608 <a_ds18b20_write_byte>
 80097ee:	2800      	cmp	r0, #0
 80097f0:	f47f af7a 	bne.w	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 80097f4:	f10d 080d 	add.w	r8, sp, #13
 80097f8:	af01      	add	r7, sp, #4
 80097fa:	4639      	mov	r1, r7
 80097fc:	4620      	mov	r0, r4
 80097fe:	3701      	adds	r7, #1
 8009800:	f7ff fed6 	bl	80095b0 <a_ds18b20_read_byte>
 8009804:	b9a8      	cbnz	r0, 8009832 <ds18b20_scratchpad_set_resolution+0x196>
 8009806:	4547      	cmp	r7, r8
 8009808:	d1f7      	bne.n	80097fa <ds18b20_scratchpad_set_resolution+0x15e>
 800980a:	f89d c00c 	ldrb.w	ip, [sp, #12]
 800980e:	f10d 0303 	add.w	r3, sp, #3
 8009812:	f10d 070b 	add.w	r7, sp, #11
 8009816:	4921      	ldr	r1, [pc, #132]	@ (800989c <ds18b20_scratchpad_set_resolution+0x200>)
 8009818:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 800981c:	4050      	eors	r0, r2
 800981e:	42bb      	cmp	r3, r7
 8009820:	b2c0      	uxtb	r0, r0
 8009822:	5c08      	ldrb	r0, [r1, r0]
 8009824:	d1f8      	bne.n	8009818 <ds18b20_scratchpad_set_resolution+0x17c>
 8009826:	4584      	cmp	ip, r0
 8009828:	d007      	beq.n	800983a <ds18b20_scratchpad_set_resolution+0x19e>
 800982a:	6a23      	ldr	r3, [r4, #32]
 800982c:	481c      	ldr	r0, [pc, #112]	@ (80098a0 <ds18b20_scratchpad_set_resolution+0x204>)
 800982e:	4798      	blx	r3
 8009830:	e748      	b.n	80096c4 <ds18b20_scratchpad_set_resolution+0x28>
 8009832:	6a23      	ldr	r3, [r4, #32]
 8009834:	481b      	ldr	r0, [pc, #108]	@ (80098a4 <ds18b20_scratchpad_set_resolution+0x208>)
 8009836:	4798      	blx	r3
 8009838:	e744      	b.n	80096c4 <ds18b20_scratchpad_set_resolution+0x28>
 800983a:	4620      	mov	r0, r4
 800983c:	f7ff fe24 	bl	8009488 <a_ds18b20_reset>
 8009840:	2800      	cmp	r0, #0
 8009842:	f47f af58 	bne.w	80096f6 <ds18b20_scratchpad_set_resolution+0x5a>
 8009846:	21cc      	movs	r1, #204	@ 0xcc
 8009848:	4620      	mov	r0, r4
 800984a:	f7ff fedd 	bl	8009608 <a_ds18b20_write_byte>
 800984e:	2800      	cmp	r0, #0
 8009850:	f47f af4a 	bne.w	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009854:	214e      	movs	r1, #78	@ 0x4e
 8009856:	4620      	mov	r0, r4
 8009858:	f7ff fed6 	bl	8009608 <a_ds18b20_write_byte>
 800985c:	2800      	cmp	r0, #0
 800985e:	f47f af43 	bne.w	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009862:	f89d 3008 	ldrb.w	r3, [sp, #8]
 8009866:	af02      	add	r7, sp, #8
 8009868:	f023 0360 	bic.w	r3, r3, #96	@ 0x60
 800986c:	ea43 1346 	orr.w	r3, r3, r6, lsl #5
 8009870:	f10d 0605 	add.w	r6, sp, #5
 8009874:	f88d 3008 	strb.w	r3, [sp, #8]
 8009878:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 800987c:	4620      	mov	r0, r4
 800987e:	f7ff fec3 	bl	8009608 <a_ds18b20_write_byte>
 8009882:	2800      	cmp	r0, #0
 8009884:	f47f af30 	bne.w	80096e8 <ds18b20_scratchpad_set_resolution+0x4c>
 8009888:	42be      	cmp	r6, r7
 800988a:	d1f5      	bne.n	8009878 <ds18b20_scratchpad_set_resolution+0x1dc>
 800988c:	e7a4      	b.n	80097d8 <ds18b20_scratchpad_set_resolution+0x13c>
 800988e:	bf00      	nop
 8009890:	0800d808 	.word	0x0800d808
 8009894:	0800d75c 	.word	0x0800d75c
 8009898:	0800d7b4 	.word	0x0800d7b4
 800989c:	0800dd60 	.word	0x0800dd60
 80098a0:	0800d7ec 	.word	0x0800d7ec
 80098a4:	0800d7d0 	.word	0x0800d7d0

080098a8 <ds18b20_init>:
 80098a8:	b330      	cbz	r0, 80098f8 <ds18b20_init+0x50>
 80098aa:	6a03      	ldr	r3, [r0, #32]
 80098ac:	b510      	push	{r4, lr}
 80098ae:	4604      	mov	r4, r0
 80098b0:	b303      	cbz	r3, 80098f4 <ds18b20_init+0x4c>
 80098b2:	6802      	ldr	r2, [r0, #0]
 80098b4:	b312      	cbz	r2, 80098fc <ds18b20_init+0x54>
 80098b6:	6841      	ldr	r1, [r0, #4]
 80098b8:	b319      	cbz	r1, 8009902 <ds18b20_init+0x5a>
 80098ba:	6881      	ldr	r1, [r0, #8]
 80098bc:	b321      	cbz	r1, 8009908 <ds18b20_init+0x60>
 80098be:	68c1      	ldr	r1, [r0, #12]
 80098c0:	b329      	cbz	r1, 800990e <ds18b20_init+0x66>
 80098c2:	6901      	ldr	r1, [r0, #16]
 80098c4:	b1a1      	cbz	r1, 80098f0 <ds18b20_init+0x48>
 80098c6:	6941      	ldr	r1, [r0, #20]
 80098c8:	b321      	cbz	r1, 8009914 <ds18b20_init+0x6c>
 80098ca:	6981      	ldr	r1, [r0, #24]
 80098cc:	b329      	cbz	r1, 800991a <ds18b20_init+0x72>
 80098ce:	69c1      	ldr	r1, [r0, #28]
 80098d0:	b331      	cbz	r1, 8009920 <ds18b20_init+0x78>
 80098d2:	4790      	blx	r2
 80098d4:	b120      	cbz	r0, 80098e0 <ds18b20_init+0x38>
 80098d6:	6a23      	ldr	r3, [r4, #32]
 80098d8:	4816      	ldr	r0, [pc, #88]	@ (8009934 <ds18b20_init+0x8c>)
 80098da:	4798      	blx	r3
 80098dc:	2001      	movs	r0, #1
 80098de:	bd10      	pop	{r4, pc}
 80098e0:	4620      	mov	r0, r4
 80098e2:	f7ff fdd1 	bl	8009488 <a_ds18b20_reset>
 80098e6:	b9f0      	cbnz	r0, 8009926 <ds18b20_init+0x7e>
 80098e8:	2301      	movs	r3, #1
 80098ea:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
 80098ee:	bd10      	pop	{r4, pc}
 80098f0:	4811      	ldr	r0, [pc, #68]	@ (8009938 <ds18b20_init+0x90>)
 80098f2:	4798      	blx	r3
 80098f4:	2003      	movs	r0, #3
 80098f6:	bd10      	pop	{r4, pc}
 80098f8:	2002      	movs	r0, #2
 80098fa:	4770      	bx	lr
 80098fc:	480f      	ldr	r0, [pc, #60]	@ (800993c <ds18b20_init+0x94>)
 80098fe:	4798      	blx	r3
 8009900:	e7f8      	b.n	80098f4 <ds18b20_init+0x4c>
 8009902:	480f      	ldr	r0, [pc, #60]	@ (8009940 <ds18b20_init+0x98>)
 8009904:	4798      	blx	r3
 8009906:	e7f5      	b.n	80098f4 <ds18b20_init+0x4c>
 8009908:	480e      	ldr	r0, [pc, #56]	@ (8009944 <ds18b20_init+0x9c>)
 800990a:	4798      	blx	r3
 800990c:	e7f2      	b.n	80098f4 <ds18b20_init+0x4c>
 800990e:	480e      	ldr	r0, [pc, #56]	@ (8009948 <ds18b20_init+0xa0>)
 8009910:	4798      	blx	r3
 8009912:	e7ef      	b.n	80098f4 <ds18b20_init+0x4c>
 8009914:	480d      	ldr	r0, [pc, #52]	@ (800994c <ds18b20_init+0xa4>)
 8009916:	4798      	blx	r3
 8009918:	e7ec      	b.n	80098f4 <ds18b20_init+0x4c>
 800991a:	480d      	ldr	r0, [pc, #52]	@ (8009950 <ds18b20_init+0xa8>)
 800991c:	4798      	blx	r3
 800991e:	e7e9      	b.n	80098f4 <ds18b20_init+0x4c>
 8009920:	480c      	ldr	r0, [pc, #48]	@ (8009954 <ds18b20_init+0xac>)
 8009922:	4798      	blx	r3
 8009924:	e7e6      	b.n	80098f4 <ds18b20_init+0x4c>
 8009926:	6a23      	ldr	r3, [r4, #32]
 8009928:	480b      	ldr	r0, [pc, #44]	@ (8009958 <ds18b20_init+0xb0>)
 800992a:	4798      	blx	r3
 800992c:	6863      	ldr	r3, [r4, #4]
 800992e:	4798      	blx	r3
 8009930:	2004      	movs	r0, #4
 8009932:	bd10      	pop	{r4, pc}
 8009934:	0800d904 	.word	0x0800d904
 8009938:	0800d890 	.word	0x0800d890
 800993c:	0800d820 	.word	0x0800d820
 8009940:	0800d83c 	.word	0x0800d83c
 8009944:	0800d858 	.word	0x0800d858
 8009948:	0800d874 	.word	0x0800d874
 800994c:	0800d8ac 	.word	0x0800d8ac
 8009950:	0800d8c8 	.word	0x0800d8c8
 8009954:	0800d8e4 	.word	0x0800d8e4
 8009958:	0800d744 	.word	0x0800d744

0800995c <ds18b20_deinit>:
 800995c:	b190      	cbz	r0, 8009984 <ds18b20_deinit+0x28>
 800995e:	b538      	push	{r3, r4, r5, lr}
 8009960:	f890 5024 	ldrb.w	r5, [r0, #36]	@ 0x24
 8009964:	4604      	mov	r4, r0
 8009966:	2d01      	cmp	r5, #1
 8009968:	d105      	bne.n	8009976 <ds18b20_deinit+0x1a>
 800996a:	6843      	ldr	r3, [r0, #4]
 800996c:	4798      	blx	r3
 800996e:	b920      	cbnz	r0, 800997a <ds18b20_deinit+0x1e>
 8009970:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
 8009974:	bd38      	pop	{r3, r4, r5, pc}
 8009976:	2003      	movs	r0, #3
 8009978:	bd38      	pop	{r3, r4, r5, pc}
 800997a:	6a23      	ldr	r3, [r4, #32]
 800997c:	4802      	ldr	r0, [pc, #8]	@ (8009988 <ds18b20_deinit+0x2c>)
 800997e:	4798      	blx	r3
 8009980:	4628      	mov	r0, r5
 8009982:	bd38      	pop	{r3, r4, r5, pc}
 8009984:	2002      	movs	r0, #2
 8009986:	4770      	bx	lr
 8009988:	0800d920 	.word	0x0800d920

0800998c <ds18b20_read>:
 800998c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009990:	b085      	sub	sp, #20
 8009992:	2800      	cmp	r0, #0
 8009994:	d069      	beq.n	8009a6a <ds18b20_read+0xde>
 8009996:	f890 5024 	ldrb.w	r5, [r0, #36]	@ 0x24
 800999a:	4604      	mov	r4, r0
 800999c:	2d01      	cmp	r5, #1
 800999e:	d10d      	bne.n	80099bc <ds18b20_read+0x30>
 80099a0:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
 80099a4:	460f      	mov	r7, r1
 80099a6:	4616      	mov	r6, r2
 80099a8:	b16b      	cbz	r3, 80099c6 <ds18b20_read+0x3a>
 80099aa:	2b01      	cmp	r3, #1
 80099ac:	d022      	beq.n	80099f4 <ds18b20_read+0x68>
 80099ae:	6a03      	ldr	r3, [r0, #32]
 80099b0:	4891      	ldr	r0, [pc, #580]	@ (8009bf8 <ds18b20_read+0x26c>)
 80099b2:	4798      	blx	r3
 80099b4:	4628      	mov	r0, r5
 80099b6:	b005      	add	sp, #20
 80099b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80099bc:	2503      	movs	r5, #3
 80099be:	4628      	mov	r0, r5
 80099c0:	b005      	add	sp, #20
 80099c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80099c6:	f7ff fd5f 	bl	8009488 <a_ds18b20_reset>
 80099ca:	b960      	cbnz	r0, 80099e6 <ds18b20_read+0x5a>
 80099cc:	21cc      	movs	r1, #204	@ 0xcc
 80099ce:	4620      	mov	r0, r4
 80099d0:	f7ff fe1a 	bl	8009608 <a_ds18b20_write_byte>
 80099d4:	2800      	cmp	r0, #0
 80099d6:	d04d      	beq.n	8009a74 <ds18b20_read+0xe8>
 80099d8:	6a23      	ldr	r3, [r4, #32]
 80099da:	4888      	ldr	r0, [pc, #544]	@ (8009bfc <ds18b20_read+0x270>)
 80099dc:	4798      	blx	r3
 80099de:	4628      	mov	r0, r5
 80099e0:	b005      	add	sp, #20
 80099e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80099e6:	6a23      	ldr	r3, [r4, #32]
 80099e8:	4885      	ldr	r0, [pc, #532]	@ (8009c00 <ds18b20_read+0x274>)
 80099ea:	4798      	blx	r3
 80099ec:	4628      	mov	r0, r5
 80099ee:	b005      	add	sp, #20
 80099f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80099f4:	f7ff fd48 	bl	8009488 <a_ds18b20_reset>
 80099f8:	2800      	cmp	r0, #0
 80099fa:	d1f4      	bne.n	80099e6 <ds18b20_read+0x5a>
 80099fc:	2155      	movs	r1, #85	@ 0x55
 80099fe:	4620      	mov	r0, r4
 8009a00:	f7ff fe02 	bl	8009608 <a_ds18b20_write_byte>
 8009a04:	2800      	cmp	r0, #0
 8009a06:	d1e7      	bne.n	80099d8 <ds18b20_read+0x4c>
 8009a08:	f104 0b25 	add.w	fp, r4, #37	@ 0x25
 8009a0c:	f104 0a2d 	add.w	sl, r4, #45	@ 0x2d
 8009a10:	46d8      	mov	r8, fp
 8009a12:	f818 1f01 	ldrb.w	r1, [r8, #1]!
 8009a16:	4620      	mov	r0, r4
 8009a18:	f7ff fdf6 	bl	8009608 <a_ds18b20_write_byte>
 8009a1c:	2800      	cmp	r0, #0
 8009a1e:	d1db      	bne.n	80099d8 <ds18b20_read+0x4c>
 8009a20:	45d0      	cmp	r8, sl
 8009a22:	d1f6      	bne.n	8009a12 <ds18b20_read+0x86>
 8009a24:	2144      	movs	r1, #68	@ 0x44
 8009a26:	4620      	mov	r0, r4
 8009a28:	f7ff fdee 	bl	8009608 <a_ds18b20_write_byte>
 8009a2c:	4680      	mov	r8, r0
 8009a2e:	2800      	cmp	r0, #0
 8009a30:	d1d2      	bne.n	80099d8 <ds18b20_read+0x4c>
 8009a32:	f10d 0903 	add.w	r9, sp, #3
 8009a36:	f88d 0003 	strb.w	r0, [sp, #3]
 8009a3a:	e00a      	b.n	8009a52 <ds18b20_read+0xc6>
 8009a3c:	6923      	ldr	r3, [r4, #16]
 8009a3e:	f108 0801 	add.w	r8, r8, #1
 8009a42:	4798      	blx	r3
 8009a44:	f89d 3003 	ldrb.w	r3, [sp, #3]
 8009a48:	2b00      	cmp	r3, #0
 8009a4a:	d16b      	bne.n	8009b24 <ds18b20_read+0x198>
 8009a4c:	f1b8 0f64 	cmp.w	r8, #100	@ 0x64
 8009a50:	d064      	beq.n	8009b1c <ds18b20_read+0x190>
 8009a52:	4649      	mov	r1, r9
 8009a54:	4620      	mov	r0, r4
 8009a56:	f7ff fd81 	bl	800955c <a_ds18b20_read_bit>
 8009a5a:	4603      	mov	r3, r0
 8009a5c:	200a      	movs	r0, #10
 8009a5e:	2b00      	cmp	r3, #0
 8009a60:	d0ec      	beq.n	8009a3c <ds18b20_read+0xb0>
 8009a62:	6a23      	ldr	r3, [r4, #32]
 8009a64:	4867      	ldr	r0, [pc, #412]	@ (8009c04 <ds18b20_read+0x278>)
 8009a66:	4798      	blx	r3
 8009a68:	e7a4      	b.n	80099b4 <ds18b20_read+0x28>
 8009a6a:	2502      	movs	r5, #2
 8009a6c:	4628      	mov	r0, r5
 8009a6e:	b005      	add	sp, #20
 8009a70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009a74:	2144      	movs	r1, #68	@ 0x44
 8009a76:	4620      	mov	r0, r4
 8009a78:	f7ff fdc6 	bl	8009608 <a_ds18b20_write_byte>
 8009a7c:	4680      	mov	r8, r0
 8009a7e:	2800      	cmp	r0, #0
 8009a80:	d1aa      	bne.n	80099d8 <ds18b20_read+0x4c>
 8009a82:	f10d 0903 	add.w	r9, sp, #3
 8009a86:	f88d 0003 	strb.w	r0, [sp, #3]
 8009a8a:	e009      	b.n	8009aa0 <ds18b20_read+0x114>
 8009a8c:	6923      	ldr	r3, [r4, #16]
 8009a8e:	f108 0801 	add.w	r8, r8, #1
 8009a92:	4798      	blx	r3
 8009a94:	f89d 3003 	ldrb.w	r3, [sp, #3]
 8009a98:	b95b      	cbnz	r3, 8009ab2 <ds18b20_read+0x126>
 8009a9a:	f1b8 0f63 	cmp.w	r8, #99	@ 0x63
 8009a9e:	d808      	bhi.n	8009ab2 <ds18b20_read+0x126>
 8009aa0:	4649      	mov	r1, r9
 8009aa2:	4620      	mov	r0, r4
 8009aa4:	f7ff fd5a 	bl	800955c <a_ds18b20_read_bit>
 8009aa8:	4603      	mov	r3, r0
 8009aaa:	200a      	movs	r0, #10
 8009aac:	2b00      	cmp	r3, #0
 8009aae:	d0ed      	beq.n	8009a8c <ds18b20_read+0x100>
 8009ab0:	e7d7      	b.n	8009a62 <ds18b20_read+0xd6>
 8009ab2:	f1b8 0f64 	cmp.w	r8, #100	@ 0x64
 8009ab6:	d031      	beq.n	8009b1c <ds18b20_read+0x190>
 8009ab8:	4620      	mov	r0, r4
 8009aba:	f7ff fce5 	bl	8009488 <a_ds18b20_reset>
 8009abe:	2800      	cmp	r0, #0
 8009ac0:	d191      	bne.n	80099e6 <ds18b20_read+0x5a>
 8009ac2:	21cc      	movs	r1, #204	@ 0xcc
 8009ac4:	4620      	mov	r0, r4
 8009ac6:	f7ff fd9f 	bl	8009608 <a_ds18b20_write_byte>
 8009aca:	2800      	cmp	r0, #0
 8009acc:	d184      	bne.n	80099d8 <ds18b20_read+0x4c>
 8009ace:	21be      	movs	r1, #190	@ 0xbe
 8009ad0:	4620      	mov	r0, r4
 8009ad2:	f7ff fd99 	bl	8009608 <a_ds18b20_write_byte>
 8009ad6:	2800      	cmp	r0, #0
 8009ad8:	f47f af7e 	bne.w	80099d8 <ds18b20_read+0x4c>
 8009adc:	f10d 080d 	add.w	r8, sp, #13
 8009ae0:	f10d 0a04 	add.w	sl, sp, #4
 8009ae4:	4651      	mov	r1, sl
 8009ae6:	4620      	mov	r0, r4
 8009ae8:	f10a 0a01 	add.w	sl, sl, #1
 8009aec:	f7ff fd60 	bl	80095b0 <a_ds18b20_read_byte>
 8009af0:	2800      	cmp	r0, #0
 8009af2:	d152      	bne.n	8009b9a <ds18b20_read+0x20e>
 8009af4:	45d0      	cmp	r8, sl
 8009af6:	d1f5      	bne.n	8009ae4 <ds18b20_read+0x158>
 8009af8:	f10d 010b 	add.w	r1, sp, #11
 8009afc:	f89d c00c 	ldrb.w	ip, [sp, #12]
 8009b00:	4a41      	ldr	r2, [pc, #260]	@ (8009c08 <ds18b20_read+0x27c>)
 8009b02:	f819 3f01 	ldrb.w	r3, [r9, #1]!
 8009b06:	4043      	eors	r3, r0
 8009b08:	4589      	cmp	r9, r1
 8009b0a:	b2db      	uxtb	r3, r3
 8009b0c:	5cd0      	ldrb	r0, [r2, r3]
 8009b0e:	d1f8      	bne.n	8009b02 <ds18b20_read+0x176>
 8009b10:	4584      	cmp	ip, r0
 8009b12:	d046      	beq.n	8009ba2 <ds18b20_read+0x216>
 8009b14:	6a23      	ldr	r3, [r4, #32]
 8009b16:	483d      	ldr	r0, [pc, #244]	@ (8009c0c <ds18b20_read+0x280>)
 8009b18:	4798      	blx	r3
 8009b1a:	e74b      	b.n	80099b4 <ds18b20_read+0x28>
 8009b1c:	6a23      	ldr	r3, [r4, #32]
 8009b1e:	483c      	ldr	r0, [pc, #240]	@ (8009c10 <ds18b20_read+0x284>)
 8009b20:	4798      	blx	r3
 8009b22:	e747      	b.n	80099b4 <ds18b20_read+0x28>
 8009b24:	f1b8 0f64 	cmp.w	r8, #100	@ 0x64
 8009b28:	d0f8      	beq.n	8009b1c <ds18b20_read+0x190>
 8009b2a:	4620      	mov	r0, r4
 8009b2c:	f7ff fcac 	bl	8009488 <a_ds18b20_reset>
 8009b30:	2800      	cmp	r0, #0
 8009b32:	f47f af58 	bne.w	80099e6 <ds18b20_read+0x5a>
 8009b36:	2155      	movs	r1, #85	@ 0x55
 8009b38:	4620      	mov	r0, r4
 8009b3a:	f7ff fd65 	bl	8009608 <a_ds18b20_write_byte>
 8009b3e:	2800      	cmp	r0, #0
 8009b40:	f47f af4a 	bne.w	80099d8 <ds18b20_read+0x4c>
 8009b44:	f81b 1f01 	ldrb.w	r1, [fp, #1]!
 8009b48:	4620      	mov	r0, r4
 8009b4a:	f7ff fd5d 	bl	8009608 <a_ds18b20_write_byte>
 8009b4e:	2800      	cmp	r0, #0
 8009b50:	f47f af42 	bne.w	80099d8 <ds18b20_read+0x4c>
 8009b54:	45d3      	cmp	fp, sl
 8009b56:	d1f5      	bne.n	8009b44 <ds18b20_read+0x1b8>
 8009b58:	21be      	movs	r1, #190	@ 0xbe
 8009b5a:	4620      	mov	r0, r4
 8009b5c:	f7ff fd54 	bl	8009608 <a_ds18b20_write_byte>
 8009b60:	2800      	cmp	r0, #0
 8009b62:	f47f af39 	bne.w	80099d8 <ds18b20_read+0x4c>
 8009b66:	f10d 080d 	add.w	r8, sp, #13
 8009b6a:	f10d 0a04 	add.w	sl, sp, #4
 8009b6e:	4651      	mov	r1, sl
 8009b70:	4620      	mov	r0, r4
 8009b72:	f10a 0a01 	add.w	sl, sl, #1
 8009b76:	f7ff fd1b 	bl	80095b0 <a_ds18b20_read_byte>
 8009b7a:	b970      	cbnz	r0, 8009b9a <ds18b20_read+0x20e>
 8009b7c:	45c2      	cmp	sl, r8
 8009b7e:	d1f6      	bne.n	8009b6e <ds18b20_read+0x1e2>
 8009b80:	f10d 010b 	add.w	r1, sp, #11
 8009b84:	f89d c00c 	ldrb.w	ip, [sp, #12]
 8009b88:	4a1f      	ldr	r2, [pc, #124]	@ (8009c08 <ds18b20_read+0x27c>)
 8009b8a:	f819 3f01 	ldrb.w	r3, [r9, #1]!
 8009b8e:	4043      	eors	r3, r0
 8009b90:	4589      	cmp	r9, r1
 8009b92:	b2db      	uxtb	r3, r3
 8009b94:	5cd0      	ldrb	r0, [r2, r3]
 8009b96:	d1f8      	bne.n	8009b8a <ds18b20_read+0x1fe>
 8009b98:	e7ba      	b.n	8009b10 <ds18b20_read+0x184>
 8009b9a:	6a23      	ldr	r3, [r4, #32]
 8009b9c:	481d      	ldr	r0, [pc, #116]	@ (8009c14 <ds18b20_read+0x288>)
 8009b9e:	4798      	blx	r3
 8009ba0:	e708      	b.n	80099b4 <ds18b20_read+0x28>
 8009ba2:	f89d 1008 	ldrb.w	r1, [sp, #8]
 8009ba6:	f9bd 3004 	ldrsh.w	r3, [sp, #4]
 8009baa:	f011 0f60 	tst.w	r1, #96	@ 0x60
 8009bae:	f3c1 1241 	ubfx	r2, r1, #5, #2
 8009bb2:	803b      	strh	r3, [r7, #0]
 8009bb4:	d109      	bne.n	8009bca <ds18b20_read+0x23e>
 8009bb6:	10db      	asrs	r3, r3, #3
 8009bb8:	ee07 3a90 	vmov	s15, r3
 8009bbc:	803b      	strh	r3, [r7, #0]
 8009bbe:	eefa 7aef 	vcvt.f32.s32	s15, s15, #1
 8009bc2:	2500      	movs	r5, #0
 8009bc4:	edc6 7a00 	vstr	s15, [r6]
 8009bc8:	e6f4      	b.n	80099b4 <ds18b20_read+0x28>
 8009bca:	2a01      	cmp	r2, #1
 8009bcc:	d006      	beq.n	8009bdc <ds18b20_read+0x250>
 8009bce:	2a02      	cmp	r2, #2
 8009bd0:	d00b      	beq.n	8009bea <ds18b20_read+0x25e>
 8009bd2:	ee07 3a90 	vmov	s15, r3
 8009bd6:	eefa 7ace 	vcvt.f32.s32	s15, s15, #4
 8009bda:	e7f2      	b.n	8009bc2 <ds18b20_read+0x236>
 8009bdc:	109b      	asrs	r3, r3, #2
 8009bde:	ee07 3a90 	vmov	s15, r3
 8009be2:	803b      	strh	r3, [r7, #0]
 8009be4:	eefa 7acf 	vcvt.f32.s32	s15, s15, #2
 8009be8:	e7eb      	b.n	8009bc2 <ds18b20_read+0x236>
 8009bea:	105b      	asrs	r3, r3, #1
 8009bec:	ee07 3a90 	vmov	s15, r3
 8009bf0:	803b      	strh	r3, [r7, #0]
 8009bf2:	eefa 7aee 	vcvt.f32.s32	s15, s15, #3
 8009bf6:	e7e4      	b.n	8009bc2 <ds18b20_read+0x236>
 8009bf8:	0800d808 	.word	0x0800d808
 8009bfc:	0800d75c 	.word	0x0800d75c
 8009c00:	0800d7b4 	.word	0x0800d7b4
 8009c04:	0800d77c 	.word	0x0800d77c
 8009c08:	0800dd60 	.word	0x0800dd60
 8009c0c:	0800d7ec 	.word	0x0800d7ec
 8009c10:	0800d938 	.word	0x0800d938
 8009c14:	0800d954 	.word	0x0800d954

08009c18 <key_scan_task>:
 8009c18:	b508      	push	{r3, lr}
 8009c1a:	f7ff f9f9 	bl	8009010 <key_scan>
 8009c1e:	2005      	movs	r0, #5
 8009c20:	f7fd fc30 	bl	8007484 <vTaskDelay>
 8009c24:	e7f9      	b.n	8009c1a <key_scan_task+0x2>
 8009c26:	bf00      	nop

08009c28 <key_detect_task>:
 8009c28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009c2c:	4e50      	ldr	r6, [pc, #320]	@ (8009d70 <key_detect_task+0x148>)
 8009c2e:	f8df a170 	ldr.w	sl, [pc, #368]	@ 8009da0 <key_detect_task+0x178>
 8009c32:	ed2d 8b04 	vpush	{d8-d9}
 8009c36:	ed9f 9a4f 	vldr	s18, [pc, #316]	@ 8009d74 <key_detect_task+0x14c>
 8009c3a:	b087      	sub	sp, #28
 8009c3c:	ed9f 8a4e 	vldr	s16, [pc, #312]	@ 8009d78 <key_detect_task+0x150>
 8009c40:	e009      	b.n	8009c56 <key_detect_task+0x2e>
 8009c42:	f10b 0b01 	add.w	fp, fp, #1
 8009c46:	7833      	ldrb	r3, [r6, #0]
 8009c48:	fa5f f48b 	uxtb.w	r4, fp
 8009c4c:	42a3      	cmp	r3, r4
 8009c4e:	d80c      	bhi.n	8009c6a <key_detect_task+0x42>
 8009c50:	2014      	movs	r0, #20
 8009c52:	f7fd fc17 	bl	8007484 <vTaskDelay>
 8009c56:	7833      	ldrb	r3, [r6, #0]
 8009c58:	2b00      	cmp	r3, #0
 8009c5a:	d0f9      	beq.n	8009c50 <key_detect_task+0x28>
 8009c5c:	f04f 0b00 	mov.w	fp, #0
 8009c60:	f04f 09d4 	mov.w	r9, #212	@ 0xd4
 8009c64:	f8df 8120 	ldr.w	r8, [pc, #288]	@ 8009d88 <key_detect_task+0x160>
 8009c68:	465c      	mov	r4, fp
 8009c6a:	4620      	mov	r0, r4
 8009c6c:	f7ff fa34 	bl	80090d8 <key_get_event>
 8009c70:	2803      	cmp	r0, #3
 8009c72:	4605      	mov	r5, r0
 8009c74:	d014      	beq.n	8009ca0 <key_detect_task+0x78>
 8009c76:	4620      	mov	r0, r4
 8009c78:	f7ff fa2e 	bl	80090d8 <key_get_event>
 8009c7c:	2802      	cmp	r0, #2
 8009c7e:	d1e0      	bne.n	8009c42 <key_detect_task+0x1a>
 8009c80:	4620      	mov	r0, r4
 8009c82:	f7ff fa39 	bl	80090f8 <key_reset_event>
 8009c86:	21d9      	movs	r1, #217	@ 0xd9
 8009c88:	483c      	ldr	r0, [pc, #240]	@ (8009d7c <key_detect_task+0x154>)
 8009c8a:	4b3d      	ldr	r3, [pc, #244]	@ (8009d80 <key_detect_task+0x158>)
 8009c8c:	4a3d      	ldr	r2, [pc, #244]	@ (8009d84 <key_detect_task+0x15c>)
 8009c8e:	f8cd b008 	str.w	fp, [sp, #8]
 8009c92:	e9cd 1000 	strd	r1, r0, [sp]
 8009c96:	493c      	ldr	r1, [pc, #240]	@ (8009d88 <key_detect_task+0x160>)
 8009c98:	2003      	movs	r0, #3
 8009c9a:	f000 fab1 	bl	800a200 <elog_output>
 8009c9e:	e7d0      	b.n	8009c42 <key_detect_task+0x1a>
 8009ca0:	4620      	mov	r0, r4
 8009ca2:	4f3a      	ldr	r7, [pc, #232]	@ (8009d8c <key_detect_task+0x164>)
 8009ca4:	f7ff fa28 	bl	80090f8 <key_reset_event>
 8009ca8:	2104      	movs	r1, #4
 8009caa:	4839      	ldr	r0, [pc, #228]	@ (8009d90 <key_detect_task+0x168>)
 8009cac:	f7f9 feba 	bl	8003a24 <HAL_GPIO_TogglePin>
 8009cb0:	edda 7a00 	vldr	s15, [sl]
 8009cb4:	4b37      	ldr	r3, [pc, #220]	@ (8009d94 <key_detect_task+0x16c>)
 8009cb6:	4628      	mov	r0, r5
 8009cb8:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8009cbc:	4a31      	ldr	r2, [pc, #196]	@ (8009d84 <key_detect_task+0x15c>)
 8009cbe:	4932      	ldr	r1, [pc, #200]	@ (8009d88 <key_detect_task+0x160>)
 8009cc0:	eec7 6a89 	vdiv.f32	s13, s15, s18
 8009cc4:	edd7 7a01 	vldr	s15, [r7, #4]
 8009cc8:	9301      	str	r3, [sp, #4]
 8009cca:	23ca      	movs	r3, #202	@ 0xca
 8009ccc:	f8cd b008 	str.w	fp, [sp, #8]
 8009cd0:	9300      	str	r3, [sp, #0]
 8009cd2:	4b2b      	ldr	r3, [pc, #172]	@ (8009d80 <key_detect_task+0x158>)
 8009cd4:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8009cd8:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 8009cdc:	eefc 8ac7 	vcvt.u32.f32	s17, s14
 8009ce0:	f000 fa8e 	bl	800a200 <elog_output>
 8009ce4:	edda 7a00 	vldr	s15, [sl]
 8009ce8:	4628      	mov	r0, r5
 8009cea:	edd7 6a01 	vldr	s13, [r7, #4]
 8009cee:	2500      	movs	r5, #0
 8009cf0:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8009cf4:	4b28      	ldr	r3, [pc, #160]	@ (8009d98 <key_detect_task+0x170>)
 8009cf6:	eef8 6a66 	vcvt.f32.u32	s13, s13
 8009cfa:	4a22      	ldr	r2, [pc, #136]	@ (8009d84 <key_detect_task+0x15c>)
 8009cfc:	eeb8 7a68 	vcvt.f32.u32	s14, s17
 8009d00:	9301      	str	r3, [sp, #4]
 8009d02:	ee87 6a89 	vdiv.f32	s12, s15, s18
 8009d06:	23cc      	movs	r3, #204	@ 0xcc
 8009d08:	491f      	ldr	r1, [pc, #124]	@ (8009d88 <key_detect_task+0x160>)
 8009d0a:	9300      	str	r3, [sp, #0]
 8009d0c:	4b1c      	ldr	r3, [pc, #112]	@ (8009d80 <key_detect_task+0x158>)
 8009d0e:	eec6 7a86 	vdiv.f32	s15, s13, s12
 8009d12:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8009d16:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8009d1a:	edcd 7a02 	vstr	s15, [sp, #8]
 8009d1e:	f000 fa6f 	bl	800a200 <elog_output>
 8009d22:	9405      	str	r4, [sp, #20]
 8009d24:	4628      	mov	r0, r5
 8009d26:	687c      	ldr	r4, [r7, #4]
 8009d28:	f7fe ff7c 	bl	8008c24 <delay_us>
 8009d2c:	edda 7a00 	vldr	s15, [sl]
 8009d30:	687b      	ldr	r3, [r7, #4]
 8009d32:	4641      	mov	r1, r8
 8009d34:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8009d38:	9502      	str	r5, [sp, #8]
 8009d3a:	1b1b      	subs	r3, r3, r4
 8009d3c:	3501      	adds	r5, #1
 8009d3e:	4a11      	ldr	r2, [pc, #68]	@ (8009d84 <key_detect_task+0x15c>)
 8009d40:	2003      	movs	r0, #3
 8009d42:	eec7 6a88 	vdiv.f32	s13, s15, s16
 8009d46:	ee07 3a90 	vmov	s15, r3
 8009d4a:	4b14      	ldr	r3, [pc, #80]	@ (8009d9c <key_detect_task+0x174>)
 8009d4c:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8009d50:	e9cd 9300 	strd	r9, r3, [sp]
 8009d54:	4b0a      	ldr	r3, [pc, #40]	@ (8009d80 <key_detect_task+0x158>)
 8009d56:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 8009d5a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
 8009d5e:	ed8d 7a03 	vstr	s14, [sp, #12]
 8009d62:	f000 fa4d 	bl	800a200 <elog_output>
 8009d66:	2d07      	cmp	r5, #7
 8009d68:	d1dc      	bne.n	8009d24 <key_detect_task+0xfc>
 8009d6a:	9c05      	ldr	r4, [sp, #20]
 8009d6c:	e783      	b.n	8009c76 <key_detect_task+0x4e>
 8009d6e:	bf00      	nop
 8009d70:	200013d8 	.word	0x200013d8
 8009d74:	49742400 	.word	0x49742400
 8009d78:	4e6e6b28 	.word	0x4e6e6b28
 8009d7c:	0800d9dc 	.word	0x0800d9dc
 8009d80:	0800de70 	.word	0x0800de70
 8009d84:	0800d970 	.word	0x0800d970
 8009d88:	20000080 	.word	0x20000080
 8009d8c:	e0001000 	.word	0xe0001000
 8009d90:	58020800 	.word	0x58020800
 8009d94:	0800d99c 	.word	0x0800d99c
 8009d98:	0800d9b4 	.word	0x0800d9b4
 8009d9c:	0800d9c4 	.word	0x0800d9c4
 8009da0:	20000004 	.word	0x20000004

08009da4 <ds18b20_task>:
 8009da4:	4b35      	ldr	r3, [pc, #212]	@ (8009e7c <ds18b20_task+0xd8>)
 8009da6:	2200      	movs	r2, #0
 8009da8:	4835      	ldr	r0, [pc, #212]	@ (8009e80 <ds18b20_task+0xdc>)
 8009daa:	4936      	ldr	r1, [pc, #216]	@ (8009e84 <ds18b20_task+0xe0>)
 8009dac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009db0:	f1a3 0624 	sub.w	r6, r3, #36	@ 0x24
 8009db4:	b085      	sub	sp, #20
 8009db6:	609a      	str	r2, [r3, #8]
 8009db8:	f843 0c24 	str.w	r0, [r3, #-36]
 8009dbc:	4832      	ldr	r0, [pc, #200]	@ (8009e88 <ds18b20_task+0xe4>)
 8009dbe:	e9c3 2200 	strd	r2, r2, [r3]
 8009dc2:	4b32      	ldr	r3, [pc, #200]	@ (8009e8c <ds18b20_task+0xe8>)
 8009dc4:	4a32      	ldr	r2, [pc, #200]	@ (8009e90 <ds18b20_task+0xec>)
 8009dc6:	60f3      	str	r3, [r6, #12]
 8009dc8:	4b32      	ldr	r3, [pc, #200]	@ (8009e94 <ds18b20_task+0xf0>)
 8009dca:	e9c6 1201 	strd	r1, r2, [r6, #4]
 8009dce:	e9c6 0304 	strd	r0, r3, [r6, #16]
 8009dd2:	4931      	ldr	r1, [pc, #196]	@ (8009e98 <ds18b20_task+0xf4>)
 8009dd4:	4630      	mov	r0, r6
 8009dd6:	4a31      	ldr	r2, [pc, #196]	@ (8009e9c <ds18b20_task+0xf8>)
 8009dd8:	4b31      	ldr	r3, [pc, #196]	@ (8009ea0 <ds18b20_task+0xfc>)
 8009dda:	e9c6 1206 	strd	r1, r2, [r6, #24]
 8009dde:	6233      	str	r3, [r6, #32]
 8009de0:	f7ff fd62 	bl	80098a8 <ds18b20_init>
 8009de4:	2800      	cmp	r0, #0
 8009de6:	d13d      	bne.n	8009e64 <ds18b20_task+0xc0>
 8009de8:	4601      	mov	r1, r0
 8009dea:	4630      	mov	r0, r6
 8009dec:	f7ff fc48 	bl	8009680 <ds18b20_set_mode>
 8009df0:	bb08      	cbnz	r0, 8009e36 <ds18b20_task+0x92>
 8009df2:	2103      	movs	r1, #3
 8009df4:	4630      	mov	r0, r6
 8009df6:	f7ff fc51 	bl	800969c <ds18b20_scratchpad_set_resolution>
 8009dfa:	2800      	cmp	r0, #0
 8009dfc:	d136      	bne.n	8009e6c <ds18b20_task+0xc8>
 8009dfe:	2300      	movs	r3, #0
 8009e00:	f8df 90bc 	ldr.w	r9, [pc, #188]	@ 8009ec0 <ds18b20_task+0x11c>
 8009e04:	f8df 80ac 	ldr.w	r8, [pc, #172]	@ 8009eb4 <ds18b20_task+0x110>
 8009e08:	4f26      	ldr	r7, [pc, #152]	@ (8009ea4 <ds18b20_task+0x100>)
 8009e0a:	f8ad 000a 	strh.w	r0, [sp, #10]
 8009e0e:	9303      	str	r3, [sp, #12]
 8009e10:	aa03      	add	r2, sp, #12
 8009e12:	f10d 010a 	add.w	r1, sp, #10
 8009e16:	4630      	mov	r0, r6
 8009e18:	f44f 758a 	mov.w	r5, #276	@ 0x114
 8009e1c:	f7ff fdb6 	bl	800998c <ds18b20_read>
 8009e20:	4604      	mov	r4, r0
 8009e22:	4643      	mov	r3, r8
 8009e24:	463a      	mov	r2, r7
 8009e26:	4920      	ldr	r1, [pc, #128]	@ (8009ea8 <ds18b20_task+0x104>)
 8009e28:	2003      	movs	r0, #3
 8009e2a:	b1b4      	cbz	r4, 8009e5a <ds18b20_task+0xb6>
 8009e2c:	e9cd 5900 	strd	r5, r9, [sp]
 8009e30:	f000 f9e6 	bl	800a200 <elog_output>
 8009e34:	e7ec      	b.n	8009e10 <ds18b20_task+0x6c>
 8009e36:	481d      	ldr	r0, [pc, #116]	@ (8009eac <ds18b20_task+0x108>)
 8009e38:	f7ff fb22 	bl	8009480 <ds18b20_interface_debug_print>
 8009e3c:	4630      	mov	r0, r6
 8009e3e:	f7ff fd8d 	bl	800995c <ds18b20_deinit>
 8009e42:	f240 101b 	movw	r0, #283	@ 0x11b
 8009e46:	4c1a      	ldr	r4, [pc, #104]	@ (8009eb0 <ds18b20_task+0x10c>)
 8009e48:	4b1a      	ldr	r3, [pc, #104]	@ (8009eb4 <ds18b20_task+0x110>)
 8009e4a:	4a16      	ldr	r2, [pc, #88]	@ (8009ea4 <ds18b20_task+0x100>)
 8009e4c:	4916      	ldr	r1, [pc, #88]	@ (8009ea8 <ds18b20_task+0x104>)
 8009e4e:	e9cd 0400 	strd	r0, r4, [sp]
 8009e52:	2003      	movs	r0, #3
 8009e54:	f000 f9d4 	bl	800a200 <elog_output>
 8009e58:	e7fe      	b.n	8009e58 <ds18b20_task+0xb4>
 8009e5a:	f241 3088 	movw	r0, #5000	@ 0x1388
 8009e5e:	f7fd fb11 	bl	8007484 <vTaskDelay>
 8009e62:	e7d5      	b.n	8009e10 <ds18b20_task+0x6c>
 8009e64:	4814      	ldr	r0, [pc, #80]	@ (8009eb8 <ds18b20_task+0x114>)
 8009e66:	f7ff fb0b 	bl	8009480 <ds18b20_interface_debug_print>
 8009e6a:	e7ea      	b.n	8009e42 <ds18b20_task+0x9e>
 8009e6c:	4813      	ldr	r0, [pc, #76]	@ (8009ebc <ds18b20_task+0x118>)
 8009e6e:	f7ff fb07 	bl	8009480 <ds18b20_interface_debug_print>
 8009e72:	4630      	mov	r0, r6
 8009e74:	f7ff fd72 	bl	800995c <ds18b20_deinit>
 8009e78:	e7e3      	b.n	8009e42 <ds18b20_task+0x9e>
 8009e7a:	bf00      	nop
 8009e7c:	20001484 	.word	0x20001484
 8009e80:	08009429 	.word	0x08009429
 8009e84:	0800942d 	.word	0x0800942d
 8009e88:	0800945d 	.word	0x0800945d
 8009e8c:	08009449 	.word	0x08009449
 8009e90:	08009431 	.word	0x08009431
 8009e94:	08009475 	.word	0x08009475
 8009e98:	08009479 	.word	0x08009479
 8009e9c:	0800947d 	.word	0x0800947d
 8009ea0:	08009481 	.word	0x08009481
 8009ea4:	0800d970 	.word	0x0800d970
 8009ea8:	20000080 	.word	0x20000080
 8009eac:	0800da08 	.word	0x0800da08
 8009eb0:	0800da64 	.word	0x0800da64
 8009eb4:	0800de60 	.word	0x0800de60
 8009eb8:	0800d9f0 	.word	0x0800d9f0
 8009ebc:	0800da24 	.word	0x0800da24
 8009ec0:	0800da50 	.word	0x0800da50

08009ec4 <user_main>:
 8009ec4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009ec8:	2107      	movs	r1, #7
 8009eca:	b0a9      	sub	sp, #164	@ 0xa4
 8009ecc:	2006      	movs	r0, #6
 8009ece:	4d67      	ldr	r5, [pc, #412]	@ (800a06c <user_main+0x1a8>)
 8009ed0:	f000 fc2c 	bl	800a72c <elog_set_fmt>
 8009ed4:	4a66      	ldr	r2, [pc, #408]	@ (800a070 <user_main+0x1ac>)
 8009ed6:	ab06      	add	r3, sp, #24
 8009ed8:	245e      	movs	r4, #94	@ 0x5e
 8009eda:	f8df b1c0 	ldr.w	fp, [pc, #448]	@ 800a09c <user_main+0x1d8>
 8009ede:	f8df a1c0 	ldr.w	sl, [pc, #448]	@ 800a0a0 <user_main+0x1dc>
 8009ee2:	f8df 91c0 	ldr.w	r9, [pc, #448]	@ 800a0a4 <user_main+0x1e0>
 8009ee6:	4f63      	ldr	r7, [pc, #396]	@ (800a074 <user_main+0x1b0>)
 8009ee8:	4e63      	ldr	r6, [pc, #396]	@ (800a078 <user_main+0x1b4>)
 8009eea:	e892 0003 	ldmia.w	r2, {r0, r1}
 8009eee:	e883 0003 	stmia.w	r3, {r0, r1}
 8009ef2:	4618      	mov	r0, r3
 8009ef4:	2101      	movs	r1, #1
 8009ef6:	f7ff f875 	bl	8008fe4 <key_init>
 8009efa:	2001      	movs	r0, #1
 8009efc:	f7fc fd06 	bl	800690c <xQueueCreateMutex>
 8009f00:	4a5e      	ldr	r2, [pc, #376]	@ (800a07c <user_main+0x1b8>)
 8009f02:	4b5f      	ldr	r3, [pc, #380]	@ (800a080 <user_main+0x1bc>)
 8009f04:	6812      	ldr	r2, [r2, #0]
 8009f06:	495f      	ldr	r1, [pc, #380]	@ (800a084 <user_main+0x1c0>)
 8009f08:	fba3 3202 	umull	r3, r2, r3, r2
 8009f0c:	4b59      	ldr	r3, [pc, #356]	@ (800a074 <user_main+0x1b0>)
 8009f0e:	9501      	str	r5, [sp, #4]
 8009f10:	6008      	str	r0, [r1, #0]
 8009f12:	0c90      	lsrs	r0, r2, #18
 8009f14:	495c      	ldr	r1, [pc, #368]	@ (800a088 <user_main+0x1c4>)
 8009f16:	4a58      	ldr	r2, [pc, #352]	@ (800a078 <user_main+0x1b4>)
 8009f18:	9400      	str	r4, [sp, #0]
 8009f1a:	9002      	str	r0, [sp, #8]
 8009f1c:	2003      	movs	r0, #3
 8009f1e:	f000 f96f 	bl	800a200 <elog_output>
 8009f22:	4c5a      	ldr	r4, [pc, #360]	@ (800a08c <user_main+0x1c8>)
 8009f24:	2061      	movs	r0, #97	@ 0x61
 8009f26:	4d58      	ldr	r5, [pc, #352]	@ (800a088 <user_main+0x1c4>)
 8009f28:	4b52      	ldr	r3, [pc, #328]	@ (800a074 <user_main+0x1b0>)
 8009f2a:	4a53      	ldr	r2, [pc, #332]	@ (800a078 <user_main+0x1b4>)
 8009f2c:	4956      	ldr	r1, [pc, #344]	@ (800a088 <user_main+0x1c4>)
 8009f2e:	e9cd 0400 	strd	r0, r4, [sp]
 8009f32:	4c57      	ldr	r4, [pc, #348]	@ (800a090 <user_main+0x1cc>)
 8009f34:	2003      	movs	r0, #3
 8009f36:	f000 f963 	bl	800a200 <elog_output>
 8009f3a:	f104 086c 	add.w	r8, r4, #108	@ 0x6c
 8009f3e:	69a2      	ldr	r2, [r4, #24]
 8009f40:	f104 031c 	add.w	r3, r4, #28
 8009f44:	4621      	mov	r1, r4
 8009f46:	e9cd 2300 	strd	r2, r3, [sp]
 8009f4a:	6963      	ldr	r3, [r4, #20]
 8009f4c:	8a22      	ldrh	r2, [r4, #16]
 8009f4e:	f854 0c04 	ldr.w	r0, [r4, #-4]
 8009f52:	f7fd f8c5 	bl	80070e0 <xTaskCreate>
 8009f56:	2801      	cmp	r0, #1
 8009f58:	f04f 036b 	mov.w	r3, #107	@ 0x6b
 8009f5c:	d07a      	beq.n	800a054 <user_main+0x190>
 8009f5e:	4632      	mov	r2, r6
 8009f60:	4629      	mov	r1, r5
 8009f62:	2002      	movs	r0, #2
 8009f64:	9300      	str	r3, [sp, #0]
 8009f66:	463b      	mov	r3, r7
 8009f68:	e9cd b401 	strd	fp, r4, [sp, #4]
 8009f6c:	f000 f948 	bl	800a200 <elog_output>
 8009f70:	4632      	mov	r2, r6
 8009f72:	4629      	mov	r1, r5
 8009f74:	2002      	movs	r0, #2
 8009f76:	e9cd a401 	strd	sl, r4, [sp, #4]
 8009f7a:	8a23      	ldrh	r3, [r4, #16]
 8009f7c:	9303      	str	r3, [sp, #12]
 8009f7e:	236c      	movs	r3, #108	@ 0x6c
 8009f80:	9300      	str	r3, [sp, #0]
 8009f82:	463b      	mov	r3, r7
 8009f84:	f000 f93c 	bl	800a200 <elog_output>
 8009f88:	f7fe f878 	bl	800807c <xPortGetFreeHeapSize>
 8009f8c:	236d      	movs	r3, #109	@ 0x6d
 8009f8e:	4632      	mov	r2, r6
 8009f90:	4629      	mov	r1, r5
 8009f92:	9300      	str	r3, [sp, #0]
 8009f94:	463b      	mov	r3, r7
 8009f96:	e9cd 9001 	strd	r9, r0, [sp, #4]
 8009f9a:	2002      	movs	r0, #2
 8009f9c:	f000 f930 	bl	800a200 <elog_output>
 8009fa0:	4b3c      	ldr	r3, [pc, #240]	@ (800a094 <user_main+0x1d0>)
 8009fa2:	4632      	mov	r2, r6
 8009fa4:	4629      	mov	r1, r5
 8009fa6:	9301      	str	r3, [sp, #4]
 8009fa8:	f44f 5370 	mov.w	r3, #15360	@ 0x3c00
 8009fac:	2002      	movs	r0, #2
 8009fae:	9302      	str	r3, [sp, #8]
 8009fb0:	236e      	movs	r3, #110	@ 0x6e
 8009fb2:	9300      	str	r3, [sp, #0]
 8009fb4:	463b      	mov	r3, r7
 8009fb6:	f000 f923 	bl	800a200 <elog_output>
 8009fba:	3424      	adds	r4, #36	@ 0x24
 8009fbc:	4544      	cmp	r4, r8
 8009fbe:	d1be      	bne.n	8009f3e <user_main+0x7a>
 8009fc0:	f8df a0e4 	ldr.w	sl, [pc, #228]	@ 800a0a8 <user_main+0x1e4>
 8009fc4:	f7ff f954 	bl	8009270 <usart1_get_ctx_t>
 8009fc8:	f8df 90e0 	ldr.w	r9, [pc, #224]	@ 800a0ac <user_main+0x1e8>
 8009fcc:	2280      	movs	r2, #128	@ 0x80
 8009fce:	f8df 80a4 	ldr.w	r8, [pc, #164]	@ 800a074 <user_main+0x1b0>
 8009fd2:	2100      	movs	r1, #0
 8009fd4:	4f28      	ldr	r7, [pc, #160]	@ (800a078 <user_main+0x1b4>)
 8009fd6:	4605      	mov	r5, r0
 8009fd8:	a808      	add	r0, sp, #32
 8009fda:	f001 fa6f 	bl	800b4bc <memset>
 8009fde:	f7ff f9fd 	bl	80093dc <hal_uart_get_rx_available_size>
 8009fe2:	4603      	mov	r3, r0
 8009fe4:	217f      	movs	r1, #127	@ 0x7f
 8009fe6:	a808      	add	r0, sp, #32
 8009fe8:	b383      	cbz	r3, 800a04c <user_main+0x188>
 8009fea:	f7ff f98b 	bl	8009304 <hal_uart_receive_bytes>
 8009fee:	4604      	mov	r4, r0
 8009ff0:	f04f 0e82 	mov.w	lr, #130	@ 0x82
 8009ff4:	f04f 0c00 	mov.w	ip, #0
 8009ff8:	f014 04ff 	ands.w	r4, r4, #255	@ 0xff
 8009ffc:	4643      	mov	r3, r8
 8009ffe:	463a      	mov	r2, r7
 800a000:	4921      	ldr	r1, [pc, #132]	@ (800a088 <user_main+0x1c4>)
 800a002:	f104 06a0 	add.w	r6, r4, #160	@ 0xa0
 800a006:	f04f 0003 	mov.w	r0, #3
 800a00a:	eb0d 0b06 	add.w	fp, sp, r6
 800a00e:	d01d      	beq.n	800a04c <user_main+0x188>
 800a010:	ae08      	add	r6, sp, #32
 800a012:	f8cd e000 	str.w	lr, [sp]
 800a016:	f80b cc80 	strb.w	ip, [fp, #-128]
 800a01a:	e9cd a601 	strd	sl, r6, [sp, #4]
 800a01e:	f000 f8ef 	bl	800a200 <elog_output>
 800a022:	f8b5 c006 	ldrh.w	ip, [r5, #6]
 800a026:	8929      	ldrh	r1, [r5, #8]
 800a028:	f04f 0e83 	mov.w	lr, #131	@ 0x83
 800a02c:	7b28      	ldrb	r0, [r5, #12]
 800a02e:	fa1f fc8c 	uxth.w	ip, ip
 800a032:	b289      	uxth	r1, r1
 800a034:	4643      	mov	r3, r8
 800a036:	463a      	mov	r2, r7
 800a038:	e9cd 1004 	strd	r1, r0, [sp, #16]
 800a03c:	e9cd 4c02 	strd	r4, ip, [sp, #8]
 800a040:	4911      	ldr	r1, [pc, #68]	@ (800a088 <user_main+0x1c4>)
 800a042:	2003      	movs	r0, #3
 800a044:	e9cd e900 	strd	lr, r9, [sp]
 800a048:	f000 f8da 	bl	800a200 <elog_output>
 800a04c:	200a      	movs	r0, #10
 800a04e:	f7fd fa19 	bl	8007484 <vTaskDelay>
 800a052:	e7c4      	b.n	8009fde <user_main+0x11a>
 800a054:	2369      	movs	r3, #105	@ 0x69
 800a056:	4632      	mov	r2, r6
 800a058:	4629      	mov	r1, r5
 800a05a:	2003      	movs	r0, #3
 800a05c:	9300      	str	r3, [sp, #0]
 800a05e:	4b0e      	ldr	r3, [pc, #56]	@ (800a098 <user_main+0x1d4>)
 800a060:	9402      	str	r4, [sp, #8]
 800a062:	9301      	str	r3, [sp, #4]
 800a064:	463b      	mov	r3, r7
 800a066:	f000 f8cb 	bl	800a200 <elog_output>
 800a06a:	e7a6      	b.n	8009fba <user_main+0xf6>
 800a06c:	0800da7c 	.word	0x0800da7c
 800a070:	0800d624 	.word	0x0800d624
 800a074:	0800de80 	.word	0x0800de80
 800a078:	0800d970 	.word	0x0800d970
 800a07c:	20000004 	.word	0x20000004
 800a080:	431bde83 	.word	0x431bde83
 800a084:	20001490 	.word	0x20001490
 800a088:	20000080 	.word	0x20000080
 800a08c:	0800daa0 	.word	0x0800daa0
 800a090:	20000018 	.word	0x20000018
 800a094:	0800db1c 	.word	0x0800db1c
 800a098:	0800dab4 	.word	0x0800dab4
 800a09c:	0800dac8 	.word	0x0800dac8
 800a0a0:	0800dadc 	.word	0x0800dadc
 800a0a4:	0800dafc 	.word	0x0800dafc
 800a0a8:	0800db3c 	.word	0x0800db3c
 800a0ac:	0800db48 	.word	0x0800db48

0800a0b0 <elog_strcpy>:
 800a0b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a0b2:	4606      	mov	r6, r0
 800a0b4:	b087      	sub	sp, #28
 800a0b6:	460c      	mov	r4, r1
 800a0b8:	4615      	mov	r5, r2
 800a0ba:	b1f1      	cbz	r1, 800a0fa <elog_strcpy+0x4a>
 800a0bc:	b335      	cbz	r5, 800a10c <elog_strcpy+0x5c>
 800a0be:	782b      	ldrb	r3, [r5, #0]
 800a0c0:	2b00      	cmp	r3, #0
 800a0c2:	d049      	beq.n	800a158 <elog_strcpy+0xa8>
 800a0c4:	2ea7      	cmp	r6, #167	@ 0xa7
 800a0c6:	f106 0e01 	add.w	lr, r6, #1
 800a0ca:	d843      	bhi.n	800a154 <elog_strcpy+0xa4>
 800a0cc:	f105 0c01 	add.w	ip, r5, #1
 800a0d0:	e004      	b.n	800a0dc <elog_strcpy+0x2c>
 800a0d2:	f10e 0e01 	add.w	lr, lr, #1
 800a0d6:	f1be 0fa9 	cmp.w	lr, #169	@ 0xa9
 800a0da:	d029      	beq.n	800a130 <elog_strcpy+0x80>
 800a0dc:	4660      	mov	r0, ip
 800a0de:	f804 3b01 	strb.w	r3, [r4], #1
 800a0e2:	f81c 3b01 	ldrb.w	r3, [ip], #1
 800a0e6:	2b00      	cmp	r3, #0
 800a0e8:	d1f3      	bne.n	800a0d2 <elog_strcpy+0x22>
 800a0ea:	1b40      	subs	r0, r0, r5
 800a0ec:	f1be 0fa7 	cmp.w	lr, #167	@ 0xa7
 800a0f0:	d801      	bhi.n	800a0f6 <elog_strcpy+0x46>
 800a0f2:	2300      	movs	r3, #0
 800a0f4:	7023      	strb	r3, [r4, #0]
 800a0f6:	b007      	add	sp, #28
 800a0f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a0fa:	4b1c      	ldr	r3, [pc, #112]	@ (800a16c <elog_strcpy+0xbc>)
 800a0fc:	681f      	ldr	r7, [r3, #0]
 800a0fe:	b1d7      	cbz	r7, 800a136 <elog_strcpy+0x86>
 800a100:	222f      	movs	r2, #47	@ 0x2f
 800a102:	491b      	ldr	r1, [pc, #108]	@ (800a170 <elog_strcpy+0xc0>)
 800a104:	481b      	ldr	r0, [pc, #108]	@ (800a174 <elog_strcpy+0xc4>)
 800a106:	47b8      	blx	r7
 800a108:	2d00      	cmp	r5, #0
 800a10a:	d1d8      	bne.n	800a0be <elog_strcpy+0xe>
 800a10c:	4b17      	ldr	r3, [pc, #92]	@ (800a16c <elog_strcpy+0xbc>)
 800a10e:	681b      	ldr	r3, [r3, #0]
 800a110:	bb2b      	cbnz	r3, 800a15e <elog_strcpy+0xae>
 800a112:	2430      	movs	r4, #48	@ 0x30
 800a114:	4918      	ldr	r1, [pc, #96]	@ (800a178 <elog_strcpy+0xc8>)
 800a116:	4a19      	ldr	r2, [pc, #100]	@ (800a17c <elog_strcpy+0xcc>)
 800a118:	4628      	mov	r0, r5
 800a11a:	4b15      	ldr	r3, [pc, #84]	@ (800a170 <elog_strcpy+0xc0>)
 800a11c:	9400      	str	r4, [sp, #0]
 800a11e:	e9cd 2101 	strd	r2, r1, [sp, #4]
 800a122:	e9cd 3403 	strd	r3, r4, [sp, #12]
 800a126:	4a16      	ldr	r2, [pc, #88]	@ (800a180 <elog_strcpy+0xd0>)
 800a128:	4916      	ldr	r1, [pc, #88]	@ (800a184 <elog_strcpy+0xd4>)
 800a12a:	f000 f869 	bl	800a200 <elog_output>
 800a12e:	e7fe      	b.n	800a12e <elog_strcpy+0x7e>
 800a130:	1b40      	subs	r0, r0, r5
 800a132:	b007      	add	sp, #28
 800a134:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a136:	242f      	movs	r4, #47	@ 0x2f
 800a138:	490e      	ldr	r1, [pc, #56]	@ (800a174 <elog_strcpy+0xc4>)
 800a13a:	4a10      	ldr	r2, [pc, #64]	@ (800a17c <elog_strcpy+0xcc>)
 800a13c:	4638      	mov	r0, r7
 800a13e:	4b0c      	ldr	r3, [pc, #48]	@ (800a170 <elog_strcpy+0xc0>)
 800a140:	9400      	str	r4, [sp, #0]
 800a142:	e9cd 2101 	strd	r2, r1, [sp, #4]
 800a146:	e9cd 3403 	strd	r3, r4, [sp, #12]
 800a14a:	4a0d      	ldr	r2, [pc, #52]	@ (800a180 <elog_strcpy+0xd0>)
 800a14c:	490d      	ldr	r1, [pc, #52]	@ (800a184 <elog_strcpy+0xd4>)
 800a14e:	f000 f857 	bl	800a200 <elog_output>
 800a152:	e7fe      	b.n	800a152 <elog_strcpy+0xa2>
 800a154:	2000      	movs	r0, #0
 800a156:	e7c9      	b.n	800a0ec <elog_strcpy+0x3c>
 800a158:	46b6      	mov	lr, r6
 800a15a:	4618      	mov	r0, r3
 800a15c:	e7c6      	b.n	800a0ec <elog_strcpy+0x3c>
 800a15e:	2230      	movs	r2, #48	@ 0x30
 800a160:	4903      	ldr	r1, [pc, #12]	@ (800a170 <elog_strcpy+0xc0>)
 800a162:	4805      	ldr	r0, [pc, #20]	@ (800a178 <elog_strcpy+0xc8>)
 800a164:	4798      	blx	r3
 800a166:	782b      	ldrb	r3, [r5, #0]
 800a168:	deff      	udf	#255	@ 0xff
 800a16a:	bf00      	nop
 800a16c:	20001494 	.word	0x20001494
 800a170:	0800de8c 	.word	0x0800de8c
 800a174:	0800dbd0 	.word	0x0800dbd0
 800a178:	0800dbf8 	.word	0x0800dbf8
 800a17c:	0800dbd4 	.word	0x0800dbd4
 800a180:	0800db78 	.word	0x0800db78
 800a184:	0800dbc8 	.word	0x0800dbc8

0800a188 <elog_init>:
 800a188:	b570      	push	{r4, r5, r6, lr}
 800a18a:	4c1b      	ldr	r4, [pc, #108]	@ (800a1f8 <elog_init+0x70>)
 800a18c:	f894 30f0 	ldrb.w	r3, [r4, #240]	@ 0xf0
 800a190:	b10b      	cbz	r3, 800a196 <elog_init+0xe>
 800a192:	2000      	movs	r0, #0
 800a194:	bd70      	pop	{r4, r5, r6, pc}
 800a196:	f000 fba5 	bl	800a8e4 <elog_port_init>
 800a19a:	2800      	cmp	r0, #0
 800a19c:	d1fa      	bne.n	800a194 <elog_init+0xc>
 800a19e:	2201      	movs	r2, #1
 800a1a0:	f894 30f4 	ldrb.w	r3, [r4, #244]	@ 0xf4
 800a1a4:	f894 10f3 	ldrb.w	r1, [r4, #243]	@ 0xf3
 800a1a8:	f884 20f2 	strb.w	r2, [r4, #242]	@ 0xf2
 800a1ac:	b9db      	cbnz	r3, 800a1e6 <elog_init+0x5e>
 800a1ae:	b9f9      	cbnz	r1, 800a1f0 <elog_init+0x68>
 800a1b0:	4b12      	ldr	r3, [pc, #72]	@ (800a1fc <elog_init+0x74>)
 800a1b2:	2500      	movs	r5, #0
 800a1b4:	2101      	movs	r1, #1
 800a1b6:	2205      	movs	r2, #5
 800a1b8:	f103 06a5 	add.w	r6, r3, #165	@ 0xa5
 800a1bc:	f8a4 50f3 	strh.w	r5, [r4, #243]	@ 0xf3
 800a1c0:	f884 10f5 	strb.w	r1, [r4, #245]	@ 0xf5
 800a1c4:	7022      	strb	r2, [r4, #0]
 800a1c6:	4618      	mov	r0, r3
 800a1c8:	221f      	movs	r2, #31
 800a1ca:	2100      	movs	r1, #0
 800a1cc:	f001 f976 	bl	800b4bc <memset>
 800a1d0:	4603      	mov	r3, r0
 800a1d2:	f800 5c01 	strb.w	r5, [r0, #-1]
 800a1d6:	3321      	adds	r3, #33	@ 0x21
 800a1d8:	77c5      	strb	r5, [r0, #31]
 800a1da:	42b3      	cmp	r3, r6
 800a1dc:	d1f3      	bne.n	800a1c6 <elog_init+0x3e>
 800a1de:	2301      	movs	r3, #1
 800a1e0:	f884 30f0 	strb.w	r3, [r4, #240]	@ 0xf0
 800a1e4:	e7d5      	b.n	800a192 <elog_init+0xa>
 800a1e6:	2900      	cmp	r1, #0
 800a1e8:	d1e2      	bne.n	800a1b0 <elog_init+0x28>
 800a1ea:	f000 fb95 	bl	800a918 <elog_port_output_unlock>
 800a1ee:	e7df      	b.n	800a1b0 <elog_init+0x28>
 800a1f0:	f000 fb88 	bl	800a904 <elog_port_output_lock>
 800a1f4:	e7dc      	b.n	800a1b0 <elog_init+0x28>
 800a1f6:	bf00      	nop
 800a1f8:	20001540 	.word	0x20001540
 800a1fc:	20001572 	.word	0x20001572

0800a200 <elog_output>:
 800a200:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a204:	4604      	mov	r4, r0
 800a206:	b091      	sub	sp, #68	@ 0x44
 800a208:	4608      	mov	r0, r1
 800a20a:	4699      	mov	r9, r3
 800a20c:	460d      	mov	r5, r1
 800a20e:	4690      	mov	r8, r2
 800a210:	f7f6 fa4e 	bl	80006b0 <strlen>
 800a214:	2300      	movs	r3, #0
 800a216:	2c05      	cmp	r4, #5
 800a218:	4682      	mov	sl, r0
 800a21a:	930a      	str	r3, [sp, #40]	@ 0x28
 800a21c:	930c      	str	r3, [sp, #48]	@ 0x30
 800a21e:	f8ad 302c 	strh.w	r3, [sp, #44]	@ 0x2c
 800a222:	930f      	str	r3, [sp, #60]	@ 0x3c
 800a224:	e9cd 330d 	strd	r3, r3, [sp, #52]	@ 0x34
 800a228:	d909      	bls.n	800a23e <elog_output+0x3e>
 800a22a:	4bbe      	ldr	r3, [pc, #760]	@ (800a524 <elog_output+0x324>)
 800a22c:	681e      	ldr	r6, [r3, #0]
 800a22e:	2e00      	cmp	r6, #0
 800a230:	f000 809c 	beq.w	800a36c <elog_output+0x16c>
 800a234:	f44f 720e 	mov.w	r2, #568	@ 0x238
 800a238:	49bb      	ldr	r1, [pc, #748]	@ (800a528 <elog_output+0x328>)
 800a23a:	48bc      	ldr	r0, [pc, #752]	@ (800a52c <elog_output+0x32c>)
 800a23c:	47b0      	blx	r6
 800a23e:	4ebc      	ldr	r6, [pc, #752]	@ (800a530 <elog_output+0x330>)
 800a240:	f896 30f1 	ldrb.w	r3, [r6, #241]	@ 0xf1
 800a244:	b113      	cbz	r3, 800a24c <elog_output+0x4c>
 800a246:	7833      	ldrb	r3, [r6, #0]
 800a248:	42a3      	cmp	r3, r4
 800a24a:	d202      	bcs.n	800a252 <elog_output+0x52>
 800a24c:	b011      	add	sp, #68	@ 0x44
 800a24e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a252:	4628      	mov	r0, r5
 800a254:	f000 faa6 	bl	800a7a4 <elog_get_filter_tag_lvl>
 800a258:	42a0      	cmp	r0, r4
 800a25a:	d3f7      	bcc.n	800a24c <elog_output+0x4c>
 800a25c:	1c71      	adds	r1, r6, #1
 800a25e:	4628      	mov	r0, r5
 800a260:	f001 f946 	bl	800b4f0 <strstr>
 800a264:	2800      	cmp	r0, #0
 800a266:	d0f1      	beq.n	800a24c <elog_output+0x4c>
 800a268:	ab1c      	add	r3, sp, #112	@ 0x70
 800a26a:	9309      	str	r3, [sp, #36]	@ 0x24
 800a26c:	f896 30f2 	ldrb.w	r3, [r6, #242]	@ 0xf2
 800a270:	2b00      	cmp	r3, #0
 800a272:	f040 8146 	bne.w	800a502 <elog_output+0x302>
 800a276:	2301      	movs	r3, #1
 800a278:	f886 30f3 	strb.w	r3, [r6, #243]	@ 0xf3
 800a27c:	f896 70f5 	ldrb.w	r7, [r6, #245]	@ 0xf5
 800a280:	f8df b2bc 	ldr.w	fp, [pc, #700]	@ 800a540 <elog_output+0x340>
 800a284:	2f00      	cmp	r7, #0
 800a286:	f040 812a 	bne.w	800a4de <elog_output+0x2de>
 800a28a:	f8cd b01c 	str.w	fp, [sp, #28]
 800a28e:	2101      	movs	r1, #1
 800a290:	4620      	mov	r0, r4
 800a292:	f000 faf1 	bl	800a878 <get_fmt_enabled>
 800a296:	2800      	cmp	r0, #0
 800a298:	f040 8115 	bne.w	800a4c6 <elog_output+0x2c6>
 800a29c:	2102      	movs	r1, #2
 800a29e:	4620      	mov	r0, r4
 800a2a0:	f000 faea 	bl	800a878 <get_fmt_enabled>
 800a2a4:	2800      	cmp	r0, #0
 800a2a6:	f040 80f9 	bne.w	800a49c <elog_output+0x29c>
 800a2aa:	211c      	movs	r1, #28
 800a2ac:	4620      	mov	r0, r4
 800a2ae:	f000 fae3 	bl	800a878 <get_fmt_enabled>
 800a2b2:	2800      	cmp	r0, #0
 800a2b4:	f040 80cc 	bne.w	800a450 <elog_output+0x250>
 800a2b8:	f1b8 0f00 	cmp.w	r8, #0
 800a2bc:	d066      	beq.n	800a38c <elog_output+0x18c>
 800a2be:	2120      	movs	r1, #32
 800a2c0:	4620      	mov	r0, r4
 800a2c2:	f000 fad9 	bl	800a878 <get_fmt_enabled>
 800a2c6:	2800      	cmp	r0, #0
 800a2c8:	d060      	beq.n	800a38c <elog_output+0x18c>
 800a2ca:	9907      	ldr	r1, [sp, #28]
 800a2cc:	4638      	mov	r0, r7
 800a2ce:	4a99      	ldr	r2, [pc, #612]	@ (800a534 <elog_output+0x334>)
 800a2d0:	f7ff feee 	bl	800a0b0 <elog_strcpy>
 800a2d4:	2120      	movs	r1, #32
 800a2d6:	183d      	adds	r5, r7, r0
 800a2d8:	4620      	mov	r0, r4
 800a2da:	f000 facd 	bl	800a878 <get_fmt_enabled>
 800a2de:	2800      	cmp	r0, #0
 800a2e0:	f040 817c 	bne.w	800a5dc <elog_output+0x3dc>
 800a2e4:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a2e6:	2b00      	cmp	r3, #0
 800a2e8:	d16b      	bne.n	800a3c2 <elog_output+0x1c2>
 800a2ea:	f1b9 0f00 	cmp.w	r9, #0
 800a2ee:	f040 80a0 	bne.w	800a432 <elog_output+0x232>
 800a2f2:	4a91      	ldr	r2, [pc, #580]	@ (800a538 <elog_output+0x338>)
 800a2f4:	eb0b 0105 	add.w	r1, fp, r5
 800a2f8:	4628      	mov	r0, r5
 800a2fa:	f7ff fed9 	bl	800a0b0 <elog_strcpy>
 800a2fe:	182f      	adds	r7, r5, r0
 800a300:	eb0b 0307 	add.w	r3, fp, r7
 800a304:	9307      	str	r3, [sp, #28]
 800a306:	f1c7 01a8 	rsb	r1, r7, #168	@ 0xa8
 800a30a:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800a30c:	9807      	ldr	r0, [sp, #28]
 800a30e:	9a1b      	ldr	r2, [sp, #108]	@ 0x6c
 800a310:	f001 f8c6 	bl	800b4a0 <vsniprintf>
 800a314:	2800      	cmp	r0, #0
 800a316:	4407      	add	r7, r0
 800a318:	db01      	blt.n	800a31e <elog_output+0x11e>
 800a31a:	2fa2      	cmp	r7, #162	@ 0xa2
 800a31c:	d900      	bls.n	800a320 <elog_output+0x120>
 800a31e:	27a2      	movs	r7, #162	@ 0xa2
 800a320:	f896 3020 	ldrb.w	r3, [r6, #32]
 800a324:	b14b      	cbz	r3, 800a33a <elog_output+0x13a>
 800a326:	2300      	movs	r3, #0
 800a328:	4984      	ldr	r1, [pc, #528]	@ (800a53c <elog_output+0x33c>)
 800a32a:	4885      	ldr	r0, [pc, #532]	@ (800a540 <elog_output+0x340>)
 800a32c:	f80b 3007 	strb.w	r3, [fp, r7]
 800a330:	f001 f8de 	bl	800b4f0 <strstr>
 800a334:	2800      	cmp	r0, #0
 800a336:	f000 80ea 	beq.w	800a50e <elog_output+0x30e>
 800a33a:	f896 30f5 	ldrb.w	r3, [r6, #245]	@ 0xf5
 800a33e:	2b00      	cmp	r3, #0
 800a340:	f040 8116 	bne.w	800a570 <elog_output+0x370>
 800a344:	4a7f      	ldr	r2, [pc, #508]	@ (800a544 <elog_output+0x344>)
 800a346:	eb0b 0107 	add.w	r1, fp, r7
 800a34a:	4638      	mov	r0, r7
 800a34c:	f7ff feb0 	bl	800a0b0 <elog_strcpy>
 800a350:	4601      	mov	r1, r0
 800a352:	487b      	ldr	r0, [pc, #492]	@ (800a540 <elog_output+0x340>)
 800a354:	4439      	add	r1, r7
 800a356:	f000 fad1 	bl	800a8fc <elog_port_output>
 800a35a:	f896 30f2 	ldrb.w	r3, [r6, #242]	@ 0xf2
 800a35e:	2b00      	cmp	r3, #0
 800a360:	f040 80da 	bne.w	800a518 <elog_output+0x318>
 800a364:	2300      	movs	r3, #0
 800a366:	f886 30f3 	strb.w	r3, [r6, #243]	@ 0xf3
 800a36a:	e76f      	b.n	800a24c <elog_output+0x4c>
 800a36c:	f44f 740e 	mov.w	r4, #568	@ 0x238
 800a370:	496e      	ldr	r1, [pc, #440]	@ (800a52c <elog_output+0x32c>)
 800a372:	4a75      	ldr	r2, [pc, #468]	@ (800a548 <elog_output+0x348>)
 800a374:	4630      	mov	r0, r6
 800a376:	4b6c      	ldr	r3, [pc, #432]	@ (800a528 <elog_output+0x328>)
 800a378:	9400      	str	r4, [sp, #0]
 800a37a:	e9cd 2101 	strd	r2, r1, [sp, #4]
 800a37e:	e9cd 3403 	strd	r3, r4, [sp, #12]
 800a382:	4a72      	ldr	r2, [pc, #456]	@ (800a54c <elog_output+0x34c>)
 800a384:	4972      	ldr	r1, [pc, #456]	@ (800a550 <elog_output+0x350>)
 800a386:	f7ff ff3b 	bl	800a200 <elog_output>
 800a38a:	e7fe      	b.n	800a38a <elog_output+0x18a>
 800a38c:	f1b9 0f00 	cmp.w	r9, #0
 800a390:	d004      	beq.n	800a39c <elog_output+0x19c>
 800a392:	2140      	movs	r1, #64	@ 0x40
 800a394:	4620      	mov	r0, r4
 800a396:	f000 fa6f 	bl	800a878 <get_fmt_enabled>
 800a39a:	b9d8      	cbnz	r0, 800a3d4 <elog_output+0x1d4>
 800a39c:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a39e:	2b00      	cmp	r3, #0
 800a3a0:	d0b1      	beq.n	800a306 <elog_output+0x106>
 800a3a2:	2180      	movs	r1, #128	@ 0x80
 800a3a4:	4620      	mov	r0, r4
 800a3a6:	f000 fa67 	bl	800a878 <get_fmt_enabled>
 800a3aa:	2800      	cmp	r0, #0
 800a3ac:	d0ab      	beq.n	800a306 <elog_output+0x106>
 800a3ae:	9907      	ldr	r1, [sp, #28]
 800a3b0:	4638      	mov	r0, r7
 800a3b2:	4a60      	ldr	r2, [pc, #384]	@ (800a534 <elog_output+0x334>)
 800a3b4:	f7ff fe7c 	bl	800a0b0 <elog_strcpy>
 800a3b8:	183d      	adds	r5, r7, r0
 800a3ba:	f1b8 0f00 	cmp.w	r8, #0
 800a3be:	f040 8106 	bne.w	800a5ce <elog_output+0x3ce>
 800a3c2:	2180      	movs	r1, #128	@ 0x80
 800a3c4:	4620      	mov	r0, r4
 800a3c6:	f000 fa57 	bl	800a878 <get_fmt_enabled>
 800a3ca:	b9a0      	cbnz	r0, 800a3f6 <elog_output+0x1f6>
 800a3cc:	f1b9 0f00 	cmp.w	r9, #0
 800a3d0:	d08f      	beq.n	800a2f2 <elog_output+0xf2>
 800a3d2:	e02e      	b.n	800a432 <elog_output+0x232>
 800a3d4:	9907      	ldr	r1, [sp, #28]
 800a3d6:	4638      	mov	r0, r7
 800a3d8:	4a56      	ldr	r2, [pc, #344]	@ (800a534 <elog_output+0x334>)
 800a3da:	f7ff fe69 	bl	800a0b0 <elog_strcpy>
 800a3de:	183d      	adds	r5, r7, r0
 800a3e0:	f1b8 0f00 	cmp.w	r8, #0
 800a3e4:	f040 80cc 	bne.w	800a580 <elog_output+0x380>
 800a3e8:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a3ea:	b313      	cbz	r3, 800a432 <elog_output+0x232>
 800a3ec:	2180      	movs	r1, #128	@ 0x80
 800a3ee:	4620      	mov	r0, r4
 800a3f0:	f000 fa42 	bl	800a878 <get_fmt_enabled>
 800a3f4:	b1e8      	cbz	r0, 800a432 <elog_output+0x232>
 800a3f6:	eb0b 0705 	add.w	r7, fp, r5
 800a3fa:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a3fc:	4a55      	ldr	r2, [pc, #340]	@ (800a554 <elog_output+0x354>)
 800a3fe:	2105      	movs	r1, #5
 800a400:	a80a      	add	r0, sp, #40	@ 0x28
 800a402:	f000 ffa5 	bl	800b350 <sniprintf>
 800a406:	4628      	mov	r0, r5
 800a408:	aa0a      	add	r2, sp, #40	@ 0x28
 800a40a:	4639      	mov	r1, r7
 800a40c:	f7ff fe50 	bl	800a0b0 <elog_strcpy>
 800a410:	4405      	add	r5, r0
 800a412:	f1b9 0f00 	cmp.w	r9, #0
 800a416:	f43f af6c 	beq.w	800a2f2 <elog_output+0xf2>
 800a41a:	2140      	movs	r1, #64	@ 0x40
 800a41c:	4620      	mov	r0, r4
 800a41e:	f000 fa2b 	bl	800a878 <get_fmt_enabled>
 800a422:	b130      	cbz	r0, 800a432 <elog_output+0x232>
 800a424:	eb0b 0105 	add.w	r1, fp, r5
 800a428:	4628      	mov	r0, r5
 800a42a:	4a4b      	ldr	r2, [pc, #300]	@ (800a558 <elog_output+0x358>)
 800a42c:	f7ff fe40 	bl	800a0b0 <elog_strcpy>
 800a430:	4405      	add	r5, r0
 800a432:	4620      	mov	r0, r4
 800a434:	2140      	movs	r1, #64	@ 0x40
 800a436:	f000 fa1f 	bl	800a878 <get_fmt_enabled>
 800a43a:	2800      	cmp	r0, #0
 800a43c:	f43f af59 	beq.w	800a2f2 <elog_output+0xf2>
 800a440:	eb0b 0105 	add.w	r1, fp, r5
 800a444:	4628      	mov	r0, r5
 800a446:	464a      	mov	r2, r9
 800a448:	f7ff fe32 	bl	800a0b0 <elog_strcpy>
 800a44c:	4405      	add	r5, r0
 800a44e:	e750      	b.n	800a2f2 <elog_output+0xf2>
 800a450:	9907      	ldr	r1, [sp, #28]
 800a452:	4638      	mov	r0, r7
 800a454:	4a41      	ldr	r2, [pc, #260]	@ (800a55c <elog_output+0x35c>)
 800a456:	f7ff fe2b 	bl	800a0b0 <elog_strcpy>
 800a45a:	2104      	movs	r1, #4
 800a45c:	4407      	add	r7, r0
 800a45e:	4620      	mov	r0, r4
 800a460:	f000 fa0a 	bl	800a878 <get_fmt_enabled>
 800a464:	2800      	cmp	r0, #0
 800a466:	f040 8111 	bne.w	800a68c <elog_output+0x48c>
 800a46a:	2108      	movs	r1, #8
 800a46c:	4620      	mov	r0, r4
 800a46e:	f000 fa03 	bl	800a878 <get_fmt_enabled>
 800a472:	2800      	cmp	r0, #0
 800a474:	f040 80f2 	bne.w	800a65c <elog_output+0x45c>
 800a478:	2110      	movs	r1, #16
 800a47a:	4620      	mov	r0, r4
 800a47c:	f000 f9fc 	bl	800a878 <get_fmt_enabled>
 800a480:	2800      	cmp	r0, #0
 800a482:	f040 811b 	bne.w	800a6bc <elog_output+0x4bc>
 800a486:	eb0b 0107 	add.w	r1, fp, r7
 800a48a:	4638      	mov	r0, r7
 800a48c:	4a34      	ldr	r2, [pc, #208]	@ (800a560 <elog_output+0x360>)
 800a48e:	f7ff fe0f 	bl	800a0b0 <elog_strcpy>
 800a492:	4407      	add	r7, r0
 800a494:	eb0b 0307 	add.w	r3, fp, r7
 800a498:	9307      	str	r3, [sp, #28]
 800a49a:	e70d      	b.n	800a2b8 <elog_output+0xb8>
 800a49c:	4638      	mov	r0, r7
 800a49e:	462a      	mov	r2, r5
 800a4a0:	9907      	ldr	r1, [sp, #28]
 800a4a2:	f7ff fe05 	bl	800a0b0 <elog_strcpy>
 800a4a6:	f1ba 0f0f 	cmp.w	sl, #15
 800a4aa:	4407      	add	r7, r0
 800a4ac:	f240 80c8 	bls.w	800a640 <elog_output+0x440>
 800a4b0:	eb0b 0107 	add.w	r1, fp, r7
 800a4b4:	4638      	mov	r0, r7
 800a4b6:	4a28      	ldr	r2, [pc, #160]	@ (800a558 <elog_output+0x358>)
 800a4b8:	f7ff fdfa 	bl	800a0b0 <elog_strcpy>
 800a4bc:	4407      	add	r7, r0
 800a4be:	eb0b 0307 	add.w	r3, fp, r7
 800a4c2:	9307      	str	r3, [sp, #28]
 800a4c4:	e6f1      	b.n	800a2aa <elog_output+0xaa>
 800a4c6:	4b27      	ldr	r3, [pc, #156]	@ (800a564 <elog_output+0x364>)
 800a4c8:	4638      	mov	r0, r7
 800a4ca:	9907      	ldr	r1, [sp, #28]
 800a4cc:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
 800a4d0:	f7ff fdee 	bl	800a0b0 <elog_strcpy>
 800a4d4:	4407      	add	r7, r0
 800a4d6:	eb0b 0307 	add.w	r3, fp, r7
 800a4da:	9307      	str	r3, [sp, #28]
 800a4dc:	e6de      	b.n	800a29c <elog_output+0x9c>
 800a4de:	4a22      	ldr	r2, [pc, #136]	@ (800a568 <elog_output+0x368>)
 800a4e0:	4659      	mov	r1, fp
 800a4e2:	2000      	movs	r0, #0
 800a4e4:	f7ff fde4 	bl	800a0b0 <elog_strcpy>
 800a4e8:	4b20      	ldr	r3, [pc, #128]	@ (800a56c <elog_output+0x36c>)
 800a4ea:	4607      	mov	r7, r0
 800a4ec:	eb0b 0100 	add.w	r1, fp, r0
 800a4f0:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
 800a4f4:	f7ff fddc 	bl	800a0b0 <elog_strcpy>
 800a4f8:	4407      	add	r7, r0
 800a4fa:	eb0b 0307 	add.w	r3, fp, r7
 800a4fe:	9307      	str	r3, [sp, #28]
 800a500:	e6c5      	b.n	800a28e <elog_output+0x8e>
 800a502:	f000 f9ff 	bl	800a904 <elog_port_output_lock>
 800a506:	2301      	movs	r3, #1
 800a508:	f886 30f4 	strb.w	r3, [r6, #244]	@ 0xf4
 800a50c:	e6b6      	b.n	800a27c <elog_output+0x7c>
 800a50e:	f896 30f2 	ldrb.w	r3, [r6, #242]	@ 0xf2
 800a512:	2b00      	cmp	r3, #0
 800a514:	f43f af26 	beq.w	800a364 <elog_output+0x164>
 800a518:	f000 f9fe 	bl	800a918 <elog_port_output_unlock>
 800a51c:	2300      	movs	r3, #0
 800a51e:	f886 30f4 	strb.w	r3, [r6, #244]	@ 0xf4
 800a522:	e693      	b.n	800a24c <elog_output+0x4c>
 800a524:	20001494 	.word	0x20001494
 800a528:	0800dea8 	.word	0x0800dea8
 800a52c:	0800dc48 	.word	0x0800dc48
 800a530:	20001540 	.word	0x20001540
 800a534:	0800dc74 	.word	0x0800dc74
 800a538:	0800dc80 	.word	0x0800dc80
 800a53c:	20001560 	.word	0x20001560
 800a540:	20001498 	.word	0x20001498
 800a544:	0800dc8c 	.word	0x0800dc8c
 800a548:	0800dbd4 	.word	0x0800dbd4
 800a54c:	0800dbfc 	.word	0x0800dbfc
 800a550:	0800dbc8 	.word	0x0800dbc8
 800a554:	0800dc7c 	.word	0x0800dc7c
 800a558:	0800dc68 	.word	0x0800dc68
 800a55c:	0800dc6c 	.word	0x0800dc6c
 800a560:	0800dc70 	.word	0x0800dc70
 800a564:	0800df00 	.word	0x0800df00
 800a568:	0800dc64 	.word	0x0800dc64
 800a56c:	0800dee8 	.word	0x0800dee8
 800a570:	eb0b 0107 	add.w	r1, fp, r7
 800a574:	4638      	mov	r0, r7
 800a576:	4a56      	ldr	r2, [pc, #344]	@ (800a6d0 <elog_output+0x4d0>)
 800a578:	f7ff fd9a 	bl	800a0b0 <elog_strcpy>
 800a57c:	4407      	add	r7, r0
 800a57e:	e6e1      	b.n	800a344 <elog_output+0x144>
 800a580:	2120      	movs	r1, #32
 800a582:	4620      	mov	r0, r4
 800a584:	f000 f978 	bl	800a878 <get_fmt_enabled>
 800a588:	2800      	cmp	r0, #0
 800a58a:	d054      	beq.n	800a636 <elog_output+0x436>
 800a58c:	eb0b 0105 	add.w	r1, fp, r5
 800a590:	4628      	mov	r0, r5
 800a592:	4642      	mov	r2, r8
 800a594:	f7ff fd8c 	bl	800a0b0 <elog_strcpy>
 800a598:	4405      	add	r5, r0
 800a59a:	2140      	movs	r1, #64	@ 0x40
 800a59c:	4620      	mov	r0, r4
 800a59e:	f000 f96b 	bl	800a878 <get_fmt_enabled>
 800a5a2:	eb0b 0105 	add.w	r1, fp, r5
 800a5a6:	bb40      	cbnz	r0, 800a5fa <elog_output+0x3fa>
 800a5a8:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a5aa:	2b00      	cmp	r3, #0
 800a5ac:	f43f af41 	beq.w	800a432 <elog_output+0x232>
 800a5b0:	2180      	movs	r1, #128	@ 0x80
 800a5b2:	4620      	mov	r0, r4
 800a5b4:	f000 f960 	bl	800a878 <get_fmt_enabled>
 800a5b8:	eb0b 0105 	add.w	r1, fp, r5
 800a5bc:	2800      	cmp	r0, #0
 800a5be:	f43f af00 	beq.w	800a3c2 <elog_output+0x1c2>
 800a5c2:	4628      	mov	r0, r5
 800a5c4:	4a43      	ldr	r2, [pc, #268]	@ (800a6d4 <elog_output+0x4d4>)
 800a5c6:	f7ff fd73 	bl	800a0b0 <elog_strcpy>
 800a5ca:	4405      	add	r5, r0
 800a5cc:	e6f9      	b.n	800a3c2 <elog_output+0x1c2>
 800a5ce:	2120      	movs	r1, #32
 800a5d0:	4620      	mov	r0, r4
 800a5d2:	f000 f951 	bl	800a878 <get_fmt_enabled>
 800a5d6:	2800      	cmp	r0, #0
 800a5d8:	f43f aef3 	beq.w	800a3c2 <elog_output+0x1c2>
 800a5dc:	eb0b 0105 	add.w	r1, fp, r5
 800a5e0:	4628      	mov	r0, r5
 800a5e2:	4642      	mov	r2, r8
 800a5e4:	f7ff fd64 	bl	800a0b0 <elog_strcpy>
 800a5e8:	4405      	add	r5, r0
 800a5ea:	f1b9 0f00 	cmp.w	r9, #0
 800a5ee:	d1d4      	bne.n	800a59a <elog_output+0x39a>
 800a5f0:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a5f2:	2b00      	cmp	r3, #0
 800a5f4:	f43f ae7d 	beq.w	800a2f2 <elog_output+0xf2>
 800a5f8:	e7da      	b.n	800a5b0 <elog_output+0x3b0>
 800a5fa:	4628      	mov	r0, r5
 800a5fc:	4a36      	ldr	r2, [pc, #216]	@ (800a6d8 <elog_output+0x4d8>)
 800a5fe:	f7ff fd57 	bl	800a0b0 <elog_strcpy>
 800a602:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a604:	4405      	add	r5, r0
 800a606:	2b00      	cmp	r3, #0
 800a608:	f43f af13 	beq.w	800a432 <elog_output+0x232>
 800a60c:	2180      	movs	r1, #128	@ 0x80
 800a60e:	4620      	mov	r0, r4
 800a610:	f000 f932 	bl	800a878 <get_fmt_enabled>
 800a614:	2800      	cmp	r0, #0
 800a616:	f43f af0c 	beq.w	800a432 <elog_output+0x232>
 800a61a:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a61c:	2105      	movs	r1, #5
 800a61e:	4a2f      	ldr	r2, [pc, #188]	@ (800a6dc <elog_output+0x4dc>)
 800a620:	a80a      	add	r0, sp, #40	@ 0x28
 800a622:	f000 fe95 	bl	800b350 <sniprintf>
 800a626:	eb0b 0105 	add.w	r1, fp, r5
 800a62a:	4628      	mov	r0, r5
 800a62c:	aa0a      	add	r2, sp, #40	@ 0x28
 800a62e:	f7ff fd3f 	bl	800a0b0 <elog_strcpy>
 800a632:	4405      	add	r5, r0
 800a634:	e6f1      	b.n	800a41a <elog_output+0x21a>
 800a636:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800a638:	2b00      	cmp	r3, #0
 800a63a:	f43f aefa 	beq.w	800a432 <elog_output+0x232>
 800a63e:	e6c0      	b.n	800a3c2 <elog_output+0x1c2>
 800a640:	f1ca 020f 	rsb	r2, sl, #15
 800a644:	2120      	movs	r1, #32
 800a646:	a80c      	add	r0, sp, #48	@ 0x30
 800a648:	f000 ff38 	bl	800b4bc <memset>
 800a64c:	eb0b 0107 	add.w	r1, fp, r7
 800a650:	4638      	mov	r0, r7
 800a652:	aa0c      	add	r2, sp, #48	@ 0x30
 800a654:	f7ff fd2c 	bl	800a0b0 <elog_strcpy>
 800a658:	4407      	add	r7, r0
 800a65a:	e729      	b.n	800a4b0 <elog_output+0x2b0>
 800a65c:	f000 f978 	bl	800a950 <elog_port_get_p_info>
 800a660:	eb0b 0107 	add.w	r1, fp, r7
 800a664:	4602      	mov	r2, r0
 800a666:	4638      	mov	r0, r7
 800a668:	f7ff fd22 	bl	800a0b0 <elog_strcpy>
 800a66c:	2110      	movs	r1, #16
 800a66e:	4407      	add	r7, r0
 800a670:	4620      	mov	r0, r4
 800a672:	f000 f901 	bl	800a878 <get_fmt_enabled>
 800a676:	2800      	cmp	r0, #0
 800a678:	f43f aefe 	beq.w	800a478 <elog_output+0x278>
 800a67c:	eb0b 0107 	add.w	r1, fp, r7
 800a680:	4638      	mov	r0, r7
 800a682:	4a14      	ldr	r2, [pc, #80]	@ (800a6d4 <elog_output+0x4d4>)
 800a684:	f7ff fd14 	bl	800a0b0 <elog_strcpy>
 800a688:	4407      	add	r7, r0
 800a68a:	e6f5      	b.n	800a478 <elog_output+0x278>
 800a68c:	f000 f950 	bl	800a930 <elog_port_get_time>
 800a690:	eb0b 0107 	add.w	r1, fp, r7
 800a694:	4602      	mov	r2, r0
 800a696:	4638      	mov	r0, r7
 800a698:	f7ff fd0a 	bl	800a0b0 <elog_strcpy>
 800a69c:	2118      	movs	r1, #24
 800a69e:	4407      	add	r7, r0
 800a6a0:	4620      	mov	r0, r4
 800a6a2:	f000 f8e9 	bl	800a878 <get_fmt_enabled>
 800a6a6:	2800      	cmp	r0, #0
 800a6a8:	f43f aedf 	beq.w	800a46a <elog_output+0x26a>
 800a6ac:	eb0b 0107 	add.w	r1, fp, r7
 800a6b0:	4638      	mov	r0, r7
 800a6b2:	4a08      	ldr	r2, [pc, #32]	@ (800a6d4 <elog_output+0x4d4>)
 800a6b4:	f7ff fcfc 	bl	800a0b0 <elog_strcpy>
 800a6b8:	4407      	add	r7, r0
 800a6ba:	e6d6      	b.n	800a46a <elog_output+0x26a>
 800a6bc:	f000 f94c 	bl	800a958 <elog_port_get_t_info>
 800a6c0:	eb0b 0107 	add.w	r1, fp, r7
 800a6c4:	4602      	mov	r2, r0
 800a6c6:	4638      	mov	r0, r7
 800a6c8:	f7ff fcf2 	bl	800a0b0 <elog_strcpy>
 800a6cc:	4407      	add	r7, r0
 800a6ce:	e6da      	b.n	800a486 <elog_output+0x286>
 800a6d0:	0800dc84 	.word	0x0800dc84
 800a6d4:	0800dc68 	.word	0x0800dc68
 800a6d8:	0800dc78 	.word	0x0800dc78
 800a6dc:	0800dc7c 	.word	0x0800dc7c

0800a6e0 <elog_start>:
 800a6e0:	480c      	ldr	r0, [pc, #48]	@ (800a714 <elog_start+0x34>)
 800a6e2:	f890 30f0 	ldrb.w	r3, [r0, #240]	@ 0xf0
 800a6e6:	b903      	cbnz	r3, 800a6ea <elog_start+0xa>
 800a6e8:	4770      	bx	lr
 800a6ea:	b500      	push	{lr}
 800a6ec:	f04f 0c01 	mov.w	ip, #1
 800a6f0:	b085      	sub	sp, #20
 800a6f2:	4b09      	ldr	r3, [pc, #36]	@ (800a718 <elog_start+0x38>)
 800a6f4:	22ee      	movs	r2, #238	@ 0xee
 800a6f6:	4909      	ldr	r1, [pc, #36]	@ (800a71c <elog_start+0x3c>)
 800a6f8:	9302      	str	r3, [sp, #8]
 800a6fa:	4b09      	ldr	r3, [pc, #36]	@ (800a720 <elog_start+0x40>)
 800a6fc:	e9cd 2100 	strd	r2, r1, [sp]
 800a700:	f880 c0f1 	strb.w	ip, [r0, #241]	@ 0xf1
 800a704:	2003      	movs	r0, #3
 800a706:	4a07      	ldr	r2, [pc, #28]	@ (800a724 <elog_start+0x44>)
 800a708:	4907      	ldr	r1, [pc, #28]	@ (800a728 <elog_start+0x48>)
 800a70a:	f7ff fd79 	bl	800a200 <elog_output>
 800a70e:	b005      	add	sp, #20
 800a710:	f85d fb04 	ldr.w	pc, [sp], #4
 800a714:	20001540 	.word	0x20001540
 800a718:	0800dc90 	.word	0x0800dc90
 800a71c:	0800dc98 	.word	0x0800dc98
 800a720:	0800dedc 	.word	0x0800dedc
 800a724:	0800dbfc 	.word	0x0800dbfc
 800a728:	0800dbc8 	.word	0x0800dbc8

0800a72c <elog_set_fmt>:
 800a72c:	2806      	cmp	r0, #6
 800a72e:	b570      	push	{r4, r5, r6, lr}
 800a730:	4605      	mov	r5, r0
 800a732:	b086      	sub	sp, #24
 800a734:	460c      	mov	r4, r1
 800a736:	d90d      	bls.n	800a754 <elog_set_fmt+0x28>
 800a738:	4b13      	ldr	r3, [pc, #76]	@ (800a788 <elog_set_fmt+0x5c>)
 800a73a:	681e      	ldr	r6, [r3, #0]
 800a73c:	b1a6      	cbz	r6, 800a768 <elog_set_fmt+0x3c>
 800a73e:	f44f 729c 	mov.w	r2, #312	@ 0x138
 800a742:	4912      	ldr	r1, [pc, #72]	@ (800a78c <elog_set_fmt+0x60>)
 800a744:	4812      	ldr	r0, [pc, #72]	@ (800a790 <elog_set_fmt+0x64>)
 800a746:	47b0      	blx	r6
 800a748:	4b12      	ldr	r3, [pc, #72]	@ (800a794 <elog_set_fmt+0x68>)
 800a74a:	3536      	adds	r5, #54	@ 0x36
 800a74c:	f843 4025 	str.w	r4, [r3, r5, lsl #2]
 800a750:	b006      	add	sp, #24
 800a752:	bd70      	pop	{r4, r5, r6, pc}
 800a754:	d1f8      	bne.n	800a748 <elog_set_fmt+0x1c>
 800a756:	4b0f      	ldr	r3, [pc, #60]	@ (800a794 <elog_set_fmt+0x68>)
 800a758:	e9c3 1136 	strd	r1, r1, [r3, #216]	@ 0xd8
 800a75c:	e9c3 1138 	strd	r1, r1, [r3, #224]	@ 0xe0
 800a760:	e9c3 113a 	strd	r1, r1, [r3, #232]	@ 0xe8
 800a764:	b006      	add	sp, #24
 800a766:	bd70      	pop	{r4, r5, r6, pc}
 800a768:	f44f 749c 	mov.w	r4, #312	@ 0x138
 800a76c:	4908      	ldr	r1, [pc, #32]	@ (800a790 <elog_set_fmt+0x64>)
 800a76e:	4a0a      	ldr	r2, [pc, #40]	@ (800a798 <elog_set_fmt+0x6c>)
 800a770:	4630      	mov	r0, r6
 800a772:	4b06      	ldr	r3, [pc, #24]	@ (800a78c <elog_set_fmt+0x60>)
 800a774:	9400      	str	r4, [sp, #0]
 800a776:	e9cd 2101 	strd	r2, r1, [sp, #4]
 800a77a:	e9cd 3403 	strd	r3, r4, [sp, #12]
 800a77e:	4a07      	ldr	r2, [pc, #28]	@ (800a79c <elog_set_fmt+0x70>)
 800a780:	4907      	ldr	r1, [pc, #28]	@ (800a7a0 <elog_set_fmt+0x74>)
 800a782:	f7ff fd3d 	bl	800a200 <elog_output>
 800a786:	e7fe      	b.n	800a786 <elog_set_fmt+0x5a>
 800a788:	20001494 	.word	0x20001494
 800a78c:	0800decc 	.word	0x0800decc
 800a790:	0800dcc0 	.word	0x0800dcc0
 800a794:	20001540 	.word	0x20001540
 800a798:	0800dbd4 	.word	0x0800dbd4
 800a79c:	0800dbfc 	.word	0x0800dbfc
 800a7a0:	0800dbc8 	.word	0x0800dbc8

0800a7a4 <elog_get_filter_tag_lvl>:
 800a7a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a7a8:	4606      	mov	r6, r0
 800a7aa:	b086      	sub	sp, #24
 800a7ac:	b360      	cbz	r0, 800a808 <elog_get_filter_tag_lvl+0x64>
 800a7ae:	f8df 80c4 	ldr.w	r8, [pc, #196]	@ 800a874 <elog_get_filter_tag_lvl+0xd0>
 800a7b2:	f898 30f0 	ldrb.w	r3, [r8, #240]	@ 0xf0
 800a7b6:	b313      	cbz	r3, 800a7fe <elog_get_filter_tag_lvl+0x5a>
 800a7b8:	f898 70f2 	ldrb.w	r7, [r8, #242]	@ 0xf2
 800a7bc:	b9bf      	cbnz	r7, 800a7ee <elog_get_filter_tag_lvl+0x4a>
 800a7be:	2301      	movs	r3, #1
 800a7c0:	f888 30f3 	strb.w	r3, [r8, #243]	@ 0xf3
 800a7c4:	4c24      	ldr	r4, [pc, #144]	@ (800a858 <elog_get_filter_tag_lvl+0xb4>)
 800a7c6:	2500      	movs	r5, #0
 800a7c8:	7fe3      	ldrb	r3, [r4, #31]
 800a7ca:	221e      	movs	r2, #30
 800a7cc:	4621      	mov	r1, r4
 800a7ce:	4630      	mov	r0, r6
 800a7d0:	b113      	cbz	r3, 800a7d8 <elog_get_filter_tag_lvl+0x34>
 800a7d2:	f000 fe7b 	bl	800b4cc <strncmp>
 800a7d6:	b348      	cbz	r0, 800a82c <elog_get_filter_tag_lvl+0x88>
 800a7d8:	3501      	adds	r5, #1
 800a7da:	3421      	adds	r4, #33	@ 0x21
 800a7dc:	2d05      	cmp	r5, #5
 800a7de:	d1f3      	bne.n	800a7c8 <elog_get_filter_tag_lvl+0x24>
 800a7e0:	b9df      	cbnz	r7, 800a81a <elog_get_filter_tag_lvl+0x76>
 800a7e2:	4628      	mov	r0, r5
 800a7e4:	f888 70f3 	strb.w	r7, [r8, #243]	@ 0xf3
 800a7e8:	b006      	add	sp, #24
 800a7ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a7ee:	f000 f889 	bl	800a904 <elog_port_output_lock>
 800a7f2:	2301      	movs	r3, #1
 800a7f4:	f898 70f2 	ldrb.w	r7, [r8, #242]	@ 0xf2
 800a7f8:	f888 30f4 	strb.w	r3, [r8, #244]	@ 0xf4
 800a7fc:	e7e2      	b.n	800a7c4 <elog_get_filter_tag_lvl+0x20>
 800a7fe:	2505      	movs	r5, #5
 800a800:	4628      	mov	r0, r5
 800a802:	b006      	add	sp, #24
 800a804:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a808:	4b14      	ldr	r3, [pc, #80]	@ (800a85c <elog_get_filter_tag_lvl+0xb8>)
 800a80a:	681b      	ldr	r3, [r3, #0]
 800a80c:	b1ab      	cbz	r3, 800a83a <elog_get_filter_tag_lvl+0x96>
 800a80e:	f44f 72ed 	mov.w	r2, #474	@ 0x1da
 800a812:	4913      	ldr	r1, [pc, #76]	@ (800a860 <elog_get_filter_tag_lvl+0xbc>)
 800a814:	4813      	ldr	r0, [pc, #76]	@ (800a864 <elog_get_filter_tag_lvl+0xc0>)
 800a816:	4798      	blx	r3
 800a818:	e7c9      	b.n	800a7ae <elog_get_filter_tag_lvl+0xa>
 800a81a:	f000 f87d 	bl	800a918 <elog_port_output_unlock>
 800a81e:	2300      	movs	r3, #0
 800a820:	4628      	mov	r0, r5
 800a822:	f888 30f4 	strb.w	r3, [r8, #244]	@ 0xf4
 800a826:	b006      	add	sp, #24
 800a828:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a82c:	eb05 1545 	add.w	r5, r5, r5, lsl #5
 800a830:	eb08 0305 	add.w	r3, r8, r5
 800a834:	f893 5031 	ldrb.w	r5, [r3, #49]	@ 0x31
 800a838:	e7d2      	b.n	800a7e0 <elog_get_filter_tag_lvl+0x3c>
 800a83a:	f44f 74ed 	mov.w	r4, #474	@ 0x1da
 800a83e:	4909      	ldr	r1, [pc, #36]	@ (800a864 <elog_get_filter_tag_lvl+0xc0>)
 800a840:	4a09      	ldr	r2, [pc, #36]	@ (800a868 <elog_get_filter_tag_lvl+0xc4>)
 800a842:	4b07      	ldr	r3, [pc, #28]	@ (800a860 <elog_get_filter_tag_lvl+0xbc>)
 800a844:	9400      	str	r4, [sp, #0]
 800a846:	e9cd 2101 	strd	r2, r1, [sp, #4]
 800a84a:	e9cd 3403 	strd	r3, r4, [sp, #12]
 800a84e:	4a07      	ldr	r2, [pc, #28]	@ (800a86c <elog_get_filter_tag_lvl+0xc8>)
 800a850:	4907      	ldr	r1, [pc, #28]	@ (800a870 <elog_get_filter_tag_lvl+0xcc>)
 800a852:	f7ff fcd5 	bl	800a200 <elog_output>
 800a856:	e7fe      	b.n	800a856 <elog_get_filter_tag_lvl+0xb2>
 800a858:	20001572 	.word	0x20001572
 800a85c:	20001494 	.word	0x20001494
 800a860:	0800deb4 	.word	0x0800deb4
 800a864:	0800dcdc 	.word	0x0800dcdc
 800a868:	0800dbd4 	.word	0x0800dbd4
 800a86c:	0800dbfc 	.word	0x0800dbfc
 800a870:	0800dbc8 	.word	0x0800dbc8
 800a874:	20001540 	.word	0x20001540

0800a878 <get_fmt_enabled>:
 800a878:	2805      	cmp	r0, #5
 800a87a:	b570      	push	{r4, r5, r6, lr}
 800a87c:	4604      	mov	r4, r0
 800a87e:	b086      	sub	sp, #24
 800a880:	460d      	mov	r5, r1
 800a882:	d907      	bls.n	800a894 <get_fmt_enabled+0x1c>
 800a884:	4b10      	ldr	r3, [pc, #64]	@ (800a8c8 <get_fmt_enabled+0x50>)
 800a886:	681e      	ldr	r6, [r3, #0]
 800a888:	b176      	cbz	r6, 800a8a8 <get_fmt_enabled+0x30>
 800a88a:	f44f 7236 	mov.w	r2, #728	@ 0x2d8
 800a88e:	490f      	ldr	r1, [pc, #60]	@ (800a8cc <get_fmt_enabled+0x54>)
 800a890:	480f      	ldr	r0, [pc, #60]	@ (800a8d0 <get_fmt_enabled+0x58>)
 800a892:	47b0      	blx	r6
 800a894:	3436      	adds	r4, #54	@ 0x36
 800a896:	4b0f      	ldr	r3, [pc, #60]	@ (800a8d4 <get_fmt_enabled+0x5c>)
 800a898:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
 800a89c:	421d      	tst	r5, r3
 800a89e:	bf14      	ite	ne
 800a8a0:	2001      	movne	r0, #1
 800a8a2:	2000      	moveq	r0, #0
 800a8a4:	b006      	add	sp, #24
 800a8a6:	bd70      	pop	{r4, r5, r6, pc}
 800a8a8:	f44f 7436 	mov.w	r4, #728	@ 0x2d8
 800a8ac:	4908      	ldr	r1, [pc, #32]	@ (800a8d0 <get_fmt_enabled+0x58>)
 800a8ae:	4a0a      	ldr	r2, [pc, #40]	@ (800a8d8 <get_fmt_enabled+0x60>)
 800a8b0:	4630      	mov	r0, r6
 800a8b2:	4b06      	ldr	r3, [pc, #24]	@ (800a8cc <get_fmt_enabled+0x54>)
 800a8b4:	9400      	str	r4, [sp, #0]
 800a8b6:	e9cd 2101 	strd	r2, r1, [sp, #4]
 800a8ba:	e9cd 3403 	strd	r3, r4, [sp, #12]
 800a8be:	4a07      	ldr	r2, [pc, #28]	@ (800a8dc <get_fmt_enabled+0x64>)
 800a8c0:	4907      	ldr	r1, [pc, #28]	@ (800a8e0 <get_fmt_enabled+0x68>)
 800a8c2:	f7ff fc9d 	bl	800a200 <elog_output>
 800a8c6:	e7fe      	b.n	800a8c6 <get_fmt_enabled+0x4e>
 800a8c8:	20001494 	.word	0x20001494
 800a8cc:	0800de98 	.word	0x0800de98
 800a8d0:	0800dc48 	.word	0x0800dc48
 800a8d4:	20001540 	.word	0x20001540
 800a8d8:	0800dbd4 	.word	0x0800dbd4
 800a8dc:	0800dbfc 	.word	0x0800dbfc
 800a8e0:	0800dbc8 	.word	0x0800dbc8

0800a8e4 <elog_port_init>:
 800a8e4:	b508      	push	{r3, lr}
 800a8e6:	2001      	movs	r0, #1
 800a8e8:	f7fc f810 	bl	800690c <xQueueCreateMutex>
 800a8ec:	4b02      	ldr	r3, [pc, #8]	@ (800a8f8 <elog_port_init+0x14>)
 800a8ee:	4602      	mov	r2, r0
 800a8f0:	2000      	movs	r0, #0
 800a8f2:	601a      	str	r2, [r3, #0]
 800a8f4:	bd08      	pop	{r3, pc}
 800a8f6:	bf00      	nop
 800a8f8:	20001644 	.word	0x20001644

0800a8fc <elog_port_output>:
 800a8fc:	b289      	uxth	r1, r1
 800a8fe:	f7fe bd83 	b.w	8009408 <hal_uart_dma_send_bytes>
 800a902:	bf00      	nop

0800a904 <elog_port_output_lock>:
 800a904:	4b03      	ldr	r3, [pc, #12]	@ (800a914 <elog_port_output_lock+0x10>)
 800a906:	6818      	ldr	r0, [r3, #0]
 800a908:	b118      	cbz	r0, 800a912 <elog_port_output_lock+0xe>
 800a90a:	f04f 31ff 	mov.w	r1, #4294967295
 800a90e:	f7fc b93b 	b.w	8006b88 <xQueueSemaphoreTake>
 800a912:	4770      	bx	lr
 800a914:	20001644 	.word	0x20001644

0800a918 <elog_port_output_unlock>:
 800a918:	4b04      	ldr	r3, [pc, #16]	@ (800a92c <elog_port_output_unlock+0x14>)
 800a91a:	6818      	ldr	r0, [r3, #0]
 800a91c:	b120      	cbz	r0, 800a928 <elog_port_output_unlock+0x10>
 800a91e:	2300      	movs	r3, #0
 800a920:	461a      	mov	r2, r3
 800a922:	4619      	mov	r1, r3
 800a924:	f7fb bf2e 	b.w	8006784 <xQueueGenericSend>
 800a928:	4770      	bx	lr
 800a92a:	bf00      	nop
 800a92c:	20001644 	.word	0x20001644

0800a930 <elog_port_get_time>:
 800a930:	b510      	push	{r4, lr}
 800a932:	4c05      	ldr	r4, [pc, #20]	@ (800a948 <elog_port_get_time+0x18>)
 800a934:	f7fe fb10 	bl	8008f58 <get_tick_ms>
 800a938:	4a04      	ldr	r2, [pc, #16]	@ (800a94c <elog_port_get_time+0x1c>)
 800a93a:	4603      	mov	r3, r0
 800a93c:	210a      	movs	r1, #10
 800a93e:	4620      	mov	r0, r4
 800a940:	f000 fd06 	bl	800b350 <sniprintf>
 800a944:	4620      	mov	r0, r4
 800a946:	bd10      	pop	{r4, pc}
 800a948:	20001638 	.word	0x20001638
 800a94c:	0800dd38 	.word	0x0800dd38

0800a950 <elog_port_get_p_info>:
 800a950:	4800      	ldr	r0, [pc, #0]	@ (800a954 <elog_port_get_p_info+0x4>)
 800a952:	4770      	bx	lr
 800a954:	0800d670 	.word	0x0800d670

0800a958 <elog_port_get_t_info>:
 800a958:	4800      	ldr	r0, [pc, #0]	@ (800a95c <elog_port_get_t_info+0x4>)
 800a95a:	4770      	bx	lr
 800a95c:	0800d670 	.word	0x0800d670

0800a960 <__cvt>:
 800a960:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a962:	ed2d 8b02 	vpush	{d8}
 800a966:	eeb0 8b40 	vmov.f64	d8, d0
 800a96a:	b085      	sub	sp, #20
 800a96c:	4617      	mov	r7, r2
 800a96e:	9d0d      	ldr	r5, [sp, #52]	@ 0x34
 800a970:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
 800a972:	ee18 2a90 	vmov	r2, s17
 800a976:	f025 0520 	bic.w	r5, r5, #32
 800a97a:	2a00      	cmp	r2, #0
 800a97c:	bfb6      	itet	lt
 800a97e:	222d      	movlt	r2, #45	@ 0x2d
 800a980:	2200      	movge	r2, #0
 800a982:	eeb1 8b40 	vneglt.f64	d8, d0
 800a986:	2d46      	cmp	r5, #70	@ 0x46
 800a988:	460c      	mov	r4, r1
 800a98a:	701a      	strb	r2, [r3, #0]
 800a98c:	d004      	beq.n	800a998 <__cvt+0x38>
 800a98e:	2d45      	cmp	r5, #69	@ 0x45
 800a990:	d100      	bne.n	800a994 <__cvt+0x34>
 800a992:	3401      	adds	r4, #1
 800a994:	2102      	movs	r1, #2
 800a996:	e000      	b.n	800a99a <__cvt+0x3a>
 800a998:	2103      	movs	r1, #3
 800a99a:	ab03      	add	r3, sp, #12
 800a99c:	9301      	str	r3, [sp, #4]
 800a99e:	ab02      	add	r3, sp, #8
 800a9a0:	9300      	str	r3, [sp, #0]
 800a9a2:	4622      	mov	r2, r4
 800a9a4:	4633      	mov	r3, r6
 800a9a6:	eeb0 0b48 	vmov.f64	d0, d8
 800a9aa:	f000 fec5 	bl	800b738 <_dtoa_r>
 800a9ae:	2d47      	cmp	r5, #71	@ 0x47
 800a9b0:	d114      	bne.n	800a9dc <__cvt+0x7c>
 800a9b2:	07fb      	lsls	r3, r7, #31
 800a9b4:	d50a      	bpl.n	800a9cc <__cvt+0x6c>
 800a9b6:	1902      	adds	r2, r0, r4
 800a9b8:	eeb5 8b40 	vcmp.f64	d8, #0.0
 800a9bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800a9c0:	bf08      	it	eq
 800a9c2:	9203      	streq	r2, [sp, #12]
 800a9c4:	2130      	movs	r1, #48	@ 0x30
 800a9c6:	9b03      	ldr	r3, [sp, #12]
 800a9c8:	4293      	cmp	r3, r2
 800a9ca:	d319      	bcc.n	800aa00 <__cvt+0xa0>
 800a9cc:	9b03      	ldr	r3, [sp, #12]
 800a9ce:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
 800a9d0:	1a1b      	subs	r3, r3, r0
 800a9d2:	6013      	str	r3, [r2, #0]
 800a9d4:	b005      	add	sp, #20
 800a9d6:	ecbd 8b02 	vpop	{d8}
 800a9da:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a9dc:	2d46      	cmp	r5, #70	@ 0x46
 800a9de:	eb00 0204 	add.w	r2, r0, r4
 800a9e2:	d1e9      	bne.n	800a9b8 <__cvt+0x58>
 800a9e4:	7803      	ldrb	r3, [r0, #0]
 800a9e6:	2b30      	cmp	r3, #48	@ 0x30
 800a9e8:	d107      	bne.n	800a9fa <__cvt+0x9a>
 800a9ea:	eeb5 8b40 	vcmp.f64	d8, #0.0
 800a9ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800a9f2:	bf1c      	itt	ne
 800a9f4:	f1c4 0401 	rsbne	r4, r4, #1
 800a9f8:	6034      	strne	r4, [r6, #0]
 800a9fa:	6833      	ldr	r3, [r6, #0]
 800a9fc:	441a      	add	r2, r3
 800a9fe:	e7db      	b.n	800a9b8 <__cvt+0x58>
 800aa00:	1c5c      	adds	r4, r3, #1
 800aa02:	9403      	str	r4, [sp, #12]
 800aa04:	7019      	strb	r1, [r3, #0]
 800aa06:	e7de      	b.n	800a9c6 <__cvt+0x66>

0800aa08 <__exponent>:
 800aa08:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800aa0a:	2900      	cmp	r1, #0
 800aa0c:	bfba      	itte	lt
 800aa0e:	4249      	neglt	r1, r1
 800aa10:	232d      	movlt	r3, #45	@ 0x2d
 800aa12:	232b      	movge	r3, #43	@ 0x2b
 800aa14:	2909      	cmp	r1, #9
 800aa16:	7002      	strb	r2, [r0, #0]
 800aa18:	7043      	strb	r3, [r0, #1]
 800aa1a:	dd29      	ble.n	800aa70 <__exponent+0x68>
 800aa1c:	f10d 0307 	add.w	r3, sp, #7
 800aa20:	461d      	mov	r5, r3
 800aa22:	270a      	movs	r7, #10
 800aa24:	461a      	mov	r2, r3
 800aa26:	fbb1 f6f7 	udiv	r6, r1, r7
 800aa2a:	fb07 1416 	mls	r4, r7, r6, r1
 800aa2e:	3430      	adds	r4, #48	@ 0x30
 800aa30:	f802 4c01 	strb.w	r4, [r2, #-1]
 800aa34:	460c      	mov	r4, r1
 800aa36:	2c63      	cmp	r4, #99	@ 0x63
 800aa38:	f103 33ff 	add.w	r3, r3, #4294967295
 800aa3c:	4631      	mov	r1, r6
 800aa3e:	dcf1      	bgt.n	800aa24 <__exponent+0x1c>
 800aa40:	3130      	adds	r1, #48	@ 0x30
 800aa42:	1e94      	subs	r4, r2, #2
 800aa44:	f803 1c01 	strb.w	r1, [r3, #-1]
 800aa48:	1c41      	adds	r1, r0, #1
 800aa4a:	4623      	mov	r3, r4
 800aa4c:	42ab      	cmp	r3, r5
 800aa4e:	d30a      	bcc.n	800aa66 <__exponent+0x5e>
 800aa50:	f10d 0309 	add.w	r3, sp, #9
 800aa54:	1a9b      	subs	r3, r3, r2
 800aa56:	42ac      	cmp	r4, r5
 800aa58:	bf88      	it	hi
 800aa5a:	2300      	movhi	r3, #0
 800aa5c:	3302      	adds	r3, #2
 800aa5e:	4403      	add	r3, r0
 800aa60:	1a18      	subs	r0, r3, r0
 800aa62:	b003      	add	sp, #12
 800aa64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800aa66:	f813 6b01 	ldrb.w	r6, [r3], #1
 800aa6a:	f801 6f01 	strb.w	r6, [r1, #1]!
 800aa6e:	e7ed      	b.n	800aa4c <__exponent+0x44>
 800aa70:	2330      	movs	r3, #48	@ 0x30
 800aa72:	3130      	adds	r1, #48	@ 0x30
 800aa74:	7083      	strb	r3, [r0, #2]
 800aa76:	70c1      	strb	r1, [r0, #3]
 800aa78:	1d03      	adds	r3, r0, #4
 800aa7a:	e7f1      	b.n	800aa60 <__exponent+0x58>
 800aa7c:	0000      	movs	r0, r0
	...

0800aa80 <_printf_float>:
 800aa80:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800aa84:	b08d      	sub	sp, #52	@ 0x34
 800aa86:	460c      	mov	r4, r1
 800aa88:	f8dd 8058 	ldr.w	r8, [sp, #88]	@ 0x58
 800aa8c:	4616      	mov	r6, r2
 800aa8e:	461f      	mov	r7, r3
 800aa90:	4605      	mov	r5, r0
 800aa92:	f000 fd43 	bl	800b51c <_localeconv_r>
 800aa96:	f8d0 b000 	ldr.w	fp, [r0]
 800aa9a:	4658      	mov	r0, fp
 800aa9c:	f7f5 fe08 	bl	80006b0 <strlen>
 800aaa0:	2300      	movs	r3, #0
 800aaa2:	930a      	str	r3, [sp, #40]	@ 0x28
 800aaa4:	f8d8 3000 	ldr.w	r3, [r8]
 800aaa8:	f894 9018 	ldrb.w	r9, [r4, #24]
 800aaac:	6822      	ldr	r2, [r4, #0]
 800aaae:	9005      	str	r0, [sp, #20]
 800aab0:	3307      	adds	r3, #7
 800aab2:	f023 0307 	bic.w	r3, r3, #7
 800aab6:	f103 0108 	add.w	r1, r3, #8
 800aaba:	f8c8 1000 	str.w	r1, [r8]
 800aabe:	ed93 0b00 	vldr	d0, [r3]
 800aac2:	ed9f 6b97 	vldr	d6, [pc, #604]	@ 800ad20 <_printf_float+0x2a0>
 800aac6:	eeb0 7bc0 	vabs.f64	d7, d0
 800aaca:	eeb4 7b46 	vcmp.f64	d7, d6
 800aace:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800aad2:	ed84 0b12 	vstr	d0, [r4, #72]	@ 0x48
 800aad6:	dd24      	ble.n	800ab22 <_printf_float+0xa2>
 800aad8:	eeb5 0bc0 	vcmpe.f64	d0, #0.0
 800aadc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800aae0:	d502      	bpl.n	800aae8 <_printf_float+0x68>
 800aae2:	232d      	movs	r3, #45	@ 0x2d
 800aae4:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 800aae8:	498f      	ldr	r1, [pc, #572]	@ (800ad28 <_printf_float+0x2a8>)
 800aaea:	4b90      	ldr	r3, [pc, #576]	@ (800ad2c <_printf_float+0x2ac>)
 800aaec:	f1b9 0f47 	cmp.w	r9, #71	@ 0x47
 800aaf0:	bf8c      	ite	hi
 800aaf2:	4688      	movhi	r8, r1
 800aaf4:	4698      	movls	r8, r3
 800aaf6:	f022 0204 	bic.w	r2, r2, #4
 800aafa:	2303      	movs	r3, #3
 800aafc:	6123      	str	r3, [r4, #16]
 800aafe:	6022      	str	r2, [r4, #0]
 800ab00:	f04f 0a00 	mov.w	sl, #0
 800ab04:	9700      	str	r7, [sp, #0]
 800ab06:	4633      	mov	r3, r6
 800ab08:	aa0b      	add	r2, sp, #44	@ 0x2c
 800ab0a:	4621      	mov	r1, r4
 800ab0c:	4628      	mov	r0, r5
 800ab0e:	f000 f9d1 	bl	800aeb4 <_printf_common>
 800ab12:	3001      	adds	r0, #1
 800ab14:	f040 8089 	bne.w	800ac2a <_printf_float+0x1aa>
 800ab18:	f04f 30ff 	mov.w	r0, #4294967295
 800ab1c:	b00d      	add	sp, #52	@ 0x34
 800ab1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800ab22:	eeb4 0b40 	vcmp.f64	d0, d0
 800ab26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800ab2a:	d709      	bvc.n	800ab40 <_printf_float+0xc0>
 800ab2c:	ee10 3a90 	vmov	r3, s1
 800ab30:	2b00      	cmp	r3, #0
 800ab32:	bfbc      	itt	lt
 800ab34:	232d      	movlt	r3, #45	@ 0x2d
 800ab36:	f884 3043 	strblt.w	r3, [r4, #67]	@ 0x43
 800ab3a:	497d      	ldr	r1, [pc, #500]	@ (800ad30 <_printf_float+0x2b0>)
 800ab3c:	4b7d      	ldr	r3, [pc, #500]	@ (800ad34 <_printf_float+0x2b4>)
 800ab3e:	e7d5      	b.n	800aaec <_printf_float+0x6c>
 800ab40:	6863      	ldr	r3, [r4, #4]
 800ab42:	1c59      	adds	r1, r3, #1
 800ab44:	f009 0adf 	and.w	sl, r9, #223	@ 0xdf
 800ab48:	d139      	bne.n	800abbe <_printf_float+0x13e>
 800ab4a:	2306      	movs	r3, #6
 800ab4c:	6063      	str	r3, [r4, #4]
 800ab4e:	f442 6280 	orr.w	r2, r2, #1024	@ 0x400
 800ab52:	2300      	movs	r3, #0
 800ab54:	6022      	str	r2, [r4, #0]
 800ab56:	9303      	str	r3, [sp, #12]
 800ab58:	ab0a      	add	r3, sp, #40	@ 0x28
 800ab5a:	e9cd 9301 	strd	r9, r3, [sp, #4]
 800ab5e:	ab09      	add	r3, sp, #36	@ 0x24
 800ab60:	9300      	str	r3, [sp, #0]
 800ab62:	6861      	ldr	r1, [r4, #4]
 800ab64:	f10d 0323 	add.w	r3, sp, #35	@ 0x23
 800ab68:	4628      	mov	r0, r5
 800ab6a:	f7ff fef9 	bl	800a960 <__cvt>
 800ab6e:	f1ba 0f47 	cmp.w	sl, #71	@ 0x47
 800ab72:	9909      	ldr	r1, [sp, #36]	@ 0x24
 800ab74:	4680      	mov	r8, r0
 800ab76:	d129      	bne.n	800abcc <_printf_float+0x14c>
 800ab78:	1cc8      	adds	r0, r1, #3
 800ab7a:	db02      	blt.n	800ab82 <_printf_float+0x102>
 800ab7c:	6863      	ldr	r3, [r4, #4]
 800ab7e:	4299      	cmp	r1, r3
 800ab80:	dd41      	ble.n	800ac06 <_printf_float+0x186>
 800ab82:	f1a9 0902 	sub.w	r9, r9, #2
 800ab86:	fa5f f989 	uxtb.w	r9, r9
 800ab8a:	3901      	subs	r1, #1
 800ab8c:	464a      	mov	r2, r9
 800ab8e:	f104 0050 	add.w	r0, r4, #80	@ 0x50
 800ab92:	9109      	str	r1, [sp, #36]	@ 0x24
 800ab94:	f7ff ff38 	bl	800aa08 <__exponent>
 800ab98:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
 800ab9a:	1813      	adds	r3, r2, r0
 800ab9c:	2a01      	cmp	r2, #1
 800ab9e:	4682      	mov	sl, r0
 800aba0:	6123      	str	r3, [r4, #16]
 800aba2:	dc02      	bgt.n	800abaa <_printf_float+0x12a>
 800aba4:	6822      	ldr	r2, [r4, #0]
 800aba6:	07d2      	lsls	r2, r2, #31
 800aba8:	d501      	bpl.n	800abae <_printf_float+0x12e>
 800abaa:	3301      	adds	r3, #1
 800abac:	6123      	str	r3, [r4, #16]
 800abae:	f89d 3023 	ldrb.w	r3, [sp, #35]	@ 0x23
 800abb2:	2b00      	cmp	r3, #0
 800abb4:	d0a6      	beq.n	800ab04 <_printf_float+0x84>
 800abb6:	232d      	movs	r3, #45	@ 0x2d
 800abb8:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 800abbc:	e7a2      	b.n	800ab04 <_printf_float+0x84>
 800abbe:	f1ba 0f47 	cmp.w	sl, #71	@ 0x47
 800abc2:	d1c4      	bne.n	800ab4e <_printf_float+0xce>
 800abc4:	2b00      	cmp	r3, #0
 800abc6:	d1c2      	bne.n	800ab4e <_printf_float+0xce>
 800abc8:	2301      	movs	r3, #1
 800abca:	e7bf      	b.n	800ab4c <_printf_float+0xcc>
 800abcc:	f1b9 0f65 	cmp.w	r9, #101	@ 0x65
 800abd0:	d9db      	bls.n	800ab8a <_printf_float+0x10a>
 800abd2:	f1b9 0f66 	cmp.w	r9, #102	@ 0x66
 800abd6:	d118      	bne.n	800ac0a <_printf_float+0x18a>
 800abd8:	2900      	cmp	r1, #0
 800abda:	6863      	ldr	r3, [r4, #4]
 800abdc:	dd0b      	ble.n	800abf6 <_printf_float+0x176>
 800abde:	6121      	str	r1, [r4, #16]
 800abe0:	b913      	cbnz	r3, 800abe8 <_printf_float+0x168>
 800abe2:	6822      	ldr	r2, [r4, #0]
 800abe4:	07d0      	lsls	r0, r2, #31
 800abe6:	d502      	bpl.n	800abee <_printf_float+0x16e>
 800abe8:	3301      	adds	r3, #1
 800abea:	440b      	add	r3, r1
 800abec:	6123      	str	r3, [r4, #16]
 800abee:	65a1      	str	r1, [r4, #88]	@ 0x58
 800abf0:	f04f 0a00 	mov.w	sl, #0
 800abf4:	e7db      	b.n	800abae <_printf_float+0x12e>
 800abf6:	b913      	cbnz	r3, 800abfe <_printf_float+0x17e>
 800abf8:	6822      	ldr	r2, [r4, #0]
 800abfa:	07d2      	lsls	r2, r2, #31
 800abfc:	d501      	bpl.n	800ac02 <_printf_float+0x182>
 800abfe:	3302      	adds	r3, #2
 800ac00:	e7f4      	b.n	800abec <_printf_float+0x16c>
 800ac02:	2301      	movs	r3, #1
 800ac04:	e7f2      	b.n	800abec <_printf_float+0x16c>
 800ac06:	f04f 0967 	mov.w	r9, #103	@ 0x67
 800ac0a:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 800ac0c:	4299      	cmp	r1, r3
 800ac0e:	db05      	blt.n	800ac1c <_printf_float+0x19c>
 800ac10:	6823      	ldr	r3, [r4, #0]
 800ac12:	6121      	str	r1, [r4, #16]
 800ac14:	07d8      	lsls	r0, r3, #31
 800ac16:	d5ea      	bpl.n	800abee <_printf_float+0x16e>
 800ac18:	1c4b      	adds	r3, r1, #1
 800ac1a:	e7e7      	b.n	800abec <_printf_float+0x16c>
 800ac1c:	2900      	cmp	r1, #0
 800ac1e:	bfd4      	ite	le
 800ac20:	f1c1 0202 	rsble	r2, r1, #2
 800ac24:	2201      	movgt	r2, #1
 800ac26:	4413      	add	r3, r2
 800ac28:	e7e0      	b.n	800abec <_printf_float+0x16c>
 800ac2a:	6823      	ldr	r3, [r4, #0]
 800ac2c:	055a      	lsls	r2, r3, #21
 800ac2e:	d407      	bmi.n	800ac40 <_printf_float+0x1c0>
 800ac30:	6923      	ldr	r3, [r4, #16]
 800ac32:	4642      	mov	r2, r8
 800ac34:	4631      	mov	r1, r6
 800ac36:	4628      	mov	r0, r5
 800ac38:	47b8      	blx	r7
 800ac3a:	3001      	adds	r0, #1
 800ac3c:	d12a      	bne.n	800ac94 <_printf_float+0x214>
 800ac3e:	e76b      	b.n	800ab18 <_printf_float+0x98>
 800ac40:	f1b9 0f65 	cmp.w	r9, #101	@ 0x65
 800ac44:	f240 80e0 	bls.w	800ae08 <_printf_float+0x388>
 800ac48:	ed94 7b12 	vldr	d7, [r4, #72]	@ 0x48
 800ac4c:	eeb5 7b40 	vcmp.f64	d7, #0.0
 800ac50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800ac54:	d133      	bne.n	800acbe <_printf_float+0x23e>
 800ac56:	4a38      	ldr	r2, [pc, #224]	@ (800ad38 <_printf_float+0x2b8>)
 800ac58:	2301      	movs	r3, #1
 800ac5a:	4631      	mov	r1, r6
 800ac5c:	4628      	mov	r0, r5
 800ac5e:	47b8      	blx	r7
 800ac60:	3001      	adds	r0, #1
 800ac62:	f43f af59 	beq.w	800ab18 <_printf_float+0x98>
 800ac66:	e9dd 3809 	ldrd	r3, r8, [sp, #36]	@ 0x24
 800ac6a:	4543      	cmp	r3, r8
 800ac6c:	db02      	blt.n	800ac74 <_printf_float+0x1f4>
 800ac6e:	6823      	ldr	r3, [r4, #0]
 800ac70:	07d8      	lsls	r0, r3, #31
 800ac72:	d50f      	bpl.n	800ac94 <_printf_float+0x214>
 800ac74:	9b05      	ldr	r3, [sp, #20]
 800ac76:	465a      	mov	r2, fp
 800ac78:	4631      	mov	r1, r6
 800ac7a:	4628      	mov	r0, r5
 800ac7c:	47b8      	blx	r7
 800ac7e:	3001      	adds	r0, #1
 800ac80:	f43f af4a 	beq.w	800ab18 <_printf_float+0x98>
 800ac84:	f04f 0900 	mov.w	r9, #0
 800ac88:	f108 38ff 	add.w	r8, r8, #4294967295
 800ac8c:	f104 0a1a 	add.w	sl, r4, #26
 800ac90:	45c8      	cmp	r8, r9
 800ac92:	dc09      	bgt.n	800aca8 <_printf_float+0x228>
 800ac94:	6823      	ldr	r3, [r4, #0]
 800ac96:	079b      	lsls	r3, r3, #30
 800ac98:	f100 8107 	bmi.w	800aeaa <_printf_float+0x42a>
 800ac9c:	68e0      	ldr	r0, [r4, #12]
 800ac9e:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 800aca0:	4298      	cmp	r0, r3
 800aca2:	bfb8      	it	lt
 800aca4:	4618      	movlt	r0, r3
 800aca6:	e739      	b.n	800ab1c <_printf_float+0x9c>
 800aca8:	2301      	movs	r3, #1
 800acaa:	4652      	mov	r2, sl
 800acac:	4631      	mov	r1, r6
 800acae:	4628      	mov	r0, r5
 800acb0:	47b8      	blx	r7
 800acb2:	3001      	adds	r0, #1
 800acb4:	f43f af30 	beq.w	800ab18 <_printf_float+0x98>
 800acb8:	f109 0901 	add.w	r9, r9, #1
 800acbc:	e7e8      	b.n	800ac90 <_printf_float+0x210>
 800acbe:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800acc0:	2b00      	cmp	r3, #0
 800acc2:	dc3b      	bgt.n	800ad3c <_printf_float+0x2bc>
 800acc4:	4a1c      	ldr	r2, [pc, #112]	@ (800ad38 <_printf_float+0x2b8>)
 800acc6:	2301      	movs	r3, #1
 800acc8:	4631      	mov	r1, r6
 800acca:	4628      	mov	r0, r5
 800accc:	47b8      	blx	r7
 800acce:	3001      	adds	r0, #1
 800acd0:	f43f af22 	beq.w	800ab18 <_printf_float+0x98>
 800acd4:	e9dd 3909 	ldrd	r3, r9, [sp, #36]	@ 0x24
 800acd8:	ea59 0303 	orrs.w	r3, r9, r3
 800acdc:	d102      	bne.n	800ace4 <_printf_float+0x264>
 800acde:	6823      	ldr	r3, [r4, #0]
 800ace0:	07d9      	lsls	r1, r3, #31
 800ace2:	d5d7      	bpl.n	800ac94 <_printf_float+0x214>
 800ace4:	9b05      	ldr	r3, [sp, #20]
 800ace6:	465a      	mov	r2, fp
 800ace8:	4631      	mov	r1, r6
 800acea:	4628      	mov	r0, r5
 800acec:	47b8      	blx	r7
 800acee:	3001      	adds	r0, #1
 800acf0:	f43f af12 	beq.w	800ab18 <_printf_float+0x98>
 800acf4:	f04f 0a00 	mov.w	sl, #0
 800acf8:	f104 0b1a 	add.w	fp, r4, #26
 800acfc:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800acfe:	425b      	negs	r3, r3
 800ad00:	4553      	cmp	r3, sl
 800ad02:	dc01      	bgt.n	800ad08 <_printf_float+0x288>
 800ad04:	464b      	mov	r3, r9
 800ad06:	e794      	b.n	800ac32 <_printf_float+0x1b2>
 800ad08:	2301      	movs	r3, #1
 800ad0a:	465a      	mov	r2, fp
 800ad0c:	4631      	mov	r1, r6
 800ad0e:	4628      	mov	r0, r5
 800ad10:	47b8      	blx	r7
 800ad12:	3001      	adds	r0, #1
 800ad14:	f43f af00 	beq.w	800ab18 <_printf_float+0x98>
 800ad18:	f10a 0a01 	add.w	sl, sl, #1
 800ad1c:	e7ee      	b.n	800acfc <_printf_float+0x27c>
 800ad1e:	bf00      	nop
 800ad20:	ffffffff 	.word	0xffffffff
 800ad24:	7fefffff 	.word	0x7fefffff
 800ad28:	0800df1c 	.word	0x0800df1c
 800ad2c:	0800df18 	.word	0x0800df18
 800ad30:	0800df24 	.word	0x0800df24
 800ad34:	0800df20 	.word	0x0800df20
 800ad38:	0800df28 	.word	0x0800df28
 800ad3c:	6da3      	ldr	r3, [r4, #88]	@ 0x58
 800ad3e:	f8dd a028 	ldr.w	sl, [sp, #40]	@ 0x28
 800ad42:	4553      	cmp	r3, sl
 800ad44:	bfa8      	it	ge
 800ad46:	4653      	movge	r3, sl
 800ad48:	2b00      	cmp	r3, #0
 800ad4a:	4699      	mov	r9, r3
 800ad4c:	dc37      	bgt.n	800adbe <_printf_float+0x33e>
 800ad4e:	2300      	movs	r3, #0
 800ad50:	9307      	str	r3, [sp, #28]
 800ad52:	ea29 79e9 	bic.w	r9, r9, r9, asr #31
 800ad56:	f104 021a 	add.w	r2, r4, #26
 800ad5a:	6da3      	ldr	r3, [r4, #88]	@ 0x58
 800ad5c:	9907      	ldr	r1, [sp, #28]
 800ad5e:	9306      	str	r3, [sp, #24]
 800ad60:	eba3 0309 	sub.w	r3, r3, r9
 800ad64:	428b      	cmp	r3, r1
 800ad66:	dc31      	bgt.n	800adcc <_printf_float+0x34c>
 800ad68:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800ad6a:	459a      	cmp	sl, r3
 800ad6c:	dc3b      	bgt.n	800ade6 <_printf_float+0x366>
 800ad6e:	6823      	ldr	r3, [r4, #0]
 800ad70:	07da      	lsls	r2, r3, #31
 800ad72:	d438      	bmi.n	800ade6 <_printf_float+0x366>
 800ad74:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800ad76:	ebaa 0903 	sub.w	r9, sl, r3
 800ad7a:	9b06      	ldr	r3, [sp, #24]
 800ad7c:	ebaa 0303 	sub.w	r3, sl, r3
 800ad80:	4599      	cmp	r9, r3
 800ad82:	bfa8      	it	ge
 800ad84:	4699      	movge	r9, r3
 800ad86:	f1b9 0f00 	cmp.w	r9, #0
 800ad8a:	dc34      	bgt.n	800adf6 <_printf_float+0x376>
 800ad8c:	f04f 0800 	mov.w	r8, #0
 800ad90:	ea29 79e9 	bic.w	r9, r9, r9, asr #31
 800ad94:	f104 0b1a 	add.w	fp, r4, #26
 800ad98:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800ad9a:	ebaa 0303 	sub.w	r3, sl, r3
 800ad9e:	eba3 0309 	sub.w	r3, r3, r9
 800ada2:	4543      	cmp	r3, r8
 800ada4:	f77f af76 	ble.w	800ac94 <_printf_float+0x214>
 800ada8:	2301      	movs	r3, #1
 800adaa:	465a      	mov	r2, fp
 800adac:	4631      	mov	r1, r6
 800adae:	4628      	mov	r0, r5
 800adb0:	47b8      	blx	r7
 800adb2:	3001      	adds	r0, #1
 800adb4:	f43f aeb0 	beq.w	800ab18 <_printf_float+0x98>
 800adb8:	f108 0801 	add.w	r8, r8, #1
 800adbc:	e7ec      	b.n	800ad98 <_printf_float+0x318>
 800adbe:	4642      	mov	r2, r8
 800adc0:	4631      	mov	r1, r6
 800adc2:	4628      	mov	r0, r5
 800adc4:	47b8      	blx	r7
 800adc6:	3001      	adds	r0, #1
 800adc8:	d1c1      	bne.n	800ad4e <_printf_float+0x2ce>
 800adca:	e6a5      	b.n	800ab18 <_printf_float+0x98>
 800adcc:	2301      	movs	r3, #1
 800adce:	4631      	mov	r1, r6
 800add0:	4628      	mov	r0, r5
 800add2:	9206      	str	r2, [sp, #24]
 800add4:	47b8      	blx	r7
 800add6:	3001      	adds	r0, #1
 800add8:	f43f ae9e 	beq.w	800ab18 <_printf_float+0x98>
 800addc:	9b07      	ldr	r3, [sp, #28]
 800adde:	9a06      	ldr	r2, [sp, #24]
 800ade0:	3301      	adds	r3, #1
 800ade2:	9307      	str	r3, [sp, #28]
 800ade4:	e7b9      	b.n	800ad5a <_printf_float+0x2da>
 800ade6:	9b05      	ldr	r3, [sp, #20]
 800ade8:	465a      	mov	r2, fp
 800adea:	4631      	mov	r1, r6
 800adec:	4628      	mov	r0, r5
 800adee:	47b8      	blx	r7
 800adf0:	3001      	adds	r0, #1
 800adf2:	d1bf      	bne.n	800ad74 <_printf_float+0x2f4>
 800adf4:	e690      	b.n	800ab18 <_printf_float+0x98>
 800adf6:	9a06      	ldr	r2, [sp, #24]
 800adf8:	464b      	mov	r3, r9
 800adfa:	4442      	add	r2, r8
 800adfc:	4631      	mov	r1, r6
 800adfe:	4628      	mov	r0, r5
 800ae00:	47b8      	blx	r7
 800ae02:	3001      	adds	r0, #1
 800ae04:	d1c2      	bne.n	800ad8c <_printf_float+0x30c>
 800ae06:	e687      	b.n	800ab18 <_printf_float+0x98>
 800ae08:	f8dd 9028 	ldr.w	r9, [sp, #40]	@ 0x28
 800ae0c:	f1b9 0f01 	cmp.w	r9, #1
 800ae10:	dc01      	bgt.n	800ae16 <_printf_float+0x396>
 800ae12:	07db      	lsls	r3, r3, #31
 800ae14:	d536      	bpl.n	800ae84 <_printf_float+0x404>
 800ae16:	2301      	movs	r3, #1
 800ae18:	4642      	mov	r2, r8
 800ae1a:	4631      	mov	r1, r6
 800ae1c:	4628      	mov	r0, r5
 800ae1e:	47b8      	blx	r7
 800ae20:	3001      	adds	r0, #1
 800ae22:	f43f ae79 	beq.w	800ab18 <_printf_float+0x98>
 800ae26:	9b05      	ldr	r3, [sp, #20]
 800ae28:	465a      	mov	r2, fp
 800ae2a:	4631      	mov	r1, r6
 800ae2c:	4628      	mov	r0, r5
 800ae2e:	47b8      	blx	r7
 800ae30:	3001      	adds	r0, #1
 800ae32:	f43f ae71 	beq.w	800ab18 <_printf_float+0x98>
 800ae36:	ed94 7b12 	vldr	d7, [r4, #72]	@ 0x48
 800ae3a:	eeb5 7b40 	vcmp.f64	d7, #0.0
 800ae3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800ae42:	f109 39ff 	add.w	r9, r9, #4294967295
 800ae46:	d018      	beq.n	800ae7a <_printf_float+0x3fa>
 800ae48:	464b      	mov	r3, r9
 800ae4a:	f108 0201 	add.w	r2, r8, #1
 800ae4e:	4631      	mov	r1, r6
 800ae50:	4628      	mov	r0, r5
 800ae52:	47b8      	blx	r7
 800ae54:	3001      	adds	r0, #1
 800ae56:	d10c      	bne.n	800ae72 <_printf_float+0x3f2>
 800ae58:	e65e      	b.n	800ab18 <_printf_float+0x98>
 800ae5a:	2301      	movs	r3, #1
 800ae5c:	465a      	mov	r2, fp
 800ae5e:	4631      	mov	r1, r6
 800ae60:	4628      	mov	r0, r5
 800ae62:	47b8      	blx	r7
 800ae64:	3001      	adds	r0, #1
 800ae66:	f43f ae57 	beq.w	800ab18 <_printf_float+0x98>
 800ae6a:	f108 0801 	add.w	r8, r8, #1
 800ae6e:	45c8      	cmp	r8, r9
 800ae70:	dbf3      	blt.n	800ae5a <_printf_float+0x3da>
 800ae72:	4653      	mov	r3, sl
 800ae74:	f104 0250 	add.w	r2, r4, #80	@ 0x50
 800ae78:	e6dc      	b.n	800ac34 <_printf_float+0x1b4>
 800ae7a:	f04f 0800 	mov.w	r8, #0
 800ae7e:	f104 0b1a 	add.w	fp, r4, #26
 800ae82:	e7f4      	b.n	800ae6e <_printf_float+0x3ee>
 800ae84:	2301      	movs	r3, #1
 800ae86:	4642      	mov	r2, r8
 800ae88:	e7e1      	b.n	800ae4e <_printf_float+0x3ce>
 800ae8a:	2301      	movs	r3, #1
 800ae8c:	464a      	mov	r2, r9
 800ae8e:	4631      	mov	r1, r6
 800ae90:	4628      	mov	r0, r5
 800ae92:	47b8      	blx	r7
 800ae94:	3001      	adds	r0, #1
 800ae96:	f43f ae3f 	beq.w	800ab18 <_printf_float+0x98>
 800ae9a:	f108 0801 	add.w	r8, r8, #1
 800ae9e:	68e3      	ldr	r3, [r4, #12]
 800aea0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
 800aea2:	1a5b      	subs	r3, r3, r1
 800aea4:	4543      	cmp	r3, r8
 800aea6:	dcf0      	bgt.n	800ae8a <_printf_float+0x40a>
 800aea8:	e6f8      	b.n	800ac9c <_printf_float+0x21c>
 800aeaa:	f04f 0800 	mov.w	r8, #0
 800aeae:	f104 0919 	add.w	r9, r4, #25
 800aeb2:	e7f4      	b.n	800ae9e <_printf_float+0x41e>

0800aeb4 <_printf_common>:
 800aeb4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800aeb8:	4616      	mov	r6, r2
 800aeba:	4698      	mov	r8, r3
 800aebc:	688a      	ldr	r2, [r1, #8]
 800aebe:	690b      	ldr	r3, [r1, #16]
 800aec0:	f8dd 9020 	ldr.w	r9, [sp, #32]
 800aec4:	4293      	cmp	r3, r2
 800aec6:	bfb8      	it	lt
 800aec8:	4613      	movlt	r3, r2
 800aeca:	6033      	str	r3, [r6, #0]
 800aecc:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
 800aed0:	4607      	mov	r7, r0
 800aed2:	460c      	mov	r4, r1
 800aed4:	b10a      	cbz	r2, 800aeda <_printf_common+0x26>
 800aed6:	3301      	adds	r3, #1
 800aed8:	6033      	str	r3, [r6, #0]
 800aeda:	6823      	ldr	r3, [r4, #0]
 800aedc:	0699      	lsls	r1, r3, #26
 800aede:	bf42      	ittt	mi
 800aee0:	6833      	ldrmi	r3, [r6, #0]
 800aee2:	3302      	addmi	r3, #2
 800aee4:	6033      	strmi	r3, [r6, #0]
 800aee6:	6825      	ldr	r5, [r4, #0]
 800aee8:	f015 0506 	ands.w	r5, r5, #6
 800aeec:	d106      	bne.n	800aefc <_printf_common+0x48>
 800aeee:	f104 0a19 	add.w	sl, r4, #25
 800aef2:	68e3      	ldr	r3, [r4, #12]
 800aef4:	6832      	ldr	r2, [r6, #0]
 800aef6:	1a9b      	subs	r3, r3, r2
 800aef8:	42ab      	cmp	r3, r5
 800aefa:	dc26      	bgt.n	800af4a <_printf_common+0x96>
 800aefc:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
 800af00:	6822      	ldr	r2, [r4, #0]
 800af02:	3b00      	subs	r3, #0
 800af04:	bf18      	it	ne
 800af06:	2301      	movne	r3, #1
 800af08:	0692      	lsls	r2, r2, #26
 800af0a:	d42b      	bmi.n	800af64 <_printf_common+0xb0>
 800af0c:	f104 0243 	add.w	r2, r4, #67	@ 0x43
 800af10:	4641      	mov	r1, r8
 800af12:	4638      	mov	r0, r7
 800af14:	47c8      	blx	r9
 800af16:	3001      	adds	r0, #1
 800af18:	d01e      	beq.n	800af58 <_printf_common+0xa4>
 800af1a:	6823      	ldr	r3, [r4, #0]
 800af1c:	6922      	ldr	r2, [r4, #16]
 800af1e:	f003 0306 	and.w	r3, r3, #6
 800af22:	2b04      	cmp	r3, #4
 800af24:	bf02      	ittt	eq
 800af26:	68e5      	ldreq	r5, [r4, #12]
 800af28:	6833      	ldreq	r3, [r6, #0]
 800af2a:	1aed      	subeq	r5, r5, r3
 800af2c:	68a3      	ldr	r3, [r4, #8]
 800af2e:	bf0c      	ite	eq
 800af30:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 800af34:	2500      	movne	r5, #0
 800af36:	4293      	cmp	r3, r2
 800af38:	bfc4      	itt	gt
 800af3a:	1a9b      	subgt	r3, r3, r2
 800af3c:	18ed      	addgt	r5, r5, r3
 800af3e:	2600      	movs	r6, #0
 800af40:	341a      	adds	r4, #26
 800af42:	42b5      	cmp	r5, r6
 800af44:	d11a      	bne.n	800af7c <_printf_common+0xc8>
 800af46:	2000      	movs	r0, #0
 800af48:	e008      	b.n	800af5c <_printf_common+0xa8>
 800af4a:	2301      	movs	r3, #1
 800af4c:	4652      	mov	r2, sl
 800af4e:	4641      	mov	r1, r8
 800af50:	4638      	mov	r0, r7
 800af52:	47c8      	blx	r9
 800af54:	3001      	adds	r0, #1
 800af56:	d103      	bne.n	800af60 <_printf_common+0xac>
 800af58:	f04f 30ff 	mov.w	r0, #4294967295
 800af5c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800af60:	3501      	adds	r5, #1
 800af62:	e7c6      	b.n	800aef2 <_printf_common+0x3e>
 800af64:	18e1      	adds	r1, r4, r3
 800af66:	1c5a      	adds	r2, r3, #1
 800af68:	2030      	movs	r0, #48	@ 0x30
 800af6a:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
 800af6e:	4422      	add	r2, r4
 800af70:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
 800af74:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
 800af78:	3302      	adds	r3, #2
 800af7a:	e7c7      	b.n	800af0c <_printf_common+0x58>
 800af7c:	2301      	movs	r3, #1
 800af7e:	4622      	mov	r2, r4
 800af80:	4641      	mov	r1, r8
 800af82:	4638      	mov	r0, r7
 800af84:	47c8      	blx	r9
 800af86:	3001      	adds	r0, #1
 800af88:	d0e6      	beq.n	800af58 <_printf_common+0xa4>
 800af8a:	3601      	adds	r6, #1
 800af8c:	e7d9      	b.n	800af42 <_printf_common+0x8e>
	...

0800af90 <_printf_i>:
 800af90:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 800af94:	7e0f      	ldrb	r7, [r1, #24]
 800af96:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
 800af98:	2f78      	cmp	r7, #120	@ 0x78
 800af9a:	4691      	mov	r9, r2
 800af9c:	4680      	mov	r8, r0
 800af9e:	460c      	mov	r4, r1
 800afa0:	469a      	mov	sl, r3
 800afa2:	f101 0243 	add.w	r2, r1, #67	@ 0x43
 800afa6:	d807      	bhi.n	800afb8 <_printf_i+0x28>
 800afa8:	2f62      	cmp	r7, #98	@ 0x62
 800afaa:	d80a      	bhi.n	800afc2 <_printf_i+0x32>
 800afac:	2f00      	cmp	r7, #0
 800afae:	f000 80d1 	beq.w	800b154 <_printf_i+0x1c4>
 800afb2:	2f58      	cmp	r7, #88	@ 0x58
 800afb4:	f000 80b8 	beq.w	800b128 <_printf_i+0x198>
 800afb8:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 800afbc:	f884 7042 	strb.w	r7, [r4, #66]	@ 0x42
 800afc0:	e03a      	b.n	800b038 <_printf_i+0xa8>
 800afc2:	f1a7 0363 	sub.w	r3, r7, #99	@ 0x63
 800afc6:	2b15      	cmp	r3, #21
 800afc8:	d8f6      	bhi.n	800afb8 <_printf_i+0x28>
 800afca:	a101      	add	r1, pc, #4	@ (adr r1, 800afd0 <_printf_i+0x40>)
 800afcc:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 800afd0:	0800b029 	.word	0x0800b029
 800afd4:	0800b03d 	.word	0x0800b03d
 800afd8:	0800afb9 	.word	0x0800afb9
 800afdc:	0800afb9 	.word	0x0800afb9
 800afe0:	0800afb9 	.word	0x0800afb9
 800afe4:	0800afb9 	.word	0x0800afb9
 800afe8:	0800b03d 	.word	0x0800b03d
 800afec:	0800afb9 	.word	0x0800afb9
 800aff0:	0800afb9 	.word	0x0800afb9
 800aff4:	0800afb9 	.word	0x0800afb9
 800aff8:	0800afb9 	.word	0x0800afb9
 800affc:	0800b13b 	.word	0x0800b13b
 800b000:	0800b067 	.word	0x0800b067
 800b004:	0800b0f5 	.word	0x0800b0f5
 800b008:	0800afb9 	.word	0x0800afb9
 800b00c:	0800afb9 	.word	0x0800afb9
 800b010:	0800b15d 	.word	0x0800b15d
 800b014:	0800afb9 	.word	0x0800afb9
 800b018:	0800b067 	.word	0x0800b067
 800b01c:	0800afb9 	.word	0x0800afb9
 800b020:	0800afb9 	.word	0x0800afb9
 800b024:	0800b0fd 	.word	0x0800b0fd
 800b028:	6833      	ldr	r3, [r6, #0]
 800b02a:	1d1a      	adds	r2, r3, #4
 800b02c:	681b      	ldr	r3, [r3, #0]
 800b02e:	6032      	str	r2, [r6, #0]
 800b030:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 800b034:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
 800b038:	2301      	movs	r3, #1
 800b03a:	e09c      	b.n	800b176 <_printf_i+0x1e6>
 800b03c:	6833      	ldr	r3, [r6, #0]
 800b03e:	6820      	ldr	r0, [r4, #0]
 800b040:	1d19      	adds	r1, r3, #4
 800b042:	6031      	str	r1, [r6, #0]
 800b044:	0606      	lsls	r6, r0, #24
 800b046:	d501      	bpl.n	800b04c <_printf_i+0xbc>
 800b048:	681d      	ldr	r5, [r3, #0]
 800b04a:	e003      	b.n	800b054 <_printf_i+0xc4>
 800b04c:	0645      	lsls	r5, r0, #25
 800b04e:	d5fb      	bpl.n	800b048 <_printf_i+0xb8>
 800b050:	f9b3 5000 	ldrsh.w	r5, [r3]
 800b054:	2d00      	cmp	r5, #0
 800b056:	da03      	bge.n	800b060 <_printf_i+0xd0>
 800b058:	232d      	movs	r3, #45	@ 0x2d
 800b05a:	426d      	negs	r5, r5
 800b05c:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 800b060:	4858      	ldr	r0, [pc, #352]	@ (800b1c4 <_printf_i+0x234>)
 800b062:	230a      	movs	r3, #10
 800b064:	e011      	b.n	800b08a <_printf_i+0xfa>
 800b066:	6821      	ldr	r1, [r4, #0]
 800b068:	6833      	ldr	r3, [r6, #0]
 800b06a:	0608      	lsls	r0, r1, #24
 800b06c:	f853 5b04 	ldr.w	r5, [r3], #4
 800b070:	d402      	bmi.n	800b078 <_printf_i+0xe8>
 800b072:	0649      	lsls	r1, r1, #25
 800b074:	bf48      	it	mi
 800b076:	b2ad      	uxthmi	r5, r5
 800b078:	2f6f      	cmp	r7, #111	@ 0x6f
 800b07a:	4852      	ldr	r0, [pc, #328]	@ (800b1c4 <_printf_i+0x234>)
 800b07c:	6033      	str	r3, [r6, #0]
 800b07e:	bf14      	ite	ne
 800b080:	230a      	movne	r3, #10
 800b082:	2308      	moveq	r3, #8
 800b084:	2100      	movs	r1, #0
 800b086:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
 800b08a:	6866      	ldr	r6, [r4, #4]
 800b08c:	60a6      	str	r6, [r4, #8]
 800b08e:	2e00      	cmp	r6, #0
 800b090:	db05      	blt.n	800b09e <_printf_i+0x10e>
 800b092:	6821      	ldr	r1, [r4, #0]
 800b094:	432e      	orrs	r6, r5
 800b096:	f021 0104 	bic.w	r1, r1, #4
 800b09a:	6021      	str	r1, [r4, #0]
 800b09c:	d04b      	beq.n	800b136 <_printf_i+0x1a6>
 800b09e:	4616      	mov	r6, r2
 800b0a0:	fbb5 f1f3 	udiv	r1, r5, r3
 800b0a4:	fb03 5711 	mls	r7, r3, r1, r5
 800b0a8:	5dc7      	ldrb	r7, [r0, r7]
 800b0aa:	f806 7d01 	strb.w	r7, [r6, #-1]!
 800b0ae:	462f      	mov	r7, r5
 800b0b0:	42bb      	cmp	r3, r7
 800b0b2:	460d      	mov	r5, r1
 800b0b4:	d9f4      	bls.n	800b0a0 <_printf_i+0x110>
 800b0b6:	2b08      	cmp	r3, #8
 800b0b8:	d10b      	bne.n	800b0d2 <_printf_i+0x142>
 800b0ba:	6823      	ldr	r3, [r4, #0]
 800b0bc:	07df      	lsls	r7, r3, #31
 800b0be:	d508      	bpl.n	800b0d2 <_printf_i+0x142>
 800b0c0:	6923      	ldr	r3, [r4, #16]
 800b0c2:	6861      	ldr	r1, [r4, #4]
 800b0c4:	4299      	cmp	r1, r3
 800b0c6:	bfde      	ittt	le
 800b0c8:	2330      	movle	r3, #48	@ 0x30
 800b0ca:	f806 3c01 	strble.w	r3, [r6, #-1]
 800b0ce:	f106 36ff 	addle.w	r6, r6, #4294967295
 800b0d2:	1b92      	subs	r2, r2, r6
 800b0d4:	6122      	str	r2, [r4, #16]
 800b0d6:	f8cd a000 	str.w	sl, [sp]
 800b0da:	464b      	mov	r3, r9
 800b0dc:	aa03      	add	r2, sp, #12
 800b0de:	4621      	mov	r1, r4
 800b0e0:	4640      	mov	r0, r8
 800b0e2:	f7ff fee7 	bl	800aeb4 <_printf_common>
 800b0e6:	3001      	adds	r0, #1
 800b0e8:	d14a      	bne.n	800b180 <_printf_i+0x1f0>
 800b0ea:	f04f 30ff 	mov.w	r0, #4294967295
 800b0ee:	b004      	add	sp, #16
 800b0f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800b0f4:	6823      	ldr	r3, [r4, #0]
 800b0f6:	f043 0320 	orr.w	r3, r3, #32
 800b0fa:	6023      	str	r3, [r4, #0]
 800b0fc:	4832      	ldr	r0, [pc, #200]	@ (800b1c8 <_printf_i+0x238>)
 800b0fe:	2778      	movs	r7, #120	@ 0x78
 800b100:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
 800b104:	6823      	ldr	r3, [r4, #0]
 800b106:	6831      	ldr	r1, [r6, #0]
 800b108:	061f      	lsls	r7, r3, #24
 800b10a:	f851 5b04 	ldr.w	r5, [r1], #4
 800b10e:	d402      	bmi.n	800b116 <_printf_i+0x186>
 800b110:	065f      	lsls	r7, r3, #25
 800b112:	bf48      	it	mi
 800b114:	b2ad      	uxthmi	r5, r5
 800b116:	6031      	str	r1, [r6, #0]
 800b118:	07d9      	lsls	r1, r3, #31
 800b11a:	bf44      	itt	mi
 800b11c:	f043 0320 	orrmi.w	r3, r3, #32
 800b120:	6023      	strmi	r3, [r4, #0]
 800b122:	b11d      	cbz	r5, 800b12c <_printf_i+0x19c>
 800b124:	2310      	movs	r3, #16
 800b126:	e7ad      	b.n	800b084 <_printf_i+0xf4>
 800b128:	4826      	ldr	r0, [pc, #152]	@ (800b1c4 <_printf_i+0x234>)
 800b12a:	e7e9      	b.n	800b100 <_printf_i+0x170>
 800b12c:	6823      	ldr	r3, [r4, #0]
 800b12e:	f023 0320 	bic.w	r3, r3, #32
 800b132:	6023      	str	r3, [r4, #0]
 800b134:	e7f6      	b.n	800b124 <_printf_i+0x194>
 800b136:	4616      	mov	r6, r2
 800b138:	e7bd      	b.n	800b0b6 <_printf_i+0x126>
 800b13a:	6833      	ldr	r3, [r6, #0]
 800b13c:	6825      	ldr	r5, [r4, #0]
 800b13e:	6961      	ldr	r1, [r4, #20]
 800b140:	1d18      	adds	r0, r3, #4
 800b142:	6030      	str	r0, [r6, #0]
 800b144:	062e      	lsls	r6, r5, #24
 800b146:	681b      	ldr	r3, [r3, #0]
 800b148:	d501      	bpl.n	800b14e <_printf_i+0x1be>
 800b14a:	6019      	str	r1, [r3, #0]
 800b14c:	e002      	b.n	800b154 <_printf_i+0x1c4>
 800b14e:	0668      	lsls	r0, r5, #25
 800b150:	d5fb      	bpl.n	800b14a <_printf_i+0x1ba>
 800b152:	8019      	strh	r1, [r3, #0]
 800b154:	2300      	movs	r3, #0
 800b156:	6123      	str	r3, [r4, #16]
 800b158:	4616      	mov	r6, r2
 800b15a:	e7bc      	b.n	800b0d6 <_printf_i+0x146>
 800b15c:	6833      	ldr	r3, [r6, #0]
 800b15e:	1d1a      	adds	r2, r3, #4
 800b160:	6032      	str	r2, [r6, #0]
 800b162:	681e      	ldr	r6, [r3, #0]
 800b164:	6862      	ldr	r2, [r4, #4]
 800b166:	2100      	movs	r1, #0
 800b168:	4630      	mov	r0, r6
 800b16a:	f7f5 fa51 	bl	8000610 <memchr>
 800b16e:	b108      	cbz	r0, 800b174 <_printf_i+0x1e4>
 800b170:	1b80      	subs	r0, r0, r6
 800b172:	6060      	str	r0, [r4, #4]
 800b174:	6863      	ldr	r3, [r4, #4]
 800b176:	6123      	str	r3, [r4, #16]
 800b178:	2300      	movs	r3, #0
 800b17a:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 800b17e:	e7aa      	b.n	800b0d6 <_printf_i+0x146>
 800b180:	6923      	ldr	r3, [r4, #16]
 800b182:	4632      	mov	r2, r6
 800b184:	4649      	mov	r1, r9
 800b186:	4640      	mov	r0, r8
 800b188:	47d0      	blx	sl
 800b18a:	3001      	adds	r0, #1
 800b18c:	d0ad      	beq.n	800b0ea <_printf_i+0x15a>
 800b18e:	6823      	ldr	r3, [r4, #0]
 800b190:	079b      	lsls	r3, r3, #30
 800b192:	d413      	bmi.n	800b1bc <_printf_i+0x22c>
 800b194:	68e0      	ldr	r0, [r4, #12]
 800b196:	9b03      	ldr	r3, [sp, #12]
 800b198:	4298      	cmp	r0, r3
 800b19a:	bfb8      	it	lt
 800b19c:	4618      	movlt	r0, r3
 800b19e:	e7a6      	b.n	800b0ee <_printf_i+0x15e>
 800b1a0:	2301      	movs	r3, #1
 800b1a2:	4632      	mov	r2, r6
 800b1a4:	4649      	mov	r1, r9
 800b1a6:	4640      	mov	r0, r8
 800b1a8:	47d0      	blx	sl
 800b1aa:	3001      	adds	r0, #1
 800b1ac:	d09d      	beq.n	800b0ea <_printf_i+0x15a>
 800b1ae:	3501      	adds	r5, #1
 800b1b0:	68e3      	ldr	r3, [r4, #12]
 800b1b2:	9903      	ldr	r1, [sp, #12]
 800b1b4:	1a5b      	subs	r3, r3, r1
 800b1b6:	42ab      	cmp	r3, r5
 800b1b8:	dcf2      	bgt.n	800b1a0 <_printf_i+0x210>
 800b1ba:	e7eb      	b.n	800b194 <_printf_i+0x204>
 800b1bc:	2500      	movs	r5, #0
 800b1be:	f104 0619 	add.w	r6, r4, #25
 800b1c2:	e7f5      	b.n	800b1b0 <_printf_i+0x220>
 800b1c4:	0800df2a 	.word	0x0800df2a
 800b1c8:	0800df3b 	.word	0x0800df3b

0800b1cc <std>:
 800b1cc:	2300      	movs	r3, #0
 800b1ce:	b510      	push	{r4, lr}
 800b1d0:	4604      	mov	r4, r0
 800b1d2:	e9c0 3300 	strd	r3, r3, [r0]
 800b1d6:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800b1da:	6083      	str	r3, [r0, #8]
 800b1dc:	8181      	strh	r1, [r0, #12]
 800b1de:	6643      	str	r3, [r0, #100]	@ 0x64
 800b1e0:	81c2      	strh	r2, [r0, #14]
 800b1e2:	6183      	str	r3, [r0, #24]
 800b1e4:	4619      	mov	r1, r3
 800b1e6:	2208      	movs	r2, #8
 800b1e8:	305c      	adds	r0, #92	@ 0x5c
 800b1ea:	f000 f967 	bl	800b4bc <memset>
 800b1ee:	4b0d      	ldr	r3, [pc, #52]	@ (800b224 <std+0x58>)
 800b1f0:	6263      	str	r3, [r4, #36]	@ 0x24
 800b1f2:	4b0d      	ldr	r3, [pc, #52]	@ (800b228 <std+0x5c>)
 800b1f4:	62a3      	str	r3, [r4, #40]	@ 0x28
 800b1f6:	4b0d      	ldr	r3, [pc, #52]	@ (800b22c <std+0x60>)
 800b1f8:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800b1fa:	4b0d      	ldr	r3, [pc, #52]	@ (800b230 <std+0x64>)
 800b1fc:	6323      	str	r3, [r4, #48]	@ 0x30
 800b1fe:	4b0d      	ldr	r3, [pc, #52]	@ (800b234 <std+0x68>)
 800b200:	6224      	str	r4, [r4, #32]
 800b202:	429c      	cmp	r4, r3
 800b204:	d006      	beq.n	800b214 <std+0x48>
 800b206:	f103 0268 	add.w	r2, r3, #104	@ 0x68
 800b20a:	4294      	cmp	r4, r2
 800b20c:	d002      	beq.n	800b214 <std+0x48>
 800b20e:	33d0      	adds	r3, #208	@ 0xd0
 800b210:	429c      	cmp	r4, r3
 800b212:	d105      	bne.n	800b220 <std+0x54>
 800b214:	f104 0058 	add.w	r0, r4, #88	@ 0x58
 800b218:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800b21c:	f000 b9f2 	b.w	800b604 <__retarget_lock_init_recursive>
 800b220:	bd10      	pop	{r4, pc}
 800b222:	bf00      	nop
 800b224:	0800b3bd 	.word	0x0800b3bd
 800b228:	0800b3df 	.word	0x0800b3df
 800b22c:	0800b417 	.word	0x0800b417
 800b230:	0800b43b 	.word	0x0800b43b
 800b234:	20001648 	.word	0x20001648

0800b238 <stdio_exit_handler>:
 800b238:	4a02      	ldr	r2, [pc, #8]	@ (800b244 <stdio_exit_handler+0xc>)
 800b23a:	4903      	ldr	r1, [pc, #12]	@ (800b248 <stdio_exit_handler+0x10>)
 800b23c:	4803      	ldr	r0, [pc, #12]	@ (800b24c <stdio_exit_handler+0x14>)
 800b23e:	f000 b869 	b.w	800b314 <_fwalk_sglue>
 800b242:	bf00      	nop
 800b244:	2000008c 	.word	0x2000008c
 800b248:	0800cea1 	.word	0x0800cea1
 800b24c:	2000009c 	.word	0x2000009c

0800b250 <cleanup_stdio>:
 800b250:	6841      	ldr	r1, [r0, #4]
 800b252:	4b0c      	ldr	r3, [pc, #48]	@ (800b284 <cleanup_stdio+0x34>)
 800b254:	4299      	cmp	r1, r3
 800b256:	b510      	push	{r4, lr}
 800b258:	4604      	mov	r4, r0
 800b25a:	d001      	beq.n	800b260 <cleanup_stdio+0x10>
 800b25c:	f001 fe20 	bl	800cea0 <_fflush_r>
 800b260:	68a1      	ldr	r1, [r4, #8]
 800b262:	4b09      	ldr	r3, [pc, #36]	@ (800b288 <cleanup_stdio+0x38>)
 800b264:	4299      	cmp	r1, r3
 800b266:	d002      	beq.n	800b26e <cleanup_stdio+0x1e>
 800b268:	4620      	mov	r0, r4
 800b26a:	f001 fe19 	bl	800cea0 <_fflush_r>
 800b26e:	68e1      	ldr	r1, [r4, #12]
 800b270:	4b06      	ldr	r3, [pc, #24]	@ (800b28c <cleanup_stdio+0x3c>)
 800b272:	4299      	cmp	r1, r3
 800b274:	d004      	beq.n	800b280 <cleanup_stdio+0x30>
 800b276:	4620      	mov	r0, r4
 800b278:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800b27c:	f001 be10 	b.w	800cea0 <_fflush_r>
 800b280:	bd10      	pop	{r4, pc}
 800b282:	bf00      	nop
 800b284:	20001648 	.word	0x20001648
 800b288:	200016b0 	.word	0x200016b0
 800b28c:	20001718 	.word	0x20001718

0800b290 <global_stdio_init.part.0>:
 800b290:	b510      	push	{r4, lr}
 800b292:	4b0b      	ldr	r3, [pc, #44]	@ (800b2c0 <global_stdio_init.part.0+0x30>)
 800b294:	4c0b      	ldr	r4, [pc, #44]	@ (800b2c4 <global_stdio_init.part.0+0x34>)
 800b296:	4a0c      	ldr	r2, [pc, #48]	@ (800b2c8 <global_stdio_init.part.0+0x38>)
 800b298:	601a      	str	r2, [r3, #0]
 800b29a:	4620      	mov	r0, r4
 800b29c:	2200      	movs	r2, #0
 800b29e:	2104      	movs	r1, #4
 800b2a0:	f7ff ff94 	bl	800b1cc <std>
 800b2a4:	f104 0068 	add.w	r0, r4, #104	@ 0x68
 800b2a8:	2201      	movs	r2, #1
 800b2aa:	2109      	movs	r1, #9
 800b2ac:	f7ff ff8e 	bl	800b1cc <std>
 800b2b0:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
 800b2b4:	2202      	movs	r2, #2
 800b2b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800b2ba:	2112      	movs	r1, #18
 800b2bc:	f7ff bf86 	b.w	800b1cc <std>
 800b2c0:	20001780 	.word	0x20001780
 800b2c4:	20001648 	.word	0x20001648
 800b2c8:	0800b239 	.word	0x0800b239

0800b2cc <__sfp_lock_acquire>:
 800b2cc:	4801      	ldr	r0, [pc, #4]	@ (800b2d4 <__sfp_lock_acquire+0x8>)
 800b2ce:	f000 b99a 	b.w	800b606 <__retarget_lock_acquire_recursive>
 800b2d2:	bf00      	nop
 800b2d4:	20001789 	.word	0x20001789

0800b2d8 <__sfp_lock_release>:
 800b2d8:	4801      	ldr	r0, [pc, #4]	@ (800b2e0 <__sfp_lock_release+0x8>)
 800b2da:	f000 b995 	b.w	800b608 <__retarget_lock_release_recursive>
 800b2de:	bf00      	nop
 800b2e0:	20001789 	.word	0x20001789

0800b2e4 <__sinit>:
 800b2e4:	b510      	push	{r4, lr}
 800b2e6:	4604      	mov	r4, r0
 800b2e8:	f7ff fff0 	bl	800b2cc <__sfp_lock_acquire>
 800b2ec:	6a23      	ldr	r3, [r4, #32]
 800b2ee:	b11b      	cbz	r3, 800b2f8 <__sinit+0x14>
 800b2f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800b2f4:	f7ff bff0 	b.w	800b2d8 <__sfp_lock_release>
 800b2f8:	4b04      	ldr	r3, [pc, #16]	@ (800b30c <__sinit+0x28>)
 800b2fa:	6223      	str	r3, [r4, #32]
 800b2fc:	4b04      	ldr	r3, [pc, #16]	@ (800b310 <__sinit+0x2c>)
 800b2fe:	681b      	ldr	r3, [r3, #0]
 800b300:	2b00      	cmp	r3, #0
 800b302:	d1f5      	bne.n	800b2f0 <__sinit+0xc>
 800b304:	f7ff ffc4 	bl	800b290 <global_stdio_init.part.0>
 800b308:	e7f2      	b.n	800b2f0 <__sinit+0xc>
 800b30a:	bf00      	nop
 800b30c:	0800b251 	.word	0x0800b251
 800b310:	20001780 	.word	0x20001780

0800b314 <_fwalk_sglue>:
 800b314:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800b318:	4607      	mov	r7, r0
 800b31a:	4688      	mov	r8, r1
 800b31c:	4614      	mov	r4, r2
 800b31e:	2600      	movs	r6, #0
 800b320:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
 800b324:	f1b9 0901 	subs.w	r9, r9, #1
 800b328:	d505      	bpl.n	800b336 <_fwalk_sglue+0x22>
 800b32a:	6824      	ldr	r4, [r4, #0]
 800b32c:	2c00      	cmp	r4, #0
 800b32e:	d1f7      	bne.n	800b320 <_fwalk_sglue+0xc>
 800b330:	4630      	mov	r0, r6
 800b332:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800b336:	89ab      	ldrh	r3, [r5, #12]
 800b338:	2b01      	cmp	r3, #1
 800b33a:	d907      	bls.n	800b34c <_fwalk_sglue+0x38>
 800b33c:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 800b340:	3301      	adds	r3, #1
 800b342:	d003      	beq.n	800b34c <_fwalk_sglue+0x38>
 800b344:	4629      	mov	r1, r5
 800b346:	4638      	mov	r0, r7
 800b348:	47c0      	blx	r8
 800b34a:	4306      	orrs	r6, r0
 800b34c:	3568      	adds	r5, #104	@ 0x68
 800b34e:	e7e9      	b.n	800b324 <_fwalk_sglue+0x10>

0800b350 <sniprintf>:
 800b350:	b40c      	push	{r2, r3}
 800b352:	b530      	push	{r4, r5, lr}
 800b354:	4b18      	ldr	r3, [pc, #96]	@ (800b3b8 <sniprintf+0x68>)
 800b356:	1e0c      	subs	r4, r1, #0
 800b358:	681d      	ldr	r5, [r3, #0]
 800b35a:	b09d      	sub	sp, #116	@ 0x74
 800b35c:	da08      	bge.n	800b370 <sniprintf+0x20>
 800b35e:	238b      	movs	r3, #139	@ 0x8b
 800b360:	602b      	str	r3, [r5, #0]
 800b362:	f04f 30ff 	mov.w	r0, #4294967295
 800b366:	b01d      	add	sp, #116	@ 0x74
 800b368:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800b36c:	b002      	add	sp, #8
 800b36e:	4770      	bx	lr
 800b370:	f44f 7302 	mov.w	r3, #520	@ 0x208
 800b374:	f8ad 3014 	strh.w	r3, [sp, #20]
 800b378:	f04f 0300 	mov.w	r3, #0
 800b37c:	931b      	str	r3, [sp, #108]	@ 0x6c
 800b37e:	bf14      	ite	ne
 800b380:	f104 33ff 	addne.w	r3, r4, #4294967295
 800b384:	4623      	moveq	r3, r4
 800b386:	9304      	str	r3, [sp, #16]
 800b388:	9307      	str	r3, [sp, #28]
 800b38a:	f64f 73ff 	movw	r3, #65535	@ 0xffff
 800b38e:	9002      	str	r0, [sp, #8]
 800b390:	9006      	str	r0, [sp, #24]
 800b392:	f8ad 3016 	strh.w	r3, [sp, #22]
 800b396:	9a20      	ldr	r2, [sp, #128]	@ 0x80
 800b398:	ab21      	add	r3, sp, #132	@ 0x84
 800b39a:	a902      	add	r1, sp, #8
 800b39c:	4628      	mov	r0, r5
 800b39e:	9301      	str	r3, [sp, #4]
 800b3a0:	f001 fbfe 	bl	800cba0 <_svfiprintf_r>
 800b3a4:	1c43      	adds	r3, r0, #1
 800b3a6:	bfbc      	itt	lt
 800b3a8:	238b      	movlt	r3, #139	@ 0x8b
 800b3aa:	602b      	strlt	r3, [r5, #0]
 800b3ac:	2c00      	cmp	r4, #0
 800b3ae:	d0da      	beq.n	800b366 <sniprintf+0x16>
 800b3b0:	9b02      	ldr	r3, [sp, #8]
 800b3b2:	2200      	movs	r2, #0
 800b3b4:	701a      	strb	r2, [r3, #0]
 800b3b6:	e7d6      	b.n	800b366 <sniprintf+0x16>
 800b3b8:	20000098 	.word	0x20000098

0800b3bc <__sread>:
 800b3bc:	b510      	push	{r4, lr}
 800b3be:	460c      	mov	r4, r1
 800b3c0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b3c4:	f000 f8d0 	bl	800b568 <_read_r>
 800b3c8:	2800      	cmp	r0, #0
 800b3ca:	bfab      	itete	ge
 800b3cc:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
 800b3ce:	89a3      	ldrhlt	r3, [r4, #12]
 800b3d0:	181b      	addge	r3, r3, r0
 800b3d2:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
 800b3d6:	bfac      	ite	ge
 800b3d8:	6563      	strge	r3, [r4, #84]	@ 0x54
 800b3da:	81a3      	strhlt	r3, [r4, #12]
 800b3dc:	bd10      	pop	{r4, pc}

0800b3de <__swrite>:
 800b3de:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800b3e2:	461f      	mov	r7, r3
 800b3e4:	898b      	ldrh	r3, [r1, #12]
 800b3e6:	05db      	lsls	r3, r3, #23
 800b3e8:	4605      	mov	r5, r0
 800b3ea:	460c      	mov	r4, r1
 800b3ec:	4616      	mov	r6, r2
 800b3ee:	d505      	bpl.n	800b3fc <__swrite+0x1e>
 800b3f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b3f4:	2302      	movs	r3, #2
 800b3f6:	2200      	movs	r2, #0
 800b3f8:	f000 f8a4 	bl	800b544 <_lseek_r>
 800b3fc:	89a3      	ldrh	r3, [r4, #12]
 800b3fe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800b402:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 800b406:	81a3      	strh	r3, [r4, #12]
 800b408:	4632      	mov	r2, r6
 800b40a:	463b      	mov	r3, r7
 800b40c:	4628      	mov	r0, r5
 800b40e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800b412:	f000 b8bb 	b.w	800b58c <_write_r>

0800b416 <__sseek>:
 800b416:	b510      	push	{r4, lr}
 800b418:	460c      	mov	r4, r1
 800b41a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b41e:	f000 f891 	bl	800b544 <_lseek_r>
 800b422:	1c43      	adds	r3, r0, #1
 800b424:	89a3      	ldrh	r3, [r4, #12]
 800b426:	bf15      	itete	ne
 800b428:	6560      	strne	r0, [r4, #84]	@ 0x54
 800b42a:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 800b42e:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 800b432:	81a3      	strheq	r3, [r4, #12]
 800b434:	bf18      	it	ne
 800b436:	81a3      	strhne	r3, [r4, #12]
 800b438:	bd10      	pop	{r4, pc}

0800b43a <__sclose>:
 800b43a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b43e:	f000 b871 	b.w	800b524 <_close_r>

0800b442 <_vsniprintf_r>:
 800b442:	b530      	push	{r4, r5, lr}
 800b444:	4614      	mov	r4, r2
 800b446:	2c00      	cmp	r4, #0
 800b448:	b09b      	sub	sp, #108	@ 0x6c
 800b44a:	4605      	mov	r5, r0
 800b44c:	461a      	mov	r2, r3
 800b44e:	da05      	bge.n	800b45c <_vsniprintf_r+0x1a>
 800b450:	238b      	movs	r3, #139	@ 0x8b
 800b452:	6003      	str	r3, [r0, #0]
 800b454:	f04f 30ff 	mov.w	r0, #4294967295
 800b458:	b01b      	add	sp, #108	@ 0x6c
 800b45a:	bd30      	pop	{r4, r5, pc}
 800b45c:	f44f 7302 	mov.w	r3, #520	@ 0x208
 800b460:	f8ad 300c 	strh.w	r3, [sp, #12]
 800b464:	f04f 0300 	mov.w	r3, #0
 800b468:	9319      	str	r3, [sp, #100]	@ 0x64
 800b46a:	bf14      	ite	ne
 800b46c:	f104 33ff 	addne.w	r3, r4, #4294967295
 800b470:	4623      	moveq	r3, r4
 800b472:	9302      	str	r3, [sp, #8]
 800b474:	9305      	str	r3, [sp, #20]
 800b476:	f64f 73ff 	movw	r3, #65535	@ 0xffff
 800b47a:	9100      	str	r1, [sp, #0]
 800b47c:	9104      	str	r1, [sp, #16]
 800b47e:	f8ad 300e 	strh.w	r3, [sp, #14]
 800b482:	4669      	mov	r1, sp
 800b484:	9b1e      	ldr	r3, [sp, #120]	@ 0x78
 800b486:	f001 fb8b 	bl	800cba0 <_svfiprintf_r>
 800b48a:	1c43      	adds	r3, r0, #1
 800b48c:	bfbc      	itt	lt
 800b48e:	238b      	movlt	r3, #139	@ 0x8b
 800b490:	602b      	strlt	r3, [r5, #0]
 800b492:	2c00      	cmp	r4, #0
 800b494:	d0e0      	beq.n	800b458 <_vsniprintf_r+0x16>
 800b496:	9b00      	ldr	r3, [sp, #0]
 800b498:	2200      	movs	r2, #0
 800b49a:	701a      	strb	r2, [r3, #0]
 800b49c:	e7dc      	b.n	800b458 <_vsniprintf_r+0x16>
	...

0800b4a0 <vsniprintf>:
 800b4a0:	b507      	push	{r0, r1, r2, lr}
 800b4a2:	9300      	str	r3, [sp, #0]
 800b4a4:	4613      	mov	r3, r2
 800b4a6:	460a      	mov	r2, r1
 800b4a8:	4601      	mov	r1, r0
 800b4aa:	4803      	ldr	r0, [pc, #12]	@ (800b4b8 <vsniprintf+0x18>)
 800b4ac:	6800      	ldr	r0, [r0, #0]
 800b4ae:	f7ff ffc8 	bl	800b442 <_vsniprintf_r>
 800b4b2:	b003      	add	sp, #12
 800b4b4:	f85d fb04 	ldr.w	pc, [sp], #4
 800b4b8:	20000098 	.word	0x20000098

0800b4bc <memset>:
 800b4bc:	4402      	add	r2, r0
 800b4be:	4603      	mov	r3, r0
 800b4c0:	4293      	cmp	r3, r2
 800b4c2:	d100      	bne.n	800b4c6 <memset+0xa>
 800b4c4:	4770      	bx	lr
 800b4c6:	f803 1b01 	strb.w	r1, [r3], #1
 800b4ca:	e7f9      	b.n	800b4c0 <memset+0x4>

0800b4cc <strncmp>:
 800b4cc:	b510      	push	{r4, lr}
 800b4ce:	b16a      	cbz	r2, 800b4ec <strncmp+0x20>
 800b4d0:	3901      	subs	r1, #1
 800b4d2:	1884      	adds	r4, r0, r2
 800b4d4:	f810 2b01 	ldrb.w	r2, [r0], #1
 800b4d8:	f811 3f01 	ldrb.w	r3, [r1, #1]!
 800b4dc:	429a      	cmp	r2, r3
 800b4de:	d103      	bne.n	800b4e8 <strncmp+0x1c>
 800b4e0:	42a0      	cmp	r0, r4
 800b4e2:	d001      	beq.n	800b4e8 <strncmp+0x1c>
 800b4e4:	2a00      	cmp	r2, #0
 800b4e6:	d1f5      	bne.n	800b4d4 <strncmp+0x8>
 800b4e8:	1ad0      	subs	r0, r2, r3
 800b4ea:	bd10      	pop	{r4, pc}
 800b4ec:	4610      	mov	r0, r2
 800b4ee:	e7fc      	b.n	800b4ea <strncmp+0x1e>

0800b4f0 <strstr>:
 800b4f0:	780a      	ldrb	r2, [r1, #0]
 800b4f2:	b570      	push	{r4, r5, r6, lr}
 800b4f4:	b96a      	cbnz	r2, 800b512 <strstr+0x22>
 800b4f6:	bd70      	pop	{r4, r5, r6, pc}
 800b4f8:	429a      	cmp	r2, r3
 800b4fa:	d109      	bne.n	800b510 <strstr+0x20>
 800b4fc:	460c      	mov	r4, r1
 800b4fe:	4605      	mov	r5, r0
 800b500:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800b504:	2b00      	cmp	r3, #0
 800b506:	d0f6      	beq.n	800b4f6 <strstr+0x6>
 800b508:	f815 6f01 	ldrb.w	r6, [r5, #1]!
 800b50c:	429e      	cmp	r6, r3
 800b50e:	d0f7      	beq.n	800b500 <strstr+0x10>
 800b510:	3001      	adds	r0, #1
 800b512:	7803      	ldrb	r3, [r0, #0]
 800b514:	2b00      	cmp	r3, #0
 800b516:	d1ef      	bne.n	800b4f8 <strstr+0x8>
 800b518:	4618      	mov	r0, r3
 800b51a:	e7ec      	b.n	800b4f6 <strstr+0x6>

0800b51c <_localeconv_r>:
 800b51c:	4800      	ldr	r0, [pc, #0]	@ (800b520 <_localeconv_r+0x4>)
 800b51e:	4770      	bx	lr
 800b520:	200001d8 	.word	0x200001d8

0800b524 <_close_r>:
 800b524:	b538      	push	{r3, r4, r5, lr}
 800b526:	4d06      	ldr	r5, [pc, #24]	@ (800b540 <_close_r+0x1c>)
 800b528:	2300      	movs	r3, #0
 800b52a:	4604      	mov	r4, r0
 800b52c:	4608      	mov	r0, r1
 800b52e:	602b      	str	r3, [r5, #0]
 800b530:	f7fd fc80 	bl	8008e34 <_close>
 800b534:	1c43      	adds	r3, r0, #1
 800b536:	d102      	bne.n	800b53e <_close_r+0x1a>
 800b538:	682b      	ldr	r3, [r5, #0]
 800b53a:	b103      	cbz	r3, 800b53e <_close_r+0x1a>
 800b53c:	6023      	str	r3, [r4, #0]
 800b53e:	bd38      	pop	{r3, r4, r5, pc}
 800b540:	20001784 	.word	0x20001784

0800b544 <_lseek_r>:
 800b544:	b538      	push	{r3, r4, r5, lr}
 800b546:	4d07      	ldr	r5, [pc, #28]	@ (800b564 <_lseek_r+0x20>)
 800b548:	4604      	mov	r4, r0
 800b54a:	4608      	mov	r0, r1
 800b54c:	4611      	mov	r1, r2
 800b54e:	2200      	movs	r2, #0
 800b550:	602a      	str	r2, [r5, #0]
 800b552:	461a      	mov	r2, r3
 800b554:	f7fd fc7a 	bl	8008e4c <_lseek>
 800b558:	1c43      	adds	r3, r0, #1
 800b55a:	d102      	bne.n	800b562 <_lseek_r+0x1e>
 800b55c:	682b      	ldr	r3, [r5, #0]
 800b55e:	b103      	cbz	r3, 800b562 <_lseek_r+0x1e>
 800b560:	6023      	str	r3, [r4, #0]
 800b562:	bd38      	pop	{r3, r4, r5, pc}
 800b564:	20001784 	.word	0x20001784

0800b568 <_read_r>:
 800b568:	b538      	push	{r3, r4, r5, lr}
 800b56a:	4d07      	ldr	r5, [pc, #28]	@ (800b588 <_read_r+0x20>)
 800b56c:	4604      	mov	r4, r0
 800b56e:	4608      	mov	r0, r1
 800b570:	4611      	mov	r1, r2
 800b572:	2200      	movs	r2, #0
 800b574:	602a      	str	r2, [r5, #0]
 800b576:	461a      	mov	r2, r3
 800b578:	f7fd fc4e 	bl	8008e18 <_read>
 800b57c:	1c43      	adds	r3, r0, #1
 800b57e:	d102      	bne.n	800b586 <_read_r+0x1e>
 800b580:	682b      	ldr	r3, [r5, #0]
 800b582:	b103      	cbz	r3, 800b586 <_read_r+0x1e>
 800b584:	6023      	str	r3, [r4, #0]
 800b586:	bd38      	pop	{r3, r4, r5, pc}
 800b588:	20001784 	.word	0x20001784

0800b58c <_write_r>:
 800b58c:	b538      	push	{r3, r4, r5, lr}
 800b58e:	4d07      	ldr	r5, [pc, #28]	@ (800b5ac <_write_r+0x20>)
 800b590:	4604      	mov	r4, r0
 800b592:	4608      	mov	r0, r1
 800b594:	4611      	mov	r1, r2
 800b596:	2200      	movs	r2, #0
 800b598:	602a      	str	r2, [r5, #0]
 800b59a:	461a      	mov	r2, r3
 800b59c:	f7fd ff3a 	bl	8009414 <_write>
 800b5a0:	1c43      	adds	r3, r0, #1
 800b5a2:	d102      	bne.n	800b5aa <_write_r+0x1e>
 800b5a4:	682b      	ldr	r3, [r5, #0]
 800b5a6:	b103      	cbz	r3, 800b5aa <_write_r+0x1e>
 800b5a8:	6023      	str	r3, [r4, #0]
 800b5aa:	bd38      	pop	{r3, r4, r5, pc}
 800b5ac:	20001784 	.word	0x20001784

0800b5b0 <__errno>:
 800b5b0:	4b01      	ldr	r3, [pc, #4]	@ (800b5b8 <__errno+0x8>)
 800b5b2:	6818      	ldr	r0, [r3, #0]
 800b5b4:	4770      	bx	lr
 800b5b6:	bf00      	nop
 800b5b8:	20000098 	.word	0x20000098

0800b5bc <__libc_init_array>:
 800b5bc:	b570      	push	{r4, r5, r6, lr}
 800b5be:	4d0d      	ldr	r5, [pc, #52]	@ (800b5f4 <__libc_init_array+0x38>)
 800b5c0:	4c0d      	ldr	r4, [pc, #52]	@ (800b5f8 <__libc_init_array+0x3c>)
 800b5c2:	1b64      	subs	r4, r4, r5
 800b5c4:	10a4      	asrs	r4, r4, #2
 800b5c6:	2600      	movs	r6, #0
 800b5c8:	42a6      	cmp	r6, r4
 800b5ca:	d109      	bne.n	800b5e0 <__libc_init_array+0x24>
 800b5cc:	4d0b      	ldr	r5, [pc, #44]	@ (800b5fc <__libc_init_array+0x40>)
 800b5ce:	4c0c      	ldr	r4, [pc, #48]	@ (800b600 <__libc_init_array+0x44>)
 800b5d0:	f001 fff6 	bl	800d5c0 <_init>
 800b5d4:	1b64      	subs	r4, r4, r5
 800b5d6:	10a4      	asrs	r4, r4, #2
 800b5d8:	2600      	movs	r6, #0
 800b5da:	42a6      	cmp	r6, r4
 800b5dc:	d105      	bne.n	800b5ea <__libc_init_array+0x2e>
 800b5de:	bd70      	pop	{r4, r5, r6, pc}
 800b5e0:	f855 3b04 	ldr.w	r3, [r5], #4
 800b5e4:	4798      	blx	r3
 800b5e6:	3601      	adds	r6, #1
 800b5e8:	e7ee      	b.n	800b5c8 <__libc_init_array+0xc>
 800b5ea:	f855 3b04 	ldr.w	r3, [r5], #4
 800b5ee:	4798      	blx	r3
 800b5f0:	3601      	adds	r6, #1
 800b5f2:	e7f2      	b.n	800b5da <__libc_init_array+0x1e>
 800b5f4:	0800e294 	.word	0x0800e294
 800b5f8:	0800e294 	.word	0x0800e294
 800b5fc:	0800e294 	.word	0x0800e294
 800b600:	0800e298 	.word	0x0800e298

0800b604 <__retarget_lock_init_recursive>:
 800b604:	4770      	bx	lr

0800b606 <__retarget_lock_acquire_recursive>:
 800b606:	4770      	bx	lr

0800b608 <__retarget_lock_release_recursive>:
 800b608:	4770      	bx	lr

0800b60a <memcpy>:
 800b60a:	440a      	add	r2, r1
 800b60c:	4291      	cmp	r1, r2
 800b60e:	f100 33ff 	add.w	r3, r0, #4294967295
 800b612:	d100      	bne.n	800b616 <memcpy+0xc>
 800b614:	4770      	bx	lr
 800b616:	b510      	push	{r4, lr}
 800b618:	f811 4b01 	ldrb.w	r4, [r1], #1
 800b61c:	f803 4f01 	strb.w	r4, [r3, #1]!
 800b620:	4291      	cmp	r1, r2
 800b622:	d1f9      	bne.n	800b618 <memcpy+0xe>
 800b624:	bd10      	pop	{r4, pc}

0800b626 <quorem>:
 800b626:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800b62a:	6903      	ldr	r3, [r0, #16]
 800b62c:	690c      	ldr	r4, [r1, #16]
 800b62e:	42a3      	cmp	r3, r4
 800b630:	4607      	mov	r7, r0
 800b632:	db7e      	blt.n	800b732 <quorem+0x10c>
 800b634:	3c01      	subs	r4, #1
 800b636:	f101 0814 	add.w	r8, r1, #20
 800b63a:	00a3      	lsls	r3, r4, #2
 800b63c:	f100 0514 	add.w	r5, r0, #20
 800b640:	9300      	str	r3, [sp, #0]
 800b642:	eb05 0384 	add.w	r3, r5, r4, lsl #2
 800b646:	9301      	str	r3, [sp, #4]
 800b648:	f858 3024 	ldr.w	r3, [r8, r4, lsl #2]
 800b64c:	f855 2024 	ldr.w	r2, [r5, r4, lsl #2]
 800b650:	3301      	adds	r3, #1
 800b652:	429a      	cmp	r2, r3
 800b654:	eb08 0984 	add.w	r9, r8, r4, lsl #2
 800b658:	fbb2 f6f3 	udiv	r6, r2, r3
 800b65c:	d32e      	bcc.n	800b6bc <quorem+0x96>
 800b65e:	f04f 0a00 	mov.w	sl, #0
 800b662:	46c4      	mov	ip, r8
 800b664:	46ae      	mov	lr, r5
 800b666:	46d3      	mov	fp, sl
 800b668:	f85c 3b04 	ldr.w	r3, [ip], #4
 800b66c:	b298      	uxth	r0, r3
 800b66e:	fb06 a000 	mla	r0, r6, r0, sl
 800b672:	0c02      	lsrs	r2, r0, #16
 800b674:	0c1b      	lsrs	r3, r3, #16
 800b676:	fb06 2303 	mla	r3, r6, r3, r2
 800b67a:	f8de 2000 	ldr.w	r2, [lr]
 800b67e:	b280      	uxth	r0, r0
 800b680:	b292      	uxth	r2, r2
 800b682:	1a12      	subs	r2, r2, r0
 800b684:	445a      	add	r2, fp
 800b686:	f8de 0000 	ldr.w	r0, [lr]
 800b68a:	ea4f 4a13 	mov.w	sl, r3, lsr #16
 800b68e:	b29b      	uxth	r3, r3
 800b690:	ebc3 4322 	rsb	r3, r3, r2, asr #16
 800b694:	eb03 4310 	add.w	r3, r3, r0, lsr #16
 800b698:	b292      	uxth	r2, r2
 800b69a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800b69e:	45e1      	cmp	r9, ip
 800b6a0:	f84e 2b04 	str.w	r2, [lr], #4
 800b6a4:	ea4f 4b23 	mov.w	fp, r3, asr #16
 800b6a8:	d2de      	bcs.n	800b668 <quorem+0x42>
 800b6aa:	9b00      	ldr	r3, [sp, #0]
 800b6ac:	58eb      	ldr	r3, [r5, r3]
 800b6ae:	b92b      	cbnz	r3, 800b6bc <quorem+0x96>
 800b6b0:	9b01      	ldr	r3, [sp, #4]
 800b6b2:	3b04      	subs	r3, #4
 800b6b4:	429d      	cmp	r5, r3
 800b6b6:	461a      	mov	r2, r3
 800b6b8:	d32f      	bcc.n	800b71a <quorem+0xf4>
 800b6ba:	613c      	str	r4, [r7, #16]
 800b6bc:	4638      	mov	r0, r7
 800b6be:	f001 f90b 	bl	800c8d8 <__mcmp>
 800b6c2:	2800      	cmp	r0, #0
 800b6c4:	db25      	blt.n	800b712 <quorem+0xec>
 800b6c6:	4629      	mov	r1, r5
 800b6c8:	2000      	movs	r0, #0
 800b6ca:	f858 2b04 	ldr.w	r2, [r8], #4
 800b6ce:	f8d1 c000 	ldr.w	ip, [r1]
 800b6d2:	fa1f fe82 	uxth.w	lr, r2
 800b6d6:	fa1f f38c 	uxth.w	r3, ip
 800b6da:	eba3 030e 	sub.w	r3, r3, lr
 800b6de:	4403      	add	r3, r0
 800b6e0:	0c12      	lsrs	r2, r2, #16
 800b6e2:	ebc2 4223 	rsb	r2, r2, r3, asr #16
 800b6e6:	eb02 421c 	add.w	r2, r2, ip, lsr #16
 800b6ea:	b29b      	uxth	r3, r3
 800b6ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 800b6f0:	45c1      	cmp	r9, r8
 800b6f2:	f841 3b04 	str.w	r3, [r1], #4
 800b6f6:	ea4f 4022 	mov.w	r0, r2, asr #16
 800b6fa:	d2e6      	bcs.n	800b6ca <quorem+0xa4>
 800b6fc:	f855 2024 	ldr.w	r2, [r5, r4, lsl #2]
 800b700:	eb05 0384 	add.w	r3, r5, r4, lsl #2
 800b704:	b922      	cbnz	r2, 800b710 <quorem+0xea>
 800b706:	3b04      	subs	r3, #4
 800b708:	429d      	cmp	r5, r3
 800b70a:	461a      	mov	r2, r3
 800b70c:	d30b      	bcc.n	800b726 <quorem+0x100>
 800b70e:	613c      	str	r4, [r7, #16]
 800b710:	3601      	adds	r6, #1
 800b712:	4630      	mov	r0, r6
 800b714:	b003      	add	sp, #12
 800b716:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800b71a:	6812      	ldr	r2, [r2, #0]
 800b71c:	3b04      	subs	r3, #4
 800b71e:	2a00      	cmp	r2, #0
 800b720:	d1cb      	bne.n	800b6ba <quorem+0x94>
 800b722:	3c01      	subs	r4, #1
 800b724:	e7c6      	b.n	800b6b4 <quorem+0x8e>
 800b726:	6812      	ldr	r2, [r2, #0]
 800b728:	3b04      	subs	r3, #4
 800b72a:	2a00      	cmp	r2, #0
 800b72c:	d1ef      	bne.n	800b70e <quorem+0xe8>
 800b72e:	3c01      	subs	r4, #1
 800b730:	e7ea      	b.n	800b708 <quorem+0xe2>
 800b732:	2000      	movs	r0, #0
 800b734:	e7ee      	b.n	800b714 <quorem+0xee>
	...

0800b738 <_dtoa_r>:
 800b738:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800b73c:	ed2d 8b02 	vpush	{d8}
 800b740:	69c7      	ldr	r7, [r0, #28]
 800b742:	b091      	sub	sp, #68	@ 0x44
 800b744:	ed8d 0b02 	vstr	d0, [sp, #8]
 800b748:	ec55 4b10 	vmov	r4, r5, d0
 800b74c:	9e1c      	ldr	r6, [sp, #112]	@ 0x70
 800b74e:	9107      	str	r1, [sp, #28]
 800b750:	4681      	mov	r9, r0
 800b752:	9209      	str	r2, [sp, #36]	@ 0x24
 800b754:	930d      	str	r3, [sp, #52]	@ 0x34
 800b756:	b97f      	cbnz	r7, 800b778 <_dtoa_r+0x40>
 800b758:	2010      	movs	r0, #16
 800b75a:	f000 fd95 	bl	800c288 <malloc>
 800b75e:	4602      	mov	r2, r0
 800b760:	f8c9 001c 	str.w	r0, [r9, #28]
 800b764:	b920      	cbnz	r0, 800b770 <_dtoa_r+0x38>
 800b766:	4ba0      	ldr	r3, [pc, #640]	@ (800b9e8 <_dtoa_r+0x2b0>)
 800b768:	21ef      	movs	r1, #239	@ 0xef
 800b76a:	48a0      	ldr	r0, [pc, #640]	@ (800b9ec <_dtoa_r+0x2b4>)
 800b76c:	f001 fbea 	bl	800cf44 <__assert_func>
 800b770:	e9c0 7701 	strd	r7, r7, [r0, #4]
 800b774:	6007      	str	r7, [r0, #0]
 800b776:	60c7      	str	r7, [r0, #12]
 800b778:	f8d9 301c 	ldr.w	r3, [r9, #28]
 800b77c:	6819      	ldr	r1, [r3, #0]
 800b77e:	b159      	cbz	r1, 800b798 <_dtoa_r+0x60>
 800b780:	685a      	ldr	r2, [r3, #4]
 800b782:	604a      	str	r2, [r1, #4]
 800b784:	2301      	movs	r3, #1
 800b786:	4093      	lsls	r3, r2
 800b788:	608b      	str	r3, [r1, #8]
 800b78a:	4648      	mov	r0, r9
 800b78c:	f000 fe72 	bl	800c474 <_Bfree>
 800b790:	f8d9 301c 	ldr.w	r3, [r9, #28]
 800b794:	2200      	movs	r2, #0
 800b796:	601a      	str	r2, [r3, #0]
 800b798:	1e2b      	subs	r3, r5, #0
 800b79a:	bfbb      	ittet	lt
 800b79c:	f023 4300 	biclt.w	r3, r3, #2147483648	@ 0x80000000
 800b7a0:	9303      	strlt	r3, [sp, #12]
 800b7a2:	2300      	movge	r3, #0
 800b7a4:	2201      	movlt	r2, #1
 800b7a6:	bfac      	ite	ge
 800b7a8:	6033      	strge	r3, [r6, #0]
 800b7aa:	6032      	strlt	r2, [r6, #0]
 800b7ac:	4b90      	ldr	r3, [pc, #576]	@ (800b9f0 <_dtoa_r+0x2b8>)
 800b7ae:	9e03      	ldr	r6, [sp, #12]
 800b7b0:	43b3      	bics	r3, r6
 800b7b2:	d110      	bne.n	800b7d6 <_dtoa_r+0x9e>
 800b7b4:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
 800b7b6:	f242 730f 	movw	r3, #9999	@ 0x270f
 800b7ba:	6013      	str	r3, [r2, #0]
 800b7bc:	f3c6 0313 	ubfx	r3, r6, #0, #20
 800b7c0:	4323      	orrs	r3, r4
 800b7c2:	f000 84e6 	beq.w	800c192 <_dtoa_r+0xa5a>
 800b7c6:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
 800b7c8:	4f8a      	ldr	r7, [pc, #552]	@ (800b9f4 <_dtoa_r+0x2bc>)
 800b7ca:	2b00      	cmp	r3, #0
 800b7cc:	f000 84e8 	beq.w	800c1a0 <_dtoa_r+0xa68>
 800b7d0:	1cfb      	adds	r3, r7, #3
 800b7d2:	f000 bce3 	b.w	800c19c <_dtoa_r+0xa64>
 800b7d6:	ed9d 8b02 	vldr	d8, [sp, #8]
 800b7da:	eeb5 8b40 	vcmp.f64	d8, #0.0
 800b7de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800b7e2:	d10a      	bne.n	800b7fa <_dtoa_r+0xc2>
 800b7e4:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
 800b7e6:	2301      	movs	r3, #1
 800b7e8:	6013      	str	r3, [r2, #0]
 800b7ea:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
 800b7ec:	b113      	cbz	r3, 800b7f4 <_dtoa_r+0xbc>
 800b7ee:	9a1d      	ldr	r2, [sp, #116]	@ 0x74
 800b7f0:	4b81      	ldr	r3, [pc, #516]	@ (800b9f8 <_dtoa_r+0x2c0>)
 800b7f2:	6013      	str	r3, [r2, #0]
 800b7f4:	4f81      	ldr	r7, [pc, #516]	@ (800b9fc <_dtoa_r+0x2c4>)
 800b7f6:	f000 bcd3 	b.w	800c1a0 <_dtoa_r+0xa68>
 800b7fa:	aa0e      	add	r2, sp, #56	@ 0x38
 800b7fc:	a90f      	add	r1, sp, #60	@ 0x3c
 800b7fe:	4648      	mov	r0, r9
 800b800:	eeb0 0b48 	vmov.f64	d0, d8
 800b804:	f001 f918 	bl	800ca38 <__d2b>
 800b808:	f3c6 530a 	ubfx	r3, r6, #20, #11
 800b80c:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
 800b80e:	9001      	str	r0, [sp, #4]
 800b810:	2b00      	cmp	r3, #0
 800b812:	d045      	beq.n	800b8a0 <_dtoa_r+0x168>
 800b814:	eeb0 7b48 	vmov.f64	d7, d8
 800b818:	ee18 1a90 	vmov	r1, s17
 800b81c:	f3c1 0113 	ubfx	r1, r1, #0, #20
 800b820:	f041 517f 	orr.w	r1, r1, #1069547520	@ 0x3fc00000
 800b824:	f441 1140 	orr.w	r1, r1, #3145728	@ 0x300000
 800b828:	f2a3 33ff 	subw	r3, r3, #1023	@ 0x3ff
 800b82c:	2500      	movs	r5, #0
 800b82e:	ee07 1a90 	vmov	s15, r1
 800b832:	eeb7 6b08 	vmov.f64	d6, #120	@ 0x3fc00000  1.5
 800b836:	ed9f 5b66 	vldr	d5, [pc, #408]	@ 800b9d0 <_dtoa_r+0x298>
 800b83a:	ee37 7b46 	vsub.f64	d7, d7, d6
 800b83e:	ed9f 6b66 	vldr	d6, [pc, #408]	@ 800b9d8 <_dtoa_r+0x2a0>
 800b842:	eea7 6b05 	vfma.f64	d6, d7, d5
 800b846:	ed9f 5b66 	vldr	d5, [pc, #408]	@ 800b9e0 <_dtoa_r+0x2a8>
 800b84a:	ee07 3a90 	vmov	s15, r3
 800b84e:	eeb8 4be7 	vcvt.f64.s32	d4, s15
 800b852:	eeb0 7b46 	vmov.f64	d7, d6
 800b856:	eea4 7b05 	vfma.f64	d7, d4, d5
 800b85a:	eefd 6bc7 	vcvt.s32.f64	s13, d7
 800b85e:	eeb5 7bc0 	vcmpe.f64	d7, #0.0
 800b862:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800b866:	ee16 8a90 	vmov	r8, s13
 800b86a:	d508      	bpl.n	800b87e <_dtoa_r+0x146>
 800b86c:	eeb8 6be6 	vcvt.f64.s32	d6, s13
 800b870:	eeb4 6b47 	vcmp.f64	d6, d7
 800b874:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800b878:	bf18      	it	ne
 800b87a:	f108 38ff 	addne.w	r8, r8, #4294967295
 800b87e:	f1b8 0f16 	cmp.w	r8, #22
 800b882:	d82b      	bhi.n	800b8dc <_dtoa_r+0x1a4>
 800b884:	495e      	ldr	r1, [pc, #376]	@ (800ba00 <_dtoa_r+0x2c8>)
 800b886:	eb01 01c8 	add.w	r1, r1, r8, lsl #3
 800b88a:	ed91 7b00 	vldr	d7, [r1]
 800b88e:	eeb4 8bc7 	vcmpe.f64	d8, d7
 800b892:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800b896:	d501      	bpl.n	800b89c <_dtoa_r+0x164>
 800b898:	f108 38ff 	add.w	r8, r8, #4294967295
 800b89c:	2100      	movs	r1, #0
 800b89e:	e01e      	b.n	800b8de <_dtoa_r+0x1a6>
 800b8a0:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 800b8a2:	4413      	add	r3, r2
 800b8a4:	f203 4132 	addw	r1, r3, #1074	@ 0x432
 800b8a8:	2920      	cmp	r1, #32
 800b8aa:	bfc1      	itttt	gt
 800b8ac:	f1c1 0140 	rsbgt	r1, r1, #64	@ 0x40
 800b8b0:	408e      	lslgt	r6, r1
 800b8b2:	f203 4112 	addwgt	r1, r3, #1042	@ 0x412
 800b8b6:	fa24 f101 	lsrgt.w	r1, r4, r1
 800b8ba:	bfd6      	itet	le
 800b8bc:	f1c1 0120 	rsble	r1, r1, #32
 800b8c0:	4331      	orrgt	r1, r6
 800b8c2:	fa04 f101 	lslle.w	r1, r4, r1
 800b8c6:	ee07 1a90 	vmov	s15, r1
 800b8ca:	eeb8 7b67 	vcvt.f64.u32	d7, s15
 800b8ce:	3b01      	subs	r3, #1
 800b8d0:	ee17 1a90 	vmov	r1, s15
 800b8d4:	2501      	movs	r5, #1
 800b8d6:	f1a1 71f8 	sub.w	r1, r1, #32505856	@ 0x1f00000
 800b8da:	e7a8      	b.n	800b82e <_dtoa_r+0xf6>
 800b8dc:	2101      	movs	r1, #1
 800b8de:	1ad2      	subs	r2, r2, r3
 800b8e0:	1e53      	subs	r3, r2, #1
 800b8e2:	9306      	str	r3, [sp, #24]
 800b8e4:	bf45      	ittet	mi
 800b8e6:	f1c2 0301 	rsbmi	r3, r2, #1
 800b8ea:	9304      	strmi	r3, [sp, #16]
 800b8ec:	2300      	movpl	r3, #0
 800b8ee:	2300      	movmi	r3, #0
 800b8f0:	bf4c      	ite	mi
 800b8f2:	9306      	strmi	r3, [sp, #24]
 800b8f4:	9304      	strpl	r3, [sp, #16]
 800b8f6:	f1b8 0f00 	cmp.w	r8, #0
 800b8fa:	910c      	str	r1, [sp, #48]	@ 0x30
 800b8fc:	db18      	blt.n	800b930 <_dtoa_r+0x1f8>
 800b8fe:	9b06      	ldr	r3, [sp, #24]
 800b900:	f8cd 8028 	str.w	r8, [sp, #40]	@ 0x28
 800b904:	4443      	add	r3, r8
 800b906:	9306      	str	r3, [sp, #24]
 800b908:	2300      	movs	r3, #0
 800b90a:	9a07      	ldr	r2, [sp, #28]
 800b90c:	2a09      	cmp	r2, #9
 800b90e:	d845      	bhi.n	800b99c <_dtoa_r+0x264>
 800b910:	2a05      	cmp	r2, #5
 800b912:	bfc4      	itt	gt
 800b914:	3a04      	subgt	r2, #4
 800b916:	9207      	strgt	r2, [sp, #28]
 800b918:	9a07      	ldr	r2, [sp, #28]
 800b91a:	f1a2 0202 	sub.w	r2, r2, #2
 800b91e:	bfcc      	ite	gt
 800b920:	2400      	movgt	r4, #0
 800b922:	2401      	movle	r4, #1
 800b924:	2a03      	cmp	r2, #3
 800b926:	d844      	bhi.n	800b9b2 <_dtoa_r+0x27a>
 800b928:	e8df f002 	tbb	[pc, r2]
 800b92c:	0b173634 	.word	0x0b173634
 800b930:	9b04      	ldr	r3, [sp, #16]
 800b932:	2200      	movs	r2, #0
 800b934:	eba3 0308 	sub.w	r3, r3, r8
 800b938:	9304      	str	r3, [sp, #16]
 800b93a:	920a      	str	r2, [sp, #40]	@ 0x28
 800b93c:	f1c8 0300 	rsb	r3, r8, #0
 800b940:	e7e3      	b.n	800b90a <_dtoa_r+0x1d2>
 800b942:	2201      	movs	r2, #1
 800b944:	9208      	str	r2, [sp, #32]
 800b946:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 800b948:	eb08 0b02 	add.w	fp, r8, r2
 800b94c:	f10b 0a01 	add.w	sl, fp, #1
 800b950:	4652      	mov	r2, sl
 800b952:	2a01      	cmp	r2, #1
 800b954:	bfb8      	it	lt
 800b956:	2201      	movlt	r2, #1
 800b958:	e006      	b.n	800b968 <_dtoa_r+0x230>
 800b95a:	2201      	movs	r2, #1
 800b95c:	9208      	str	r2, [sp, #32]
 800b95e:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 800b960:	2a00      	cmp	r2, #0
 800b962:	dd29      	ble.n	800b9b8 <_dtoa_r+0x280>
 800b964:	4693      	mov	fp, r2
 800b966:	4692      	mov	sl, r2
 800b968:	f8d9 701c 	ldr.w	r7, [r9, #28]
 800b96c:	2100      	movs	r1, #0
 800b96e:	2004      	movs	r0, #4
 800b970:	f100 0614 	add.w	r6, r0, #20
 800b974:	4296      	cmp	r6, r2
 800b976:	d926      	bls.n	800b9c6 <_dtoa_r+0x28e>
 800b978:	6079      	str	r1, [r7, #4]
 800b97a:	4648      	mov	r0, r9
 800b97c:	9305      	str	r3, [sp, #20]
 800b97e:	f000 fd39 	bl	800c3f4 <_Balloc>
 800b982:	9b05      	ldr	r3, [sp, #20]
 800b984:	4607      	mov	r7, r0
 800b986:	2800      	cmp	r0, #0
 800b988:	d13e      	bne.n	800ba08 <_dtoa_r+0x2d0>
 800b98a:	4b1e      	ldr	r3, [pc, #120]	@ (800ba04 <_dtoa_r+0x2cc>)
 800b98c:	4602      	mov	r2, r0
 800b98e:	f240 11af 	movw	r1, #431	@ 0x1af
 800b992:	e6ea      	b.n	800b76a <_dtoa_r+0x32>
 800b994:	2200      	movs	r2, #0
 800b996:	e7e1      	b.n	800b95c <_dtoa_r+0x224>
 800b998:	2200      	movs	r2, #0
 800b99a:	e7d3      	b.n	800b944 <_dtoa_r+0x20c>
 800b99c:	2401      	movs	r4, #1
 800b99e:	2200      	movs	r2, #0
 800b9a0:	e9cd 2407 	strd	r2, r4, [sp, #28]
 800b9a4:	f04f 3bff 	mov.w	fp, #4294967295
 800b9a8:	2100      	movs	r1, #0
 800b9aa:	46da      	mov	sl, fp
 800b9ac:	2212      	movs	r2, #18
 800b9ae:	9109      	str	r1, [sp, #36]	@ 0x24
 800b9b0:	e7da      	b.n	800b968 <_dtoa_r+0x230>
 800b9b2:	2201      	movs	r2, #1
 800b9b4:	9208      	str	r2, [sp, #32]
 800b9b6:	e7f5      	b.n	800b9a4 <_dtoa_r+0x26c>
 800b9b8:	f04f 0b01 	mov.w	fp, #1
 800b9bc:	46da      	mov	sl, fp
 800b9be:	465a      	mov	r2, fp
 800b9c0:	f8cd b024 	str.w	fp, [sp, #36]	@ 0x24
 800b9c4:	e7d0      	b.n	800b968 <_dtoa_r+0x230>
 800b9c6:	3101      	adds	r1, #1
 800b9c8:	0040      	lsls	r0, r0, #1
 800b9ca:	e7d1      	b.n	800b970 <_dtoa_r+0x238>
 800b9cc:	f3af 8000 	nop.w
 800b9d0:	636f4361 	.word	0x636f4361
 800b9d4:	3fd287a7 	.word	0x3fd287a7
 800b9d8:	8b60c8b3 	.word	0x8b60c8b3
 800b9dc:	3fc68a28 	.word	0x3fc68a28
 800b9e0:	509f79fb 	.word	0x509f79fb
 800b9e4:	3fd34413 	.word	0x3fd34413
 800b9e8:	0800df59 	.word	0x0800df59
 800b9ec:	0800df70 	.word	0x0800df70
 800b9f0:	7ff00000 	.word	0x7ff00000
 800b9f4:	0800df55 	.word	0x0800df55
 800b9f8:	0800df29 	.word	0x0800df29
 800b9fc:	0800df28 	.word	0x0800df28
 800ba00:	0800e0c0 	.word	0x0800e0c0
 800ba04:	0800dfc8 	.word	0x0800dfc8
 800ba08:	f8d9 201c 	ldr.w	r2, [r9, #28]
 800ba0c:	f1ba 0f0e 	cmp.w	sl, #14
 800ba10:	6010      	str	r0, [r2, #0]
 800ba12:	d86e      	bhi.n	800baf2 <_dtoa_r+0x3ba>
 800ba14:	2c00      	cmp	r4, #0
 800ba16:	d06c      	beq.n	800baf2 <_dtoa_r+0x3ba>
 800ba18:	f1b8 0f00 	cmp.w	r8, #0
 800ba1c:	f340 80b4 	ble.w	800bb88 <_dtoa_r+0x450>
 800ba20:	4ac8      	ldr	r2, [pc, #800]	@ (800bd44 <_dtoa_r+0x60c>)
 800ba22:	f008 010f 	and.w	r1, r8, #15
 800ba26:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
 800ba2a:	f418 7f80 	tst.w	r8, #256	@ 0x100
 800ba2e:	ed92 7b00 	vldr	d7, [r2]
 800ba32:	ea4f 1128 	mov.w	r1, r8, asr #4
 800ba36:	f000 809b 	beq.w	800bb70 <_dtoa_r+0x438>
 800ba3a:	4ac3      	ldr	r2, [pc, #780]	@ (800bd48 <_dtoa_r+0x610>)
 800ba3c:	ed92 6b08 	vldr	d6, [r2, #32]
 800ba40:	ee88 6b06 	vdiv.f64	d6, d8, d6
 800ba44:	ed8d 6b02 	vstr	d6, [sp, #8]
 800ba48:	f001 010f 	and.w	r1, r1, #15
 800ba4c:	2203      	movs	r2, #3
 800ba4e:	48be      	ldr	r0, [pc, #760]	@ (800bd48 <_dtoa_r+0x610>)
 800ba50:	2900      	cmp	r1, #0
 800ba52:	f040 808f 	bne.w	800bb74 <_dtoa_r+0x43c>
 800ba56:	ed9d 6b02 	vldr	d6, [sp, #8]
 800ba5a:	ee86 7b07 	vdiv.f64	d7, d6, d7
 800ba5e:	ed8d 7b02 	vstr	d7, [sp, #8]
 800ba62:	990c      	ldr	r1, [sp, #48]	@ 0x30
 800ba64:	ed9d 7b02 	vldr	d7, [sp, #8]
 800ba68:	2900      	cmp	r1, #0
 800ba6a:	f000 80b3 	beq.w	800bbd4 <_dtoa_r+0x49c>
 800ba6e:	eeb7 6b00 	vmov.f64	d6, #112	@ 0x3f800000  1.0
 800ba72:	eeb4 7bc6 	vcmpe.f64	d7, d6
 800ba76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800ba7a:	f140 80ab 	bpl.w	800bbd4 <_dtoa_r+0x49c>
 800ba7e:	f1ba 0f00 	cmp.w	sl, #0
 800ba82:	f000 80a7 	beq.w	800bbd4 <_dtoa_r+0x49c>
 800ba86:	f1bb 0f00 	cmp.w	fp, #0
 800ba8a:	dd30      	ble.n	800baee <_dtoa_r+0x3b6>
 800ba8c:	eeb2 6b04 	vmov.f64	d6, #36	@ 0x41200000  10.0
 800ba90:	ee27 7b06 	vmul.f64	d7, d7, d6
 800ba94:	ed8d 7b02 	vstr	d7, [sp, #8]
 800ba98:	f108 31ff 	add.w	r1, r8, #4294967295
 800ba9c:	9105      	str	r1, [sp, #20]
 800ba9e:	3201      	adds	r2, #1
 800baa0:	465c      	mov	r4, fp
 800baa2:	ed9d 6b02 	vldr	d6, [sp, #8]
 800baa6:	eeb1 5b0c 	vmov.f64	d5, #28	@ 0x40e00000  7.0
 800baaa:	ee07 2a90 	vmov	s15, r2
 800baae:	eeb8 7be7 	vcvt.f64.s32	d7, s15
 800bab2:	eea7 5b06 	vfma.f64	d5, d7, d6
 800bab6:	ee15 2a90 	vmov	r2, s11
 800baba:	ec51 0b15 	vmov	r0, r1, d5
 800babe:	f1a2 7150 	sub.w	r1, r2, #54525952	@ 0x3400000
 800bac2:	2c00      	cmp	r4, #0
 800bac4:	f040 808a 	bne.w	800bbdc <_dtoa_r+0x4a4>
 800bac8:	eeb1 7b04 	vmov.f64	d7, #20	@ 0x40a00000  5.0
 800bacc:	ee36 6b47 	vsub.f64	d6, d6, d7
 800bad0:	ec41 0b17 	vmov	d7, r0, r1
 800bad4:	eeb4 6bc7 	vcmpe.f64	d6, d7
 800bad8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800badc:	f300 826a 	bgt.w	800bfb4 <_dtoa_r+0x87c>
 800bae0:	eeb1 7b47 	vneg.f64	d7, d7
 800bae4:	eeb4 6bc7 	vcmpe.f64	d6, d7
 800bae8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800baec:	d423      	bmi.n	800bb36 <_dtoa_r+0x3fe>
 800baee:	ed8d 8b02 	vstr	d8, [sp, #8]
 800baf2:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
 800baf4:	2a00      	cmp	r2, #0
 800baf6:	f2c0 8129 	blt.w	800bd4c <_dtoa_r+0x614>
 800bafa:	f1b8 0f0e 	cmp.w	r8, #14
 800bafe:	f300 8125 	bgt.w	800bd4c <_dtoa_r+0x614>
 800bb02:	4b90      	ldr	r3, [pc, #576]	@ (800bd44 <_dtoa_r+0x60c>)
 800bb04:	eb03 03c8 	add.w	r3, r3, r8, lsl #3
 800bb08:	ed93 6b00 	vldr	d6, [r3]
 800bb0c:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800bb0e:	2b00      	cmp	r3, #0
 800bb10:	f280 80c8 	bge.w	800bca4 <_dtoa_r+0x56c>
 800bb14:	f1ba 0f00 	cmp.w	sl, #0
 800bb18:	f300 80c4 	bgt.w	800bca4 <_dtoa_r+0x56c>
 800bb1c:	d10b      	bne.n	800bb36 <_dtoa_r+0x3fe>
 800bb1e:	eeb1 7b04 	vmov.f64	d7, #20	@ 0x40a00000  5.0
 800bb22:	ee26 6b07 	vmul.f64	d6, d6, d7
 800bb26:	ed9d 7b02 	vldr	d7, [sp, #8]
 800bb2a:	eeb4 6bc7 	vcmpe.f64	d6, d7
 800bb2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bb32:	f2c0 823c 	blt.w	800bfae <_dtoa_r+0x876>
 800bb36:	2400      	movs	r4, #0
 800bb38:	4625      	mov	r5, r4
 800bb3a:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800bb3c:	43db      	mvns	r3, r3
 800bb3e:	9305      	str	r3, [sp, #20]
 800bb40:	463e      	mov	r6, r7
 800bb42:	f04f 0800 	mov.w	r8, #0
 800bb46:	4621      	mov	r1, r4
 800bb48:	4648      	mov	r0, r9
 800bb4a:	f000 fc93 	bl	800c474 <_Bfree>
 800bb4e:	2d00      	cmp	r5, #0
 800bb50:	f000 80a2 	beq.w	800bc98 <_dtoa_r+0x560>
 800bb54:	f1b8 0f00 	cmp.w	r8, #0
 800bb58:	d005      	beq.n	800bb66 <_dtoa_r+0x42e>
 800bb5a:	45a8      	cmp	r8, r5
 800bb5c:	d003      	beq.n	800bb66 <_dtoa_r+0x42e>
 800bb5e:	4641      	mov	r1, r8
 800bb60:	4648      	mov	r0, r9
 800bb62:	f000 fc87 	bl	800c474 <_Bfree>
 800bb66:	4629      	mov	r1, r5
 800bb68:	4648      	mov	r0, r9
 800bb6a:	f000 fc83 	bl	800c474 <_Bfree>
 800bb6e:	e093      	b.n	800bc98 <_dtoa_r+0x560>
 800bb70:	2202      	movs	r2, #2
 800bb72:	e76c      	b.n	800ba4e <_dtoa_r+0x316>
 800bb74:	07cc      	lsls	r4, r1, #31
 800bb76:	d504      	bpl.n	800bb82 <_dtoa_r+0x44a>
 800bb78:	ed90 6b00 	vldr	d6, [r0]
 800bb7c:	3201      	adds	r2, #1
 800bb7e:	ee27 7b06 	vmul.f64	d7, d7, d6
 800bb82:	1049      	asrs	r1, r1, #1
 800bb84:	3008      	adds	r0, #8
 800bb86:	e763      	b.n	800ba50 <_dtoa_r+0x318>
 800bb88:	d022      	beq.n	800bbd0 <_dtoa_r+0x498>
 800bb8a:	f1c8 0100 	rsb	r1, r8, #0
 800bb8e:	4a6d      	ldr	r2, [pc, #436]	@ (800bd44 <_dtoa_r+0x60c>)
 800bb90:	f001 000f 	and.w	r0, r1, #15
 800bb94:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
 800bb98:	ed92 7b00 	vldr	d7, [r2]
 800bb9c:	ee28 7b07 	vmul.f64	d7, d8, d7
 800bba0:	ed8d 7b02 	vstr	d7, [sp, #8]
 800bba4:	4868      	ldr	r0, [pc, #416]	@ (800bd48 <_dtoa_r+0x610>)
 800bba6:	1109      	asrs	r1, r1, #4
 800bba8:	2400      	movs	r4, #0
 800bbaa:	2202      	movs	r2, #2
 800bbac:	b929      	cbnz	r1, 800bbba <_dtoa_r+0x482>
 800bbae:	2c00      	cmp	r4, #0
 800bbb0:	f43f af57 	beq.w	800ba62 <_dtoa_r+0x32a>
 800bbb4:	ed8d 7b02 	vstr	d7, [sp, #8]
 800bbb8:	e753      	b.n	800ba62 <_dtoa_r+0x32a>
 800bbba:	07ce      	lsls	r6, r1, #31
 800bbbc:	d505      	bpl.n	800bbca <_dtoa_r+0x492>
 800bbbe:	ed90 6b00 	vldr	d6, [r0]
 800bbc2:	3201      	adds	r2, #1
 800bbc4:	2401      	movs	r4, #1
 800bbc6:	ee27 7b06 	vmul.f64	d7, d7, d6
 800bbca:	1049      	asrs	r1, r1, #1
 800bbcc:	3008      	adds	r0, #8
 800bbce:	e7ed      	b.n	800bbac <_dtoa_r+0x474>
 800bbd0:	2202      	movs	r2, #2
 800bbd2:	e746      	b.n	800ba62 <_dtoa_r+0x32a>
 800bbd4:	f8cd 8014 	str.w	r8, [sp, #20]
 800bbd8:	4654      	mov	r4, sl
 800bbda:	e762      	b.n	800baa2 <_dtoa_r+0x36a>
 800bbdc:	4a59      	ldr	r2, [pc, #356]	@ (800bd44 <_dtoa_r+0x60c>)
 800bbde:	eb02 02c4 	add.w	r2, r2, r4, lsl #3
 800bbe2:	ed12 4b02 	vldr	d4, [r2, #-8]
 800bbe6:	9a08      	ldr	r2, [sp, #32]
 800bbe8:	ec41 0b17 	vmov	d7, r0, r1
 800bbec:	443c      	add	r4, r7
 800bbee:	b34a      	cbz	r2, 800bc44 <_dtoa_r+0x50c>
 800bbf0:	eeb6 3b00 	vmov.f64	d3, #96	@ 0x3f000000  0.5
 800bbf4:	eeb7 2b00 	vmov.f64	d2, #112	@ 0x3f800000  1.0
 800bbf8:	463e      	mov	r6, r7
 800bbfa:	ee83 5b04 	vdiv.f64	d5, d3, d4
 800bbfe:	eeb2 3b04 	vmov.f64	d3, #36	@ 0x41200000  10.0
 800bc02:	ee35 7b47 	vsub.f64	d7, d5, d7
 800bc06:	eefd 4bc6 	vcvt.s32.f64	s9, d6
 800bc0a:	ee14 2a90 	vmov	r2, s9
 800bc0e:	eeb8 5be4 	vcvt.f64.s32	d5, s9
 800bc12:	3230      	adds	r2, #48	@ 0x30
 800bc14:	ee36 6b45 	vsub.f64	d6, d6, d5
 800bc18:	eeb4 6bc7 	vcmpe.f64	d6, d7
 800bc1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bc20:	f806 2b01 	strb.w	r2, [r6], #1
 800bc24:	d438      	bmi.n	800bc98 <_dtoa_r+0x560>
 800bc26:	ee32 5b46 	vsub.f64	d5, d2, d6
 800bc2a:	eeb4 5bc7 	vcmpe.f64	d5, d7
 800bc2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bc32:	d46e      	bmi.n	800bd12 <_dtoa_r+0x5da>
 800bc34:	42a6      	cmp	r6, r4
 800bc36:	f43f af5a 	beq.w	800baee <_dtoa_r+0x3b6>
 800bc3a:	ee27 7b03 	vmul.f64	d7, d7, d3
 800bc3e:	ee26 6b03 	vmul.f64	d6, d6, d3
 800bc42:	e7e0      	b.n	800bc06 <_dtoa_r+0x4ce>
 800bc44:	4621      	mov	r1, r4
 800bc46:	463e      	mov	r6, r7
 800bc48:	ee27 7b04 	vmul.f64	d7, d7, d4
 800bc4c:	eeb2 3b04 	vmov.f64	d3, #36	@ 0x41200000  10.0
 800bc50:	eefd 4bc6 	vcvt.s32.f64	s9, d6
 800bc54:	ee14 2a90 	vmov	r2, s9
 800bc58:	3230      	adds	r2, #48	@ 0x30
 800bc5a:	f806 2b01 	strb.w	r2, [r6], #1
 800bc5e:	42a6      	cmp	r6, r4
 800bc60:	eeb8 5be4 	vcvt.f64.s32	d5, s9
 800bc64:	ee36 6b45 	vsub.f64	d6, d6, d5
 800bc68:	d119      	bne.n	800bc9e <_dtoa_r+0x566>
 800bc6a:	eeb6 5b00 	vmov.f64	d5, #96	@ 0x3f000000  0.5
 800bc6e:	ee37 4b05 	vadd.f64	d4, d7, d5
 800bc72:	eeb4 6bc4 	vcmpe.f64	d6, d4
 800bc76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bc7a:	dc4a      	bgt.n	800bd12 <_dtoa_r+0x5da>
 800bc7c:	ee35 5b47 	vsub.f64	d5, d5, d7
 800bc80:	eeb4 6bc5 	vcmpe.f64	d6, d5
 800bc84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bc88:	f57f af31 	bpl.w	800baee <_dtoa_r+0x3b6>
 800bc8c:	460e      	mov	r6, r1
 800bc8e:	3901      	subs	r1, #1
 800bc90:	f816 3c01 	ldrb.w	r3, [r6, #-1]
 800bc94:	2b30      	cmp	r3, #48	@ 0x30
 800bc96:	d0f9      	beq.n	800bc8c <_dtoa_r+0x554>
 800bc98:	f8dd 8014 	ldr.w	r8, [sp, #20]
 800bc9c:	e027      	b.n	800bcee <_dtoa_r+0x5b6>
 800bc9e:	ee26 6b03 	vmul.f64	d6, d6, d3
 800bca2:	e7d5      	b.n	800bc50 <_dtoa_r+0x518>
 800bca4:	ed9d 7b02 	vldr	d7, [sp, #8]
 800bca8:	eeb2 4b04 	vmov.f64	d4, #36	@ 0x41200000  10.0
 800bcac:	463e      	mov	r6, r7
 800bcae:	ee87 5b06 	vdiv.f64	d5, d7, d6
 800bcb2:	eebd 5bc5 	vcvt.s32.f64	s10, d5
 800bcb6:	ee15 3a10 	vmov	r3, s10
 800bcba:	3330      	adds	r3, #48	@ 0x30
 800bcbc:	f806 3b01 	strb.w	r3, [r6], #1
 800bcc0:	1bf3      	subs	r3, r6, r7
 800bcc2:	459a      	cmp	sl, r3
 800bcc4:	eeb8 3bc5 	vcvt.f64.s32	d3, s10
 800bcc8:	eea3 7b46 	vfms.f64	d7, d3, d6
 800bccc:	d132      	bne.n	800bd34 <_dtoa_r+0x5fc>
 800bcce:	ee37 7b07 	vadd.f64	d7, d7, d7
 800bcd2:	eeb4 7bc6 	vcmpe.f64	d7, d6
 800bcd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bcda:	dc18      	bgt.n	800bd0e <_dtoa_r+0x5d6>
 800bcdc:	eeb4 7b46 	vcmp.f64	d7, d6
 800bce0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bce4:	d103      	bne.n	800bcee <_dtoa_r+0x5b6>
 800bce6:	ee15 3a10 	vmov	r3, s10
 800bcea:	07db      	lsls	r3, r3, #31
 800bcec:	d40f      	bmi.n	800bd0e <_dtoa_r+0x5d6>
 800bcee:	9901      	ldr	r1, [sp, #4]
 800bcf0:	4648      	mov	r0, r9
 800bcf2:	f000 fbbf 	bl	800c474 <_Bfree>
 800bcf6:	2300      	movs	r3, #0
 800bcf8:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
 800bcfa:	7033      	strb	r3, [r6, #0]
 800bcfc:	f108 0301 	add.w	r3, r8, #1
 800bd00:	6013      	str	r3, [r2, #0]
 800bd02:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
 800bd04:	2b00      	cmp	r3, #0
 800bd06:	f000 824b 	beq.w	800c1a0 <_dtoa_r+0xa68>
 800bd0a:	601e      	str	r6, [r3, #0]
 800bd0c:	e248      	b.n	800c1a0 <_dtoa_r+0xa68>
 800bd0e:	f8cd 8014 	str.w	r8, [sp, #20]
 800bd12:	4633      	mov	r3, r6
 800bd14:	461e      	mov	r6, r3
 800bd16:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 800bd1a:	2a39      	cmp	r2, #57	@ 0x39
 800bd1c:	d106      	bne.n	800bd2c <_dtoa_r+0x5f4>
 800bd1e:	429f      	cmp	r7, r3
 800bd20:	d1f8      	bne.n	800bd14 <_dtoa_r+0x5dc>
 800bd22:	9a05      	ldr	r2, [sp, #20]
 800bd24:	3201      	adds	r2, #1
 800bd26:	9205      	str	r2, [sp, #20]
 800bd28:	2230      	movs	r2, #48	@ 0x30
 800bd2a:	703a      	strb	r2, [r7, #0]
 800bd2c:	781a      	ldrb	r2, [r3, #0]
 800bd2e:	3201      	adds	r2, #1
 800bd30:	701a      	strb	r2, [r3, #0]
 800bd32:	e7b1      	b.n	800bc98 <_dtoa_r+0x560>
 800bd34:	ee27 7b04 	vmul.f64	d7, d7, d4
 800bd38:	eeb5 7b40 	vcmp.f64	d7, #0.0
 800bd3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800bd40:	d1b5      	bne.n	800bcae <_dtoa_r+0x576>
 800bd42:	e7d4      	b.n	800bcee <_dtoa_r+0x5b6>
 800bd44:	0800e0c0 	.word	0x0800e0c0
 800bd48:	0800e098 	.word	0x0800e098
 800bd4c:	9908      	ldr	r1, [sp, #32]
 800bd4e:	2900      	cmp	r1, #0
 800bd50:	f000 80e9 	beq.w	800bf26 <_dtoa_r+0x7ee>
 800bd54:	9907      	ldr	r1, [sp, #28]
 800bd56:	2901      	cmp	r1, #1
 800bd58:	f300 80cb 	bgt.w	800bef2 <_dtoa_r+0x7ba>
 800bd5c:	2d00      	cmp	r5, #0
 800bd5e:	f000 80c4 	beq.w	800beea <_dtoa_r+0x7b2>
 800bd62:	f202 4233 	addw	r2, r2, #1075	@ 0x433
 800bd66:	9e04      	ldr	r6, [sp, #16]
 800bd68:	461c      	mov	r4, r3
 800bd6a:	9305      	str	r3, [sp, #20]
 800bd6c:	9b04      	ldr	r3, [sp, #16]
 800bd6e:	4413      	add	r3, r2
 800bd70:	9304      	str	r3, [sp, #16]
 800bd72:	9b06      	ldr	r3, [sp, #24]
 800bd74:	2101      	movs	r1, #1
 800bd76:	4413      	add	r3, r2
 800bd78:	4648      	mov	r0, r9
 800bd7a:	9306      	str	r3, [sp, #24]
 800bd7c:	f000 fc2e 	bl	800c5dc <__i2b>
 800bd80:	9b05      	ldr	r3, [sp, #20]
 800bd82:	4605      	mov	r5, r0
 800bd84:	b166      	cbz	r6, 800bda0 <_dtoa_r+0x668>
 800bd86:	9a06      	ldr	r2, [sp, #24]
 800bd88:	2a00      	cmp	r2, #0
 800bd8a:	dd09      	ble.n	800bda0 <_dtoa_r+0x668>
 800bd8c:	42b2      	cmp	r2, r6
 800bd8e:	9904      	ldr	r1, [sp, #16]
 800bd90:	bfa8      	it	ge
 800bd92:	4632      	movge	r2, r6
 800bd94:	1a89      	subs	r1, r1, r2
 800bd96:	9104      	str	r1, [sp, #16]
 800bd98:	9906      	ldr	r1, [sp, #24]
 800bd9a:	1ab6      	subs	r6, r6, r2
 800bd9c:	1a8a      	subs	r2, r1, r2
 800bd9e:	9206      	str	r2, [sp, #24]
 800bda0:	b30b      	cbz	r3, 800bde6 <_dtoa_r+0x6ae>
 800bda2:	9a08      	ldr	r2, [sp, #32]
 800bda4:	2a00      	cmp	r2, #0
 800bda6:	f000 80c5 	beq.w	800bf34 <_dtoa_r+0x7fc>
 800bdaa:	2c00      	cmp	r4, #0
 800bdac:	f000 80bf 	beq.w	800bf2e <_dtoa_r+0x7f6>
 800bdb0:	4629      	mov	r1, r5
 800bdb2:	4622      	mov	r2, r4
 800bdb4:	4648      	mov	r0, r9
 800bdb6:	930b      	str	r3, [sp, #44]	@ 0x2c
 800bdb8:	f000 fcc8 	bl	800c74c <__pow5mult>
 800bdbc:	9a01      	ldr	r2, [sp, #4]
 800bdbe:	4601      	mov	r1, r0
 800bdc0:	4605      	mov	r5, r0
 800bdc2:	4648      	mov	r0, r9
 800bdc4:	f000 fc20 	bl	800c608 <__multiply>
 800bdc8:	9901      	ldr	r1, [sp, #4]
 800bdca:	9005      	str	r0, [sp, #20]
 800bdcc:	4648      	mov	r0, r9
 800bdce:	f000 fb51 	bl	800c474 <_Bfree>
 800bdd2:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 800bdd4:	1b1b      	subs	r3, r3, r4
 800bdd6:	f000 80b0 	beq.w	800bf3a <_dtoa_r+0x802>
 800bdda:	9905      	ldr	r1, [sp, #20]
 800bddc:	461a      	mov	r2, r3
 800bdde:	4648      	mov	r0, r9
 800bde0:	f000 fcb4 	bl	800c74c <__pow5mult>
 800bde4:	9001      	str	r0, [sp, #4]
 800bde6:	2101      	movs	r1, #1
 800bde8:	4648      	mov	r0, r9
 800bdea:	f000 fbf7 	bl	800c5dc <__i2b>
 800bdee:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 800bdf0:	4604      	mov	r4, r0
 800bdf2:	2b00      	cmp	r3, #0
 800bdf4:	f000 81da 	beq.w	800c1ac <_dtoa_r+0xa74>
 800bdf8:	461a      	mov	r2, r3
 800bdfa:	4601      	mov	r1, r0
 800bdfc:	4648      	mov	r0, r9
 800bdfe:	f000 fca5 	bl	800c74c <__pow5mult>
 800be02:	9b07      	ldr	r3, [sp, #28]
 800be04:	2b01      	cmp	r3, #1
 800be06:	4604      	mov	r4, r0
 800be08:	f300 80a0 	bgt.w	800bf4c <_dtoa_r+0x814>
 800be0c:	9b02      	ldr	r3, [sp, #8]
 800be0e:	2b00      	cmp	r3, #0
 800be10:	f040 8096 	bne.w	800bf40 <_dtoa_r+0x808>
 800be14:	9b03      	ldr	r3, [sp, #12]
 800be16:	f3c3 0213 	ubfx	r2, r3, #0, #20
 800be1a:	2a00      	cmp	r2, #0
 800be1c:	f040 8092 	bne.w	800bf44 <_dtoa_r+0x80c>
 800be20:	f023 4200 	bic.w	r2, r3, #2147483648	@ 0x80000000
 800be24:	0d12      	lsrs	r2, r2, #20
 800be26:	0512      	lsls	r2, r2, #20
 800be28:	2a00      	cmp	r2, #0
 800be2a:	f000 808d 	beq.w	800bf48 <_dtoa_r+0x810>
 800be2e:	9b04      	ldr	r3, [sp, #16]
 800be30:	3301      	adds	r3, #1
 800be32:	9304      	str	r3, [sp, #16]
 800be34:	9b06      	ldr	r3, [sp, #24]
 800be36:	3301      	adds	r3, #1
 800be38:	9306      	str	r3, [sp, #24]
 800be3a:	2301      	movs	r3, #1
 800be3c:	930b      	str	r3, [sp, #44]	@ 0x2c
 800be3e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 800be40:	2b00      	cmp	r3, #0
 800be42:	f000 81b9 	beq.w	800c1b8 <_dtoa_r+0xa80>
 800be46:	6922      	ldr	r2, [r4, #16]
 800be48:	eb04 0282 	add.w	r2, r4, r2, lsl #2
 800be4c:	6910      	ldr	r0, [r2, #16]
 800be4e:	f000 fb79 	bl	800c544 <__hi0bits>
 800be52:	f1c0 0020 	rsb	r0, r0, #32
 800be56:	9b06      	ldr	r3, [sp, #24]
 800be58:	4418      	add	r0, r3
 800be5a:	f010 001f 	ands.w	r0, r0, #31
 800be5e:	f000 8081 	beq.w	800bf64 <_dtoa_r+0x82c>
 800be62:	f1c0 0220 	rsb	r2, r0, #32
 800be66:	2a04      	cmp	r2, #4
 800be68:	dd73      	ble.n	800bf52 <_dtoa_r+0x81a>
 800be6a:	9b04      	ldr	r3, [sp, #16]
 800be6c:	f1c0 001c 	rsb	r0, r0, #28
 800be70:	4403      	add	r3, r0
 800be72:	9304      	str	r3, [sp, #16]
 800be74:	9b06      	ldr	r3, [sp, #24]
 800be76:	4406      	add	r6, r0
 800be78:	4403      	add	r3, r0
 800be7a:	9306      	str	r3, [sp, #24]
 800be7c:	9b04      	ldr	r3, [sp, #16]
 800be7e:	2b00      	cmp	r3, #0
 800be80:	dd05      	ble.n	800be8e <_dtoa_r+0x756>
 800be82:	9901      	ldr	r1, [sp, #4]
 800be84:	461a      	mov	r2, r3
 800be86:	4648      	mov	r0, r9
 800be88:	f000 fcba 	bl	800c800 <__lshift>
 800be8c:	9001      	str	r0, [sp, #4]
 800be8e:	9b06      	ldr	r3, [sp, #24]
 800be90:	2b00      	cmp	r3, #0
 800be92:	dd05      	ble.n	800bea0 <_dtoa_r+0x768>
 800be94:	4621      	mov	r1, r4
 800be96:	461a      	mov	r2, r3
 800be98:	4648      	mov	r0, r9
 800be9a:	f000 fcb1 	bl	800c800 <__lshift>
 800be9e:	4604      	mov	r4, r0
 800bea0:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
 800bea2:	2b00      	cmp	r3, #0
 800bea4:	d060      	beq.n	800bf68 <_dtoa_r+0x830>
 800bea6:	9801      	ldr	r0, [sp, #4]
 800bea8:	4621      	mov	r1, r4
 800beaa:	f000 fd15 	bl	800c8d8 <__mcmp>
 800beae:	2800      	cmp	r0, #0
 800beb0:	da5a      	bge.n	800bf68 <_dtoa_r+0x830>
 800beb2:	f108 33ff 	add.w	r3, r8, #4294967295
 800beb6:	9305      	str	r3, [sp, #20]
 800beb8:	9901      	ldr	r1, [sp, #4]
 800beba:	2300      	movs	r3, #0
 800bebc:	220a      	movs	r2, #10
 800bebe:	4648      	mov	r0, r9
 800bec0:	f000 fafa 	bl	800c4b8 <__multadd>
 800bec4:	9b08      	ldr	r3, [sp, #32]
 800bec6:	9001      	str	r0, [sp, #4]
 800bec8:	2b00      	cmp	r3, #0
 800beca:	f000 8177 	beq.w	800c1bc <_dtoa_r+0xa84>
 800bece:	4629      	mov	r1, r5
 800bed0:	2300      	movs	r3, #0
 800bed2:	220a      	movs	r2, #10
 800bed4:	4648      	mov	r0, r9
 800bed6:	f000 faef 	bl	800c4b8 <__multadd>
 800beda:	f1bb 0f00 	cmp.w	fp, #0
 800bede:	4605      	mov	r5, r0
 800bee0:	dc6e      	bgt.n	800bfc0 <_dtoa_r+0x888>
 800bee2:	9b07      	ldr	r3, [sp, #28]
 800bee4:	2b02      	cmp	r3, #2
 800bee6:	dc48      	bgt.n	800bf7a <_dtoa_r+0x842>
 800bee8:	e06a      	b.n	800bfc0 <_dtoa_r+0x888>
 800beea:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
 800beec:	f1c2 0236 	rsb	r2, r2, #54	@ 0x36
 800bef0:	e739      	b.n	800bd66 <_dtoa_r+0x62e>
 800bef2:	f10a 34ff 	add.w	r4, sl, #4294967295
 800bef6:	42a3      	cmp	r3, r4
 800bef8:	db07      	blt.n	800bf0a <_dtoa_r+0x7d2>
 800befa:	f1ba 0f00 	cmp.w	sl, #0
 800befe:	eba3 0404 	sub.w	r4, r3, r4
 800bf02:	db0b      	blt.n	800bf1c <_dtoa_r+0x7e4>
 800bf04:	9e04      	ldr	r6, [sp, #16]
 800bf06:	4652      	mov	r2, sl
 800bf08:	e72f      	b.n	800bd6a <_dtoa_r+0x632>
 800bf0a:	1ae2      	subs	r2, r4, r3
 800bf0c:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 800bf0e:	9e04      	ldr	r6, [sp, #16]
 800bf10:	4413      	add	r3, r2
 800bf12:	930a      	str	r3, [sp, #40]	@ 0x28
 800bf14:	4652      	mov	r2, sl
 800bf16:	4623      	mov	r3, r4
 800bf18:	2400      	movs	r4, #0
 800bf1a:	e726      	b.n	800bd6a <_dtoa_r+0x632>
 800bf1c:	9a04      	ldr	r2, [sp, #16]
 800bf1e:	eba2 060a 	sub.w	r6, r2, sl
 800bf22:	2200      	movs	r2, #0
 800bf24:	e721      	b.n	800bd6a <_dtoa_r+0x632>
 800bf26:	9e04      	ldr	r6, [sp, #16]
 800bf28:	9d08      	ldr	r5, [sp, #32]
 800bf2a:	461c      	mov	r4, r3
 800bf2c:	e72a      	b.n	800bd84 <_dtoa_r+0x64c>
 800bf2e:	9a01      	ldr	r2, [sp, #4]
 800bf30:	9205      	str	r2, [sp, #20]
 800bf32:	e752      	b.n	800bdda <_dtoa_r+0x6a2>
 800bf34:	9901      	ldr	r1, [sp, #4]
 800bf36:	461a      	mov	r2, r3
 800bf38:	e751      	b.n	800bdde <_dtoa_r+0x6a6>
 800bf3a:	9b05      	ldr	r3, [sp, #20]
 800bf3c:	9301      	str	r3, [sp, #4]
 800bf3e:	e752      	b.n	800bde6 <_dtoa_r+0x6ae>
 800bf40:	2300      	movs	r3, #0
 800bf42:	e77b      	b.n	800be3c <_dtoa_r+0x704>
 800bf44:	9b02      	ldr	r3, [sp, #8]
 800bf46:	e779      	b.n	800be3c <_dtoa_r+0x704>
 800bf48:	920b      	str	r2, [sp, #44]	@ 0x2c
 800bf4a:	e778      	b.n	800be3e <_dtoa_r+0x706>
 800bf4c:	2300      	movs	r3, #0
 800bf4e:	930b      	str	r3, [sp, #44]	@ 0x2c
 800bf50:	e779      	b.n	800be46 <_dtoa_r+0x70e>
 800bf52:	d093      	beq.n	800be7c <_dtoa_r+0x744>
 800bf54:	9b04      	ldr	r3, [sp, #16]
 800bf56:	321c      	adds	r2, #28
 800bf58:	4413      	add	r3, r2
 800bf5a:	9304      	str	r3, [sp, #16]
 800bf5c:	9b06      	ldr	r3, [sp, #24]
 800bf5e:	4416      	add	r6, r2
 800bf60:	4413      	add	r3, r2
 800bf62:	e78a      	b.n	800be7a <_dtoa_r+0x742>
 800bf64:	4602      	mov	r2, r0
 800bf66:	e7f5      	b.n	800bf54 <_dtoa_r+0x81c>
 800bf68:	f1ba 0f00 	cmp.w	sl, #0
 800bf6c:	f8cd 8014 	str.w	r8, [sp, #20]
 800bf70:	46d3      	mov	fp, sl
 800bf72:	dc21      	bgt.n	800bfb8 <_dtoa_r+0x880>
 800bf74:	9b07      	ldr	r3, [sp, #28]
 800bf76:	2b02      	cmp	r3, #2
 800bf78:	dd1e      	ble.n	800bfb8 <_dtoa_r+0x880>
 800bf7a:	f1bb 0f00 	cmp.w	fp, #0
 800bf7e:	f47f addc 	bne.w	800bb3a <_dtoa_r+0x402>
 800bf82:	4621      	mov	r1, r4
 800bf84:	465b      	mov	r3, fp
 800bf86:	2205      	movs	r2, #5
 800bf88:	4648      	mov	r0, r9
 800bf8a:	f000 fa95 	bl	800c4b8 <__multadd>
 800bf8e:	4601      	mov	r1, r0
 800bf90:	4604      	mov	r4, r0
 800bf92:	9801      	ldr	r0, [sp, #4]
 800bf94:	f000 fca0 	bl	800c8d8 <__mcmp>
 800bf98:	2800      	cmp	r0, #0
 800bf9a:	f77f adce 	ble.w	800bb3a <_dtoa_r+0x402>
 800bf9e:	463e      	mov	r6, r7
 800bfa0:	2331      	movs	r3, #49	@ 0x31
 800bfa2:	f806 3b01 	strb.w	r3, [r6], #1
 800bfa6:	9b05      	ldr	r3, [sp, #20]
 800bfa8:	3301      	adds	r3, #1
 800bfaa:	9305      	str	r3, [sp, #20]
 800bfac:	e5c9      	b.n	800bb42 <_dtoa_r+0x40a>
 800bfae:	f8cd 8014 	str.w	r8, [sp, #20]
 800bfb2:	4654      	mov	r4, sl
 800bfb4:	4625      	mov	r5, r4
 800bfb6:	e7f2      	b.n	800bf9e <_dtoa_r+0x866>
 800bfb8:	9b08      	ldr	r3, [sp, #32]
 800bfba:	2b00      	cmp	r3, #0
 800bfbc:	f000 8102 	beq.w	800c1c4 <_dtoa_r+0xa8c>
 800bfc0:	2e00      	cmp	r6, #0
 800bfc2:	dd05      	ble.n	800bfd0 <_dtoa_r+0x898>
 800bfc4:	4629      	mov	r1, r5
 800bfc6:	4632      	mov	r2, r6
 800bfc8:	4648      	mov	r0, r9
 800bfca:	f000 fc19 	bl	800c800 <__lshift>
 800bfce:	4605      	mov	r5, r0
 800bfd0:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 800bfd2:	2b00      	cmp	r3, #0
 800bfd4:	d058      	beq.n	800c088 <_dtoa_r+0x950>
 800bfd6:	6869      	ldr	r1, [r5, #4]
 800bfd8:	4648      	mov	r0, r9
 800bfda:	f000 fa0b 	bl	800c3f4 <_Balloc>
 800bfde:	4606      	mov	r6, r0
 800bfe0:	b928      	cbnz	r0, 800bfee <_dtoa_r+0x8b6>
 800bfe2:	4b82      	ldr	r3, [pc, #520]	@ (800c1ec <_dtoa_r+0xab4>)
 800bfe4:	4602      	mov	r2, r0
 800bfe6:	f240 21ef 	movw	r1, #751	@ 0x2ef
 800bfea:	f7ff bbbe 	b.w	800b76a <_dtoa_r+0x32>
 800bfee:	692a      	ldr	r2, [r5, #16]
 800bff0:	3202      	adds	r2, #2
 800bff2:	0092      	lsls	r2, r2, #2
 800bff4:	f105 010c 	add.w	r1, r5, #12
 800bff8:	300c      	adds	r0, #12
 800bffa:	f7ff fb06 	bl	800b60a <memcpy>
 800bffe:	2201      	movs	r2, #1
 800c000:	4631      	mov	r1, r6
 800c002:	4648      	mov	r0, r9
 800c004:	f000 fbfc 	bl	800c800 <__lshift>
 800c008:	1c7b      	adds	r3, r7, #1
 800c00a:	9304      	str	r3, [sp, #16]
 800c00c:	eb07 030b 	add.w	r3, r7, fp
 800c010:	9309      	str	r3, [sp, #36]	@ 0x24
 800c012:	9b02      	ldr	r3, [sp, #8]
 800c014:	f003 0301 	and.w	r3, r3, #1
 800c018:	46a8      	mov	r8, r5
 800c01a:	9308      	str	r3, [sp, #32]
 800c01c:	4605      	mov	r5, r0
 800c01e:	9b04      	ldr	r3, [sp, #16]
 800c020:	9801      	ldr	r0, [sp, #4]
 800c022:	4621      	mov	r1, r4
 800c024:	f103 3bff 	add.w	fp, r3, #4294967295
 800c028:	f7ff fafd 	bl	800b626 <quorem>
 800c02c:	4641      	mov	r1, r8
 800c02e:	9002      	str	r0, [sp, #8]
 800c030:	f100 0a30 	add.w	sl, r0, #48	@ 0x30
 800c034:	9801      	ldr	r0, [sp, #4]
 800c036:	f000 fc4f 	bl	800c8d8 <__mcmp>
 800c03a:	462a      	mov	r2, r5
 800c03c:	9006      	str	r0, [sp, #24]
 800c03e:	4621      	mov	r1, r4
 800c040:	4648      	mov	r0, r9
 800c042:	f000 fc65 	bl	800c910 <__mdiff>
 800c046:	68c2      	ldr	r2, [r0, #12]
 800c048:	4606      	mov	r6, r0
 800c04a:	b9fa      	cbnz	r2, 800c08c <_dtoa_r+0x954>
 800c04c:	4601      	mov	r1, r0
 800c04e:	9801      	ldr	r0, [sp, #4]
 800c050:	f000 fc42 	bl	800c8d8 <__mcmp>
 800c054:	4602      	mov	r2, r0
 800c056:	4631      	mov	r1, r6
 800c058:	4648      	mov	r0, r9
 800c05a:	920a      	str	r2, [sp, #40]	@ 0x28
 800c05c:	f000 fa0a 	bl	800c474 <_Bfree>
 800c060:	9b07      	ldr	r3, [sp, #28]
 800c062:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
 800c064:	9e04      	ldr	r6, [sp, #16]
 800c066:	ea42 0103 	orr.w	r1, r2, r3
 800c06a:	9b08      	ldr	r3, [sp, #32]
 800c06c:	4319      	orrs	r1, r3
 800c06e:	d10f      	bne.n	800c090 <_dtoa_r+0x958>
 800c070:	f1ba 0f39 	cmp.w	sl, #57	@ 0x39
 800c074:	d028      	beq.n	800c0c8 <_dtoa_r+0x990>
 800c076:	9b06      	ldr	r3, [sp, #24]
 800c078:	2b00      	cmp	r3, #0
 800c07a:	dd02      	ble.n	800c082 <_dtoa_r+0x94a>
 800c07c:	9b02      	ldr	r3, [sp, #8]
 800c07e:	f103 0a31 	add.w	sl, r3, #49	@ 0x31
 800c082:	f88b a000 	strb.w	sl, [fp]
 800c086:	e55e      	b.n	800bb46 <_dtoa_r+0x40e>
 800c088:	4628      	mov	r0, r5
 800c08a:	e7bd      	b.n	800c008 <_dtoa_r+0x8d0>
 800c08c:	2201      	movs	r2, #1
 800c08e:	e7e2      	b.n	800c056 <_dtoa_r+0x91e>
 800c090:	9b06      	ldr	r3, [sp, #24]
 800c092:	2b00      	cmp	r3, #0
 800c094:	db04      	blt.n	800c0a0 <_dtoa_r+0x968>
 800c096:	9907      	ldr	r1, [sp, #28]
 800c098:	430b      	orrs	r3, r1
 800c09a:	9908      	ldr	r1, [sp, #32]
 800c09c:	430b      	orrs	r3, r1
 800c09e:	d120      	bne.n	800c0e2 <_dtoa_r+0x9aa>
 800c0a0:	2a00      	cmp	r2, #0
 800c0a2:	ddee      	ble.n	800c082 <_dtoa_r+0x94a>
 800c0a4:	9901      	ldr	r1, [sp, #4]
 800c0a6:	2201      	movs	r2, #1
 800c0a8:	4648      	mov	r0, r9
 800c0aa:	f000 fba9 	bl	800c800 <__lshift>
 800c0ae:	4621      	mov	r1, r4
 800c0b0:	9001      	str	r0, [sp, #4]
 800c0b2:	f000 fc11 	bl	800c8d8 <__mcmp>
 800c0b6:	2800      	cmp	r0, #0
 800c0b8:	dc03      	bgt.n	800c0c2 <_dtoa_r+0x98a>
 800c0ba:	d1e2      	bne.n	800c082 <_dtoa_r+0x94a>
 800c0bc:	f01a 0f01 	tst.w	sl, #1
 800c0c0:	d0df      	beq.n	800c082 <_dtoa_r+0x94a>
 800c0c2:	f1ba 0f39 	cmp.w	sl, #57	@ 0x39
 800c0c6:	d1d9      	bne.n	800c07c <_dtoa_r+0x944>
 800c0c8:	2339      	movs	r3, #57	@ 0x39
 800c0ca:	f88b 3000 	strb.w	r3, [fp]
 800c0ce:	4633      	mov	r3, r6
 800c0d0:	461e      	mov	r6, r3
 800c0d2:	3b01      	subs	r3, #1
 800c0d4:	f816 2c01 	ldrb.w	r2, [r6, #-1]
 800c0d8:	2a39      	cmp	r2, #57	@ 0x39
 800c0da:	d052      	beq.n	800c182 <_dtoa_r+0xa4a>
 800c0dc:	3201      	adds	r2, #1
 800c0de:	701a      	strb	r2, [r3, #0]
 800c0e0:	e531      	b.n	800bb46 <_dtoa_r+0x40e>
 800c0e2:	2a00      	cmp	r2, #0
 800c0e4:	dd07      	ble.n	800c0f6 <_dtoa_r+0x9be>
 800c0e6:	f1ba 0f39 	cmp.w	sl, #57	@ 0x39
 800c0ea:	d0ed      	beq.n	800c0c8 <_dtoa_r+0x990>
 800c0ec:	f10a 0301 	add.w	r3, sl, #1
 800c0f0:	f88b 3000 	strb.w	r3, [fp]
 800c0f4:	e527      	b.n	800bb46 <_dtoa_r+0x40e>
 800c0f6:	9b04      	ldr	r3, [sp, #16]
 800c0f8:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 800c0fa:	f803 ac01 	strb.w	sl, [r3, #-1]
 800c0fe:	4293      	cmp	r3, r2
 800c100:	d029      	beq.n	800c156 <_dtoa_r+0xa1e>
 800c102:	9901      	ldr	r1, [sp, #4]
 800c104:	2300      	movs	r3, #0
 800c106:	220a      	movs	r2, #10
 800c108:	4648      	mov	r0, r9
 800c10a:	f000 f9d5 	bl	800c4b8 <__multadd>
 800c10e:	45a8      	cmp	r8, r5
 800c110:	9001      	str	r0, [sp, #4]
 800c112:	f04f 0300 	mov.w	r3, #0
 800c116:	f04f 020a 	mov.w	r2, #10
 800c11a:	4641      	mov	r1, r8
 800c11c:	4648      	mov	r0, r9
 800c11e:	d107      	bne.n	800c130 <_dtoa_r+0x9f8>
 800c120:	f000 f9ca 	bl	800c4b8 <__multadd>
 800c124:	4680      	mov	r8, r0
 800c126:	4605      	mov	r5, r0
 800c128:	9b04      	ldr	r3, [sp, #16]
 800c12a:	3301      	adds	r3, #1
 800c12c:	9304      	str	r3, [sp, #16]
 800c12e:	e776      	b.n	800c01e <_dtoa_r+0x8e6>
 800c130:	f000 f9c2 	bl	800c4b8 <__multadd>
 800c134:	4629      	mov	r1, r5
 800c136:	4680      	mov	r8, r0
 800c138:	2300      	movs	r3, #0
 800c13a:	220a      	movs	r2, #10
 800c13c:	4648      	mov	r0, r9
 800c13e:	f000 f9bb 	bl	800c4b8 <__multadd>
 800c142:	4605      	mov	r5, r0
 800c144:	e7f0      	b.n	800c128 <_dtoa_r+0x9f0>
 800c146:	f1bb 0f00 	cmp.w	fp, #0
 800c14a:	bfcc      	ite	gt
 800c14c:	465e      	movgt	r6, fp
 800c14e:	2601      	movle	r6, #1
 800c150:	443e      	add	r6, r7
 800c152:	f04f 0800 	mov.w	r8, #0
 800c156:	9901      	ldr	r1, [sp, #4]
 800c158:	2201      	movs	r2, #1
 800c15a:	4648      	mov	r0, r9
 800c15c:	f000 fb50 	bl	800c800 <__lshift>
 800c160:	4621      	mov	r1, r4
 800c162:	9001      	str	r0, [sp, #4]
 800c164:	f000 fbb8 	bl	800c8d8 <__mcmp>
 800c168:	2800      	cmp	r0, #0
 800c16a:	dcb0      	bgt.n	800c0ce <_dtoa_r+0x996>
 800c16c:	d102      	bne.n	800c174 <_dtoa_r+0xa3c>
 800c16e:	f01a 0f01 	tst.w	sl, #1
 800c172:	d1ac      	bne.n	800c0ce <_dtoa_r+0x996>
 800c174:	4633      	mov	r3, r6
 800c176:	461e      	mov	r6, r3
 800c178:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 800c17c:	2a30      	cmp	r2, #48	@ 0x30
 800c17e:	d0fa      	beq.n	800c176 <_dtoa_r+0xa3e>
 800c180:	e4e1      	b.n	800bb46 <_dtoa_r+0x40e>
 800c182:	429f      	cmp	r7, r3
 800c184:	d1a4      	bne.n	800c0d0 <_dtoa_r+0x998>
 800c186:	9b05      	ldr	r3, [sp, #20]
 800c188:	3301      	adds	r3, #1
 800c18a:	9305      	str	r3, [sp, #20]
 800c18c:	2331      	movs	r3, #49	@ 0x31
 800c18e:	703b      	strb	r3, [r7, #0]
 800c190:	e4d9      	b.n	800bb46 <_dtoa_r+0x40e>
 800c192:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
 800c194:	4f16      	ldr	r7, [pc, #88]	@ (800c1f0 <_dtoa_r+0xab8>)
 800c196:	b11b      	cbz	r3, 800c1a0 <_dtoa_r+0xa68>
 800c198:	f107 0308 	add.w	r3, r7, #8
 800c19c:	9a1d      	ldr	r2, [sp, #116]	@ 0x74
 800c19e:	6013      	str	r3, [r2, #0]
 800c1a0:	4638      	mov	r0, r7
 800c1a2:	b011      	add	sp, #68	@ 0x44
 800c1a4:	ecbd 8b02 	vpop	{d8}
 800c1a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800c1ac:	9b07      	ldr	r3, [sp, #28]
 800c1ae:	2b01      	cmp	r3, #1
 800c1b0:	f77f ae2c 	ble.w	800be0c <_dtoa_r+0x6d4>
 800c1b4:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 800c1b6:	930b      	str	r3, [sp, #44]	@ 0x2c
 800c1b8:	2001      	movs	r0, #1
 800c1ba:	e64c      	b.n	800be56 <_dtoa_r+0x71e>
 800c1bc:	f1bb 0f00 	cmp.w	fp, #0
 800c1c0:	f77f aed8 	ble.w	800bf74 <_dtoa_r+0x83c>
 800c1c4:	463e      	mov	r6, r7
 800c1c6:	9801      	ldr	r0, [sp, #4]
 800c1c8:	4621      	mov	r1, r4
 800c1ca:	f7ff fa2c 	bl	800b626 <quorem>
 800c1ce:	f100 0a30 	add.w	sl, r0, #48	@ 0x30
 800c1d2:	f806 ab01 	strb.w	sl, [r6], #1
 800c1d6:	1bf2      	subs	r2, r6, r7
 800c1d8:	4593      	cmp	fp, r2
 800c1da:	ddb4      	ble.n	800c146 <_dtoa_r+0xa0e>
 800c1dc:	9901      	ldr	r1, [sp, #4]
 800c1de:	2300      	movs	r3, #0
 800c1e0:	220a      	movs	r2, #10
 800c1e2:	4648      	mov	r0, r9
 800c1e4:	f000 f968 	bl	800c4b8 <__multadd>
 800c1e8:	9001      	str	r0, [sp, #4]
 800c1ea:	e7ec      	b.n	800c1c6 <_dtoa_r+0xa8e>
 800c1ec:	0800dfc8 	.word	0x0800dfc8
 800c1f0:	0800df4c 	.word	0x0800df4c

0800c1f4 <_free_r>:
 800c1f4:	b538      	push	{r3, r4, r5, lr}
 800c1f6:	4605      	mov	r5, r0
 800c1f8:	2900      	cmp	r1, #0
 800c1fa:	d041      	beq.n	800c280 <_free_r+0x8c>
 800c1fc:	f851 3c04 	ldr.w	r3, [r1, #-4]
 800c200:	1f0c      	subs	r4, r1, #4
 800c202:	2b00      	cmp	r3, #0
 800c204:	bfb8      	it	lt
 800c206:	18e4      	addlt	r4, r4, r3
 800c208:	f000 f8e8 	bl	800c3dc <__malloc_lock>
 800c20c:	4a1d      	ldr	r2, [pc, #116]	@ (800c284 <_free_r+0x90>)
 800c20e:	6813      	ldr	r3, [r2, #0]
 800c210:	b933      	cbnz	r3, 800c220 <_free_r+0x2c>
 800c212:	6063      	str	r3, [r4, #4]
 800c214:	6014      	str	r4, [r2, #0]
 800c216:	4628      	mov	r0, r5
 800c218:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800c21c:	f000 b8e4 	b.w	800c3e8 <__malloc_unlock>
 800c220:	42a3      	cmp	r3, r4
 800c222:	d908      	bls.n	800c236 <_free_r+0x42>
 800c224:	6820      	ldr	r0, [r4, #0]
 800c226:	1821      	adds	r1, r4, r0
 800c228:	428b      	cmp	r3, r1
 800c22a:	bf01      	itttt	eq
 800c22c:	6819      	ldreq	r1, [r3, #0]
 800c22e:	685b      	ldreq	r3, [r3, #4]
 800c230:	1809      	addeq	r1, r1, r0
 800c232:	6021      	streq	r1, [r4, #0]
 800c234:	e7ed      	b.n	800c212 <_free_r+0x1e>
 800c236:	461a      	mov	r2, r3
 800c238:	685b      	ldr	r3, [r3, #4]
 800c23a:	b10b      	cbz	r3, 800c240 <_free_r+0x4c>
 800c23c:	42a3      	cmp	r3, r4
 800c23e:	d9fa      	bls.n	800c236 <_free_r+0x42>
 800c240:	6811      	ldr	r1, [r2, #0]
 800c242:	1850      	adds	r0, r2, r1
 800c244:	42a0      	cmp	r0, r4
 800c246:	d10b      	bne.n	800c260 <_free_r+0x6c>
 800c248:	6820      	ldr	r0, [r4, #0]
 800c24a:	4401      	add	r1, r0
 800c24c:	1850      	adds	r0, r2, r1
 800c24e:	4283      	cmp	r3, r0
 800c250:	6011      	str	r1, [r2, #0]
 800c252:	d1e0      	bne.n	800c216 <_free_r+0x22>
 800c254:	6818      	ldr	r0, [r3, #0]
 800c256:	685b      	ldr	r3, [r3, #4]
 800c258:	6053      	str	r3, [r2, #4]
 800c25a:	4408      	add	r0, r1
 800c25c:	6010      	str	r0, [r2, #0]
 800c25e:	e7da      	b.n	800c216 <_free_r+0x22>
 800c260:	d902      	bls.n	800c268 <_free_r+0x74>
 800c262:	230c      	movs	r3, #12
 800c264:	602b      	str	r3, [r5, #0]
 800c266:	e7d6      	b.n	800c216 <_free_r+0x22>
 800c268:	6820      	ldr	r0, [r4, #0]
 800c26a:	1821      	adds	r1, r4, r0
 800c26c:	428b      	cmp	r3, r1
 800c26e:	bf04      	itt	eq
 800c270:	6819      	ldreq	r1, [r3, #0]
 800c272:	685b      	ldreq	r3, [r3, #4]
 800c274:	6063      	str	r3, [r4, #4]
 800c276:	bf04      	itt	eq
 800c278:	1809      	addeq	r1, r1, r0
 800c27a:	6021      	streq	r1, [r4, #0]
 800c27c:	6054      	str	r4, [r2, #4]
 800c27e:	e7ca      	b.n	800c216 <_free_r+0x22>
 800c280:	bd38      	pop	{r3, r4, r5, pc}
 800c282:	bf00      	nop
 800c284:	20001790 	.word	0x20001790

0800c288 <malloc>:
 800c288:	4b02      	ldr	r3, [pc, #8]	@ (800c294 <malloc+0xc>)
 800c28a:	4601      	mov	r1, r0
 800c28c:	6818      	ldr	r0, [r3, #0]
 800c28e:	f000 b825 	b.w	800c2dc <_malloc_r>
 800c292:	bf00      	nop
 800c294:	20000098 	.word	0x20000098

0800c298 <sbrk_aligned>:
 800c298:	b570      	push	{r4, r5, r6, lr}
 800c29a:	4e0f      	ldr	r6, [pc, #60]	@ (800c2d8 <sbrk_aligned+0x40>)
 800c29c:	460c      	mov	r4, r1
 800c29e:	6831      	ldr	r1, [r6, #0]
 800c2a0:	4605      	mov	r5, r0
 800c2a2:	b911      	cbnz	r1, 800c2aa <sbrk_aligned+0x12>
 800c2a4:	f000 fe3e 	bl	800cf24 <_sbrk_r>
 800c2a8:	6030      	str	r0, [r6, #0]
 800c2aa:	4621      	mov	r1, r4
 800c2ac:	4628      	mov	r0, r5
 800c2ae:	f000 fe39 	bl	800cf24 <_sbrk_r>
 800c2b2:	1c43      	adds	r3, r0, #1
 800c2b4:	d103      	bne.n	800c2be <sbrk_aligned+0x26>
 800c2b6:	f04f 34ff 	mov.w	r4, #4294967295
 800c2ba:	4620      	mov	r0, r4
 800c2bc:	bd70      	pop	{r4, r5, r6, pc}
 800c2be:	1cc4      	adds	r4, r0, #3
 800c2c0:	f024 0403 	bic.w	r4, r4, #3
 800c2c4:	42a0      	cmp	r0, r4
 800c2c6:	d0f8      	beq.n	800c2ba <sbrk_aligned+0x22>
 800c2c8:	1a21      	subs	r1, r4, r0
 800c2ca:	4628      	mov	r0, r5
 800c2cc:	f000 fe2a 	bl	800cf24 <_sbrk_r>
 800c2d0:	3001      	adds	r0, #1
 800c2d2:	d1f2      	bne.n	800c2ba <sbrk_aligned+0x22>
 800c2d4:	e7ef      	b.n	800c2b6 <sbrk_aligned+0x1e>
 800c2d6:	bf00      	nop
 800c2d8:	2000178c 	.word	0x2000178c

0800c2dc <_malloc_r>:
 800c2dc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800c2e0:	1ccd      	adds	r5, r1, #3
 800c2e2:	f025 0503 	bic.w	r5, r5, #3
 800c2e6:	3508      	adds	r5, #8
 800c2e8:	2d0c      	cmp	r5, #12
 800c2ea:	bf38      	it	cc
 800c2ec:	250c      	movcc	r5, #12
 800c2ee:	2d00      	cmp	r5, #0
 800c2f0:	4606      	mov	r6, r0
 800c2f2:	db01      	blt.n	800c2f8 <_malloc_r+0x1c>
 800c2f4:	42a9      	cmp	r1, r5
 800c2f6:	d904      	bls.n	800c302 <_malloc_r+0x26>
 800c2f8:	230c      	movs	r3, #12
 800c2fa:	6033      	str	r3, [r6, #0]
 800c2fc:	2000      	movs	r0, #0
 800c2fe:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800c302:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 800c3d8 <_malloc_r+0xfc>
 800c306:	f000 f869 	bl	800c3dc <__malloc_lock>
 800c30a:	f8d8 3000 	ldr.w	r3, [r8]
 800c30e:	461c      	mov	r4, r3
 800c310:	bb44      	cbnz	r4, 800c364 <_malloc_r+0x88>
 800c312:	4629      	mov	r1, r5
 800c314:	4630      	mov	r0, r6
 800c316:	f7ff ffbf 	bl	800c298 <sbrk_aligned>
 800c31a:	1c43      	adds	r3, r0, #1
 800c31c:	4604      	mov	r4, r0
 800c31e:	d158      	bne.n	800c3d2 <_malloc_r+0xf6>
 800c320:	f8d8 4000 	ldr.w	r4, [r8]
 800c324:	4627      	mov	r7, r4
 800c326:	2f00      	cmp	r7, #0
 800c328:	d143      	bne.n	800c3b2 <_malloc_r+0xd6>
 800c32a:	2c00      	cmp	r4, #0
 800c32c:	d04b      	beq.n	800c3c6 <_malloc_r+0xea>
 800c32e:	6823      	ldr	r3, [r4, #0]
 800c330:	4639      	mov	r1, r7
 800c332:	4630      	mov	r0, r6
 800c334:	eb04 0903 	add.w	r9, r4, r3
 800c338:	f000 fdf4 	bl	800cf24 <_sbrk_r>
 800c33c:	4581      	cmp	r9, r0
 800c33e:	d142      	bne.n	800c3c6 <_malloc_r+0xea>
 800c340:	6821      	ldr	r1, [r4, #0]
 800c342:	1a6d      	subs	r5, r5, r1
 800c344:	4629      	mov	r1, r5
 800c346:	4630      	mov	r0, r6
 800c348:	f7ff ffa6 	bl	800c298 <sbrk_aligned>
 800c34c:	3001      	adds	r0, #1
 800c34e:	d03a      	beq.n	800c3c6 <_malloc_r+0xea>
 800c350:	6823      	ldr	r3, [r4, #0]
 800c352:	442b      	add	r3, r5
 800c354:	6023      	str	r3, [r4, #0]
 800c356:	f8d8 3000 	ldr.w	r3, [r8]
 800c35a:	685a      	ldr	r2, [r3, #4]
 800c35c:	bb62      	cbnz	r2, 800c3b8 <_malloc_r+0xdc>
 800c35e:	f8c8 7000 	str.w	r7, [r8]
 800c362:	e00f      	b.n	800c384 <_malloc_r+0xa8>
 800c364:	6822      	ldr	r2, [r4, #0]
 800c366:	1b52      	subs	r2, r2, r5
 800c368:	d420      	bmi.n	800c3ac <_malloc_r+0xd0>
 800c36a:	2a0b      	cmp	r2, #11
 800c36c:	d917      	bls.n	800c39e <_malloc_r+0xc2>
 800c36e:	1961      	adds	r1, r4, r5
 800c370:	42a3      	cmp	r3, r4
 800c372:	6025      	str	r5, [r4, #0]
 800c374:	bf18      	it	ne
 800c376:	6059      	strne	r1, [r3, #4]
 800c378:	6863      	ldr	r3, [r4, #4]
 800c37a:	bf08      	it	eq
 800c37c:	f8c8 1000 	streq.w	r1, [r8]
 800c380:	5162      	str	r2, [r4, r5]
 800c382:	604b      	str	r3, [r1, #4]
 800c384:	4630      	mov	r0, r6
 800c386:	f000 f82f 	bl	800c3e8 <__malloc_unlock>
 800c38a:	f104 000b 	add.w	r0, r4, #11
 800c38e:	1d23      	adds	r3, r4, #4
 800c390:	f020 0007 	bic.w	r0, r0, #7
 800c394:	1ac2      	subs	r2, r0, r3
 800c396:	bf1c      	itt	ne
 800c398:	1a1b      	subne	r3, r3, r0
 800c39a:	50a3      	strne	r3, [r4, r2]
 800c39c:	e7af      	b.n	800c2fe <_malloc_r+0x22>
 800c39e:	6862      	ldr	r2, [r4, #4]
 800c3a0:	42a3      	cmp	r3, r4
 800c3a2:	bf0c      	ite	eq
 800c3a4:	f8c8 2000 	streq.w	r2, [r8]
 800c3a8:	605a      	strne	r2, [r3, #4]
 800c3aa:	e7eb      	b.n	800c384 <_malloc_r+0xa8>
 800c3ac:	4623      	mov	r3, r4
 800c3ae:	6864      	ldr	r4, [r4, #4]
 800c3b0:	e7ae      	b.n	800c310 <_malloc_r+0x34>
 800c3b2:	463c      	mov	r4, r7
 800c3b4:	687f      	ldr	r7, [r7, #4]
 800c3b6:	e7b6      	b.n	800c326 <_malloc_r+0x4a>
 800c3b8:	461a      	mov	r2, r3
 800c3ba:	685b      	ldr	r3, [r3, #4]
 800c3bc:	42a3      	cmp	r3, r4
 800c3be:	d1fb      	bne.n	800c3b8 <_malloc_r+0xdc>
 800c3c0:	2300      	movs	r3, #0
 800c3c2:	6053      	str	r3, [r2, #4]
 800c3c4:	e7de      	b.n	800c384 <_malloc_r+0xa8>
 800c3c6:	230c      	movs	r3, #12
 800c3c8:	6033      	str	r3, [r6, #0]
 800c3ca:	4630      	mov	r0, r6
 800c3cc:	f000 f80c 	bl	800c3e8 <__malloc_unlock>
 800c3d0:	e794      	b.n	800c2fc <_malloc_r+0x20>
 800c3d2:	6005      	str	r5, [r0, #0]
 800c3d4:	e7d6      	b.n	800c384 <_malloc_r+0xa8>
 800c3d6:	bf00      	nop
 800c3d8:	20001790 	.word	0x20001790

0800c3dc <__malloc_lock>:
 800c3dc:	4801      	ldr	r0, [pc, #4]	@ (800c3e4 <__malloc_lock+0x8>)
 800c3de:	f7ff b912 	b.w	800b606 <__retarget_lock_acquire_recursive>
 800c3e2:	bf00      	nop
 800c3e4:	20001788 	.word	0x20001788

0800c3e8 <__malloc_unlock>:
 800c3e8:	4801      	ldr	r0, [pc, #4]	@ (800c3f0 <__malloc_unlock+0x8>)
 800c3ea:	f7ff b90d 	b.w	800b608 <__retarget_lock_release_recursive>
 800c3ee:	bf00      	nop
 800c3f0:	20001788 	.word	0x20001788

0800c3f4 <_Balloc>:
 800c3f4:	b570      	push	{r4, r5, r6, lr}
 800c3f6:	69c6      	ldr	r6, [r0, #28]
 800c3f8:	4604      	mov	r4, r0
 800c3fa:	460d      	mov	r5, r1
 800c3fc:	b976      	cbnz	r6, 800c41c <_Balloc+0x28>
 800c3fe:	2010      	movs	r0, #16
 800c400:	f7ff ff42 	bl	800c288 <malloc>
 800c404:	4602      	mov	r2, r0
 800c406:	61e0      	str	r0, [r4, #28]
 800c408:	b920      	cbnz	r0, 800c414 <_Balloc+0x20>
 800c40a:	4b18      	ldr	r3, [pc, #96]	@ (800c46c <_Balloc+0x78>)
 800c40c:	4818      	ldr	r0, [pc, #96]	@ (800c470 <_Balloc+0x7c>)
 800c40e:	216b      	movs	r1, #107	@ 0x6b
 800c410:	f000 fd98 	bl	800cf44 <__assert_func>
 800c414:	e9c0 6601 	strd	r6, r6, [r0, #4]
 800c418:	6006      	str	r6, [r0, #0]
 800c41a:	60c6      	str	r6, [r0, #12]
 800c41c:	69e6      	ldr	r6, [r4, #28]
 800c41e:	68f3      	ldr	r3, [r6, #12]
 800c420:	b183      	cbz	r3, 800c444 <_Balloc+0x50>
 800c422:	69e3      	ldr	r3, [r4, #28]
 800c424:	68db      	ldr	r3, [r3, #12]
 800c426:	f853 0025 	ldr.w	r0, [r3, r5, lsl #2]
 800c42a:	b9b8      	cbnz	r0, 800c45c <_Balloc+0x68>
 800c42c:	2101      	movs	r1, #1
 800c42e:	fa01 f605 	lsl.w	r6, r1, r5
 800c432:	1d72      	adds	r2, r6, #5
 800c434:	0092      	lsls	r2, r2, #2
 800c436:	4620      	mov	r0, r4
 800c438:	f000 fda2 	bl	800cf80 <_calloc_r>
 800c43c:	b160      	cbz	r0, 800c458 <_Balloc+0x64>
 800c43e:	e9c0 5601 	strd	r5, r6, [r0, #4]
 800c442:	e00e      	b.n	800c462 <_Balloc+0x6e>
 800c444:	2221      	movs	r2, #33	@ 0x21
 800c446:	2104      	movs	r1, #4
 800c448:	4620      	mov	r0, r4
 800c44a:	f000 fd99 	bl	800cf80 <_calloc_r>
 800c44e:	69e3      	ldr	r3, [r4, #28]
 800c450:	60f0      	str	r0, [r6, #12]
 800c452:	68db      	ldr	r3, [r3, #12]
 800c454:	2b00      	cmp	r3, #0
 800c456:	d1e4      	bne.n	800c422 <_Balloc+0x2e>
 800c458:	2000      	movs	r0, #0
 800c45a:	bd70      	pop	{r4, r5, r6, pc}
 800c45c:	6802      	ldr	r2, [r0, #0]
 800c45e:	f843 2025 	str.w	r2, [r3, r5, lsl #2]
 800c462:	2300      	movs	r3, #0
 800c464:	e9c0 3303 	strd	r3, r3, [r0, #12]
 800c468:	e7f7      	b.n	800c45a <_Balloc+0x66>
 800c46a:	bf00      	nop
 800c46c:	0800df59 	.word	0x0800df59
 800c470:	0800dfd9 	.word	0x0800dfd9

0800c474 <_Bfree>:
 800c474:	b570      	push	{r4, r5, r6, lr}
 800c476:	69c6      	ldr	r6, [r0, #28]
 800c478:	4605      	mov	r5, r0
 800c47a:	460c      	mov	r4, r1
 800c47c:	b976      	cbnz	r6, 800c49c <_Bfree+0x28>
 800c47e:	2010      	movs	r0, #16
 800c480:	f7ff ff02 	bl	800c288 <malloc>
 800c484:	4602      	mov	r2, r0
 800c486:	61e8      	str	r0, [r5, #28]
 800c488:	b920      	cbnz	r0, 800c494 <_Bfree+0x20>
 800c48a:	4b09      	ldr	r3, [pc, #36]	@ (800c4b0 <_Bfree+0x3c>)
 800c48c:	4809      	ldr	r0, [pc, #36]	@ (800c4b4 <_Bfree+0x40>)
 800c48e:	218f      	movs	r1, #143	@ 0x8f
 800c490:	f000 fd58 	bl	800cf44 <__assert_func>
 800c494:	e9c0 6601 	strd	r6, r6, [r0, #4]
 800c498:	6006      	str	r6, [r0, #0]
 800c49a:	60c6      	str	r6, [r0, #12]
 800c49c:	b13c      	cbz	r4, 800c4ae <_Bfree+0x3a>
 800c49e:	69eb      	ldr	r3, [r5, #28]
 800c4a0:	6862      	ldr	r2, [r4, #4]
 800c4a2:	68db      	ldr	r3, [r3, #12]
 800c4a4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800c4a8:	6021      	str	r1, [r4, #0]
 800c4aa:	f843 4022 	str.w	r4, [r3, r2, lsl #2]
 800c4ae:	bd70      	pop	{r4, r5, r6, pc}
 800c4b0:	0800df59 	.word	0x0800df59
 800c4b4:	0800dfd9 	.word	0x0800dfd9

0800c4b8 <__multadd>:
 800c4b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800c4bc:	690d      	ldr	r5, [r1, #16]
 800c4be:	4607      	mov	r7, r0
 800c4c0:	460c      	mov	r4, r1
 800c4c2:	461e      	mov	r6, r3
 800c4c4:	f101 0c14 	add.w	ip, r1, #20
 800c4c8:	2000      	movs	r0, #0
 800c4ca:	f8dc 3000 	ldr.w	r3, [ip]
 800c4ce:	b299      	uxth	r1, r3
 800c4d0:	fb02 6101 	mla	r1, r2, r1, r6
 800c4d4:	0c1e      	lsrs	r6, r3, #16
 800c4d6:	0c0b      	lsrs	r3, r1, #16
 800c4d8:	fb02 3306 	mla	r3, r2, r6, r3
 800c4dc:	b289      	uxth	r1, r1
 800c4de:	3001      	adds	r0, #1
 800c4e0:	eb01 4103 	add.w	r1, r1, r3, lsl #16
 800c4e4:	4285      	cmp	r5, r0
 800c4e6:	f84c 1b04 	str.w	r1, [ip], #4
 800c4ea:	ea4f 4613 	mov.w	r6, r3, lsr #16
 800c4ee:	dcec      	bgt.n	800c4ca <__multadd+0x12>
 800c4f0:	b30e      	cbz	r6, 800c536 <__multadd+0x7e>
 800c4f2:	68a3      	ldr	r3, [r4, #8]
 800c4f4:	42ab      	cmp	r3, r5
 800c4f6:	dc19      	bgt.n	800c52c <__multadd+0x74>
 800c4f8:	6861      	ldr	r1, [r4, #4]
 800c4fa:	4638      	mov	r0, r7
 800c4fc:	3101      	adds	r1, #1
 800c4fe:	f7ff ff79 	bl	800c3f4 <_Balloc>
 800c502:	4680      	mov	r8, r0
 800c504:	b928      	cbnz	r0, 800c512 <__multadd+0x5a>
 800c506:	4602      	mov	r2, r0
 800c508:	4b0c      	ldr	r3, [pc, #48]	@ (800c53c <__multadd+0x84>)
 800c50a:	480d      	ldr	r0, [pc, #52]	@ (800c540 <__multadd+0x88>)
 800c50c:	21ba      	movs	r1, #186	@ 0xba
 800c50e:	f000 fd19 	bl	800cf44 <__assert_func>
 800c512:	6922      	ldr	r2, [r4, #16]
 800c514:	3202      	adds	r2, #2
 800c516:	f104 010c 	add.w	r1, r4, #12
 800c51a:	0092      	lsls	r2, r2, #2
 800c51c:	300c      	adds	r0, #12
 800c51e:	f7ff f874 	bl	800b60a <memcpy>
 800c522:	4621      	mov	r1, r4
 800c524:	4638      	mov	r0, r7
 800c526:	f7ff ffa5 	bl	800c474 <_Bfree>
 800c52a:	4644      	mov	r4, r8
 800c52c:	eb04 0385 	add.w	r3, r4, r5, lsl #2
 800c530:	3501      	adds	r5, #1
 800c532:	615e      	str	r6, [r3, #20]
 800c534:	6125      	str	r5, [r4, #16]
 800c536:	4620      	mov	r0, r4
 800c538:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800c53c:	0800dfc8 	.word	0x0800dfc8
 800c540:	0800dfd9 	.word	0x0800dfd9

0800c544 <__hi0bits>:
 800c544:	f5b0 3f80 	cmp.w	r0, #65536	@ 0x10000
 800c548:	4603      	mov	r3, r0
 800c54a:	bf36      	itet	cc
 800c54c:	0403      	lslcc	r3, r0, #16
 800c54e:	2000      	movcs	r0, #0
 800c550:	2010      	movcc	r0, #16
 800c552:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 800c556:	bf3c      	itt	cc
 800c558:	021b      	lslcc	r3, r3, #8
 800c55a:	3008      	addcc	r0, #8
 800c55c:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
 800c560:	bf3c      	itt	cc
 800c562:	011b      	lslcc	r3, r3, #4
 800c564:	3004      	addcc	r0, #4
 800c566:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 800c56a:	bf3c      	itt	cc
 800c56c:	009b      	lslcc	r3, r3, #2
 800c56e:	3002      	addcc	r0, #2
 800c570:	2b00      	cmp	r3, #0
 800c572:	db05      	blt.n	800c580 <__hi0bits+0x3c>
 800c574:	f013 4f80 	tst.w	r3, #1073741824	@ 0x40000000
 800c578:	f100 0001 	add.w	r0, r0, #1
 800c57c:	bf08      	it	eq
 800c57e:	2020      	moveq	r0, #32
 800c580:	4770      	bx	lr

0800c582 <__lo0bits>:
 800c582:	6803      	ldr	r3, [r0, #0]
 800c584:	4602      	mov	r2, r0
 800c586:	f013 0007 	ands.w	r0, r3, #7
 800c58a:	d00b      	beq.n	800c5a4 <__lo0bits+0x22>
 800c58c:	07d9      	lsls	r1, r3, #31
 800c58e:	d421      	bmi.n	800c5d4 <__lo0bits+0x52>
 800c590:	0798      	lsls	r0, r3, #30
 800c592:	bf49      	itett	mi
 800c594:	085b      	lsrmi	r3, r3, #1
 800c596:	089b      	lsrpl	r3, r3, #2
 800c598:	2001      	movmi	r0, #1
 800c59a:	6013      	strmi	r3, [r2, #0]
 800c59c:	bf5c      	itt	pl
 800c59e:	6013      	strpl	r3, [r2, #0]
 800c5a0:	2002      	movpl	r0, #2
 800c5a2:	4770      	bx	lr
 800c5a4:	b299      	uxth	r1, r3
 800c5a6:	b909      	cbnz	r1, 800c5ac <__lo0bits+0x2a>
 800c5a8:	0c1b      	lsrs	r3, r3, #16
 800c5aa:	2010      	movs	r0, #16
 800c5ac:	b2d9      	uxtb	r1, r3
 800c5ae:	b909      	cbnz	r1, 800c5b4 <__lo0bits+0x32>
 800c5b0:	3008      	adds	r0, #8
 800c5b2:	0a1b      	lsrs	r3, r3, #8
 800c5b4:	0719      	lsls	r1, r3, #28
 800c5b6:	bf04      	itt	eq
 800c5b8:	091b      	lsreq	r3, r3, #4
 800c5ba:	3004      	addeq	r0, #4
 800c5bc:	0799      	lsls	r1, r3, #30
 800c5be:	bf04      	itt	eq
 800c5c0:	089b      	lsreq	r3, r3, #2
 800c5c2:	3002      	addeq	r0, #2
 800c5c4:	07d9      	lsls	r1, r3, #31
 800c5c6:	d403      	bmi.n	800c5d0 <__lo0bits+0x4e>
 800c5c8:	085b      	lsrs	r3, r3, #1
 800c5ca:	f100 0001 	add.w	r0, r0, #1
 800c5ce:	d003      	beq.n	800c5d8 <__lo0bits+0x56>
 800c5d0:	6013      	str	r3, [r2, #0]
 800c5d2:	4770      	bx	lr
 800c5d4:	2000      	movs	r0, #0
 800c5d6:	4770      	bx	lr
 800c5d8:	2020      	movs	r0, #32
 800c5da:	4770      	bx	lr

0800c5dc <__i2b>:
 800c5dc:	b510      	push	{r4, lr}
 800c5de:	460c      	mov	r4, r1
 800c5e0:	2101      	movs	r1, #1
 800c5e2:	f7ff ff07 	bl	800c3f4 <_Balloc>
 800c5e6:	4602      	mov	r2, r0
 800c5e8:	b928      	cbnz	r0, 800c5f6 <__i2b+0x1a>
 800c5ea:	4b05      	ldr	r3, [pc, #20]	@ (800c600 <__i2b+0x24>)
 800c5ec:	4805      	ldr	r0, [pc, #20]	@ (800c604 <__i2b+0x28>)
 800c5ee:	f240 1145 	movw	r1, #325	@ 0x145
 800c5f2:	f000 fca7 	bl	800cf44 <__assert_func>
 800c5f6:	2301      	movs	r3, #1
 800c5f8:	6144      	str	r4, [r0, #20]
 800c5fa:	6103      	str	r3, [r0, #16]
 800c5fc:	bd10      	pop	{r4, pc}
 800c5fe:	bf00      	nop
 800c600:	0800dfc8 	.word	0x0800dfc8
 800c604:	0800dfd9 	.word	0x0800dfd9

0800c608 <__multiply>:
 800c608:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800c60c:	4617      	mov	r7, r2
 800c60e:	690a      	ldr	r2, [r1, #16]
 800c610:	693b      	ldr	r3, [r7, #16]
 800c612:	429a      	cmp	r2, r3
 800c614:	bfa8      	it	ge
 800c616:	463b      	movge	r3, r7
 800c618:	4689      	mov	r9, r1
 800c61a:	bfa4      	itt	ge
 800c61c:	460f      	movge	r7, r1
 800c61e:	4699      	movge	r9, r3
 800c620:	693d      	ldr	r5, [r7, #16]
 800c622:	f8d9 a010 	ldr.w	sl, [r9, #16]
 800c626:	68bb      	ldr	r3, [r7, #8]
 800c628:	6879      	ldr	r1, [r7, #4]
 800c62a:	eb05 060a 	add.w	r6, r5, sl
 800c62e:	42b3      	cmp	r3, r6
 800c630:	b085      	sub	sp, #20
 800c632:	bfb8      	it	lt
 800c634:	3101      	addlt	r1, #1
 800c636:	f7ff fedd 	bl	800c3f4 <_Balloc>
 800c63a:	b930      	cbnz	r0, 800c64a <__multiply+0x42>
 800c63c:	4602      	mov	r2, r0
 800c63e:	4b41      	ldr	r3, [pc, #260]	@ (800c744 <__multiply+0x13c>)
 800c640:	4841      	ldr	r0, [pc, #260]	@ (800c748 <__multiply+0x140>)
 800c642:	f44f 71b1 	mov.w	r1, #354	@ 0x162
 800c646:	f000 fc7d 	bl	800cf44 <__assert_func>
 800c64a:	f100 0414 	add.w	r4, r0, #20
 800c64e:	eb04 0e86 	add.w	lr, r4, r6, lsl #2
 800c652:	4623      	mov	r3, r4
 800c654:	2200      	movs	r2, #0
 800c656:	4573      	cmp	r3, lr
 800c658:	d320      	bcc.n	800c69c <__multiply+0x94>
 800c65a:	f107 0814 	add.w	r8, r7, #20
 800c65e:	f109 0114 	add.w	r1, r9, #20
 800c662:	eb08 0585 	add.w	r5, r8, r5, lsl #2
 800c666:	eb01 038a 	add.w	r3, r1, sl, lsl #2
 800c66a:	9302      	str	r3, [sp, #8]
 800c66c:	1beb      	subs	r3, r5, r7
 800c66e:	3b15      	subs	r3, #21
 800c670:	f023 0303 	bic.w	r3, r3, #3
 800c674:	3304      	adds	r3, #4
 800c676:	3715      	adds	r7, #21
 800c678:	42bd      	cmp	r5, r7
 800c67a:	bf38      	it	cc
 800c67c:	2304      	movcc	r3, #4
 800c67e:	9301      	str	r3, [sp, #4]
 800c680:	9b02      	ldr	r3, [sp, #8]
 800c682:	9103      	str	r1, [sp, #12]
 800c684:	428b      	cmp	r3, r1
 800c686:	d80c      	bhi.n	800c6a2 <__multiply+0x9a>
 800c688:	2e00      	cmp	r6, #0
 800c68a:	dd03      	ble.n	800c694 <__multiply+0x8c>
 800c68c:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800c690:	2b00      	cmp	r3, #0
 800c692:	d055      	beq.n	800c740 <__multiply+0x138>
 800c694:	6106      	str	r6, [r0, #16]
 800c696:	b005      	add	sp, #20
 800c698:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800c69c:	f843 2b04 	str.w	r2, [r3], #4
 800c6a0:	e7d9      	b.n	800c656 <__multiply+0x4e>
 800c6a2:	f8b1 a000 	ldrh.w	sl, [r1]
 800c6a6:	f1ba 0f00 	cmp.w	sl, #0
 800c6aa:	d01f      	beq.n	800c6ec <__multiply+0xe4>
 800c6ac:	46c4      	mov	ip, r8
 800c6ae:	46a1      	mov	r9, r4
 800c6b0:	2700      	movs	r7, #0
 800c6b2:	f85c 2b04 	ldr.w	r2, [ip], #4
 800c6b6:	f8d9 3000 	ldr.w	r3, [r9]
 800c6ba:	fa1f fb82 	uxth.w	fp, r2
 800c6be:	b29b      	uxth	r3, r3
 800c6c0:	fb0a 330b 	mla	r3, sl, fp, r3
 800c6c4:	443b      	add	r3, r7
 800c6c6:	f8d9 7000 	ldr.w	r7, [r9]
 800c6ca:	0c12      	lsrs	r2, r2, #16
 800c6cc:	0c3f      	lsrs	r7, r7, #16
 800c6ce:	fb0a 7202 	mla	r2, sl, r2, r7
 800c6d2:	eb02 4213 	add.w	r2, r2, r3, lsr #16
 800c6d6:	b29b      	uxth	r3, r3
 800c6d8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 800c6dc:	4565      	cmp	r5, ip
 800c6de:	f849 3b04 	str.w	r3, [r9], #4
 800c6e2:	ea4f 4712 	mov.w	r7, r2, lsr #16
 800c6e6:	d8e4      	bhi.n	800c6b2 <__multiply+0xaa>
 800c6e8:	9b01      	ldr	r3, [sp, #4]
 800c6ea:	50e7      	str	r7, [r4, r3]
 800c6ec:	9b03      	ldr	r3, [sp, #12]
 800c6ee:	f8b3 9002 	ldrh.w	r9, [r3, #2]
 800c6f2:	3104      	adds	r1, #4
 800c6f4:	f1b9 0f00 	cmp.w	r9, #0
 800c6f8:	d020      	beq.n	800c73c <__multiply+0x134>
 800c6fa:	6823      	ldr	r3, [r4, #0]
 800c6fc:	4647      	mov	r7, r8
 800c6fe:	46a4      	mov	ip, r4
 800c700:	f04f 0a00 	mov.w	sl, #0
 800c704:	f8b7 b000 	ldrh.w	fp, [r7]
 800c708:	f8bc 2002 	ldrh.w	r2, [ip, #2]
 800c70c:	fb09 220b 	mla	r2, r9, fp, r2
 800c710:	4452      	add	r2, sl
 800c712:	b29b      	uxth	r3, r3
 800c714:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 800c718:	f84c 3b04 	str.w	r3, [ip], #4
 800c71c:	f857 3b04 	ldr.w	r3, [r7], #4
 800c720:	ea4f 4a13 	mov.w	sl, r3, lsr #16
 800c724:	f8bc 3000 	ldrh.w	r3, [ip]
 800c728:	fb09 330a 	mla	r3, r9, sl, r3
 800c72c:	eb03 4312 	add.w	r3, r3, r2, lsr #16
 800c730:	42bd      	cmp	r5, r7
 800c732:	ea4f 4a13 	mov.w	sl, r3, lsr #16
 800c736:	d8e5      	bhi.n	800c704 <__multiply+0xfc>
 800c738:	9a01      	ldr	r2, [sp, #4]
 800c73a:	50a3      	str	r3, [r4, r2]
 800c73c:	3404      	adds	r4, #4
 800c73e:	e79f      	b.n	800c680 <__multiply+0x78>
 800c740:	3e01      	subs	r6, #1
 800c742:	e7a1      	b.n	800c688 <__multiply+0x80>
 800c744:	0800dfc8 	.word	0x0800dfc8
 800c748:	0800dfd9 	.word	0x0800dfd9

0800c74c <__pow5mult>:
 800c74c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800c750:	4615      	mov	r5, r2
 800c752:	f012 0203 	ands.w	r2, r2, #3
 800c756:	4607      	mov	r7, r0
 800c758:	460e      	mov	r6, r1
 800c75a:	d007      	beq.n	800c76c <__pow5mult+0x20>
 800c75c:	4c25      	ldr	r4, [pc, #148]	@ (800c7f4 <__pow5mult+0xa8>)
 800c75e:	3a01      	subs	r2, #1
 800c760:	2300      	movs	r3, #0
 800c762:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 800c766:	f7ff fea7 	bl	800c4b8 <__multadd>
 800c76a:	4606      	mov	r6, r0
 800c76c:	10ad      	asrs	r5, r5, #2
 800c76e:	d03d      	beq.n	800c7ec <__pow5mult+0xa0>
 800c770:	69fc      	ldr	r4, [r7, #28]
 800c772:	b97c      	cbnz	r4, 800c794 <__pow5mult+0x48>
 800c774:	2010      	movs	r0, #16
 800c776:	f7ff fd87 	bl	800c288 <malloc>
 800c77a:	4602      	mov	r2, r0
 800c77c:	61f8      	str	r0, [r7, #28]
 800c77e:	b928      	cbnz	r0, 800c78c <__pow5mult+0x40>
 800c780:	4b1d      	ldr	r3, [pc, #116]	@ (800c7f8 <__pow5mult+0xac>)
 800c782:	481e      	ldr	r0, [pc, #120]	@ (800c7fc <__pow5mult+0xb0>)
 800c784:	f240 11b3 	movw	r1, #435	@ 0x1b3
 800c788:	f000 fbdc 	bl	800cf44 <__assert_func>
 800c78c:	e9c0 4401 	strd	r4, r4, [r0, #4]
 800c790:	6004      	str	r4, [r0, #0]
 800c792:	60c4      	str	r4, [r0, #12]
 800c794:	f8d7 801c 	ldr.w	r8, [r7, #28]
 800c798:	f8d8 4008 	ldr.w	r4, [r8, #8]
 800c79c:	b94c      	cbnz	r4, 800c7b2 <__pow5mult+0x66>
 800c79e:	f240 2171 	movw	r1, #625	@ 0x271
 800c7a2:	4638      	mov	r0, r7
 800c7a4:	f7ff ff1a 	bl	800c5dc <__i2b>
 800c7a8:	2300      	movs	r3, #0
 800c7aa:	f8c8 0008 	str.w	r0, [r8, #8]
 800c7ae:	4604      	mov	r4, r0
 800c7b0:	6003      	str	r3, [r0, #0]
 800c7b2:	f04f 0900 	mov.w	r9, #0
 800c7b6:	07eb      	lsls	r3, r5, #31
 800c7b8:	d50a      	bpl.n	800c7d0 <__pow5mult+0x84>
 800c7ba:	4631      	mov	r1, r6
 800c7bc:	4622      	mov	r2, r4
 800c7be:	4638      	mov	r0, r7
 800c7c0:	f7ff ff22 	bl	800c608 <__multiply>
 800c7c4:	4631      	mov	r1, r6
 800c7c6:	4680      	mov	r8, r0
 800c7c8:	4638      	mov	r0, r7
 800c7ca:	f7ff fe53 	bl	800c474 <_Bfree>
 800c7ce:	4646      	mov	r6, r8
 800c7d0:	106d      	asrs	r5, r5, #1
 800c7d2:	d00b      	beq.n	800c7ec <__pow5mult+0xa0>
 800c7d4:	6820      	ldr	r0, [r4, #0]
 800c7d6:	b938      	cbnz	r0, 800c7e8 <__pow5mult+0x9c>
 800c7d8:	4622      	mov	r2, r4
 800c7da:	4621      	mov	r1, r4
 800c7dc:	4638      	mov	r0, r7
 800c7de:	f7ff ff13 	bl	800c608 <__multiply>
 800c7e2:	6020      	str	r0, [r4, #0]
 800c7e4:	f8c0 9000 	str.w	r9, [r0]
 800c7e8:	4604      	mov	r4, r0
 800c7ea:	e7e4      	b.n	800c7b6 <__pow5mult+0x6a>
 800c7ec:	4630      	mov	r0, r6
 800c7ee:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800c7f2:	bf00      	nop
 800c7f4:	0800e08c 	.word	0x0800e08c
 800c7f8:	0800df59 	.word	0x0800df59
 800c7fc:	0800dfd9 	.word	0x0800dfd9

0800c800 <__lshift>:
 800c800:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800c804:	460c      	mov	r4, r1
 800c806:	6849      	ldr	r1, [r1, #4]
 800c808:	6923      	ldr	r3, [r4, #16]
 800c80a:	eb03 1862 	add.w	r8, r3, r2, asr #5
 800c80e:	68a3      	ldr	r3, [r4, #8]
 800c810:	4607      	mov	r7, r0
 800c812:	4691      	mov	r9, r2
 800c814:	ea4f 1a62 	mov.w	sl, r2, asr #5
 800c818:	f108 0601 	add.w	r6, r8, #1
 800c81c:	42b3      	cmp	r3, r6
 800c81e:	db0b      	blt.n	800c838 <__lshift+0x38>
 800c820:	4638      	mov	r0, r7
 800c822:	f7ff fde7 	bl	800c3f4 <_Balloc>
 800c826:	4605      	mov	r5, r0
 800c828:	b948      	cbnz	r0, 800c83e <__lshift+0x3e>
 800c82a:	4602      	mov	r2, r0
 800c82c:	4b28      	ldr	r3, [pc, #160]	@ (800c8d0 <__lshift+0xd0>)
 800c82e:	4829      	ldr	r0, [pc, #164]	@ (800c8d4 <__lshift+0xd4>)
 800c830:	f44f 71ef 	mov.w	r1, #478	@ 0x1de
 800c834:	f000 fb86 	bl	800cf44 <__assert_func>
 800c838:	3101      	adds	r1, #1
 800c83a:	005b      	lsls	r3, r3, #1
 800c83c:	e7ee      	b.n	800c81c <__lshift+0x1c>
 800c83e:	2300      	movs	r3, #0
 800c840:	f100 0114 	add.w	r1, r0, #20
 800c844:	f100 0210 	add.w	r2, r0, #16
 800c848:	4618      	mov	r0, r3
 800c84a:	4553      	cmp	r3, sl
 800c84c:	db33      	blt.n	800c8b6 <__lshift+0xb6>
 800c84e:	6920      	ldr	r0, [r4, #16]
 800c850:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
 800c854:	f104 0314 	add.w	r3, r4, #20
 800c858:	f019 091f 	ands.w	r9, r9, #31
 800c85c:	eb01 018a 	add.w	r1, r1, sl, lsl #2
 800c860:	eb03 0c80 	add.w	ip, r3, r0, lsl #2
 800c864:	d02b      	beq.n	800c8be <__lshift+0xbe>
 800c866:	f1c9 0e20 	rsb	lr, r9, #32
 800c86a:	468a      	mov	sl, r1
 800c86c:	2200      	movs	r2, #0
 800c86e:	6818      	ldr	r0, [r3, #0]
 800c870:	fa00 f009 	lsl.w	r0, r0, r9
 800c874:	4310      	orrs	r0, r2
 800c876:	f84a 0b04 	str.w	r0, [sl], #4
 800c87a:	f853 2b04 	ldr.w	r2, [r3], #4
 800c87e:	459c      	cmp	ip, r3
 800c880:	fa22 f20e 	lsr.w	r2, r2, lr
 800c884:	d8f3      	bhi.n	800c86e <__lshift+0x6e>
 800c886:	ebac 0304 	sub.w	r3, ip, r4
 800c88a:	3b15      	subs	r3, #21
 800c88c:	f023 0303 	bic.w	r3, r3, #3
 800c890:	3304      	adds	r3, #4
 800c892:	f104 0015 	add.w	r0, r4, #21
 800c896:	4560      	cmp	r0, ip
 800c898:	bf88      	it	hi
 800c89a:	2304      	movhi	r3, #4
 800c89c:	50ca      	str	r2, [r1, r3]
 800c89e:	b10a      	cbz	r2, 800c8a4 <__lshift+0xa4>
 800c8a0:	f108 0602 	add.w	r6, r8, #2
 800c8a4:	3e01      	subs	r6, #1
 800c8a6:	4638      	mov	r0, r7
 800c8a8:	612e      	str	r6, [r5, #16]
 800c8aa:	4621      	mov	r1, r4
 800c8ac:	f7ff fde2 	bl	800c474 <_Bfree>
 800c8b0:	4628      	mov	r0, r5
 800c8b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800c8b6:	f842 0f04 	str.w	r0, [r2, #4]!
 800c8ba:	3301      	adds	r3, #1
 800c8bc:	e7c5      	b.n	800c84a <__lshift+0x4a>
 800c8be:	3904      	subs	r1, #4
 800c8c0:	f853 2b04 	ldr.w	r2, [r3], #4
 800c8c4:	f841 2f04 	str.w	r2, [r1, #4]!
 800c8c8:	459c      	cmp	ip, r3
 800c8ca:	d8f9      	bhi.n	800c8c0 <__lshift+0xc0>
 800c8cc:	e7ea      	b.n	800c8a4 <__lshift+0xa4>
 800c8ce:	bf00      	nop
 800c8d0:	0800dfc8 	.word	0x0800dfc8
 800c8d4:	0800dfd9 	.word	0x0800dfd9

0800c8d8 <__mcmp>:
 800c8d8:	690a      	ldr	r2, [r1, #16]
 800c8da:	4603      	mov	r3, r0
 800c8dc:	6900      	ldr	r0, [r0, #16]
 800c8de:	1a80      	subs	r0, r0, r2
 800c8e0:	b530      	push	{r4, r5, lr}
 800c8e2:	d10e      	bne.n	800c902 <__mcmp+0x2a>
 800c8e4:	3314      	adds	r3, #20
 800c8e6:	3114      	adds	r1, #20
 800c8e8:	eb03 0482 	add.w	r4, r3, r2, lsl #2
 800c8ec:	eb01 0182 	add.w	r1, r1, r2, lsl #2
 800c8f0:	f854 5d04 	ldr.w	r5, [r4, #-4]!
 800c8f4:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800c8f8:	4295      	cmp	r5, r2
 800c8fa:	d003      	beq.n	800c904 <__mcmp+0x2c>
 800c8fc:	d205      	bcs.n	800c90a <__mcmp+0x32>
 800c8fe:	f04f 30ff 	mov.w	r0, #4294967295
 800c902:	bd30      	pop	{r4, r5, pc}
 800c904:	42a3      	cmp	r3, r4
 800c906:	d3f3      	bcc.n	800c8f0 <__mcmp+0x18>
 800c908:	e7fb      	b.n	800c902 <__mcmp+0x2a>
 800c90a:	2001      	movs	r0, #1
 800c90c:	e7f9      	b.n	800c902 <__mcmp+0x2a>
	...

0800c910 <__mdiff>:
 800c910:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800c914:	4689      	mov	r9, r1
 800c916:	4606      	mov	r6, r0
 800c918:	4611      	mov	r1, r2
 800c91a:	4648      	mov	r0, r9
 800c91c:	4614      	mov	r4, r2
 800c91e:	f7ff ffdb 	bl	800c8d8 <__mcmp>
 800c922:	1e05      	subs	r5, r0, #0
 800c924:	d112      	bne.n	800c94c <__mdiff+0x3c>
 800c926:	4629      	mov	r1, r5
 800c928:	4630      	mov	r0, r6
 800c92a:	f7ff fd63 	bl	800c3f4 <_Balloc>
 800c92e:	4602      	mov	r2, r0
 800c930:	b928      	cbnz	r0, 800c93e <__mdiff+0x2e>
 800c932:	4b3f      	ldr	r3, [pc, #252]	@ (800ca30 <__mdiff+0x120>)
 800c934:	f240 2137 	movw	r1, #567	@ 0x237
 800c938:	483e      	ldr	r0, [pc, #248]	@ (800ca34 <__mdiff+0x124>)
 800c93a:	f000 fb03 	bl	800cf44 <__assert_func>
 800c93e:	2301      	movs	r3, #1
 800c940:	e9c0 3504 	strd	r3, r5, [r0, #16]
 800c944:	4610      	mov	r0, r2
 800c946:	b003      	add	sp, #12
 800c948:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800c94c:	bfbc      	itt	lt
 800c94e:	464b      	movlt	r3, r9
 800c950:	46a1      	movlt	r9, r4
 800c952:	4630      	mov	r0, r6
 800c954:	f8d9 1004 	ldr.w	r1, [r9, #4]
 800c958:	bfba      	itte	lt
 800c95a:	461c      	movlt	r4, r3
 800c95c:	2501      	movlt	r5, #1
 800c95e:	2500      	movge	r5, #0
 800c960:	f7ff fd48 	bl	800c3f4 <_Balloc>
 800c964:	4602      	mov	r2, r0
 800c966:	b918      	cbnz	r0, 800c970 <__mdiff+0x60>
 800c968:	4b31      	ldr	r3, [pc, #196]	@ (800ca30 <__mdiff+0x120>)
 800c96a:	f240 2145 	movw	r1, #581	@ 0x245
 800c96e:	e7e3      	b.n	800c938 <__mdiff+0x28>
 800c970:	f8d9 7010 	ldr.w	r7, [r9, #16]
 800c974:	6926      	ldr	r6, [r4, #16]
 800c976:	60c5      	str	r5, [r0, #12]
 800c978:	f109 0310 	add.w	r3, r9, #16
 800c97c:	f109 0514 	add.w	r5, r9, #20
 800c980:	f104 0e14 	add.w	lr, r4, #20
 800c984:	f100 0b14 	add.w	fp, r0, #20
 800c988:	eb05 0887 	add.w	r8, r5, r7, lsl #2
 800c98c:	eb0e 0686 	add.w	r6, lr, r6, lsl #2
 800c990:	9301      	str	r3, [sp, #4]
 800c992:	46d9      	mov	r9, fp
 800c994:	f04f 0c00 	mov.w	ip, #0
 800c998:	9b01      	ldr	r3, [sp, #4]
 800c99a:	f85e 0b04 	ldr.w	r0, [lr], #4
 800c99e:	f853 af04 	ldr.w	sl, [r3, #4]!
 800c9a2:	9301      	str	r3, [sp, #4]
 800c9a4:	fa1f f38a 	uxth.w	r3, sl
 800c9a8:	4619      	mov	r1, r3
 800c9aa:	b283      	uxth	r3, r0
 800c9ac:	1acb      	subs	r3, r1, r3
 800c9ae:	0c00      	lsrs	r0, r0, #16
 800c9b0:	4463      	add	r3, ip
 800c9b2:	ebc0 401a 	rsb	r0, r0, sl, lsr #16
 800c9b6:	eb00 4023 	add.w	r0, r0, r3, asr #16
 800c9ba:	b29b      	uxth	r3, r3
 800c9bc:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800c9c0:	4576      	cmp	r6, lr
 800c9c2:	f849 3b04 	str.w	r3, [r9], #4
 800c9c6:	ea4f 4c20 	mov.w	ip, r0, asr #16
 800c9ca:	d8e5      	bhi.n	800c998 <__mdiff+0x88>
 800c9cc:	1b33      	subs	r3, r6, r4
 800c9ce:	3b15      	subs	r3, #21
 800c9d0:	f023 0303 	bic.w	r3, r3, #3
 800c9d4:	3415      	adds	r4, #21
 800c9d6:	3304      	adds	r3, #4
 800c9d8:	42a6      	cmp	r6, r4
 800c9da:	bf38      	it	cc
 800c9dc:	2304      	movcc	r3, #4
 800c9de:	441d      	add	r5, r3
 800c9e0:	445b      	add	r3, fp
 800c9e2:	461e      	mov	r6, r3
 800c9e4:	462c      	mov	r4, r5
 800c9e6:	4544      	cmp	r4, r8
 800c9e8:	d30e      	bcc.n	800ca08 <__mdiff+0xf8>
 800c9ea:	f108 0103 	add.w	r1, r8, #3
 800c9ee:	1b49      	subs	r1, r1, r5
 800c9f0:	f021 0103 	bic.w	r1, r1, #3
 800c9f4:	3d03      	subs	r5, #3
 800c9f6:	45a8      	cmp	r8, r5
 800c9f8:	bf38      	it	cc
 800c9fa:	2100      	movcc	r1, #0
 800c9fc:	440b      	add	r3, r1
 800c9fe:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800ca02:	b191      	cbz	r1, 800ca2a <__mdiff+0x11a>
 800ca04:	6117      	str	r7, [r2, #16]
 800ca06:	e79d      	b.n	800c944 <__mdiff+0x34>
 800ca08:	f854 1b04 	ldr.w	r1, [r4], #4
 800ca0c:	46e6      	mov	lr, ip
 800ca0e:	0c08      	lsrs	r0, r1, #16
 800ca10:	fa1c fc81 	uxtah	ip, ip, r1
 800ca14:	4471      	add	r1, lr
 800ca16:	eb00 402c 	add.w	r0, r0, ip, asr #16
 800ca1a:	b289      	uxth	r1, r1
 800ca1c:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 800ca20:	f846 1b04 	str.w	r1, [r6], #4
 800ca24:	ea4f 4c20 	mov.w	ip, r0, asr #16
 800ca28:	e7dd      	b.n	800c9e6 <__mdiff+0xd6>
 800ca2a:	3f01      	subs	r7, #1
 800ca2c:	e7e7      	b.n	800c9fe <__mdiff+0xee>
 800ca2e:	bf00      	nop
 800ca30:	0800dfc8 	.word	0x0800dfc8
 800ca34:	0800dfd9 	.word	0x0800dfd9

0800ca38 <__d2b>:
 800ca38:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 800ca3c:	460f      	mov	r7, r1
 800ca3e:	2101      	movs	r1, #1
 800ca40:	ec59 8b10 	vmov	r8, r9, d0
 800ca44:	4616      	mov	r6, r2
 800ca46:	f7ff fcd5 	bl	800c3f4 <_Balloc>
 800ca4a:	4604      	mov	r4, r0
 800ca4c:	b930      	cbnz	r0, 800ca5c <__d2b+0x24>
 800ca4e:	4602      	mov	r2, r0
 800ca50:	4b23      	ldr	r3, [pc, #140]	@ (800cae0 <__d2b+0xa8>)
 800ca52:	4824      	ldr	r0, [pc, #144]	@ (800cae4 <__d2b+0xac>)
 800ca54:	f240 310f 	movw	r1, #783	@ 0x30f
 800ca58:	f000 fa74 	bl	800cf44 <__assert_func>
 800ca5c:	f3c9 550a 	ubfx	r5, r9, #20, #11
 800ca60:	f3c9 0313 	ubfx	r3, r9, #0, #20
 800ca64:	b10d      	cbz	r5, 800ca6a <__d2b+0x32>
 800ca66:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 800ca6a:	9301      	str	r3, [sp, #4]
 800ca6c:	f1b8 0300 	subs.w	r3, r8, #0
 800ca70:	d023      	beq.n	800caba <__d2b+0x82>
 800ca72:	4668      	mov	r0, sp
 800ca74:	9300      	str	r3, [sp, #0]
 800ca76:	f7ff fd84 	bl	800c582 <__lo0bits>
 800ca7a:	e9dd 1200 	ldrd	r1, r2, [sp]
 800ca7e:	b1d0      	cbz	r0, 800cab6 <__d2b+0x7e>
 800ca80:	f1c0 0320 	rsb	r3, r0, #32
 800ca84:	fa02 f303 	lsl.w	r3, r2, r3
 800ca88:	430b      	orrs	r3, r1
 800ca8a:	40c2      	lsrs	r2, r0
 800ca8c:	6163      	str	r3, [r4, #20]
 800ca8e:	9201      	str	r2, [sp, #4]
 800ca90:	9b01      	ldr	r3, [sp, #4]
 800ca92:	61a3      	str	r3, [r4, #24]
 800ca94:	2b00      	cmp	r3, #0
 800ca96:	bf0c      	ite	eq
 800ca98:	2201      	moveq	r2, #1
 800ca9a:	2202      	movne	r2, #2
 800ca9c:	6122      	str	r2, [r4, #16]
 800ca9e:	b1a5      	cbz	r5, 800caca <__d2b+0x92>
 800caa0:	f2a5 4533 	subw	r5, r5, #1075	@ 0x433
 800caa4:	4405      	add	r5, r0
 800caa6:	603d      	str	r5, [r7, #0]
 800caa8:	f1c0 0035 	rsb	r0, r0, #53	@ 0x35
 800caac:	6030      	str	r0, [r6, #0]
 800caae:	4620      	mov	r0, r4
 800cab0:	b003      	add	sp, #12
 800cab2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800cab6:	6161      	str	r1, [r4, #20]
 800cab8:	e7ea      	b.n	800ca90 <__d2b+0x58>
 800caba:	a801      	add	r0, sp, #4
 800cabc:	f7ff fd61 	bl	800c582 <__lo0bits>
 800cac0:	9b01      	ldr	r3, [sp, #4]
 800cac2:	6163      	str	r3, [r4, #20]
 800cac4:	3020      	adds	r0, #32
 800cac6:	2201      	movs	r2, #1
 800cac8:	e7e8      	b.n	800ca9c <__d2b+0x64>
 800caca:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 800cace:	f2a0 4032 	subw	r0, r0, #1074	@ 0x432
 800cad2:	6038      	str	r0, [r7, #0]
 800cad4:	6918      	ldr	r0, [r3, #16]
 800cad6:	f7ff fd35 	bl	800c544 <__hi0bits>
 800cada:	ebc0 1042 	rsb	r0, r0, r2, lsl #5
 800cade:	e7e5      	b.n	800caac <__d2b+0x74>
 800cae0:	0800dfc8 	.word	0x0800dfc8
 800cae4:	0800dfd9 	.word	0x0800dfd9

0800cae8 <__ssputs_r>:
 800cae8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800caec:	688e      	ldr	r6, [r1, #8]
 800caee:	461f      	mov	r7, r3
 800caf0:	42be      	cmp	r6, r7
 800caf2:	680b      	ldr	r3, [r1, #0]
 800caf4:	4682      	mov	sl, r0
 800caf6:	460c      	mov	r4, r1
 800caf8:	4690      	mov	r8, r2
 800cafa:	d82d      	bhi.n	800cb58 <__ssputs_r+0x70>
 800cafc:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800cb00:	f412 6f90 	tst.w	r2, #1152	@ 0x480
 800cb04:	d026      	beq.n	800cb54 <__ssputs_r+0x6c>
 800cb06:	6965      	ldr	r5, [r4, #20]
 800cb08:	6909      	ldr	r1, [r1, #16]
 800cb0a:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 800cb0e:	eba3 0901 	sub.w	r9, r3, r1
 800cb12:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
 800cb16:	1c7b      	adds	r3, r7, #1
 800cb18:	444b      	add	r3, r9
 800cb1a:	106d      	asrs	r5, r5, #1
 800cb1c:	429d      	cmp	r5, r3
 800cb1e:	bf38      	it	cc
 800cb20:	461d      	movcc	r5, r3
 800cb22:	0553      	lsls	r3, r2, #21
 800cb24:	d527      	bpl.n	800cb76 <__ssputs_r+0x8e>
 800cb26:	4629      	mov	r1, r5
 800cb28:	f7ff fbd8 	bl	800c2dc <_malloc_r>
 800cb2c:	4606      	mov	r6, r0
 800cb2e:	b360      	cbz	r0, 800cb8a <__ssputs_r+0xa2>
 800cb30:	6921      	ldr	r1, [r4, #16]
 800cb32:	464a      	mov	r2, r9
 800cb34:	f7fe fd69 	bl	800b60a <memcpy>
 800cb38:	89a3      	ldrh	r3, [r4, #12]
 800cb3a:	f423 6390 	bic.w	r3, r3, #1152	@ 0x480
 800cb3e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800cb42:	81a3      	strh	r3, [r4, #12]
 800cb44:	6126      	str	r6, [r4, #16]
 800cb46:	6165      	str	r5, [r4, #20]
 800cb48:	444e      	add	r6, r9
 800cb4a:	eba5 0509 	sub.w	r5, r5, r9
 800cb4e:	6026      	str	r6, [r4, #0]
 800cb50:	60a5      	str	r5, [r4, #8]
 800cb52:	463e      	mov	r6, r7
 800cb54:	42be      	cmp	r6, r7
 800cb56:	d900      	bls.n	800cb5a <__ssputs_r+0x72>
 800cb58:	463e      	mov	r6, r7
 800cb5a:	6820      	ldr	r0, [r4, #0]
 800cb5c:	4632      	mov	r2, r6
 800cb5e:	4641      	mov	r1, r8
 800cb60:	f000 f9c6 	bl	800cef0 <memmove>
 800cb64:	68a3      	ldr	r3, [r4, #8]
 800cb66:	1b9b      	subs	r3, r3, r6
 800cb68:	60a3      	str	r3, [r4, #8]
 800cb6a:	6823      	ldr	r3, [r4, #0]
 800cb6c:	4433      	add	r3, r6
 800cb6e:	6023      	str	r3, [r4, #0]
 800cb70:	2000      	movs	r0, #0
 800cb72:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800cb76:	462a      	mov	r2, r5
 800cb78:	f000 fa28 	bl	800cfcc <_realloc_r>
 800cb7c:	4606      	mov	r6, r0
 800cb7e:	2800      	cmp	r0, #0
 800cb80:	d1e0      	bne.n	800cb44 <__ssputs_r+0x5c>
 800cb82:	6921      	ldr	r1, [r4, #16]
 800cb84:	4650      	mov	r0, sl
 800cb86:	f7ff fb35 	bl	800c1f4 <_free_r>
 800cb8a:	230c      	movs	r3, #12
 800cb8c:	f8ca 3000 	str.w	r3, [sl]
 800cb90:	89a3      	ldrh	r3, [r4, #12]
 800cb92:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800cb96:	81a3      	strh	r3, [r4, #12]
 800cb98:	f04f 30ff 	mov.w	r0, #4294967295
 800cb9c:	e7e9      	b.n	800cb72 <__ssputs_r+0x8a>
	...

0800cba0 <_svfiprintf_r>:
 800cba0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800cba4:	4698      	mov	r8, r3
 800cba6:	898b      	ldrh	r3, [r1, #12]
 800cba8:	061b      	lsls	r3, r3, #24
 800cbaa:	b09d      	sub	sp, #116	@ 0x74
 800cbac:	4607      	mov	r7, r0
 800cbae:	460d      	mov	r5, r1
 800cbb0:	4614      	mov	r4, r2
 800cbb2:	d510      	bpl.n	800cbd6 <_svfiprintf_r+0x36>
 800cbb4:	690b      	ldr	r3, [r1, #16]
 800cbb6:	b973      	cbnz	r3, 800cbd6 <_svfiprintf_r+0x36>
 800cbb8:	2140      	movs	r1, #64	@ 0x40
 800cbba:	f7ff fb8f 	bl	800c2dc <_malloc_r>
 800cbbe:	6028      	str	r0, [r5, #0]
 800cbc0:	6128      	str	r0, [r5, #16]
 800cbc2:	b930      	cbnz	r0, 800cbd2 <_svfiprintf_r+0x32>
 800cbc4:	230c      	movs	r3, #12
 800cbc6:	603b      	str	r3, [r7, #0]
 800cbc8:	f04f 30ff 	mov.w	r0, #4294967295
 800cbcc:	b01d      	add	sp, #116	@ 0x74
 800cbce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800cbd2:	2340      	movs	r3, #64	@ 0x40
 800cbd4:	616b      	str	r3, [r5, #20]
 800cbd6:	2300      	movs	r3, #0
 800cbd8:	9309      	str	r3, [sp, #36]	@ 0x24
 800cbda:	2320      	movs	r3, #32
 800cbdc:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
 800cbe0:	f8cd 800c 	str.w	r8, [sp, #12]
 800cbe4:	2330      	movs	r3, #48	@ 0x30
 800cbe6:	f8df 819c 	ldr.w	r8, [pc, #412]	@ 800cd84 <_svfiprintf_r+0x1e4>
 800cbea:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
 800cbee:	f04f 0901 	mov.w	r9, #1
 800cbf2:	4623      	mov	r3, r4
 800cbf4:	469a      	mov	sl, r3
 800cbf6:	f813 2b01 	ldrb.w	r2, [r3], #1
 800cbfa:	b10a      	cbz	r2, 800cc00 <_svfiprintf_r+0x60>
 800cbfc:	2a25      	cmp	r2, #37	@ 0x25
 800cbfe:	d1f9      	bne.n	800cbf4 <_svfiprintf_r+0x54>
 800cc00:	ebba 0b04 	subs.w	fp, sl, r4
 800cc04:	d00b      	beq.n	800cc1e <_svfiprintf_r+0x7e>
 800cc06:	465b      	mov	r3, fp
 800cc08:	4622      	mov	r2, r4
 800cc0a:	4629      	mov	r1, r5
 800cc0c:	4638      	mov	r0, r7
 800cc0e:	f7ff ff6b 	bl	800cae8 <__ssputs_r>
 800cc12:	3001      	adds	r0, #1
 800cc14:	f000 80a7 	beq.w	800cd66 <_svfiprintf_r+0x1c6>
 800cc18:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 800cc1a:	445a      	add	r2, fp
 800cc1c:	9209      	str	r2, [sp, #36]	@ 0x24
 800cc1e:	f89a 3000 	ldrb.w	r3, [sl]
 800cc22:	2b00      	cmp	r3, #0
 800cc24:	f000 809f 	beq.w	800cd66 <_svfiprintf_r+0x1c6>
 800cc28:	2300      	movs	r3, #0
 800cc2a:	f04f 32ff 	mov.w	r2, #4294967295
 800cc2e:	e9cd 2305 	strd	r2, r3, [sp, #20]
 800cc32:	f10a 0a01 	add.w	sl, sl, #1
 800cc36:	9304      	str	r3, [sp, #16]
 800cc38:	9307      	str	r3, [sp, #28]
 800cc3a:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
 800cc3e:	931a      	str	r3, [sp, #104]	@ 0x68
 800cc40:	4654      	mov	r4, sl
 800cc42:	2205      	movs	r2, #5
 800cc44:	f814 1b01 	ldrb.w	r1, [r4], #1
 800cc48:	484e      	ldr	r0, [pc, #312]	@ (800cd84 <_svfiprintf_r+0x1e4>)
 800cc4a:	f7f3 fce1 	bl	8000610 <memchr>
 800cc4e:	9a04      	ldr	r2, [sp, #16]
 800cc50:	b9d8      	cbnz	r0, 800cc8a <_svfiprintf_r+0xea>
 800cc52:	06d0      	lsls	r0, r2, #27
 800cc54:	bf44      	itt	mi
 800cc56:	2320      	movmi	r3, #32
 800cc58:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 800cc5c:	0711      	lsls	r1, r2, #28
 800cc5e:	bf44      	itt	mi
 800cc60:	232b      	movmi	r3, #43	@ 0x2b
 800cc62:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 800cc66:	f89a 3000 	ldrb.w	r3, [sl]
 800cc6a:	2b2a      	cmp	r3, #42	@ 0x2a
 800cc6c:	d015      	beq.n	800cc9a <_svfiprintf_r+0xfa>
 800cc6e:	9a07      	ldr	r2, [sp, #28]
 800cc70:	4654      	mov	r4, sl
 800cc72:	2000      	movs	r0, #0
 800cc74:	f04f 0c0a 	mov.w	ip, #10
 800cc78:	4621      	mov	r1, r4
 800cc7a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800cc7e:	3b30      	subs	r3, #48	@ 0x30
 800cc80:	2b09      	cmp	r3, #9
 800cc82:	d94b      	bls.n	800cd1c <_svfiprintf_r+0x17c>
 800cc84:	b1b0      	cbz	r0, 800ccb4 <_svfiprintf_r+0x114>
 800cc86:	9207      	str	r2, [sp, #28]
 800cc88:	e014      	b.n	800ccb4 <_svfiprintf_r+0x114>
 800cc8a:	eba0 0308 	sub.w	r3, r0, r8
 800cc8e:	fa09 f303 	lsl.w	r3, r9, r3
 800cc92:	4313      	orrs	r3, r2
 800cc94:	9304      	str	r3, [sp, #16]
 800cc96:	46a2      	mov	sl, r4
 800cc98:	e7d2      	b.n	800cc40 <_svfiprintf_r+0xa0>
 800cc9a:	9b03      	ldr	r3, [sp, #12]
 800cc9c:	1d19      	adds	r1, r3, #4
 800cc9e:	681b      	ldr	r3, [r3, #0]
 800cca0:	9103      	str	r1, [sp, #12]
 800cca2:	2b00      	cmp	r3, #0
 800cca4:	bfbb      	ittet	lt
 800cca6:	425b      	neglt	r3, r3
 800cca8:	f042 0202 	orrlt.w	r2, r2, #2
 800ccac:	9307      	strge	r3, [sp, #28]
 800ccae:	9307      	strlt	r3, [sp, #28]
 800ccb0:	bfb8      	it	lt
 800ccb2:	9204      	strlt	r2, [sp, #16]
 800ccb4:	7823      	ldrb	r3, [r4, #0]
 800ccb6:	2b2e      	cmp	r3, #46	@ 0x2e
 800ccb8:	d10a      	bne.n	800ccd0 <_svfiprintf_r+0x130>
 800ccba:	7863      	ldrb	r3, [r4, #1]
 800ccbc:	2b2a      	cmp	r3, #42	@ 0x2a
 800ccbe:	d132      	bne.n	800cd26 <_svfiprintf_r+0x186>
 800ccc0:	9b03      	ldr	r3, [sp, #12]
 800ccc2:	1d1a      	adds	r2, r3, #4
 800ccc4:	681b      	ldr	r3, [r3, #0]
 800ccc6:	9203      	str	r2, [sp, #12]
 800ccc8:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 800cccc:	3402      	adds	r4, #2
 800ccce:	9305      	str	r3, [sp, #20]
 800ccd0:	f8df a0c0 	ldr.w	sl, [pc, #192]	@ 800cd94 <_svfiprintf_r+0x1f4>
 800ccd4:	7821      	ldrb	r1, [r4, #0]
 800ccd6:	2203      	movs	r2, #3
 800ccd8:	4650      	mov	r0, sl
 800ccda:	f7f3 fc99 	bl	8000610 <memchr>
 800ccde:	b138      	cbz	r0, 800ccf0 <_svfiprintf_r+0x150>
 800cce0:	9b04      	ldr	r3, [sp, #16]
 800cce2:	eba0 000a 	sub.w	r0, r0, sl
 800cce6:	2240      	movs	r2, #64	@ 0x40
 800cce8:	4082      	lsls	r2, r0
 800ccea:	4313      	orrs	r3, r2
 800ccec:	3401      	adds	r4, #1
 800ccee:	9304      	str	r3, [sp, #16]
 800ccf0:	f814 1b01 	ldrb.w	r1, [r4], #1
 800ccf4:	4824      	ldr	r0, [pc, #144]	@ (800cd88 <_svfiprintf_r+0x1e8>)
 800ccf6:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
 800ccfa:	2206      	movs	r2, #6
 800ccfc:	f7f3 fc88 	bl	8000610 <memchr>
 800cd00:	2800      	cmp	r0, #0
 800cd02:	d036      	beq.n	800cd72 <_svfiprintf_r+0x1d2>
 800cd04:	4b21      	ldr	r3, [pc, #132]	@ (800cd8c <_svfiprintf_r+0x1ec>)
 800cd06:	bb1b      	cbnz	r3, 800cd50 <_svfiprintf_r+0x1b0>
 800cd08:	9b03      	ldr	r3, [sp, #12]
 800cd0a:	3307      	adds	r3, #7
 800cd0c:	f023 0307 	bic.w	r3, r3, #7
 800cd10:	3308      	adds	r3, #8
 800cd12:	9303      	str	r3, [sp, #12]
 800cd14:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800cd16:	4433      	add	r3, r6
 800cd18:	9309      	str	r3, [sp, #36]	@ 0x24
 800cd1a:	e76a      	b.n	800cbf2 <_svfiprintf_r+0x52>
 800cd1c:	fb0c 3202 	mla	r2, ip, r2, r3
 800cd20:	460c      	mov	r4, r1
 800cd22:	2001      	movs	r0, #1
 800cd24:	e7a8      	b.n	800cc78 <_svfiprintf_r+0xd8>
 800cd26:	2300      	movs	r3, #0
 800cd28:	3401      	adds	r4, #1
 800cd2a:	9305      	str	r3, [sp, #20]
 800cd2c:	4619      	mov	r1, r3
 800cd2e:	f04f 0c0a 	mov.w	ip, #10
 800cd32:	4620      	mov	r0, r4
 800cd34:	f810 2b01 	ldrb.w	r2, [r0], #1
 800cd38:	3a30      	subs	r2, #48	@ 0x30
 800cd3a:	2a09      	cmp	r2, #9
 800cd3c:	d903      	bls.n	800cd46 <_svfiprintf_r+0x1a6>
 800cd3e:	2b00      	cmp	r3, #0
 800cd40:	d0c6      	beq.n	800ccd0 <_svfiprintf_r+0x130>
 800cd42:	9105      	str	r1, [sp, #20]
 800cd44:	e7c4      	b.n	800ccd0 <_svfiprintf_r+0x130>
 800cd46:	fb0c 2101 	mla	r1, ip, r1, r2
 800cd4a:	4604      	mov	r4, r0
 800cd4c:	2301      	movs	r3, #1
 800cd4e:	e7f0      	b.n	800cd32 <_svfiprintf_r+0x192>
 800cd50:	ab03      	add	r3, sp, #12
 800cd52:	9300      	str	r3, [sp, #0]
 800cd54:	462a      	mov	r2, r5
 800cd56:	4b0e      	ldr	r3, [pc, #56]	@ (800cd90 <_svfiprintf_r+0x1f0>)
 800cd58:	a904      	add	r1, sp, #16
 800cd5a:	4638      	mov	r0, r7
 800cd5c:	f7fd fe90 	bl	800aa80 <_printf_float>
 800cd60:	1c42      	adds	r2, r0, #1
 800cd62:	4606      	mov	r6, r0
 800cd64:	d1d6      	bne.n	800cd14 <_svfiprintf_r+0x174>
 800cd66:	89ab      	ldrh	r3, [r5, #12]
 800cd68:	065b      	lsls	r3, r3, #25
 800cd6a:	f53f af2d 	bmi.w	800cbc8 <_svfiprintf_r+0x28>
 800cd6e:	9809      	ldr	r0, [sp, #36]	@ 0x24
 800cd70:	e72c      	b.n	800cbcc <_svfiprintf_r+0x2c>
 800cd72:	ab03      	add	r3, sp, #12
 800cd74:	9300      	str	r3, [sp, #0]
 800cd76:	462a      	mov	r2, r5
 800cd78:	4b05      	ldr	r3, [pc, #20]	@ (800cd90 <_svfiprintf_r+0x1f0>)
 800cd7a:	a904      	add	r1, sp, #16
 800cd7c:	4638      	mov	r0, r7
 800cd7e:	f7fe f907 	bl	800af90 <_printf_i>
 800cd82:	e7ed      	b.n	800cd60 <_svfiprintf_r+0x1c0>
 800cd84:	0800e032 	.word	0x0800e032
 800cd88:	0800e03c 	.word	0x0800e03c
 800cd8c:	0800aa81 	.word	0x0800aa81
 800cd90:	0800cae9 	.word	0x0800cae9
 800cd94:	0800e038 	.word	0x0800e038

0800cd98 <__sflush_r>:
 800cd98:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800cd9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800cda0:	0716      	lsls	r6, r2, #28
 800cda2:	4605      	mov	r5, r0
 800cda4:	460c      	mov	r4, r1
 800cda6:	d454      	bmi.n	800ce52 <__sflush_r+0xba>
 800cda8:	684b      	ldr	r3, [r1, #4]
 800cdaa:	2b00      	cmp	r3, #0
 800cdac:	dc02      	bgt.n	800cdb4 <__sflush_r+0x1c>
 800cdae:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 800cdb0:	2b00      	cmp	r3, #0
 800cdb2:	dd48      	ble.n	800ce46 <__sflush_r+0xae>
 800cdb4:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 800cdb6:	2e00      	cmp	r6, #0
 800cdb8:	d045      	beq.n	800ce46 <__sflush_r+0xae>
 800cdba:	2300      	movs	r3, #0
 800cdbc:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
 800cdc0:	682f      	ldr	r7, [r5, #0]
 800cdc2:	6a21      	ldr	r1, [r4, #32]
 800cdc4:	602b      	str	r3, [r5, #0]
 800cdc6:	d030      	beq.n	800ce2a <__sflush_r+0x92>
 800cdc8:	6d62      	ldr	r2, [r4, #84]	@ 0x54
 800cdca:	89a3      	ldrh	r3, [r4, #12]
 800cdcc:	0759      	lsls	r1, r3, #29
 800cdce:	d505      	bpl.n	800cddc <__sflush_r+0x44>
 800cdd0:	6863      	ldr	r3, [r4, #4]
 800cdd2:	1ad2      	subs	r2, r2, r3
 800cdd4:	6b63      	ldr	r3, [r4, #52]	@ 0x34
 800cdd6:	b10b      	cbz	r3, 800cddc <__sflush_r+0x44>
 800cdd8:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 800cdda:	1ad2      	subs	r2, r2, r3
 800cddc:	2300      	movs	r3, #0
 800cdde:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 800cde0:	6a21      	ldr	r1, [r4, #32]
 800cde2:	4628      	mov	r0, r5
 800cde4:	47b0      	blx	r6
 800cde6:	1c43      	adds	r3, r0, #1
 800cde8:	89a3      	ldrh	r3, [r4, #12]
 800cdea:	d106      	bne.n	800cdfa <__sflush_r+0x62>
 800cdec:	6829      	ldr	r1, [r5, #0]
 800cdee:	291d      	cmp	r1, #29
 800cdf0:	d82b      	bhi.n	800ce4a <__sflush_r+0xb2>
 800cdf2:	4a2a      	ldr	r2, [pc, #168]	@ (800ce9c <__sflush_r+0x104>)
 800cdf4:	40ca      	lsrs	r2, r1
 800cdf6:	07d6      	lsls	r6, r2, #31
 800cdf8:	d527      	bpl.n	800ce4a <__sflush_r+0xb2>
 800cdfa:	2200      	movs	r2, #0
 800cdfc:	6062      	str	r2, [r4, #4]
 800cdfe:	04d9      	lsls	r1, r3, #19
 800ce00:	6922      	ldr	r2, [r4, #16]
 800ce02:	6022      	str	r2, [r4, #0]
 800ce04:	d504      	bpl.n	800ce10 <__sflush_r+0x78>
 800ce06:	1c42      	adds	r2, r0, #1
 800ce08:	d101      	bne.n	800ce0e <__sflush_r+0x76>
 800ce0a:	682b      	ldr	r3, [r5, #0]
 800ce0c:	b903      	cbnz	r3, 800ce10 <__sflush_r+0x78>
 800ce0e:	6560      	str	r0, [r4, #84]	@ 0x54
 800ce10:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 800ce12:	602f      	str	r7, [r5, #0]
 800ce14:	b1b9      	cbz	r1, 800ce46 <__sflush_r+0xae>
 800ce16:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 800ce1a:	4299      	cmp	r1, r3
 800ce1c:	d002      	beq.n	800ce24 <__sflush_r+0x8c>
 800ce1e:	4628      	mov	r0, r5
 800ce20:	f7ff f9e8 	bl	800c1f4 <_free_r>
 800ce24:	2300      	movs	r3, #0
 800ce26:	6363      	str	r3, [r4, #52]	@ 0x34
 800ce28:	e00d      	b.n	800ce46 <__sflush_r+0xae>
 800ce2a:	2301      	movs	r3, #1
 800ce2c:	4628      	mov	r0, r5
 800ce2e:	47b0      	blx	r6
 800ce30:	4602      	mov	r2, r0
 800ce32:	1c50      	adds	r0, r2, #1
 800ce34:	d1c9      	bne.n	800cdca <__sflush_r+0x32>
 800ce36:	682b      	ldr	r3, [r5, #0]
 800ce38:	2b00      	cmp	r3, #0
 800ce3a:	d0c6      	beq.n	800cdca <__sflush_r+0x32>
 800ce3c:	2b1d      	cmp	r3, #29
 800ce3e:	d001      	beq.n	800ce44 <__sflush_r+0xac>
 800ce40:	2b16      	cmp	r3, #22
 800ce42:	d11e      	bne.n	800ce82 <__sflush_r+0xea>
 800ce44:	602f      	str	r7, [r5, #0]
 800ce46:	2000      	movs	r0, #0
 800ce48:	e022      	b.n	800ce90 <__sflush_r+0xf8>
 800ce4a:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800ce4e:	b21b      	sxth	r3, r3
 800ce50:	e01b      	b.n	800ce8a <__sflush_r+0xf2>
 800ce52:	690f      	ldr	r7, [r1, #16]
 800ce54:	2f00      	cmp	r7, #0
 800ce56:	d0f6      	beq.n	800ce46 <__sflush_r+0xae>
 800ce58:	0793      	lsls	r3, r2, #30
 800ce5a:	680e      	ldr	r6, [r1, #0]
 800ce5c:	bf08      	it	eq
 800ce5e:	694b      	ldreq	r3, [r1, #20]
 800ce60:	600f      	str	r7, [r1, #0]
 800ce62:	bf18      	it	ne
 800ce64:	2300      	movne	r3, #0
 800ce66:	eba6 0807 	sub.w	r8, r6, r7
 800ce6a:	608b      	str	r3, [r1, #8]
 800ce6c:	f1b8 0f00 	cmp.w	r8, #0
 800ce70:	dde9      	ble.n	800ce46 <__sflush_r+0xae>
 800ce72:	6a21      	ldr	r1, [r4, #32]
 800ce74:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
 800ce76:	4643      	mov	r3, r8
 800ce78:	463a      	mov	r2, r7
 800ce7a:	4628      	mov	r0, r5
 800ce7c:	47b0      	blx	r6
 800ce7e:	2800      	cmp	r0, #0
 800ce80:	dc08      	bgt.n	800ce94 <__sflush_r+0xfc>
 800ce82:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800ce86:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800ce8a:	81a3      	strh	r3, [r4, #12]
 800ce8c:	f04f 30ff 	mov.w	r0, #4294967295
 800ce90:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800ce94:	4407      	add	r7, r0
 800ce96:	eba8 0800 	sub.w	r8, r8, r0
 800ce9a:	e7e7      	b.n	800ce6c <__sflush_r+0xd4>
 800ce9c:	20400001 	.word	0x20400001

0800cea0 <_fflush_r>:
 800cea0:	b538      	push	{r3, r4, r5, lr}
 800cea2:	690b      	ldr	r3, [r1, #16]
 800cea4:	4605      	mov	r5, r0
 800cea6:	460c      	mov	r4, r1
 800cea8:	b913      	cbnz	r3, 800ceb0 <_fflush_r+0x10>
 800ceaa:	2500      	movs	r5, #0
 800ceac:	4628      	mov	r0, r5
 800ceae:	bd38      	pop	{r3, r4, r5, pc}
 800ceb0:	b118      	cbz	r0, 800ceba <_fflush_r+0x1a>
 800ceb2:	6a03      	ldr	r3, [r0, #32]
 800ceb4:	b90b      	cbnz	r3, 800ceba <_fflush_r+0x1a>
 800ceb6:	f7fe fa15 	bl	800b2e4 <__sinit>
 800ceba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800cebe:	2b00      	cmp	r3, #0
 800cec0:	d0f3      	beq.n	800ceaa <_fflush_r+0xa>
 800cec2:	6e62      	ldr	r2, [r4, #100]	@ 0x64
 800cec4:	07d0      	lsls	r0, r2, #31
 800cec6:	d404      	bmi.n	800ced2 <_fflush_r+0x32>
 800cec8:	0599      	lsls	r1, r3, #22
 800ceca:	d402      	bmi.n	800ced2 <_fflush_r+0x32>
 800cecc:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 800cece:	f7fe fb9a 	bl	800b606 <__retarget_lock_acquire_recursive>
 800ced2:	4628      	mov	r0, r5
 800ced4:	4621      	mov	r1, r4
 800ced6:	f7ff ff5f 	bl	800cd98 <__sflush_r>
 800ceda:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 800cedc:	07da      	lsls	r2, r3, #31
 800cede:	4605      	mov	r5, r0
 800cee0:	d4e4      	bmi.n	800ceac <_fflush_r+0xc>
 800cee2:	89a3      	ldrh	r3, [r4, #12]
 800cee4:	059b      	lsls	r3, r3, #22
 800cee6:	d4e1      	bmi.n	800ceac <_fflush_r+0xc>
 800cee8:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 800ceea:	f7fe fb8d 	bl	800b608 <__retarget_lock_release_recursive>
 800ceee:	e7dd      	b.n	800ceac <_fflush_r+0xc>

0800cef0 <memmove>:
 800cef0:	4288      	cmp	r0, r1
 800cef2:	b510      	push	{r4, lr}
 800cef4:	eb01 0402 	add.w	r4, r1, r2
 800cef8:	d902      	bls.n	800cf00 <memmove+0x10>
 800cefa:	4284      	cmp	r4, r0
 800cefc:	4623      	mov	r3, r4
 800cefe:	d807      	bhi.n	800cf10 <memmove+0x20>
 800cf00:	1e43      	subs	r3, r0, #1
 800cf02:	42a1      	cmp	r1, r4
 800cf04:	d008      	beq.n	800cf18 <memmove+0x28>
 800cf06:	f811 2b01 	ldrb.w	r2, [r1], #1
 800cf0a:	f803 2f01 	strb.w	r2, [r3, #1]!
 800cf0e:	e7f8      	b.n	800cf02 <memmove+0x12>
 800cf10:	4402      	add	r2, r0
 800cf12:	4601      	mov	r1, r0
 800cf14:	428a      	cmp	r2, r1
 800cf16:	d100      	bne.n	800cf1a <memmove+0x2a>
 800cf18:	bd10      	pop	{r4, pc}
 800cf1a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800cf1e:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800cf22:	e7f7      	b.n	800cf14 <memmove+0x24>

0800cf24 <_sbrk_r>:
 800cf24:	b538      	push	{r3, r4, r5, lr}
 800cf26:	4d06      	ldr	r5, [pc, #24]	@ (800cf40 <_sbrk_r+0x1c>)
 800cf28:	2300      	movs	r3, #0
 800cf2a:	4604      	mov	r4, r0
 800cf2c:	4608      	mov	r0, r1
 800cf2e:	602b      	str	r3, [r5, #0]
 800cf30:	f7fb ff3c 	bl	8008dac <_sbrk>
 800cf34:	1c43      	adds	r3, r0, #1
 800cf36:	d102      	bne.n	800cf3e <_sbrk_r+0x1a>
 800cf38:	682b      	ldr	r3, [r5, #0]
 800cf3a:	b103      	cbz	r3, 800cf3e <_sbrk_r+0x1a>
 800cf3c:	6023      	str	r3, [r4, #0]
 800cf3e:	bd38      	pop	{r3, r4, r5, pc}
 800cf40:	20001784 	.word	0x20001784

0800cf44 <__assert_func>:
 800cf44:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800cf46:	4614      	mov	r4, r2
 800cf48:	461a      	mov	r2, r3
 800cf4a:	4b09      	ldr	r3, [pc, #36]	@ (800cf70 <__assert_func+0x2c>)
 800cf4c:	681b      	ldr	r3, [r3, #0]
 800cf4e:	4605      	mov	r5, r0
 800cf50:	68d8      	ldr	r0, [r3, #12]
 800cf52:	b14c      	cbz	r4, 800cf68 <__assert_func+0x24>
 800cf54:	4b07      	ldr	r3, [pc, #28]	@ (800cf74 <__assert_func+0x30>)
 800cf56:	9100      	str	r1, [sp, #0]
 800cf58:	e9cd 3401 	strd	r3, r4, [sp, #4]
 800cf5c:	4906      	ldr	r1, [pc, #24]	@ (800cf78 <__assert_func+0x34>)
 800cf5e:	462b      	mov	r3, r5
 800cf60:	f000 f870 	bl	800d044 <fiprintf>
 800cf64:	f000 f880 	bl	800d068 <abort>
 800cf68:	4b04      	ldr	r3, [pc, #16]	@ (800cf7c <__assert_func+0x38>)
 800cf6a:	461c      	mov	r4, r3
 800cf6c:	e7f3      	b.n	800cf56 <__assert_func+0x12>
 800cf6e:	bf00      	nop
 800cf70:	20000098 	.word	0x20000098
 800cf74:	0800e04d 	.word	0x0800e04d
 800cf78:	0800e05a 	.word	0x0800e05a
 800cf7c:	0800e088 	.word	0x0800e088

0800cf80 <_calloc_r>:
 800cf80:	b570      	push	{r4, r5, r6, lr}
 800cf82:	fba1 5402 	umull	r5, r4, r1, r2
 800cf86:	b934      	cbnz	r4, 800cf96 <_calloc_r+0x16>
 800cf88:	4629      	mov	r1, r5
 800cf8a:	f7ff f9a7 	bl	800c2dc <_malloc_r>
 800cf8e:	4606      	mov	r6, r0
 800cf90:	b928      	cbnz	r0, 800cf9e <_calloc_r+0x1e>
 800cf92:	4630      	mov	r0, r6
 800cf94:	bd70      	pop	{r4, r5, r6, pc}
 800cf96:	220c      	movs	r2, #12
 800cf98:	6002      	str	r2, [r0, #0]
 800cf9a:	2600      	movs	r6, #0
 800cf9c:	e7f9      	b.n	800cf92 <_calloc_r+0x12>
 800cf9e:	462a      	mov	r2, r5
 800cfa0:	4621      	mov	r1, r4
 800cfa2:	f7fe fa8b 	bl	800b4bc <memset>
 800cfa6:	e7f4      	b.n	800cf92 <_calloc_r+0x12>

0800cfa8 <__ascii_mbtowc>:
 800cfa8:	b082      	sub	sp, #8
 800cfaa:	b901      	cbnz	r1, 800cfae <__ascii_mbtowc+0x6>
 800cfac:	a901      	add	r1, sp, #4
 800cfae:	b142      	cbz	r2, 800cfc2 <__ascii_mbtowc+0x1a>
 800cfb0:	b14b      	cbz	r3, 800cfc6 <__ascii_mbtowc+0x1e>
 800cfb2:	7813      	ldrb	r3, [r2, #0]
 800cfb4:	600b      	str	r3, [r1, #0]
 800cfb6:	7812      	ldrb	r2, [r2, #0]
 800cfb8:	1e10      	subs	r0, r2, #0
 800cfba:	bf18      	it	ne
 800cfbc:	2001      	movne	r0, #1
 800cfbe:	b002      	add	sp, #8
 800cfc0:	4770      	bx	lr
 800cfc2:	4610      	mov	r0, r2
 800cfc4:	e7fb      	b.n	800cfbe <__ascii_mbtowc+0x16>
 800cfc6:	f06f 0001 	mvn.w	r0, #1
 800cfca:	e7f8      	b.n	800cfbe <__ascii_mbtowc+0x16>

0800cfcc <_realloc_r>:
 800cfcc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800cfd0:	4607      	mov	r7, r0
 800cfd2:	4614      	mov	r4, r2
 800cfd4:	460d      	mov	r5, r1
 800cfd6:	b921      	cbnz	r1, 800cfe2 <_realloc_r+0x16>
 800cfd8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800cfdc:	4611      	mov	r1, r2
 800cfde:	f7ff b97d 	b.w	800c2dc <_malloc_r>
 800cfe2:	b92a      	cbnz	r2, 800cff0 <_realloc_r+0x24>
 800cfe4:	f7ff f906 	bl	800c1f4 <_free_r>
 800cfe8:	4625      	mov	r5, r4
 800cfea:	4628      	mov	r0, r5
 800cfec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800cff0:	f000 f841 	bl	800d076 <_malloc_usable_size_r>
 800cff4:	4284      	cmp	r4, r0
 800cff6:	4606      	mov	r6, r0
 800cff8:	d802      	bhi.n	800d000 <_realloc_r+0x34>
 800cffa:	ebb4 0f50 	cmp.w	r4, r0, lsr #1
 800cffe:	d8f4      	bhi.n	800cfea <_realloc_r+0x1e>
 800d000:	4621      	mov	r1, r4
 800d002:	4638      	mov	r0, r7
 800d004:	f7ff f96a 	bl	800c2dc <_malloc_r>
 800d008:	4680      	mov	r8, r0
 800d00a:	b908      	cbnz	r0, 800d010 <_realloc_r+0x44>
 800d00c:	4645      	mov	r5, r8
 800d00e:	e7ec      	b.n	800cfea <_realloc_r+0x1e>
 800d010:	42b4      	cmp	r4, r6
 800d012:	4622      	mov	r2, r4
 800d014:	4629      	mov	r1, r5
 800d016:	bf28      	it	cs
 800d018:	4632      	movcs	r2, r6
 800d01a:	f7fe faf6 	bl	800b60a <memcpy>
 800d01e:	4629      	mov	r1, r5
 800d020:	4638      	mov	r0, r7
 800d022:	f7ff f8e7 	bl	800c1f4 <_free_r>
 800d026:	e7f1      	b.n	800d00c <_realloc_r+0x40>

0800d028 <__ascii_wctomb>:
 800d028:	4603      	mov	r3, r0
 800d02a:	4608      	mov	r0, r1
 800d02c:	b141      	cbz	r1, 800d040 <__ascii_wctomb+0x18>
 800d02e:	2aff      	cmp	r2, #255	@ 0xff
 800d030:	d904      	bls.n	800d03c <__ascii_wctomb+0x14>
 800d032:	228a      	movs	r2, #138	@ 0x8a
 800d034:	601a      	str	r2, [r3, #0]
 800d036:	f04f 30ff 	mov.w	r0, #4294967295
 800d03a:	4770      	bx	lr
 800d03c:	700a      	strb	r2, [r1, #0]
 800d03e:	2001      	movs	r0, #1
 800d040:	4770      	bx	lr
	...

0800d044 <fiprintf>:
 800d044:	b40e      	push	{r1, r2, r3}
 800d046:	b503      	push	{r0, r1, lr}
 800d048:	4601      	mov	r1, r0
 800d04a:	ab03      	add	r3, sp, #12
 800d04c:	4805      	ldr	r0, [pc, #20]	@ (800d064 <fiprintf+0x20>)
 800d04e:	f853 2b04 	ldr.w	r2, [r3], #4
 800d052:	6800      	ldr	r0, [r0, #0]
 800d054:	9301      	str	r3, [sp, #4]
 800d056:	f000 f83f 	bl	800d0d8 <_vfiprintf_r>
 800d05a:	b002      	add	sp, #8
 800d05c:	f85d eb04 	ldr.w	lr, [sp], #4
 800d060:	b003      	add	sp, #12
 800d062:	4770      	bx	lr
 800d064:	20000098 	.word	0x20000098

0800d068 <abort>:
 800d068:	b508      	push	{r3, lr}
 800d06a:	2006      	movs	r0, #6
 800d06c:	f000 fa08 	bl	800d480 <raise>
 800d070:	2001      	movs	r0, #1
 800d072:	f7fb fecb 	bl	8008e0c <_exit>

0800d076 <_malloc_usable_size_r>:
 800d076:	f851 3c04 	ldr.w	r3, [r1, #-4]
 800d07a:	1f18      	subs	r0, r3, #4
 800d07c:	2b00      	cmp	r3, #0
 800d07e:	bfbc      	itt	lt
 800d080:	580b      	ldrlt	r3, [r1, r0]
 800d082:	18c0      	addlt	r0, r0, r3
 800d084:	4770      	bx	lr

0800d086 <__sfputc_r>:
 800d086:	6893      	ldr	r3, [r2, #8]
 800d088:	3b01      	subs	r3, #1
 800d08a:	2b00      	cmp	r3, #0
 800d08c:	b410      	push	{r4}
 800d08e:	6093      	str	r3, [r2, #8]
 800d090:	da08      	bge.n	800d0a4 <__sfputc_r+0x1e>
 800d092:	6994      	ldr	r4, [r2, #24]
 800d094:	42a3      	cmp	r3, r4
 800d096:	db01      	blt.n	800d09c <__sfputc_r+0x16>
 800d098:	290a      	cmp	r1, #10
 800d09a:	d103      	bne.n	800d0a4 <__sfputc_r+0x1e>
 800d09c:	f85d 4b04 	ldr.w	r4, [sp], #4
 800d0a0:	f000 b932 	b.w	800d308 <__swbuf_r>
 800d0a4:	6813      	ldr	r3, [r2, #0]
 800d0a6:	1c58      	adds	r0, r3, #1
 800d0a8:	6010      	str	r0, [r2, #0]
 800d0aa:	7019      	strb	r1, [r3, #0]
 800d0ac:	4608      	mov	r0, r1
 800d0ae:	f85d 4b04 	ldr.w	r4, [sp], #4
 800d0b2:	4770      	bx	lr

0800d0b4 <__sfputs_r>:
 800d0b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d0b6:	4606      	mov	r6, r0
 800d0b8:	460f      	mov	r7, r1
 800d0ba:	4614      	mov	r4, r2
 800d0bc:	18d5      	adds	r5, r2, r3
 800d0be:	42ac      	cmp	r4, r5
 800d0c0:	d101      	bne.n	800d0c6 <__sfputs_r+0x12>
 800d0c2:	2000      	movs	r0, #0
 800d0c4:	e007      	b.n	800d0d6 <__sfputs_r+0x22>
 800d0c6:	f814 1b01 	ldrb.w	r1, [r4], #1
 800d0ca:	463a      	mov	r2, r7
 800d0cc:	4630      	mov	r0, r6
 800d0ce:	f7ff ffda 	bl	800d086 <__sfputc_r>
 800d0d2:	1c43      	adds	r3, r0, #1
 800d0d4:	d1f3      	bne.n	800d0be <__sfputs_r+0xa>
 800d0d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0800d0d8 <_vfiprintf_r>:
 800d0d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800d0dc:	460d      	mov	r5, r1
 800d0de:	b09d      	sub	sp, #116	@ 0x74
 800d0e0:	4614      	mov	r4, r2
 800d0e2:	4698      	mov	r8, r3
 800d0e4:	4606      	mov	r6, r0
 800d0e6:	b118      	cbz	r0, 800d0f0 <_vfiprintf_r+0x18>
 800d0e8:	6a03      	ldr	r3, [r0, #32]
 800d0ea:	b90b      	cbnz	r3, 800d0f0 <_vfiprintf_r+0x18>
 800d0ec:	f7fe f8fa 	bl	800b2e4 <__sinit>
 800d0f0:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 800d0f2:	07d9      	lsls	r1, r3, #31
 800d0f4:	d405      	bmi.n	800d102 <_vfiprintf_r+0x2a>
 800d0f6:	89ab      	ldrh	r3, [r5, #12]
 800d0f8:	059a      	lsls	r2, r3, #22
 800d0fa:	d402      	bmi.n	800d102 <_vfiprintf_r+0x2a>
 800d0fc:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 800d0fe:	f7fe fa82 	bl	800b606 <__retarget_lock_acquire_recursive>
 800d102:	89ab      	ldrh	r3, [r5, #12]
 800d104:	071b      	lsls	r3, r3, #28
 800d106:	d501      	bpl.n	800d10c <_vfiprintf_r+0x34>
 800d108:	692b      	ldr	r3, [r5, #16]
 800d10a:	b99b      	cbnz	r3, 800d134 <_vfiprintf_r+0x5c>
 800d10c:	4629      	mov	r1, r5
 800d10e:	4630      	mov	r0, r6
 800d110:	f000 f938 	bl	800d384 <__swsetup_r>
 800d114:	b170      	cbz	r0, 800d134 <_vfiprintf_r+0x5c>
 800d116:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 800d118:	07dc      	lsls	r4, r3, #31
 800d11a:	d504      	bpl.n	800d126 <_vfiprintf_r+0x4e>
 800d11c:	f04f 30ff 	mov.w	r0, #4294967295
 800d120:	b01d      	add	sp, #116	@ 0x74
 800d122:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800d126:	89ab      	ldrh	r3, [r5, #12]
 800d128:	0598      	lsls	r0, r3, #22
 800d12a:	d4f7      	bmi.n	800d11c <_vfiprintf_r+0x44>
 800d12c:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 800d12e:	f7fe fa6b 	bl	800b608 <__retarget_lock_release_recursive>
 800d132:	e7f3      	b.n	800d11c <_vfiprintf_r+0x44>
 800d134:	2300      	movs	r3, #0
 800d136:	9309      	str	r3, [sp, #36]	@ 0x24
 800d138:	2320      	movs	r3, #32
 800d13a:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
 800d13e:	f8cd 800c 	str.w	r8, [sp, #12]
 800d142:	2330      	movs	r3, #48	@ 0x30
 800d144:	f8df 81ac 	ldr.w	r8, [pc, #428]	@ 800d2f4 <_vfiprintf_r+0x21c>
 800d148:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
 800d14c:	f04f 0901 	mov.w	r9, #1
 800d150:	4623      	mov	r3, r4
 800d152:	469a      	mov	sl, r3
 800d154:	f813 2b01 	ldrb.w	r2, [r3], #1
 800d158:	b10a      	cbz	r2, 800d15e <_vfiprintf_r+0x86>
 800d15a:	2a25      	cmp	r2, #37	@ 0x25
 800d15c:	d1f9      	bne.n	800d152 <_vfiprintf_r+0x7a>
 800d15e:	ebba 0b04 	subs.w	fp, sl, r4
 800d162:	d00b      	beq.n	800d17c <_vfiprintf_r+0xa4>
 800d164:	465b      	mov	r3, fp
 800d166:	4622      	mov	r2, r4
 800d168:	4629      	mov	r1, r5
 800d16a:	4630      	mov	r0, r6
 800d16c:	f7ff ffa2 	bl	800d0b4 <__sfputs_r>
 800d170:	3001      	adds	r0, #1
 800d172:	f000 80a7 	beq.w	800d2c4 <_vfiprintf_r+0x1ec>
 800d176:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 800d178:	445a      	add	r2, fp
 800d17a:	9209      	str	r2, [sp, #36]	@ 0x24
 800d17c:	f89a 3000 	ldrb.w	r3, [sl]
 800d180:	2b00      	cmp	r3, #0
 800d182:	f000 809f 	beq.w	800d2c4 <_vfiprintf_r+0x1ec>
 800d186:	2300      	movs	r3, #0
 800d188:	f04f 32ff 	mov.w	r2, #4294967295
 800d18c:	e9cd 2305 	strd	r2, r3, [sp, #20]
 800d190:	f10a 0a01 	add.w	sl, sl, #1
 800d194:	9304      	str	r3, [sp, #16]
 800d196:	9307      	str	r3, [sp, #28]
 800d198:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
 800d19c:	931a      	str	r3, [sp, #104]	@ 0x68
 800d19e:	4654      	mov	r4, sl
 800d1a0:	2205      	movs	r2, #5
 800d1a2:	f814 1b01 	ldrb.w	r1, [r4], #1
 800d1a6:	4853      	ldr	r0, [pc, #332]	@ (800d2f4 <_vfiprintf_r+0x21c>)
 800d1a8:	f7f3 fa32 	bl	8000610 <memchr>
 800d1ac:	9a04      	ldr	r2, [sp, #16]
 800d1ae:	b9d8      	cbnz	r0, 800d1e8 <_vfiprintf_r+0x110>
 800d1b0:	06d1      	lsls	r1, r2, #27
 800d1b2:	bf44      	itt	mi
 800d1b4:	2320      	movmi	r3, #32
 800d1b6:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 800d1ba:	0713      	lsls	r3, r2, #28
 800d1bc:	bf44      	itt	mi
 800d1be:	232b      	movmi	r3, #43	@ 0x2b
 800d1c0:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 800d1c4:	f89a 3000 	ldrb.w	r3, [sl]
 800d1c8:	2b2a      	cmp	r3, #42	@ 0x2a
 800d1ca:	d015      	beq.n	800d1f8 <_vfiprintf_r+0x120>
 800d1cc:	9a07      	ldr	r2, [sp, #28]
 800d1ce:	4654      	mov	r4, sl
 800d1d0:	2000      	movs	r0, #0
 800d1d2:	f04f 0c0a 	mov.w	ip, #10
 800d1d6:	4621      	mov	r1, r4
 800d1d8:	f811 3b01 	ldrb.w	r3, [r1], #1
 800d1dc:	3b30      	subs	r3, #48	@ 0x30
 800d1de:	2b09      	cmp	r3, #9
 800d1e0:	d94b      	bls.n	800d27a <_vfiprintf_r+0x1a2>
 800d1e2:	b1b0      	cbz	r0, 800d212 <_vfiprintf_r+0x13a>
 800d1e4:	9207      	str	r2, [sp, #28]
 800d1e6:	e014      	b.n	800d212 <_vfiprintf_r+0x13a>
 800d1e8:	eba0 0308 	sub.w	r3, r0, r8
 800d1ec:	fa09 f303 	lsl.w	r3, r9, r3
 800d1f0:	4313      	orrs	r3, r2
 800d1f2:	9304      	str	r3, [sp, #16]
 800d1f4:	46a2      	mov	sl, r4
 800d1f6:	e7d2      	b.n	800d19e <_vfiprintf_r+0xc6>
 800d1f8:	9b03      	ldr	r3, [sp, #12]
 800d1fa:	1d19      	adds	r1, r3, #4
 800d1fc:	681b      	ldr	r3, [r3, #0]
 800d1fe:	9103      	str	r1, [sp, #12]
 800d200:	2b00      	cmp	r3, #0
 800d202:	bfbb      	ittet	lt
 800d204:	425b      	neglt	r3, r3
 800d206:	f042 0202 	orrlt.w	r2, r2, #2
 800d20a:	9307      	strge	r3, [sp, #28]
 800d20c:	9307      	strlt	r3, [sp, #28]
 800d20e:	bfb8      	it	lt
 800d210:	9204      	strlt	r2, [sp, #16]
 800d212:	7823      	ldrb	r3, [r4, #0]
 800d214:	2b2e      	cmp	r3, #46	@ 0x2e
 800d216:	d10a      	bne.n	800d22e <_vfiprintf_r+0x156>
 800d218:	7863      	ldrb	r3, [r4, #1]
 800d21a:	2b2a      	cmp	r3, #42	@ 0x2a
 800d21c:	d132      	bne.n	800d284 <_vfiprintf_r+0x1ac>
 800d21e:	9b03      	ldr	r3, [sp, #12]
 800d220:	1d1a      	adds	r2, r3, #4
 800d222:	681b      	ldr	r3, [r3, #0]
 800d224:	9203      	str	r2, [sp, #12]
 800d226:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 800d22a:	3402      	adds	r4, #2
 800d22c:	9305      	str	r3, [sp, #20]
 800d22e:	f8df a0d4 	ldr.w	sl, [pc, #212]	@ 800d304 <_vfiprintf_r+0x22c>
 800d232:	7821      	ldrb	r1, [r4, #0]
 800d234:	2203      	movs	r2, #3
 800d236:	4650      	mov	r0, sl
 800d238:	f7f3 f9ea 	bl	8000610 <memchr>
 800d23c:	b138      	cbz	r0, 800d24e <_vfiprintf_r+0x176>
 800d23e:	9b04      	ldr	r3, [sp, #16]
 800d240:	eba0 000a 	sub.w	r0, r0, sl
 800d244:	2240      	movs	r2, #64	@ 0x40
 800d246:	4082      	lsls	r2, r0
 800d248:	4313      	orrs	r3, r2
 800d24a:	3401      	adds	r4, #1
 800d24c:	9304      	str	r3, [sp, #16]
 800d24e:	f814 1b01 	ldrb.w	r1, [r4], #1
 800d252:	4829      	ldr	r0, [pc, #164]	@ (800d2f8 <_vfiprintf_r+0x220>)
 800d254:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
 800d258:	2206      	movs	r2, #6
 800d25a:	f7f3 f9d9 	bl	8000610 <memchr>
 800d25e:	2800      	cmp	r0, #0
 800d260:	d03f      	beq.n	800d2e2 <_vfiprintf_r+0x20a>
 800d262:	4b26      	ldr	r3, [pc, #152]	@ (800d2fc <_vfiprintf_r+0x224>)
 800d264:	bb1b      	cbnz	r3, 800d2ae <_vfiprintf_r+0x1d6>
 800d266:	9b03      	ldr	r3, [sp, #12]
 800d268:	3307      	adds	r3, #7
 800d26a:	f023 0307 	bic.w	r3, r3, #7
 800d26e:	3308      	adds	r3, #8
 800d270:	9303      	str	r3, [sp, #12]
 800d272:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800d274:	443b      	add	r3, r7
 800d276:	9309      	str	r3, [sp, #36]	@ 0x24
 800d278:	e76a      	b.n	800d150 <_vfiprintf_r+0x78>
 800d27a:	fb0c 3202 	mla	r2, ip, r2, r3
 800d27e:	460c      	mov	r4, r1
 800d280:	2001      	movs	r0, #1
 800d282:	e7a8      	b.n	800d1d6 <_vfiprintf_r+0xfe>
 800d284:	2300      	movs	r3, #0
 800d286:	3401      	adds	r4, #1
 800d288:	9305      	str	r3, [sp, #20]
 800d28a:	4619      	mov	r1, r3
 800d28c:	f04f 0c0a 	mov.w	ip, #10
 800d290:	4620      	mov	r0, r4
 800d292:	f810 2b01 	ldrb.w	r2, [r0], #1
 800d296:	3a30      	subs	r2, #48	@ 0x30
 800d298:	2a09      	cmp	r2, #9
 800d29a:	d903      	bls.n	800d2a4 <_vfiprintf_r+0x1cc>
 800d29c:	2b00      	cmp	r3, #0
 800d29e:	d0c6      	beq.n	800d22e <_vfiprintf_r+0x156>
 800d2a0:	9105      	str	r1, [sp, #20]
 800d2a2:	e7c4      	b.n	800d22e <_vfiprintf_r+0x156>
 800d2a4:	fb0c 2101 	mla	r1, ip, r1, r2
 800d2a8:	4604      	mov	r4, r0
 800d2aa:	2301      	movs	r3, #1
 800d2ac:	e7f0      	b.n	800d290 <_vfiprintf_r+0x1b8>
 800d2ae:	ab03      	add	r3, sp, #12
 800d2b0:	9300      	str	r3, [sp, #0]
 800d2b2:	462a      	mov	r2, r5
 800d2b4:	4b12      	ldr	r3, [pc, #72]	@ (800d300 <_vfiprintf_r+0x228>)
 800d2b6:	a904      	add	r1, sp, #16
 800d2b8:	4630      	mov	r0, r6
 800d2ba:	f7fd fbe1 	bl	800aa80 <_printf_float>
 800d2be:	4607      	mov	r7, r0
 800d2c0:	1c78      	adds	r0, r7, #1
 800d2c2:	d1d6      	bne.n	800d272 <_vfiprintf_r+0x19a>
 800d2c4:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 800d2c6:	07d9      	lsls	r1, r3, #31
 800d2c8:	d405      	bmi.n	800d2d6 <_vfiprintf_r+0x1fe>
 800d2ca:	89ab      	ldrh	r3, [r5, #12]
 800d2cc:	059a      	lsls	r2, r3, #22
 800d2ce:	d402      	bmi.n	800d2d6 <_vfiprintf_r+0x1fe>
 800d2d0:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 800d2d2:	f7fe f999 	bl	800b608 <__retarget_lock_release_recursive>
 800d2d6:	89ab      	ldrh	r3, [r5, #12]
 800d2d8:	065b      	lsls	r3, r3, #25
 800d2da:	f53f af1f 	bmi.w	800d11c <_vfiprintf_r+0x44>
 800d2de:	9809      	ldr	r0, [sp, #36]	@ 0x24
 800d2e0:	e71e      	b.n	800d120 <_vfiprintf_r+0x48>
 800d2e2:	ab03      	add	r3, sp, #12
 800d2e4:	9300      	str	r3, [sp, #0]
 800d2e6:	462a      	mov	r2, r5
 800d2e8:	4b05      	ldr	r3, [pc, #20]	@ (800d300 <_vfiprintf_r+0x228>)
 800d2ea:	a904      	add	r1, sp, #16
 800d2ec:	4630      	mov	r0, r6
 800d2ee:	f7fd fe4f 	bl	800af90 <_printf_i>
 800d2f2:	e7e4      	b.n	800d2be <_vfiprintf_r+0x1e6>
 800d2f4:	0800e032 	.word	0x0800e032
 800d2f8:	0800e03c 	.word	0x0800e03c
 800d2fc:	0800aa81 	.word	0x0800aa81
 800d300:	0800d0b5 	.word	0x0800d0b5
 800d304:	0800e038 	.word	0x0800e038

0800d308 <__swbuf_r>:
 800d308:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d30a:	460e      	mov	r6, r1
 800d30c:	4614      	mov	r4, r2
 800d30e:	4605      	mov	r5, r0
 800d310:	b118      	cbz	r0, 800d31a <__swbuf_r+0x12>
 800d312:	6a03      	ldr	r3, [r0, #32]
 800d314:	b90b      	cbnz	r3, 800d31a <__swbuf_r+0x12>
 800d316:	f7fd ffe5 	bl	800b2e4 <__sinit>
 800d31a:	69a3      	ldr	r3, [r4, #24]
 800d31c:	60a3      	str	r3, [r4, #8]
 800d31e:	89a3      	ldrh	r3, [r4, #12]
 800d320:	071a      	lsls	r2, r3, #28
 800d322:	d501      	bpl.n	800d328 <__swbuf_r+0x20>
 800d324:	6923      	ldr	r3, [r4, #16]
 800d326:	b943      	cbnz	r3, 800d33a <__swbuf_r+0x32>
 800d328:	4621      	mov	r1, r4
 800d32a:	4628      	mov	r0, r5
 800d32c:	f000 f82a 	bl	800d384 <__swsetup_r>
 800d330:	b118      	cbz	r0, 800d33a <__swbuf_r+0x32>
 800d332:	f04f 37ff 	mov.w	r7, #4294967295
 800d336:	4638      	mov	r0, r7
 800d338:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800d33a:	6823      	ldr	r3, [r4, #0]
 800d33c:	6922      	ldr	r2, [r4, #16]
 800d33e:	1a98      	subs	r0, r3, r2
 800d340:	6963      	ldr	r3, [r4, #20]
 800d342:	b2f6      	uxtb	r6, r6
 800d344:	4283      	cmp	r3, r0
 800d346:	4637      	mov	r7, r6
 800d348:	dc05      	bgt.n	800d356 <__swbuf_r+0x4e>
 800d34a:	4621      	mov	r1, r4
 800d34c:	4628      	mov	r0, r5
 800d34e:	f7ff fda7 	bl	800cea0 <_fflush_r>
 800d352:	2800      	cmp	r0, #0
 800d354:	d1ed      	bne.n	800d332 <__swbuf_r+0x2a>
 800d356:	68a3      	ldr	r3, [r4, #8]
 800d358:	3b01      	subs	r3, #1
 800d35a:	60a3      	str	r3, [r4, #8]
 800d35c:	6823      	ldr	r3, [r4, #0]
 800d35e:	1c5a      	adds	r2, r3, #1
 800d360:	6022      	str	r2, [r4, #0]
 800d362:	701e      	strb	r6, [r3, #0]
 800d364:	6962      	ldr	r2, [r4, #20]
 800d366:	1c43      	adds	r3, r0, #1
 800d368:	429a      	cmp	r2, r3
 800d36a:	d004      	beq.n	800d376 <__swbuf_r+0x6e>
 800d36c:	89a3      	ldrh	r3, [r4, #12]
 800d36e:	07db      	lsls	r3, r3, #31
 800d370:	d5e1      	bpl.n	800d336 <__swbuf_r+0x2e>
 800d372:	2e0a      	cmp	r6, #10
 800d374:	d1df      	bne.n	800d336 <__swbuf_r+0x2e>
 800d376:	4621      	mov	r1, r4
 800d378:	4628      	mov	r0, r5
 800d37a:	f7ff fd91 	bl	800cea0 <_fflush_r>
 800d37e:	2800      	cmp	r0, #0
 800d380:	d0d9      	beq.n	800d336 <__swbuf_r+0x2e>
 800d382:	e7d6      	b.n	800d332 <__swbuf_r+0x2a>

0800d384 <__swsetup_r>:
 800d384:	b538      	push	{r3, r4, r5, lr}
 800d386:	4b29      	ldr	r3, [pc, #164]	@ (800d42c <__swsetup_r+0xa8>)
 800d388:	4605      	mov	r5, r0
 800d38a:	6818      	ldr	r0, [r3, #0]
 800d38c:	460c      	mov	r4, r1
 800d38e:	b118      	cbz	r0, 800d398 <__swsetup_r+0x14>
 800d390:	6a03      	ldr	r3, [r0, #32]
 800d392:	b90b      	cbnz	r3, 800d398 <__swsetup_r+0x14>
 800d394:	f7fd ffa6 	bl	800b2e4 <__sinit>
 800d398:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800d39c:	0719      	lsls	r1, r3, #28
 800d39e:	d422      	bmi.n	800d3e6 <__swsetup_r+0x62>
 800d3a0:	06da      	lsls	r2, r3, #27
 800d3a2:	d407      	bmi.n	800d3b4 <__swsetup_r+0x30>
 800d3a4:	2209      	movs	r2, #9
 800d3a6:	602a      	str	r2, [r5, #0]
 800d3a8:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800d3ac:	81a3      	strh	r3, [r4, #12]
 800d3ae:	f04f 30ff 	mov.w	r0, #4294967295
 800d3b2:	e033      	b.n	800d41c <__swsetup_r+0x98>
 800d3b4:	0758      	lsls	r0, r3, #29
 800d3b6:	d512      	bpl.n	800d3de <__swsetup_r+0x5a>
 800d3b8:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 800d3ba:	b141      	cbz	r1, 800d3ce <__swsetup_r+0x4a>
 800d3bc:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 800d3c0:	4299      	cmp	r1, r3
 800d3c2:	d002      	beq.n	800d3ca <__swsetup_r+0x46>
 800d3c4:	4628      	mov	r0, r5
 800d3c6:	f7fe ff15 	bl	800c1f4 <_free_r>
 800d3ca:	2300      	movs	r3, #0
 800d3cc:	6363      	str	r3, [r4, #52]	@ 0x34
 800d3ce:	89a3      	ldrh	r3, [r4, #12]
 800d3d0:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
 800d3d4:	81a3      	strh	r3, [r4, #12]
 800d3d6:	2300      	movs	r3, #0
 800d3d8:	6063      	str	r3, [r4, #4]
 800d3da:	6923      	ldr	r3, [r4, #16]
 800d3dc:	6023      	str	r3, [r4, #0]
 800d3de:	89a3      	ldrh	r3, [r4, #12]
 800d3e0:	f043 0308 	orr.w	r3, r3, #8
 800d3e4:	81a3      	strh	r3, [r4, #12]
 800d3e6:	6923      	ldr	r3, [r4, #16]
 800d3e8:	b94b      	cbnz	r3, 800d3fe <__swsetup_r+0x7a>
 800d3ea:	89a3      	ldrh	r3, [r4, #12]
 800d3ec:	f403 7320 	and.w	r3, r3, #640	@ 0x280
 800d3f0:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 800d3f4:	d003      	beq.n	800d3fe <__swsetup_r+0x7a>
 800d3f6:	4621      	mov	r1, r4
 800d3f8:	4628      	mov	r0, r5
 800d3fa:	f000 f883 	bl	800d504 <__smakebuf_r>
 800d3fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800d402:	f013 0201 	ands.w	r2, r3, #1
 800d406:	d00a      	beq.n	800d41e <__swsetup_r+0x9a>
 800d408:	2200      	movs	r2, #0
 800d40a:	60a2      	str	r2, [r4, #8]
 800d40c:	6962      	ldr	r2, [r4, #20]
 800d40e:	4252      	negs	r2, r2
 800d410:	61a2      	str	r2, [r4, #24]
 800d412:	6922      	ldr	r2, [r4, #16]
 800d414:	b942      	cbnz	r2, 800d428 <__swsetup_r+0xa4>
 800d416:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
 800d41a:	d1c5      	bne.n	800d3a8 <__swsetup_r+0x24>
 800d41c:	bd38      	pop	{r3, r4, r5, pc}
 800d41e:	0799      	lsls	r1, r3, #30
 800d420:	bf58      	it	pl
 800d422:	6962      	ldrpl	r2, [r4, #20]
 800d424:	60a2      	str	r2, [r4, #8]
 800d426:	e7f4      	b.n	800d412 <__swsetup_r+0x8e>
 800d428:	2000      	movs	r0, #0
 800d42a:	e7f7      	b.n	800d41c <__swsetup_r+0x98>
 800d42c:	20000098 	.word	0x20000098

0800d430 <_raise_r>:
 800d430:	291f      	cmp	r1, #31
 800d432:	b538      	push	{r3, r4, r5, lr}
 800d434:	4605      	mov	r5, r0
 800d436:	460c      	mov	r4, r1
 800d438:	d904      	bls.n	800d444 <_raise_r+0x14>
 800d43a:	2316      	movs	r3, #22
 800d43c:	6003      	str	r3, [r0, #0]
 800d43e:	f04f 30ff 	mov.w	r0, #4294967295
 800d442:	bd38      	pop	{r3, r4, r5, pc}
 800d444:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
 800d446:	b112      	cbz	r2, 800d44e <_raise_r+0x1e>
 800d448:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 800d44c:	b94b      	cbnz	r3, 800d462 <_raise_r+0x32>
 800d44e:	4628      	mov	r0, r5
 800d450:	f000 f830 	bl	800d4b4 <_getpid_r>
 800d454:	4622      	mov	r2, r4
 800d456:	4601      	mov	r1, r0
 800d458:	4628      	mov	r0, r5
 800d45a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800d45e:	f000 b817 	b.w	800d490 <_kill_r>
 800d462:	2b01      	cmp	r3, #1
 800d464:	d00a      	beq.n	800d47c <_raise_r+0x4c>
 800d466:	1c59      	adds	r1, r3, #1
 800d468:	d103      	bne.n	800d472 <_raise_r+0x42>
 800d46a:	2316      	movs	r3, #22
 800d46c:	6003      	str	r3, [r0, #0]
 800d46e:	2001      	movs	r0, #1
 800d470:	e7e7      	b.n	800d442 <_raise_r+0x12>
 800d472:	2100      	movs	r1, #0
 800d474:	f842 1024 	str.w	r1, [r2, r4, lsl #2]
 800d478:	4620      	mov	r0, r4
 800d47a:	4798      	blx	r3
 800d47c:	2000      	movs	r0, #0
 800d47e:	e7e0      	b.n	800d442 <_raise_r+0x12>

0800d480 <raise>:
 800d480:	4b02      	ldr	r3, [pc, #8]	@ (800d48c <raise+0xc>)
 800d482:	4601      	mov	r1, r0
 800d484:	6818      	ldr	r0, [r3, #0]
 800d486:	f7ff bfd3 	b.w	800d430 <_raise_r>
 800d48a:	bf00      	nop
 800d48c:	20000098 	.word	0x20000098

0800d490 <_kill_r>:
 800d490:	b538      	push	{r3, r4, r5, lr}
 800d492:	4d07      	ldr	r5, [pc, #28]	@ (800d4b0 <_kill_r+0x20>)
 800d494:	2300      	movs	r3, #0
 800d496:	4604      	mov	r4, r0
 800d498:	4608      	mov	r0, r1
 800d49a:	4611      	mov	r1, r2
 800d49c:	602b      	str	r3, [r5, #0]
 800d49e:	f7fb fcab 	bl	8008df8 <_kill>
 800d4a2:	1c43      	adds	r3, r0, #1
 800d4a4:	d102      	bne.n	800d4ac <_kill_r+0x1c>
 800d4a6:	682b      	ldr	r3, [r5, #0]
 800d4a8:	b103      	cbz	r3, 800d4ac <_kill_r+0x1c>
 800d4aa:	6023      	str	r3, [r4, #0]
 800d4ac:	bd38      	pop	{r3, r4, r5, pc}
 800d4ae:	bf00      	nop
 800d4b0:	20001784 	.word	0x20001784

0800d4b4 <_getpid_r>:
 800d4b4:	f7fb bc9e 	b.w	8008df4 <_getpid>

0800d4b8 <__swhatbuf_r>:
 800d4b8:	b570      	push	{r4, r5, r6, lr}
 800d4ba:	460c      	mov	r4, r1
 800d4bc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800d4c0:	2900      	cmp	r1, #0
 800d4c2:	b096      	sub	sp, #88	@ 0x58
 800d4c4:	4615      	mov	r5, r2
 800d4c6:	461e      	mov	r6, r3
 800d4c8:	da0d      	bge.n	800d4e6 <__swhatbuf_r+0x2e>
 800d4ca:	89a3      	ldrh	r3, [r4, #12]
 800d4cc:	f013 0f80 	tst.w	r3, #128	@ 0x80
 800d4d0:	f04f 0100 	mov.w	r1, #0
 800d4d4:	bf14      	ite	ne
 800d4d6:	2340      	movne	r3, #64	@ 0x40
 800d4d8:	f44f 6380 	moveq.w	r3, #1024	@ 0x400
 800d4dc:	2000      	movs	r0, #0
 800d4de:	6031      	str	r1, [r6, #0]
 800d4e0:	602b      	str	r3, [r5, #0]
 800d4e2:	b016      	add	sp, #88	@ 0x58
 800d4e4:	bd70      	pop	{r4, r5, r6, pc}
 800d4e6:	466a      	mov	r2, sp
 800d4e8:	f000 f848 	bl	800d57c <_fstat_r>
 800d4ec:	2800      	cmp	r0, #0
 800d4ee:	dbec      	blt.n	800d4ca <__swhatbuf_r+0x12>
 800d4f0:	9901      	ldr	r1, [sp, #4]
 800d4f2:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
 800d4f6:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
 800d4fa:	4259      	negs	r1, r3
 800d4fc:	4159      	adcs	r1, r3
 800d4fe:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 800d502:	e7eb      	b.n	800d4dc <__swhatbuf_r+0x24>

0800d504 <__smakebuf_r>:
 800d504:	898b      	ldrh	r3, [r1, #12]
 800d506:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800d508:	079d      	lsls	r5, r3, #30
 800d50a:	4606      	mov	r6, r0
 800d50c:	460c      	mov	r4, r1
 800d50e:	d507      	bpl.n	800d520 <__smakebuf_r+0x1c>
 800d510:	f104 0347 	add.w	r3, r4, #71	@ 0x47
 800d514:	6023      	str	r3, [r4, #0]
 800d516:	6123      	str	r3, [r4, #16]
 800d518:	2301      	movs	r3, #1
 800d51a:	6163      	str	r3, [r4, #20]
 800d51c:	b003      	add	sp, #12
 800d51e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800d520:	ab01      	add	r3, sp, #4
 800d522:	466a      	mov	r2, sp
 800d524:	f7ff ffc8 	bl	800d4b8 <__swhatbuf_r>
 800d528:	9f00      	ldr	r7, [sp, #0]
 800d52a:	4605      	mov	r5, r0
 800d52c:	4639      	mov	r1, r7
 800d52e:	4630      	mov	r0, r6
 800d530:	f7fe fed4 	bl	800c2dc <_malloc_r>
 800d534:	b948      	cbnz	r0, 800d54a <__smakebuf_r+0x46>
 800d536:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800d53a:	059a      	lsls	r2, r3, #22
 800d53c:	d4ee      	bmi.n	800d51c <__smakebuf_r+0x18>
 800d53e:	f023 0303 	bic.w	r3, r3, #3
 800d542:	f043 0302 	orr.w	r3, r3, #2
 800d546:	81a3      	strh	r3, [r4, #12]
 800d548:	e7e2      	b.n	800d510 <__smakebuf_r+0xc>
 800d54a:	89a3      	ldrh	r3, [r4, #12]
 800d54c:	6020      	str	r0, [r4, #0]
 800d54e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800d552:	81a3      	strh	r3, [r4, #12]
 800d554:	9b01      	ldr	r3, [sp, #4]
 800d556:	e9c4 0704 	strd	r0, r7, [r4, #16]
 800d55a:	b15b      	cbz	r3, 800d574 <__smakebuf_r+0x70>
 800d55c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800d560:	4630      	mov	r0, r6
 800d562:	f000 f81d 	bl	800d5a0 <_isatty_r>
 800d566:	b128      	cbz	r0, 800d574 <__smakebuf_r+0x70>
 800d568:	89a3      	ldrh	r3, [r4, #12]
 800d56a:	f023 0303 	bic.w	r3, r3, #3
 800d56e:	f043 0301 	orr.w	r3, r3, #1
 800d572:	81a3      	strh	r3, [r4, #12]
 800d574:	89a3      	ldrh	r3, [r4, #12]
 800d576:	431d      	orrs	r5, r3
 800d578:	81a5      	strh	r5, [r4, #12]
 800d57a:	e7cf      	b.n	800d51c <__smakebuf_r+0x18>

0800d57c <_fstat_r>:
 800d57c:	b538      	push	{r3, r4, r5, lr}
 800d57e:	4d07      	ldr	r5, [pc, #28]	@ (800d59c <_fstat_r+0x20>)
 800d580:	2300      	movs	r3, #0
 800d582:	4604      	mov	r4, r0
 800d584:	4608      	mov	r0, r1
 800d586:	4611      	mov	r1, r2
 800d588:	602b      	str	r3, [r5, #0]
 800d58a:	f7fb fc57 	bl	8008e3c <_fstat>
 800d58e:	1c43      	adds	r3, r0, #1
 800d590:	d102      	bne.n	800d598 <_fstat_r+0x1c>
 800d592:	682b      	ldr	r3, [r5, #0]
 800d594:	b103      	cbz	r3, 800d598 <_fstat_r+0x1c>
 800d596:	6023      	str	r3, [r4, #0]
 800d598:	bd38      	pop	{r3, r4, r5, pc}
 800d59a:	bf00      	nop
 800d59c:	20001784 	.word	0x20001784

0800d5a0 <_isatty_r>:
 800d5a0:	b538      	push	{r3, r4, r5, lr}
 800d5a2:	4d06      	ldr	r5, [pc, #24]	@ (800d5bc <_isatty_r+0x1c>)
 800d5a4:	2300      	movs	r3, #0
 800d5a6:	4604      	mov	r4, r0
 800d5a8:	4608      	mov	r0, r1
 800d5aa:	602b      	str	r3, [r5, #0]
 800d5ac:	f7fb fc4c 	bl	8008e48 <_isatty>
 800d5b0:	1c43      	adds	r3, r0, #1
 800d5b2:	d102      	bne.n	800d5ba <_isatty_r+0x1a>
 800d5b4:	682b      	ldr	r3, [r5, #0]
 800d5b6:	b103      	cbz	r3, 800d5ba <_isatty_r+0x1a>
 800d5b8:	6023      	str	r3, [r4, #0]
 800d5ba:	bd38      	pop	{r3, r4, r5, pc}
 800d5bc:	20001784 	.word	0x20001784

0800d5c0 <_init>:
 800d5c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d5c2:	bf00      	nop
 800d5c4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800d5c6:	bc08      	pop	{r3}
 800d5c8:	469e      	mov	lr, r3
 800d5ca:	4770      	bx	lr

0800d5cc <_fini>:
 800d5cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d5ce:	bf00      	nop
 800d5d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800d5d2:	bc08      	pop	{r3}
 800d5d4:	469e      	mov	lr, r3
 800d5d6:	4770      	bx	lr
