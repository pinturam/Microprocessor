;program to print hello world
data segment
        message db "hello world$"
data ends
code segment
        assume ds:data, cs:code
begin:
        mov ax,data
        mov ds,ax
        ;lea dx,message
        mov dx,offset message
        mov ah,9
        int 21h

        mov ah,4ch
        int 21h
code ends
end begin

