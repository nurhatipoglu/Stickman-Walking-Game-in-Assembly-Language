org 100h

yurume:
mov ah,0
mov al,3
int 10h
call yol_cizme
mov dx,si
inc dl
mov dh,10
call cop_adam_cizme
mov si,dx
cmp dl,78
jnz yurume

ret

cop_adam_cizme PROC
    tekrar:
    mov ah,2
    int 10h
    mov ah,9
    mov al,'-'
    mov bl,0fh
    mov cx,1
    int 10h
    inc dh
    cmp dh,13
    jnz tekrar
    dec dl
    mov ah,2
    int 10h
    mov ah,9
    int 10h
    add dl,2
    mov ah,2
    int 10h
    mov ah,9
    int 10h
    mov ah,2
    sub dl,2
    mov dh,11
    int 10h
    mov ah,9
    mov al,'|'
    int 10h
    add dl,2
    mov ah,2
    int 10h
    mov ah,9
    int 10h
    dec dl
    mov dh,12
    tekrar1:
    mov ah,2
    int 10h
    mov ah,9
    int 10h
    inc dh
    cmp dh,16
    jnz tekrar1
    dec dl
    mov ah,2
    int 10h
    mov ah,9
    int 10h
    add dl,2
    mov ah,2
    int 10h
    mov ah,9
    int 10h

    ret
cop_adam_cizme ENDP

yol_cizme PROC
    mov dh,17
    mov dl,0
    mov ah,2
    int 10h
    mov ah,9
    mov al,'_'
    mov bl,0fh
    mov cx,80
    int 10h
    
    ret
yol_cizme ENDP





