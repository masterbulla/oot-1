glabel func_80B8D8A0
/* 00850 80B8D8A0 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 00854 80B8D8A4 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00858 80B8D8A8 AFBE0040 */  sw      $s8, 0x0040($sp)           
/* 0085C 80B8D8AC AFB7003C */  sw      $s7, 0x003C($sp)           
/* 00860 80B8D8B0 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 00864 80B8D8B4 AFB50034 */  sw      $s5, 0x0034($sp)           
/* 00868 80B8D8B8 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 0086C 80B8D8BC AFB3002C */  sw      $s3, 0x002C($sp)           
/* 00870 80B8D8C0 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00874 80B8D8C4 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 00878 80B8D8C8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0087C 80B8D8CC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00880 80B8D8D0 C4860278 */  lwc1    $f6, 0x0278($a0)           ## 00000278
/* 00884 80B8D8D4 C490022C */  lwc1    $f16, 0x022C($a0)          ## 0000022C
/* 00888 80B8D8D8 C4440A40 */  lwc1    $f4, 0x0A40($v0)           ## 00000A40
/* 0088C 80B8D8DC 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00890 80B8D8E0 44810000 */  mtc1    $at, $f0                   ## $f0 = 400.00
/* 00894 80B8D8E4 46062202 */  mul.s   $f8, $f4, $f6              
/* 00898 80B8D8E8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0089C 80B8D8EC 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 008A0 80B8D8F0 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 008A4 80B8D8F4 24B407C0 */  addiu   $s4, $a1, 0x07C0           ## $s4 = 000007C0
/* 008A8 80B8D8F8 27B50088 */  addiu   $s5, $sp, 0x0088           ## $s5 = FFFFFFE8
/* 008AC 80B8D8FC 27B6007C */  addiu   $s6, $sp, 0x007C           ## $s6 = FFFFFFDC
/* 008B0 80B8D900 46004287 */  neg.s   $f10, $f8                  
/* 008B4 80B8D904 27B70070 */  addiu   $s7, $sp, 0x0070           ## $s7 = FFFFFFD0
/* 008B8 80B8D908 46105482 */  mul.s   $f18, $f10, $f16           
/* 008BC 80B8D90C 27BE006C */  addiu   $s8, $sp, 0x006C           ## $s8 = FFFFFFCC
/* 008C0 80B8D910 24500A20 */  addiu   $s0, $v0, 0x0A20           ## $s0 = 00000A20
/* 008C4 80B8D914 46009102 */  mul.s   $f4, $f18, $f0             
/* 008C8 80B8D918 E7A40060 */  swc1    $f4, 0x0060($sp)           
/* 008CC 80B8D91C C4880278 */  lwc1    $f8, 0x0278($a0)           ## 00000278
/* 008D0 80B8D920 C4460A44 */  lwc1    $f6, 0x0A44($v0)           ## 00000A44
/* 008D4 80B8D924 C492022C */  lwc1    $f18, 0x022C($a0)          ## 0000022C
/* 008D8 80B8D928 46083282 */  mul.s   $f10, $f6, $f8             
/* 008DC 80B8D92C 46005407 */  neg.s   $f16, $f10                 
/* 008E0 80B8D930 46128102 */  mul.s   $f4, $f16, $f18            
/* 008E4 80B8D934 00000000 */  nop
/* 008E8 80B8D938 46002182 */  mul.s   $f6, $f4, $f0              
/* 008EC 80B8D93C E7A60064 */  swc1    $f6, 0x0064($sp)           
/* 008F0 80B8D940 C48A0278 */  lwc1    $f10, 0x0278($a0)          ## 00000278
/* 008F4 80B8D944 C4480A48 */  lwc1    $f8, 0x0A48($v0)           ## 00000A48
/* 008F8 80B8D948 C484022C */  lwc1    $f4, 0x022C($a0)           ## 0000022C
/* 008FC 80B8D94C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00900 80B8D950 46008487 */  neg.s   $f18, $f16                 
/* 00904 80B8D954 46049182 */  mul.s   $f6, $f18, $f4             
/* 00908 80B8D958 00000000 */  nop
/* 0090C 80B8D95C 46003202 */  mul.s   $f8, $f6, $f0              
/* 00910 80B8D960 E7A80068 */  swc1    $f8, 0x0068($sp)           
.L80B8D964:
/* 00914 80B8D964 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000A30
/* 00918 80B8D968 C6300234 */  lwc1    $f16, 0x0234($s1)          ## 00000234
/* 0091C 80B8D96C C6240230 */  lwc1    $f4, 0x0230($s1)           ## 00000230
/* 00920 80B8D970 C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000A20
/* 00924 80B8D974 46105482 */  mul.s   $f18, $f10, $f16           
/* 00928 80B8D978 C60A0030 */  lwc1    $f10, 0x0030($s0)          ## 00000A50
/* 0092C 80B8D97C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00930 80B8D980 46062202 */  mul.s   $f8, $f4, $f6              
/* 00934 80B8D984 02802025 */  or      $a0, $s4, $zero            ## $a0 = 000007C0
/* 00938 80B8D988 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 0093C 80B8D98C 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFDC
/* 00940 80B8D990 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFD0
/* 00944 80B8D994 46085400 */  add.s   $f16, $f10, $f8            
/* 00948 80B8D998 46109100 */  add.s   $f4, $f18, $f16            
/* 0094C 80B8D99C E7A40088 */  swc1    $f4, 0x0088($sp)           
/* 00950 80B8D9A0 C62A0234 */  lwc1    $f10, 0x0234($s1)          ## 00000234
/* 00954 80B8D9A4 C6060014 */  lwc1    $f6, 0x0014($s0)           ## 00000A34
/* 00958 80B8D9A8 C6320230 */  lwc1    $f18, 0x0230($s1)          ## 00000230
/* 0095C 80B8D9AC C6100004 */  lwc1    $f16, 0x0004($s0)          ## 00000A24
/* 00960 80B8D9B0 460A3202 */  mul.s   $f8, $f6, $f10             
/* 00964 80B8D9B4 C60A0034 */  lwc1    $f10, 0x0034($s0)          ## 00000A54
/* 00968 80B8D9B8 46109182 */  mul.s   $f6, $f18, $f16            
/* 0096C 80B8D9BC 46065480 */  add.s   $f18, $f10, $f6            
/* 00970 80B8D9C0 46124400 */  add.s   $f16, $f8, $f18            
/* 00974 80B8D9C4 E7B0008C */  swc1    $f16, 0x008C($sp)          
/* 00978 80B8D9C8 C6260234 */  lwc1    $f6, 0x0234($s1)           ## 00000234
/* 0097C 80B8D9CC C60A0018 */  lwc1    $f10, 0x0018($s0)          ## 00000A38
/* 00980 80B8D9D0 C6320230 */  lwc1    $f18, 0x0230($s1)          ## 00000230
/* 00984 80B8D9D4 46065202 */  mul.s   $f8, $f10, $f6             
/* 00988 80B8D9D8 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000A28
/* 0098C 80B8D9DC 460A9182 */  mul.s   $f6, $f18, $f10            
/* 00990 80B8D9E0 C6120038 */  lwc1    $f18, 0x0038($s0)          ## 00000A58
/* 00994 80B8D9E4 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00998 80B8D9E8 AFBE0010 */  sw      $s8, 0x0010($sp)           
/* 0099C 80B8D9EC 46069280 */  add.s   $f10, $f18, $f6            
/* 009A0 80B8D9F0 C7A60060 */  lwc1    $f6, 0x0060($sp)           
/* 009A4 80B8D9F4 460A4480 */  add.s   $f18, $f8, $f10            
/* 009A8 80B8D9F8 C7AA0064 */  lwc1    $f10, 0x0064($sp)          
/* 009AC 80B8D9FC 46043200 */  add.s   $f8, $f6, $f4              
/* 009B0 80B8DA00 C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 009B4 80B8DA04 E7B20090 */  swc1    $f18, 0x0090($sp)          
/* 009B8 80B8DA08 46105180 */  add.s   $f6, $f10, $f16            
/* 009BC 80B8DA0C E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 009C0 80B8DA10 46122200 */  add.s   $f8, $f4, $f18             
/* 009C4 80B8DA14 E7A60080 */  swc1    $f6, 0x0080($sp)           
/* 009C8 80B8DA18 0C00F82E */  jal     func_8003E0B8              
/* 009CC 80B8DA1C E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 009D0 80B8DA20 10400004 */  beq     $v0, $zero, .L80B8DA34     
/* 009D4 80B8DA24 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 009D8 80B8DA28 8FAF006C */  lw      $t7, 0x006C($sp)           
/* 009DC 80B8DA2C 10000002 */  beq     $zero, $zero, .L80B8DA38   
/* 009E0 80B8DA30 AE4F004C */  sw      $t7, 0x004C($s2)           ## 0000004C
.L80B8DA34:
/* 009E4 80B8DA34 AE40004C */  sw      $zero, 0x004C($s2)         ## 0000004C
.L80B8DA38:
/* 009E8 80B8DA38 26730054 */  addiu   $s3, $s3, 0x0054           ## $s3 = 00000054
/* 009EC 80B8DA3C 240101F8 */  addiu   $at, $zero, 0x01F8         ## $at = 000001F8
/* 009F0 80B8DA40 1661FFC8 */  bne     $s3, $at, .L80B8D964       
/* 009F4 80B8DA44 26520054 */  addiu   $s2, $s2, 0x0054           ## $s2 = 00000054
/* 009F8 80B8DA48 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 009FC 80B8DA4C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A00 80B8DA50 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 00A04 80B8DA54 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00A08 80B8DA58 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 00A0C 80B8DA5C 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 00A10 80B8DA60 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 00A14 80B8DA64 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 00A18 80B8DA68 8FB7003C */  lw      $s7, 0x003C($sp)           
/* 00A1C 80B8DA6C 8FBE0040 */  lw      $s8, 0x0040($sp)           
/* 00A20 80B8DA70 03E00008 */  jr      $ra                        
/* 00A24 80B8DA74 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
