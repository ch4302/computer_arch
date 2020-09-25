# load word test

	.text
	.globl main
main:
	li $t1, 0x10000000
	li $t4 0x23456789

	sw $t4, 0($t1)
	lb $t2, 1($t1)

	# lw $t2, 1($t1)
	# -> Memory alignment로 인해 실행 불가
	
	li $v0, 10
	syscall


	.data
my:	.word 0