comment @---------------------------------------------------------------------
题目描述:
已知数组s中存储了一个符合C语言标准的字符串(末尾有一个ASCII码等于0的字符)，请在 
#1_begin
   与  
#1_end
之间填写代码，按逆序输出s中的字符。
例如：设s的内容为 
   abc123
则应该输出 
   321cba
------------------------------------------------------------------------------@

;==========请把以下代码保存到src\main.asm==============================
;==========选中main.sh及src文件夹->右键->压缩成submit.zip提交==========
data segment
sth db 10h dup(0)
s db "abc123", 0; 此数组的内容在judge时有可能会发生变化
data ends

code segment
assume cs:code, ds:data
main:
   mov ax, seg s
   mov ds, ax
;请在#1_begin和#1_end之间补充代码实现以下功能:
;按逆序输出s中的字符
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
;==========请把以上代码保存到src\main.asm==============================
