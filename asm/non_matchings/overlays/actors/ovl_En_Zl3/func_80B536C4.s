glabel func_80B536C4
/* 00314 80B536C4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00318 80B536C8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0031C 80B536CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00320 80B536D0 24840400 */  addiu   $a0, $a0, 0x0400           ## $a0 = 00000400
/* 00324 80B536D4 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00328 80B536D8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0032C 80B536DC AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00330 80B536E0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00334 80B536E4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00338 80B536E8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0033C 80B536EC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00340 80B536F0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00344 80B536F4 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00348 80B536F8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0034C 80B536FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00350 80B53700 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00354 80B53704 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00358 80B53708 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0035C 80B5370C 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 00360 80B53710 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00364 80B53714 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00368 80B53718 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0036C 80B5371C 24840406 */  addiu   $a0, $a0, 0x0406           ## $a0 = 00000406
/* 00370 80B53720 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00374 80B53724 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00378 80B53728 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0037C 80B5372C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00380 80B53730 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00384 80B53734 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00388 80B53738 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 0038C 80B5373C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00390 80B53740 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00394 80B53744 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00398 80B53748 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0039C 80B5374C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 003A0 80B53750 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 003A4 80B53754 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003A8 80B53758 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003AC 80B5375C 03E00008 */  jr      $ra                        
/* 003B0 80B53760 00000000 */  nop
