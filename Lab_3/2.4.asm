loop:
    lw $12, 0($1)           ; $12 = A[i]
    dmul $12, $12, $9       ; $12 *= $9 ;; $12 = A[i] * mult
    daddi $5, $5, 1         ; i++
    daddi $1, $1, 8         ; A += 8
    
    lw $13, 0($1)           ; $13 = A[i]
    dadd $9, $9, $12        ; $9 += $12 ;; mult += A[i] * mult
    dmul $13, $13, $9       ; $13 *= $9 ;; $13 = A[i] * mult
    daddi $5, $5, 1         ; i++
    daddi $1, $1, 8         ; A += 8  

    lw $14, 0($1)           ; $14 = A[i]
    dadd $9, $9, $13        ; $9 += $13 ;; mult += A[i] * mult
    dmul $14, $14, $9       ; $14 *= $9 ;; $14 = A[i] * mult
    daddi $5, $5, 1         ; i++
    daddi $1, $1, 8         ; A += 8
    dadd $9, $9, $14        ; $9 += $14 ;; mult += A[i] * mult
    bne $6, $5, loop        ; Exit loop if i == N

sw $9, mult($0)             ; Store result
halt
