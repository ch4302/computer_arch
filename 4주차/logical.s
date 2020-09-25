# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 수업
# 학번: 20195264	이름: 채준혁
# * 논리 명령어 실습 *

	.text
	.globl main
main:
	li $t1, 9
	li $t2, 4
	
	mult $t1, $t2	# $t1 * $t2 -> hi : lo (왠만하면 lo)
	div $t1, $t2	# $t1 / $t2 -> 나누기의 몫: lo
			#	나누기의 나머지: hi

	li $v0, 10
	syscall


	.data
aaa: 	.word 0xffff0000
