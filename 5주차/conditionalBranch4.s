# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 무조건 분기 (jr; jump register)
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

	.text
	.globl main
main:
	addi $s0, $0, 4		# 0x00400024
	addi $s1, $0, 1		# 0x00400028
	li $s2, 0x00400040	# 0x0040002c
				# 0x00400030
	jr $s2			# 0x00400034
	sra $s1, $s2, 2		# 0x00400038
	addi $s1, $s1, 1		# 0x0040003c
	sub $s1, $s1, $s0		# 0x00400040
	add $s1, $s1, $s0		# 0x00400044

	.data
aaa:	.word 0