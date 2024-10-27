        AREA RESET, CODE, READONLY
        ENTRY
        EXPORT __main        ; Export main entry point (to be called by Reset_Handler)

__main		
							              
        LDR R0, =0x12345678             ; Load immediate value 0x1234FFFF into R0
		BFC R0, #4, #8			  		; Clear 8 bits starting from bit 4 in R0 (R0[11:4] = 0)
		
        BX LR                           ; Return
		
        END
