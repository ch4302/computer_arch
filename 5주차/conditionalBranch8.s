# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 반복문 (for)
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

	.text
	.globl main
main:	# $s0 = i, $s1 = sum
	addi $s1, $s0, 0	# sum <- 0
	add $s0, $0, $0	# i <- 0
	addi $t0, $0, 10	# $t0 <- 10

for:	beq $s0, 	$t0, done
	add $s1, $s1, $s0
	addi $s0, $s0, 1
	j for

done:
	sw $s1, sum


	.data
sum:	.word 0