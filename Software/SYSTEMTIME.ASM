assume cs:code
code segment
start:
     mov ah,2ch    ;function 2C under INT 21h returns time in ch(hrs), cl(mins)
     int 21h

     mov ax,cx
     add ax,3030h

     mov dl,ah
     mov ah,02h
     int 21h

     mov dl,':'
     mov ah,02h
     int 21h

     mov dl,al
     mov ah,02h
     int 21h

     mov ah,4ch
     int 21h
code ends
end start

