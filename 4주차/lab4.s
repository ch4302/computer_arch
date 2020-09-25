# 소프트웨어융합대학 컴퓨터구조 수업
# 4주차 - 논리 명령 테스트
# 학번: 20195264 성명: 채준혁

	.text
	.globl main
main:
	lw $t1, myint1
	lw $t2, myint2
	or $t0, $t1, $t2	# $t0 <- 0

	li $v0, 10
	syscall

	.data
myint1:	.word 0x0f00ffff	# 0000	1111	0000	0000	1111	1111	1111	1111
myint2:	.word 0xffff00f0	# 1111	1111	1111	1111	0000	0000	1111	0000