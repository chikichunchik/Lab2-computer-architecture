TITLE laba2
;------------------------------------------------------------------------------
;��  �2
;------------------------------------------------------------------------------
; ����������� ����'�����
; ��������:              ������� � ������� �������'��� ����������� ��� � ��������� ����� ����������
; ���:                  ���� "�ϲ"
; ���������:    Բ��
; ����:                1
; �����:       ��-01
;------------------------------------------------------------------------------
; �����:        ������ �.�. ���������� �.�.
; ����:         23/02/2021
;---------------------------------

IDEAL
Model small
STACK 256

CODESEG
Start:
    
    mov bx, 1604; ������ ������� ������������(80*2*10+2*2)
    mov ax,0B800h;������������� �������� �������'��
    mov es,ax
    mov cx, 20; ������ ������� ������� � 1 �����

my_ptr:;��������� ����� ��� 1 �����
    mov [word es:bx], 3430h; ����� ������ � ���� ���'���
    add bx,2   ; ������� ������ � ������'���
    Loop my_ptr ; ������ �����
    add bx, 120; ����������� �����(80*2-20*2)
    mov cx,20; ������ ������� ������� � 1 �����
my2_ptr:;��������� ����� ��� 2 �����
    mov [word es:bx], 3430h
    add bx,2
    Loop my2_ptr
    add bx, 120
    mov cx,20
my3_ptr:;��������� ����� ��� 3 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my3_ptr
   add bx, 120
   mov cx,20
my4_ptr:;��������� ����� ��� 4 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my4_ptr
   add bx, 120
   mov cx,20
my5_ptr:;��������� ����� ��� 5 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my5_ptr
   add bx, 120
   mov cx,20
my6_ptr:;��������� ����� ��� 6 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my6_ptr
   add bx, 120
   mov cx,20
my7_ptr:;��������� ����� ��� 7 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my7_ptr 
   add bx, 120
   mov cx,20
my8_ptr:;��������� ����� ��� 8 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my8_ptr
   add bx, 120
   mov cx,20
my9_ptr:;��������� ����� ��� 9 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my9_ptr    
   add bx, 120
   mov cx,20
my10_ptr:;��������� ����� ��� 10 �����
   mov [word es:bx], 3430h
   add bx,2
   Loop my10_ptr     
mov ah,04Ch; ������� ������ � ��������
mov al,0; ���������� ��������� ����
int 21h; ������ ������� 04�h

end Start
    
    