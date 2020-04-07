loop:
    lw $12, 0($1)           ; $12 = A[i]
    dmul $12, $12, $9       ; $12 *= $9 ;; $12 = A[i] * mult
    daddi $5, $5, 1         ; i++
    daddi $1, $1, 8         ; A += 8
    bne $6, $5, loop        ; Exit loop if i == N

dadd $9, $9, $12            ; $9 += $12 ;; mult += A[i] * mult
sw $9, mult($0)             ; Store result
halt
