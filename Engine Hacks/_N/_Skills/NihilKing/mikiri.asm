
@thumb
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	lsl	r1, r1, #24
	asr	r2, r1, #24
	ldr	r0, =$0203A4D0
	ldrh	r1, [r0, #0]
	mov	r0, #2
	and	r0, r1
	beq	start
	mov	r0, r2
	bx	lr
start
;除外判定
	cmp	r2, #0
	bne	return
	mov	r0, r14
	ldr	r1, =$0802b40B	;;必殺は除外
	cmp	r0, r1
	beq	return
	ldr	r1, =$0802b607	;;デビルアクスも除外
	cmp	r0, r1
	beq	return
;除外判定終了
	push	{r3}
	mov	r3, sp
	ldr	r2, =$0802AE
loop
	ldr	r0, [r3]
	lsr	r0, r0, #8
	cmp	r0, r2
	beq	gotA
	add	r3, #4
	b	loop
return:
	push	{lr}
	ldr	r0, =$0802a4a6
	mov	pc, r0
gotA
	ldr	r2, [r3, #4]
	ldr	r3, [r3, #8]
;反撃チェック
	ldr	r0, =$0203A604
	ldr	r0, [r0]
	ldr	r0, [r0]
	lsl	r0, r0, #28
	lsr	r0, r0, #30
	cmp	r0, #2
	bne	check
	eor r3, r2	;反撃なら逆転
	eor r2, r3
	eor r3, r2
check
;大盾チェック
	mov	r0, sp
	ldr	r0, [r0, #24]
	ldr	r1, =$0802B3B9	;;大盾は専用
	cmp	r0, r1
	beq	Reverse
;独自チェック
	mov	r0, r10
	cmp	r0, #0xDF
	beq	Reverse
	b	nonTATE
Reverse
	eor r3, r2
	eor r2, r3
	eor r3, r2
nonTATE
;見切りチェック
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #0]
	ldr	r0, [r0, #40]
	ldr	r1, [r1, #40]
	orr	r0, r1
	lsl	r0, r0, #8
	bmi	nothing
	ldr	r1, [r3]
	ldrh	r1, [r1, #0x26]
	ldrh	r0, [r3, #0x3A]
	orr	r0, r1
	lsl r0, r0, #29	;見切りの書
	bpl toking
nothing:
	mov	r0, #0
	str	r0, [sp]
	b	toace
	
toking:
;王の器チェック
	ldr	r1, [r2]
	ldrh	r1, [r1, #0x26]	;;ユニット0x2000王の器
	lsl	r1, r1, #18
	bmi	gotK
;クラスチェック
@align 4
	ldr	r3, [adr]
	ldr	r1, [r2, #4]
	ldrb	r1, [r1, #4]	;;クラスID
classloop
	ldrb	r0, [r3]
	cmp	r0, #0
	beq	toace
	cmp	r1, r0
	beq	gotK
	add	r3, #1
	b	classloop
gotK
	ldr	r0, [sp]
	add	r0, #10
	str	r0, [sp]
toace:
;勇将チェック
	ldrh	r0, [r2, #0x3A]
	ldr	r1, [r2]
	ldrh	r1, [r1, #0x26]
	orr r1, r0
	lsl	r1, r1, #25	;;ユニット0x40
	bmi	gotAC
@align 4
	ldr	r3, [adr+4]
	ldr	r1, [r2, #4]
	ldrb	r1, [r1, #4]	;;クラスID
loopAC:
	ldrb	r0, [r3]
	cmp	r0, #0
	beq	end
	cmp	r1, r0
	beq	gotAC
	add	r3, #1
	b	loopAC
gotAC:
	ldrb	r0, [r2, #0x13]	;NOW
	ldrb	r1, [r2, #0x12]	;MAX
	lsl	r0, r0, #1
	cmp	r0, r1
	bgt	end
	ldr	r0, [sp]
	add	r0, #30
	str	r0, [sp]
end
	mov	r2, #0
	pop	{r3}
	b	return

;non
;	pop	{r3}
;	mov	r0, #0
;	bx	lr
;0x8反撃
;0x4追撃

@ltorg
adr:
