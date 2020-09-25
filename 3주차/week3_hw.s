# 한림대학교 빅데이터전공
# 학번: 20195264	성명: 채준혁
# 3주차 과제

	.text
	.globl main
main:
	li $t0, 0x23456789
	li $t1, 0x10000000

	sw $t0, 0($t1)
	lb $s0, 1($t1)

	# 프로그램 끝내기 (exit)
	li $v0, 10
	syscall

	.data
my:	.word 0