glabel func_80A626B8
/* 073C8 80A626B8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 073CC 80A626BC 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 073D0 80A626C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 073D4 80A626C4 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 073D8 80A626C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 073DC 80A626CC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 073E0 80A626D0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 073E4 80A626D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 073E8 80A626D8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 073EC 80A626DC 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 073F0 80A626E0 E484FEBC */  swc1    $f4, -0x0144($a0)          ## 00000068
/* 073F4 80A626E4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 073F8 80A626E8 E486001C */  swc1    $f6, 0x001C($a0)           ## 000001C8
/* 073FC 80A626EC 10400028 */  beq     $v0, $zero, .L80A62790     
/* 07400 80A626F0 2401FFFB */  addiu   $at, $zero, 0xFFFB         ## $at = FFFFFFFB
/* 07404 80A626F4 8E0E01F0 */  lw      $t6, 0x01F0($s0)           ## 000001F0
/* 07408 80A626F8 921803AC */  lbu     $t8, 0x03AC($s0)           ## 000003AC
/* 0740C 80A626FC 3C0880A6 */  lui     $t0, %hi(D_80A665EC)       ## $t0 = 80A60000
/* 07410 80A62700 01C17824 */  and     $t7, $t6, $at              
/* 07414 80A62704 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 07418 80A62708 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.50
/* 0741C 80A6270C 0018C880 */  sll     $t9, $t8,  2               
/* 07420 80A62710 0338C821 */  addu    $t9, $t9, $t8              
/* 07424 80A62714 0019C880 */  sll     $t9, $t9,  2               
/* 07428 80A62718 AE0F01F0 */  sw      $t7, 0x01F0($s0)           ## 000001F0
/* 0742C 80A6271C 01194021 */  addu    $t0, $t0, $t9              
/* 07430 80A62720 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 07434 80A62724 850865EC */  lh      $t0, %lo(D_80A665EC)($t0)  
/* 07438 80A62728 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 0743C 80A6272C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 07440 80A62730 44885000 */  mtc1    $t0, $f10                  ## $f10 = -0.00
/* 07444 80A62734 00000000 */  nop
/* 07448 80A62738 46805420 */  cvt.s.w $f16, $f10                 
/* 0744C 80A6273C E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 07450 80A62740 0C00A295 */  jal     func_80028A54              
/* 07454 80A62744 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 07458 80A62748 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0745C 80A6274C 0C29776C */  jal     func_80A5DDB0              
/* 07460 80A62750 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 07464 80A62754 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 07468 80A62758 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 0746C 80A6275C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 07470 80A62760 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 07474 80A62764 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 07478 80A62768 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0747C 80A6276C 24042819 */  addiu   $a0, $zero, 0x2819         ## $a0 = 00002819
/* 07480 80A62770 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 07484 80A62774 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 07488 80A62778 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0748C 80A6277C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 07490 80A62780 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 07494 80A62784 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 07498 80A62788 0C02A800 */  jal     func_800AA000              
/* 0749C 80A6278C 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
.L80A62790:
/* 074A0 80A62790 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 074A4 80A62794 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 074A8 80A62798 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 074AC 80A6279C 03E00008 */  jr      $ra                        
/* 074B0 80A627A0 00000000 */  nop
