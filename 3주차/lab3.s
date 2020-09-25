# 한림대학교 빅데이터전공
# 학번: 20195264, 이름: 채준혁
# 3주차 실습

	.text
	.globl main
main:
	lw $t1 myb
	addi $t0, $t1, -2	# $t1 (6) - 2 --> $t0
	j here

	addi $t0, $t0, -1
	addi $t0, $t0, -1
	addi $t0, $t0, -1

here:
	addi $t0, $t0, -2
	addi $t0, $t0, -2
	addi $t0, $t0, -2

	# 프로그램 끝내기 (exit)
	li $v0, 10
	syscall

	.data
myb:	.word 6