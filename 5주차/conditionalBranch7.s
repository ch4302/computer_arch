# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 반복문 (while)
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

	.text
	.globl main
main:	# $s0 = pow, $s1 = x
	addi $s0, $s0, 1	# pow <- 1
	add $s1, $0, $0	# x <- 0
	addi $t0, $0, 128	# $t0 <- 128

while:	beq $s0, 	$t0, done
	sll $s0, $s0, 1
	addi $s1, $s1, 1
	j while

done:
	sw $s1, myx


	.data
pow:	.word 0
myx:	.word 0