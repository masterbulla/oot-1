.rdata
glabel D_801472C8
    .asciz    "Dump";
    .balign 4

.text
glabel Fault_DrawMemDump
/* B4C994 800D57F4 3C0EFFFA */  lui   $t6, (0xFFFA5A5A >> 16) # lui $t6, 0xfffa
/* B4C998 800D57F8 03A07825 */  move  $t7, $sp
/* B4C99C 800D57FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B4C9A0 800D5800 35CE5A5A */  ori   $t6, (0xFFFA5A5A & 0xFFFF) # ori $t6, $t6, 0x5a5a
.L800D5804:
/* B4C9A4 800D5804 25EFFFF8 */  addiu $t7, $t7, -8
/* B4C9A8 800D5808 ADEE0000 */  sw    $t6, ($t7)
/* B4C9AC 800D580C 15FDFFFD */  bne   $t7, $sp, .L800D5804
/* B4C9B0 800D5810 ADEE0004 */   sw    $t6, 4($t7)
/* B4C9B4 800D5814 AFB20020 */  sw    $s2, 0x20($sp)
/* B4C9B8 800D5818 3C128017 */  lui   $s2, %hi(sFaultStructPtr) # $s2, 0x8017
/* B4C9BC 800D581C AFB60030 */  sw    $s6, 0x30($sp)
/* B4C9C0 800D5820 0080B025 */  move  $s6, $a0
/* B4C9C4 800D5824 2652A800 */  addiu $s2, %lo(sFaultStructPtr) # addiu $s2, $s2, -0x5800
/* B4C9C8 800D5828 AFBF0034 */  sw    $ra, 0x34($sp)
/* B4C9CC 800D582C AFB5002C */  sw    $s5, 0x2c($sp)
/* B4C9D0 800D5830 AFB40028 */  sw    $s4, 0x28($sp)
/* B4C9D4 800D5834 AFB30024 */  sw    $s3, 0x24($sp)
/* B4C9D8 800D5838 AFB1001C */  sw    $s1, 0x1c($sp)
/* B4C9DC 800D583C AFB00018 */  sw    $s0, 0x18($sp)
/* B4C9E0 800D5840 AFA5003C */  sw    $a1, 0x3c($sp)
/* B4C9E4 800D5844 AFA60040 */  sw    $a2, 0x40($sp)
/* B4C9E8 800D5848 AFA70044 */  sw    $a3, 0x44($sp)
/* B4C9EC 800D584C 8E510000 */  lw    $s1, ($s2)
/* B4C9F0 800D5850 02C09825 */  move  $s3, $s6
/* B4C9F4 800D5854 3C158000 */  lui   $s5, 0x8000
/* B4C9F8 800D5858 2414FFDF */  li    $s4, -33
/* B4C9FC 800D585C 263107E4 */  addiu $s1, $s1, 0x7e4
/* B4CA00 800D5860 0275082B */  sltu  $at, $s3, $s5
.L800D5864:
/* B4CA04 800D5864 10200002 */  beqz  $at, .L800D5870
/* B4CA08 800D5868 3C048014 */   lui   $a0, %hi(D_801472C8) # $a0, 0x8014
/* B4CA0C 800D586C 02A09825 */  move  $s3, $s5
.L800D5870:
/* B4CA10 800D5870 3C01807F */  lui   $at, (0x807FFF01 >> 16) # lui $at, 0x807f
/* B4CA14 800D5874 3421FF01 */  ori   $at, (0x807FFF01 & 0xFFFF) # ori $at, $at, 0xff01
/* B4CA18 800D5878 0261082B */  sltu  $at, $s3, $at
/* B4CA1C 800D587C 14200003 */  bnez  $at, .L800D588C
/* B4CA20 800D5880 248472C8 */   addiu $a0, %lo(D_801472C8) # addiu $a0, $a0, 0x72c8
/* B4CA24 800D5884 3C13807F */  lui   $s3, (0x807FFF00 >> 16) # lui $s3, 0x807f
/* B4CA28 800D5888 3673FF00 */  ori   $s3, (0x807FFF00 & 0xFFFF) # ori $s3, $s3, 0xff00
.L800D588C:
/* B4CA2C 800D588C 2401FFF0 */  li    $at, -16
/* B4CA30 800D5890 02619824 */  and   $s3, $s3, $at
/* B4CA34 800D5894 02602825 */  move  $a1, $s3
/* B4CA38 800D5898 0C0355A2 */  jal   Fault_DrawMemDumpPage
/* B4CA3C 800D589C 00003025 */   move  $a2, $zero
/* B4CA40 800D58A0 8E4E0000 */  lw    $t6, ($s2)
/* B4CA44 800D58A4 24100258 */  li    $s0, 600
/* B4CA48 800D58A8 91CF07CF */  lbu   $t7, 0x7cf($t6)
/* B4CA4C 800D58AC 11E00011 */  beqz  $t7, .L800D58F4
/* B4CA50 800D58B0 00000000 */   nop   
.L800D58B4:
/* B4CA54 800D58B4 12000046 */  beqz  $s0, .L800D59D0
/* B4CA58 800D58B8 24040010 */   li    $a0, 16
/* B4CA5C 800D58BC 0C03518F */  jal   Fault_Sleep
/* B4CA60 800D58C0 2610FFFF */   addiu $s0, $s0, -1
/* B4CA64 800D58C4 0C0351AD */  jal   Fault_UpdatePadImpl
/* B4CA68 800D58C8 00000000 */   nop   
/* B4CA6C 800D58CC 9638000C */  lhu   $t8, 0xc($s1)
/* B4CA70 800D58D0 0314C827 */  nor   $t9, $t8, $s4
/* B4CA74 800D58D4 57200004 */  bnezl $t9, .L800D58E8
/* B4CA78 800D58D8 8E490000 */   lw    $t1, ($s2)
/* B4CA7C 800D58DC 8E480000 */  lw    $t0, ($s2)
/* B4CA80 800D58E0 A10007CF */  sb    $zero, 0x7cf($t0)
/* B4CA84 800D58E4 8E490000 */  lw    $t1, ($s2)
.L800D58E8:
/* B4CA88 800D58E8 912A07CF */  lbu   $t2, 0x7cf($t1)
/* B4CA8C 800D58EC 1540FFF1 */  bnez  $t2, .L800D58B4
/* B4CA90 800D58F0 00000000 */   nop   
.L800D58F4:
/* B4CA94 800D58F4 0C03518F */  jal   Fault_Sleep
/* B4CA98 800D58F8 24040010 */   li    $a0, 16
/* B4CA9C 800D58FC 0C0351AD */  jal   Fault_UpdatePadImpl
/* B4CAA0 800D5900 00000000 */   nop   
/* B4CAA4 800D5904 9622000C */  lhu   $v0, 0xc($s1)
/* B4CAA8 800D5908 1040FFFA */  beqz  $v0, .L800D58F4
/* B4CAAC 800D590C 00000000 */   nop   
/* B4CAB0 800D5910 2401EFFF */  li    $at, -4097
/* B4CAB4 800D5914 00415827 */  nor   $t3, $v0, $at
/* B4CAB8 800D5918 5160002E */  beql  $t3, $zero, .L800D59D4
/* B4CABC 800D591C 8FBF0034 */   lw    $ra, 0x34($sp)
/* B4CAC0 800D5920 96230000 */  lhu   $v1, ($s1)
/* B4CAC4 800D5924 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* B4CAC8 800D5928 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B4CACC 800D592C 00616027 */  nor   $t4, $v1, $at
/* B4CAD0 800D5930 11800027 */  beqz  $t4, .L800D59D0
/* B4CAD4 800D5934 2401DFFF */   li    $at, -8193
/* B4CAD8 800D5938 00616827 */  nor   $t5, $v1, $at
/* B4CADC 800D593C 15A00002 */  bnez  $t5, .L800D5948
/* B4CAE0 800D5940 24040010 */   li    $a0, 16
/* B4CAE4 800D5944 24040100 */  li    $a0, 256
.L800D5948:
/* B4CAE8 800D5948 2401BFFF */  li    $at, -16385
/* B4CAEC 800D594C 00617027 */  nor   $t6, $v1, $at
/* B4CAF0 800D5950 15C00002 */  bnez  $t6, .L800D595C
/* B4CAF4 800D5954 2401F7FF */   li    $at, -2049
/* B4CAF8 800D5958 00042200 */  sll   $a0, $a0, 8
.L800D595C:
/* B4CAFC 800D595C 00417827 */  nor   $t7, $v0, $at
/* B4CB00 800D5960 15E00002 */  bnez  $t7, .L800D596C
/* B4CB04 800D5964 2401FBFF */   li    $at, -1025
/* B4CB08 800D5968 02649823 */  subu  $s3, $s3, $a0
.L800D596C:
/* B4CB0C 800D596C 0041C027 */  nor   $t8, $v0, $at
/* B4CB10 800D5970 17000002 */  bnez  $t8, .L800D597C
/* B4CB14 800D5974 2401FFF7 */   li    $at, -9
/* B4CB18 800D5978 02649821 */  addu  $s3, $s3, $a0
.L800D597C:
/* B4CB1C 800D597C 0041C827 */  nor   $t9, $v0, $at
/* B4CB20 800D5980 17200002 */  bnez  $t9, .L800D598C
/* B4CB24 800D5984 2401FFFB */   li    $at, -5
/* B4CB28 800D5988 02C09825 */  move  $s3, $s6
.L800D598C:
/* B4CB2C 800D598C 00414027 */  nor   $t0, $v0, $at
/* B4CB30 800D5990 15000002 */  bnez  $t0, .L800D599C
/* B4CB34 800D5994 2401FFFD */   li    $at, -3
/* B4CB38 800D5998 8FB3003C */  lw    $s3, 0x3c($sp)
.L800D599C:
/* B4CB3C 800D599C 00414827 */  nor   $t1, $v0, $at
/* B4CB40 800D59A0 15200002 */  bnez  $t1, .L800D59AC
/* B4CB44 800D59A4 2401FFFE */   li    $at, -2
/* B4CB48 800D59A8 8FB30040 */  lw    $s3, 0x40($sp)
.L800D59AC:
/* B4CB4C 800D59AC 00415027 */  nor   $t2, $v0, $at
/* B4CB50 800D59B0 15400002 */  bnez  $t2, .L800D59BC
/* B4CB54 800D59B4 00545827 */   nor   $t3, $v0, $s4
/* B4CB58 800D59B8 8FB30044 */  lw    $s3, 0x44($sp)
.L800D59BC:
/* B4CB5C 800D59BC 5560FFA9 */  bnezl $t3, .L800D5864
/* B4CB60 800D59C0 0275082B */   sltu  $at, $s3, $s5
/* B4CB64 800D59C4 8E4D0000 */  lw    $t5, ($s2)
/* B4CB68 800D59C8 240C0001 */  li    $t4, 1
/* B4CB6C 800D59CC A1AC07CF */  sb    $t4, 0x7cf($t5)
.L800D59D0:
/* B4CB70 800D59D0 8FBF0034 */  lw    $ra, 0x34($sp)
.L800D59D4:
/* B4CB74 800D59D4 8FB00018 */  lw    $s0, 0x18($sp)
/* B4CB78 800D59D8 8FB1001C */  lw    $s1, 0x1c($sp)
/* B4CB7C 800D59DC 8FB20020 */  lw    $s2, 0x20($sp)
/* B4CB80 800D59E0 8FB30024 */  lw    $s3, 0x24($sp)
/* B4CB84 800D59E4 8FB40028 */  lw    $s4, 0x28($sp)
/* B4CB88 800D59E8 8FB5002C */  lw    $s5, 0x2c($sp)
/* B4CB8C 800D59EC 8FB60030 */  lw    $s6, 0x30($sp)
/* B4CB90 800D59F0 03E00008 */  jr    $ra
/* B4CB94 800D59F4 27BD0038 */   addiu $sp, $sp, 0x38

