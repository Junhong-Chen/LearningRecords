# ��ת�� nop������Ĭ�ϵ�Ԥִ��
# sp -> ջָ��

addiu $sp, $0, 0x10010080 # �� sp ���ø���ʼλ��

addiu $s0, $0, 5 # s0 ��ֵΪ 5
sw $s0, 0($sp) # �� s0 ��ֵд�� sp ��
addiu $sp, $sp, -4 # ��ջָ�� sp++���׳�ѹջ

addiu $s1, $0, 1 # total = 1
sw $s1, 0($sp)
addiu $sp, $sp, -4

jal FACT # ��ʹ�� jal �󣬻Ὣ ��ǰλ�� + 4��Ҳ���ǵ� 11 �У� �浽 ra ��
nop

FACT:
mult $s0, $s1
mflo $s1

sw $s1 4($sp)

addiu $s0, $s0, -1

bne $s0, 1, FACT # ���(s0)��Ϊ 1 ʱ������ RECURSION
nop

addiu $sp, $sp, 8 # ��ջ

END:
