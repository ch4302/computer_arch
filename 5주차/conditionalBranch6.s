# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 조건문 (if-else)
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
	j done		# 조건에 맞으면 덧셈 수행 후 done으로 점프하고, 조건에 맞지 않으면 뺄셈 수행
L1:
	sub $s0, $s0, $s3	# f = f - i
done:
	sw $s0, myf

	.data
myf:	.word 0
myg:	.word 1
myh:	.word 2
myi:	.word 3
myj:	.word 4