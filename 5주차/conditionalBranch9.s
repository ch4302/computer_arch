# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - Arrays
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

	.text
	.globl main
main:	
	la $s0, array	# lui + ori


	lw $t1, 0($s0)
	sll $t1, $t1, 1
	sw $t1, 0($s0)
	
	lw $t1, 4($s0)
	sll $t1, $t1, 1
	sw $t1, 4($s0)
	

	.data
array:	.word 1, 2, 3, 4, 5