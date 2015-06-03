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
	#li $t0, insertFirstNum
	#li $t1, insSecNum
	
	#prints out greeting
	la $a0, greeting
	li $a0, 4
	syscall
		
	la $a0, promtPrima
	li $a0, 4
	syscall
	
	#take in first variable and move it to a proper register
	li $v0, 5
	syscall
	move $t0, $v0
	
		
	la $a0, promptTwo
	li $a0, 4
	syscall
		
	li $v0, 5
	syscall
	move $t1, $v0
	
	add $t2, $t1, $t0
	

	
	
	li $v0, 4       # load syscall print int into $v0
    move $a0, $t2   #move the number to print into $a0
    li, $v0,1
    la, $a0, $t2
    syscall
	#Eo programm syscall
	li $v0, 10   
        syscall
