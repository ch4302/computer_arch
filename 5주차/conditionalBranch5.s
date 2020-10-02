# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 조건문 (if)
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

	.text
	.globl main
main:
	lw $s0, myf
	lw $s1, myg
	lw $s2, myh
	lw $s3, myi
	lw $s4, myj

	bne $s3, $s4, L1
	add $s0, $s1, $s2	# f = g + h
L1:
	sub $s0, $s0, $s3	# f = f - i

	sw $s0, myf

	.data
myf:	.word 0
myg:	.word 1
myh:	.word 2
myi:	.word 3
myj:	.word 4