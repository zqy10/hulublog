comment @---------------------------------------------------------------------
��Ŀ����:
��֪����s�д洢��һ������C���Ա�׼���ַ���(ĩβ��һ��ASCII�����0���ַ�)������ 
#1_begin
   ��  
#1_end
֮����д���룬���������s�е��ַ���
���磺��s������Ϊ 
   abc123
��Ӧ����� 
   321cba
------------------------------------------------------------------------------@

;==========������´��뱣�浽src\main.asm==============================
;==========ѡ��main.sh��src�ļ���->�Ҽ�->ѹ����submit.zip�ύ==========
data segment
sth db 10h dup(0)
s db "abc123", 0; �������������judgeʱ�п��ܻᷢ���仯
data ends

code segment
assume cs:code, ds:data
main:
   mov ax, seg s
   mov ds, ax
;����#1_begin��#1_end֮�䲹�����ʵ�����¹���:
;���������s�е��ַ�
;#1_begin--------------------------------------
   mov bx, 0
next:
   add bx, 1
   mov dl, s[bx]
   cmp dl, 0
   jne next

show:
   sub bx, 1
   mov dl, s[bx]
   mov ah, 2
   int 21h
   cmp bx, 0
   jg show
   jmp exit

;#1_end========================================
exit:
   mov ah, 4Ch
   mov al, 0
   int 21h
code ends
end main
;==========������ϴ��뱣�浽src\main.asm==============================
