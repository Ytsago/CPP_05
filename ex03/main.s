	.text
	.file	"main.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$848, %rsp                      # imm = 0x350
	movl	$0, -4(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	%eax, %edi
	callq	srand
	leaq	-8(%rbp), %rdi
	callq	_ZN6InternC1Ev
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rdi
.Ltmp0:
	callq	_ZNK5AForm12getSignGradeEv
                                        # kill: def $rcx killed $rax
.Ltmp1:
	jmp	.LBB1_1
.LBB1_1:
	leaq	-88(%rbp), %rdi
	movq	%rdi, -704(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-704(%rbp), %rdx                # 8-byte Reload
.Ltmp3:
	movl	$.L.str, %esi
	leaq	-80(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp4:
	jmp	.LBB1_2
.LBB1_2:
	leaq	-128(%rbp), %rdi
	movq	%rdi, -712(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-712(%rbp), %rdx                # 8-byte Reload
.Ltmp6:
	movl	$.L.str.1, %esi
	leaq	-120(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp7:
	jmp	.LBB1_3
.LBB1_3:
.Ltmp9:
	leaq	-8(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_ZNK6Intern8makeFormENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	movq	%rax, %rcx
.Ltmp10:
	movq	%rcx, -720(%rbp)                # 8-byte Spill
	jmp	.LBB1_4
.LBB1_4:
	movq	-720(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -32(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-128(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-80(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-88(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-168(%rbp), %rdi
	movq	%rdi, -728(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-728(%rbp), %rdx                # 8-byte Reload
.Ltmp12:
	movl	$.L.str.2, %esi
	leaq	-160(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp13:
	jmp	.LBB1_5
.LBB1_5:
	leaq	-208(%rbp), %rdi
	movq	%rdi, -736(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-736(%rbp), %rdx                # 8-byte Reload
.Ltmp15:
	movl	$.L.str.3, %esi
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp16:
	jmp	.LBB1_6
.LBB1_6:
.Ltmp18:
	leaq	-8(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	callq	_ZNK6Intern8makeFormENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	movq	%rax, %rcx
.Ltmp19:
	movq	%rcx, -744(%rbp)                # 8-byte Spill
	jmp	.LBB1_7
.LBB1_7:
	movq	-744(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -24(%rbp)
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-208(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-160(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-168(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-248(%rbp), %rdi
	movq	%rdi, -752(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-752(%rbp), %rdx                # 8-byte Reload
.Ltmp21:
	movl	$.L.str.4, %esi
	leaq	-240(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp22:
	jmp	.LBB1_8
.LBB1_8:
	leaq	-288(%rbp), %rdi
	movq	%rdi, -760(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-760(%rbp), %rdx                # 8-byte Reload
.Ltmp24:
	movl	$.L.str.5, %esi
	leaq	-280(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp25:
	jmp	.LBB1_9
.LBB1_9:
.Ltmp27:
	leaq	-8(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	callq	_ZNK6Intern8makeFormENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	movq	%rax, %rcx
.Ltmp28:
	movq	%rcx, -768(%rbp)                # 8-byte Spill
	jmp	.LBB1_10
.LBB1_10:
	movq	-768(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -16(%rbp)
	leaq	-280(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-288(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-240(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-248(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-368(%rbp), %rdi
	movq	%rdi, -776(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-776(%rbp), %rdx                # 8-byte Reload
.Ltmp30:
	movl	$.L.str.6, %esi
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp31:
	jmp	.LBB1_11
.LBB1_11:
.Ltmp33:
	leaq	-328(%rbp), %rdi
	leaq	-360(%rbp), %rsi
	movl	$145, %edx
	callq	_ZN10BureaucratC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp34:
	jmp	.LBB1_12
.LBB1_12:
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-368(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-448(%rbp), %rdi
	movq	%rdi, -784(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-784(%rbp), %rdx                # 8-byte Reload
.Ltmp36:
	movl	$.L.str.7, %esi
	leaq	-440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp37:
	jmp	.LBB1_13
.LBB1_13:
.Ltmp39:
	leaq	-408(%rbp), %rdi
	leaq	-440(%rbp), %rsi
	movl	$137, %edx
	callq	_ZN10BureaucratC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp40:
	jmp	.LBB1_14
.LBB1_14:
	leaq	-440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-448(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-528(%rbp), %rdi
	movq	%rdi, -792(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-792(%rbp), %rdx                # 8-byte Reload
.Ltmp42:
	movl	$.L.str.8, %esi
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp43:
	jmp	.LBB1_15
.LBB1_15:
.Ltmp45:
	leaq	-488(%rbp), %rdi
	leaq	-520(%rbp), %rsi
	movl	$45, %edx
	callq	_ZN10BureaucratC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp46:
	jmp	.LBB1_16
.LBB1_16:
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-528(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-608(%rbp), %rdi
	movq	%rdi, -800(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-800(%rbp), %rdx                # 8-byte Reload
.Ltmp48:
	movl	$.L.str.9, %esi
	leaq	-600(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp49:
	jmp	.LBB1_17
.LBB1_17:
.Ltmp51:
	leaq	-568(%rbp), %rdi
	leaq	-600(%rbp), %rsi
	movl	$25, %edx
	callq	_ZN10BureaucratC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp52:
	jmp	.LBB1_18
.LBB1_18:
	leaq	-600(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-608(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-688(%rbp), %rdi
	movq	%rdi, -808(%rbp)                # 8-byte Spill
	callq	_ZNSaIcEC1Ev
	movq	-808(%rbp), %rdx                # 8-byte Reload
.Ltmp54:
	movl	$.L.str.10, %esi
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp55:
	jmp	.LBB1_19
.LBB1_19:
.Ltmp57:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$5, %edx
	callq	_ZN10BureaucratC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp58:
	jmp	.LBB1_20
.LBB1_20:
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-688(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	movq	-16(%rbp), %rsi
.Ltmp60:
	leaq	-328(%rbp), %rdi
	callq	_ZN10Bureaucrat8signFormER5AForm
.Ltmp61:
	jmp	.LBB1_21
.LBB1_21:
	movq	-16(%rbp), %rsi
.Ltmp62:
	leaq	-328(%rbp), %rdi
	callq	_ZN10Bureaucrat11executeFormERK5AForm
.Ltmp63:
	jmp	.LBB1_22
.LBB1_22:
	movq	-16(%rbp), %rsi
.Ltmp64:
	leaq	-408(%rbp), %rdi
	callq	_ZN10Bureaucrat11executeFormERK5AForm
.Ltmp65:
	jmp	.LBB1_23
.LBB1_23:
	movq	-16(%rbp), %rsi
.Ltmp66:
	leaq	-408(%rbp), %rdi
	callq	_ZN10Bureaucrat11executeFormERK5AForm
.Ltmp67:
	jmp	.LBB1_24
.LBB1_24:
	movq	-24(%rbp), %rsi
.Ltmp68:
	leaq	-408(%rbp), %rdi
	callq	_ZN10Bureaucrat8signFormER5AForm
.Ltmp69:
	jmp	.LBB1_25
.LBB1_25:
	movq	-24(%rbp), %rsi
.Ltmp70:
	leaq	-488(%rbp), %rdi
	callq	_ZN10Bureaucrat8signFormER5AForm
.Ltmp71:
	jmp	.LBB1_26
.LBB1_26:
	movq	-24(%rbp), %rsi
.Ltmp72:
	leaq	-488(%rbp), %rdi
	callq	_ZN10Bureaucrat11executeFormERK5AForm
.Ltmp73:
	jmp	.LBB1_27
.LBB1_27:
	movq	-32(%rbp), %rsi
.Ltmp74:
	leaq	-568(%rbp), %rdi
	callq	_ZN10Bureaucrat8signFormER5AForm
.Ltmp75:
	jmp	.LBB1_28
.LBB1_28:
	movq	-32(%rbp), %rsi
.Ltmp76:
	leaq	-568(%rbp), %rdi
	callq	_ZN10Bureaucrat11executeFormERK5AForm
.Ltmp77:
	jmp	.LBB1_29
.LBB1_29:
	movq	-32(%rbp), %rsi
.Ltmp78:
	leaq	-648(%rbp), %rdi
	callq	_ZN10Bureaucrat11executeFormERK5AForm
.Ltmp79:
	jmp	.LBB1_30
.LBB1_30:
	leaq	-648(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
	leaq	-488(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
	leaq	-408(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
	leaq	-328(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
	jmp	.LBB1_73
.LBB1_31:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_67
.LBB1_32:
.Ltmp5:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_36
.LBB1_33:
.Ltmp8:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_35
.LBB1_34:
.Ltmp11:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_35:
	leaq	-128(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-80(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_36:
	leaq	-88(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_67
.LBB1_37:
.Ltmp14:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_41
.LBB1_38:
.Ltmp17:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_40
.LBB1_39:
.Ltmp20:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-200(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_40:
	leaq	-208(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-160(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_41:
	leaq	-168(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_67
.LBB1_42:
.Ltmp23:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_46
.LBB1_43:
.Ltmp26:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_45
.LBB1_44:
.Ltmp29:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-280(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_45:
	leaq	-288(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	leaq	-240(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_46:
	leaq	-248(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_67
.LBB1_47:
.Ltmp32:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_49
.LBB1_48:
.Ltmp35:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-360(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_49:
	leaq	-368(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_67
.LBB1_50:
.Ltmp38:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_52
.LBB1_51:
.Ltmp41:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-440(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_52:
	leaq	-448(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_66
.LBB1_53:
.Ltmp44:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_55
.LBB1_54:
.Ltmp47:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-520(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_55:
	leaq	-528(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_65
.LBB1_56:
.Ltmp50:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_58
.LBB1_57:
.Ltmp53:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_58:
	leaq	-608(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_64
.LBB1_59:
.Ltmp56:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_61
.LBB1_60:
.Ltmp59:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-680(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB1_61:
	leaq	-688(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	jmp	.LBB1_63
.LBB1_62:
.Ltmp80:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-648(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
.LBB1_63:
	leaq	-568(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
.LBB1_64:
	leaq	-488(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
.LBB1_65:
	leaq	-408(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
.LBB1_66:
	leaq	-328(%rbp), %rdi
	callq	_ZN10BureaucratD1Ev
.LBB1_67:
	movl	-44(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_83
# %bb.68:
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -696(%rbp)
.Ltmp81:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.11, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
.Ltmp82:
	movq	%rcx, -816(%rbp)                # 8-byte Spill
	jmp	.LBB1_69
.LBB1_69:
	movq	-696(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	callq	*%rax
	movq	-816(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
.Ltmp83:
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
.Ltmp84:
	movq	%rcx, -824(%rbp)                # 8-byte Spill
	jmp	.LBB1_70
.LBB1_70:
.Ltmp85:
	movq	-824(%rbp), %rdi                # 8-byte Reload
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	callq	_ZNSolsEPFRSoS_E
                                        # kill: def $rcx killed $rax
.Ltmp86:
	jmp	.LBB1_71
.LBB1_71:
.Ltmp91:
	callq	__cxa_end_catch
.Ltmp92:
	jmp	.LBB1_72
.LBB1_72:
	jmp	.LBB1_73
.LBB1_73:
	movq	-16(%rbp), %rax
	movq	%rax, -832(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB1_75
# %bb.74:
	movq	-832(%rbp), %rdi                # 8-byte Reload
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB1_75:
	movq	-24(%rbp), %rax
	movq	%rax, -840(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB1_77
# %bb.76:
	movq	-840(%rbp), %rdi                # 8-byte Reload
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB1_77:
	movq	-32(%rbp), %rax
	movq	%rax, -848(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB1_79
# %bb.78:
	movq	-848(%rbp), %rdi                # 8-byte Reload
	movq	(%rdi), %rax
	callq	*8(%rax)
.LBB1_79:
	movl	$0, -4(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZN6InternD1Ev
	movl	-4(%rbp), %eax
	addq	$848, %rsp                      # imm = 0x350
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_80:
	.cfi_def_cfa %rbp, 16
.Ltmp87:
	movq	%rdx, %rcx
	movq	%rax, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%rsi, -40(%rbp)
	movl	%ecx, -44(%rbp)
.Ltmp88:
	callq	__cxa_end_catch
.Ltmp89:
	jmp	.LBB1_82
.LBB1_81:
.Ltmp93:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	jmp	.LBB1_83
.LBB1_82:
	jmp	.LBB1_83
.LBB1_83:
	leaq	-8(%rbp), %rdi
	callq	_ZN6InternD1Ev
# %bb.84:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB1_85:
.Ltmp90:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp79-.Ltmp60                #   Call between .Ltmp60 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp81-.Ltmp79                #   Call between .Ltmp79 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp87-.Lfunc_begin0          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp86-.Ltmp83                #   Call between .Ltmp83 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin0          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin0          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp88-.Ltmp92                #   Call between .Ltmp92 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin0          #     jumps to .Ltmp90
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Lfunc_end1-.Ltmp89            #   Call between .Ltmp89 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.byte	2                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 2
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 2
	.long	_ZTISt9exception                # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end3-_GLOBAL__sub_I_main.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"presidential pardon"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Homer J. Simpson"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"robotomy request"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"bender"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"shrubbery creation"
	.size	.L.str.4, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"root/home"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"David"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Julian"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Iris"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Mona"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Boss"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Exception caught ! "
	.size	.L.str.11, 20

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_main.cpp
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym srand
	.addrsig_sym time
	.addrsig_sym _ZNK5AForm12getSignGradeEv
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZNK6Intern8makeFormENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.addrsig_sym _ZN10Bureaucrat8signFormER5AForm
	.addrsig_sym _ZN10Bureaucrat11executeFormERK5AForm
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym __cxa_end_catch
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _GLOBAL__sub_I_main.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZSt4cout
