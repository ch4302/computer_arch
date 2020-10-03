# 한림대학교 소프트웨어융합대학
# 컴퓨터구조 5주차 - 조건부 분기관련 homework
# 학번: 20195264 성명: 채준혁
# E-mail: cjh4302@gmail.com

# 100개의 array 값들에 4배씩 곱해서 저장해주세요!
# for(i = 0; i < 100; i++) 
#	array[i] = array[i] * 4

	.text
	.globl main
main:	
	la $s0, array	# array의 시작 주소 읽기
	addi $s1, $0, 0	# i = 0
	addi $t2, $0, 1000	# #t2 = 1000

loop:
	slt $t0, $s1, $t2	# i < 1000
	beq $t0, $0, done	# if not then done
	sll $t0, $s1, 2	# $t0 = i * 4 (byte offset)
	add $t0, $t0, $s0	# address of array[i]
	lw $t1, 0($t0)	# $t1 = array[i]
	sll $t1, $t1, 2	# $t1 = array[i] * 4
	sw $t1, 0($t0)	# array[i] = array[i] * 4
	addi $s1, $s1, 1	# i = i + 1
	j loop		# repeat
done:
	.data
array:	.word 1:100	# 100개의 정수형 element를 갖는 배열
			# 모두 초기값이 1로 초기화됨