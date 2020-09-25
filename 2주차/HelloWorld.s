# 한림대학교 빅데이터전공
# 컴퓨터구조 2주차 과제
# 학번: 20195264 이름: 채준혁

# code를 작성
	.text 
	.globl main
main: 
	# print my English name
	la $a0, myStr
	li $v0, 4
	syscall

	# exit
	li $v0, 10
	syscall

# data를 정의
	.data
myStr:	.asciiz "Junhyeok CHAE\n"