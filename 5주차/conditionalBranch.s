# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 조건부 분기 (beq; branch if equal)
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

	.text
	.globl main
main:
	addi $s0, $0, 4	# $s0 <- 4
	addi $s1, $0, 1	# $s1 <- 1
	sll $s1, $s1, 2
	beq $s0, $s1, target
	addi $s1, $s1, 1
	sub $s1, $s1, $s0
	
target:
	add $s1, $s1, $s0

	.data
aaa:	.word 0