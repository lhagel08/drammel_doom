.data
	greeting: .asciiz "Put an integer in here: "
	outMessage: .asciiz "The integet you put in is: "
	

	
	promtPrima: .asciiz "Give me the first decimal number:"
	insertFirstNum: .word 0
	
	promptTwo: .asciiz "Give me the second decimal number: "
	insSecNum: .word 0
	
	SumMessage: .asciiz "The sum of the two given numbers is: "
	TheSum: .word 0
	
.text
	
	#prints out greeting
	li $v0, 4
	la $a0, greeting
	syscall
		
	li $v0, 4
	la $a0, promtPrima
	syscall
	
	#take in first variable and move it to a proper register
	li $v0, 5
	syscall
	move $t0, $v0
	

	#prompt and take in second variable
	li $v0, 4
	la $a0, promptTwo
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0


	add $t2, $t0, $t1

	li $v0, 4
	la $a0, SumMessage
	syscall

	li $v0, 1
	add $a0, $t2 ,$zero
	syscall

	#Eo programm syscall
	li $v0, 10   
        syscall
