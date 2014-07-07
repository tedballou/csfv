# Instructions that should be valid but currently fail for known reasons (e.g.
# they aren't implemented yet).
# This test is set up to XPASS if any instruction generates an encoding.
#
# RUN: not llvm-mc %s -triple=mips-unknown-linux -show-encoding -mcpu=mips32r2 | not FileCheck %s
# CHECK-NOT: encoding
# XFAIL: *

        .set noat
        abs.ps          $f22,$f8
        absq_s.ph       $8,$a0
        absq_s.qb       $15,$s1
        absq_s.w        $s3,$ra
        add.ps          $f25,$f27,$f13
        addq.ph         $s1,$15,$at
        addq_s.ph       $s3,$s6,$s2
        addq_s.w        $a2,$8,$at
        addqh.ph        $s4,$14,$s1
        addqh.w         $s7,$s7,$k1
        addqh_r.ph      $sp,$25,$s8
        addqh_r.w       $8,$v1,$zero
        addsc           $s8,$15,$12
        addu.ph         $a2,$14,$s3
        addu.qb         $s6,$v1,$v1
        addu_s.ph       $a3,$s3,$gp
        addu_s.qb       $s4,$s8,$s1
        adduh.qb        $a1,$a1,$at
        adduh_r.qb      $a0,$9,$12
        addwc           $k0,$s6,$s7
        alnv.ps         $f12,$f18,$f30,$12
        and.v           $w10,$w25,$w29
        bitrev          $14,$at
        bmnz.v          $w15,$w2,$w28
        bmz.v           $w13,$w11,$w21
        bsel.v          $w28,$w7,$w0
        c.eq.d          $fcc1,$f15,$f15
        c.eq.ps         $fcc5,$f0,$f9
        c.eq.s          $fcc5,$f24,$f17
        c.f.d           $fcc4,$f11,$f21
        c.f.ps          $fcc6,$f11,$f11
        c.f.s           $fcc4,$f30,$f7
        c.le.d          $fcc4,$f18,$f1
        c.le.ps         $fcc1,$f7,$f20
        c.le.s          $fcc6,$f24,$f4
        c.lt.d          $fcc3,$f9,$f3
        c.lt.ps         $f19,$f5
        c.lt.s          $fcc2,$f17,$f14
        c.nge.d         $fcc5,$f21,$f16
        c.nge.ps        $f1,$f26
        c.nge.s         $fcc3,$f11,$f8
        c.ngl.ps        $f21,$f30
        c.ngl.s         $fcc2,$f31,$f23
        c.ngle.ps       $fcc7,$f12,$f20
        c.ngle.s        $fcc2,$f18,$f23
        c.ngt.d         $fcc4,$f24,$f7
        c.ngt.ps        $fcc5,$f30,$f6
        c.ngt.s         $fcc5,$f8,$f13
        c.ole.d         $fcc2,$f16,$f31
        c.ole.ps        $fcc7,$f21,$f8
        c.ole.s         $fcc3,$f7,$f20
        c.olt.d         $fcc4,$f19,$f28
        c.olt.ps        $fcc3,$f7,$f16
        c.olt.s         $fcc6,$f20,$f7
        c.seq.d         $fcc4,$f31,$f7
        c.seq.ps        $fcc6,$f31,$f14
        c.seq.s         $fcc7,$f1,$f25
        c.sf.ps         $fcc6,$f4,$f6
        c.ueq.d         $fcc4,$f13,$f25
        c.ueq.ps        $fcc1,$f5,$f29
        c.ueq.s         $fcc6,$f3,$f30
        c.ule.d         $fcc7,$f25,$f18
        c.ule.ps        $fcc6,$f17,$f3
        c.ule.s         $fcc7,$f21,$f30
        c.ult.d         $fcc6,$f6,$f17
        c.ult.ps        $fcc7,$f14,$f0
        c.ult.s         $fcc7,$f24,$f10
        c.un.d          $fcc6,$f23,$f24
        c.un.ps         $fcc4,$f2,$f26
        c.un.s          $fcc1,$f30,$f4
        ceil.l.d        $f1,$f3
        ceil.l.s        $f18,$f13
        cfcmsa          $s6,$19
        cmp.eq.ph       $s7,$14
        cmp.le.ph       $8,$14
        cmp.lt.ph       $k0,$sp
        cmpgdu.eq.qb    $s3,$zero,$k0
        cmpgdu.le.qb    $v1,$15,$s2
        cmpgdu.lt.qb    $s0,$gp,$sp
        cmpgu.eq.qb     $14,$s6,$s8
        cmpgu.le.qb     $9,$a3,$s4
        cmpgu.lt.qb     $sp,$at,$8
        cmpu.eq.qb      $v0,$24
        cmpu.le.qb      $s1,$a1
        cmpu.lt.qb      $at,$a3
        ctcmsa          $31,$s7
        cvt.d.l         $f4,$f16
        cvt.ps.s        $f3,$f18,$f19
        cvt.s.l         $f15,$f30
        cvt.s.pl        $f30,$f1
        cvt.s.pu        $f14,$f25
        dmt $k0
        dpa.w.ph        $ac1,$s7,$k0
        dpaq_s.w.ph     $ac2,$a0,$13
        dpaq_sa.l.w     $ac0,$a2,$14
        dpaqx_s.w.ph    $ac3,$a0,$24
        dpaqx_sa.w.ph   $ac1,$zero,$s5
        dpau.h.qbl      $ac1,$10,$24
        dpau.h.qbr      $ac1,$s7,$s6
        dpax.w.ph       $ac3,$a0,$k0
        dps.w.ph        $ac1,$a3,$a1
        dpsq_s.w.ph     $ac0,$gp,$k0
        dpsq_sa.l.w     $ac0,$a3,$15
        dpsqx_s.w.ph    $ac3,$13,$a3
        dpsqx_sa.w.ph   $ac3,$sp,$s2
        dpsu.h.qbl      $ac2,$14,$10
        dpsu.h.qbr      $ac2,$a1,$s6
        dpsx.w.ph       $ac0,$s7,$gp
        dvpe            $s6
        emt $8
        evpe            $v0
        extpdpv         $s6,$ac0,$s8
        extpv           $13,$ac0,$14
        extrv.w         $8,$ac3,$at
        extrv_r.w       $8,$ac1,$s6
        extrv_rs.w      $gp,$ac1,$s6
        extrv_s.h       $s2,$ac1,$14
        fclass.d        $w14,$w27
        fclass.w        $w19,$w28
        fexupl.d        $w10,$w29
        fexupl.w        $w12,$w27
        fexupr.d        $w31,$w15
        fexupr.w        $w29,$w12
        ffint_s.d       $w1,$w30
        ffint_s.w       $w16,$w14
        ffint_u.d       $w23,$w18
        ffint_u.w       $w19,$w12
        ffql.d          $w2,$w3
        ffql.w          $w9,$w0
        ffqr.d          $w25,$w24
        ffqr.w          $w10,$w6
        fill.b          $w9,$v1
        fill.h          $w9,$8
        fill.w          $w31,$15
        flog2.d         $w12,$w16
        flog2.w         $w19,$w23
        floor.l.d       $f26,$f7
        floor.l.s       $f12,$f5
        fork            $s2,$8,$a0
        frcp.d          $w12,$w4
        frcp.w          $w30,$w8
        frint.d         $w20,$w8
        frint.w         $w11,$w29
        frsqrt.d        $w29,$w2
        frsqrt.w        $w9,$w8
        fsqrt.d         $w3,$w1
        fsqrt.w         $w5,$w15
        ftint_s.d       $w31,$w26
        ftint_s.w       $w27,$w14
        ftint_u.d       $w5,$w31
        ftint_u.w       $w12,$w29
        ftrunc_s.d      $w4,$w22
        ftrunc_s.w      $w24,$w7
        ftrunc_u.d      $w20,$w25
        ftrunc_u.w      $w7,$w26
        insv            $s2,$at
        iret
        lbe             $14,122($9)
        lbue            $11,-108($10)
        lbux            $9,$14($v0)
        lhe             $s6,219($v1)
        lhue            $gp,118($11)
        lhx             $sp,$k0($15)
        lle             $gp,-237($ra)
        lwe             $ra,-145($14)
        lwle            $11,-42($11)
        lwre            $sp,-152($24)
        lwx             $12,$12($s4)
        madd.ps         $f22,$f3,$f14,$f3
        maq_s.w.phl     $ac2,$25,$11
        maq_s.w.phr     $ac0,$10,$25
        maq_sa.w.phl    $ac3,$a1,$v1
        maq_sa.w.phr    $ac1,$at,$10
        mfgc0           $s6,c0_datahi1
        mflo            $9,$ac2
        modsub          $a3,$12,$a3
        mov.ps          $f22,$f17
        move.v          $w8,$w17
        movf.ps         $f10,$f28,$fcc6
        movn.ps         $f31,$f31,$s3
        movt.ps         $f20,$f25,$fcc2
        movz.ps         $f18,$f17,$ra
        msub            $ac2,$sp,$14
        msub.ps         $f12,$f14,$f29,$f17
        msubu           $ac2,$a1,$24
        mtc0            $9,c0_datahi1
        mtgc0           $s4,$21,7
        mthi            $v0,$ac1
        mthlip          $a3,$ac0
        mul.ph          $s4,$24,$s0
        mul.ps          $f14,$f0,$f16
        mul_s.ph        $10,$14,$15
        muleq_s.w.phl   $11,$s4,$s4
        muleq_s.w.phr   $s6,$a0,$s8
        muleu_s.ph.qbl  $a2,$14,$8
        muleu_s.ph.qbr  $a1,$ra,$9
        mulq_rs.ph      $s2,$14,$15
        mulq_rs.w       $at,$s4,$25
        mulq_s.ph       $s0,$k1,$15
        mulq_s.w        $9,$a3,$s0
        mulsa.w.ph      $ac1,$s4,$s6
        mulsaq_s.w.ph   $ac0,$ra,$s2
        neg.ps          $f19,$f13
        nloc.b          $w12,$w30
        nloc.d          $w16,$w7
        nloc.h          $w21,$w17
        nloc.w          $w17,$w16
        nlzc.b          $w12,$w7
        nlzc.d          $w14,$w14
        nlzc.h          $w24,$w24
        nlzc.w          $w10,$w4
        nmadd.ps        $f27,$f4,$f9,$f25
        nmsub.ps        $f6,$f12,$f14,$f17
        nor.v           $w20,$w20,$w15
        or.v            $w13,$w23,$w12
        packrl.ph       $ra,$24,$14
        pcnt.b          $w30,$w15
        pcnt.d          $w5,$w16
        pcnt.h          $w20,$w24
        pcnt.w          $w22,$w20
        pick.ph         $ra,$a2,$gp
        pick.qb         $11,$a0,$gp
        pll.ps          $f25,$f9,$f30
        plu.ps          $f1,$f26,$f29
        preceq.w.phl    $s8,$gp
        preceq.w.phr    $s5,$15
        precequ.ph.qbl  $s7,$ra
        precequ.ph.qbla $a0,$9
        precequ.ph.qbr  $ra,$s3
        precequ.ph.qbra $24,$8
        preceu.ph.qbl   $sp,$8
        preceu.ph.qbla  $s6,$11
        preceu.ph.qbr   $gp,$s1
        preceu.ph.qbra  $k1,$s0
        precr.qb.ph     $v0,$12,$s8
        precrq.ph.w     $14,$s8,$24
        precrq.qb.ph    $a2,$12,$12
        precrq_rs.ph.w  $a1,$k0,$a3
        precrqu_s.qb.ph $zero,$gp,$s5
        pul.ps          $f9,$f30,$f26
        puu.ps          $f24,$f9,$f2
        raddu.w.qb      $25,$s3
        rdpgpr          $s3,$9
        recip.d         $f19,$f6
        recip.s         $f3,$f30
        repl.ph         $at,-307
        replv.ph        $v1,$s7
        replv.qb        $25,$12
        rorv            $13,$a3,$s5
        round.l.d       $f12,$f1
        round.l.s       $f25,$f5
        rsqrt.d         $f3,$f28
        rsqrt.s         $f4,$f8
        sbe             $s7,33($s1)
        sce             $sp,189($10)
        she             $24,105($v0)
        shilo           $ac1,26
        shilov          $ac2,$10
        shllv.ph        $10,$s0,$s0
        shllv.qb        $gp,$v1,$zero
        shllv_s.ph      $k1,$at,$13
        shllv_s.w       $s1,$ra,$k0
        shrav.ph        $25,$s2,$s1
        shrav.qb        $zero,$24,$11
        shrav_r.ph      $s3,$11,$25
        shrav_r.qb      $a0,$sp,$s5
        shrav_r.w       $s7,$s4,$s6
        shrlv.ph        $14,$10,$9
        shrlv.qb        $a2,$s2,$11
        sub.ps          $f5,$f14,$f26
        subq.ph         $ra,$9,$s8
        subq_s.ph       $13,$s8,$s5
        subq_s.w        $k1,$a2,$a3
        subqh.ph        $10,$at,$9
        subqh.w         $v0,$a2,$zero
        subqh_r.ph      $a0,$12,$s6
        subqh_r.w       $10,$a2,$gp
        subu.ph         $9,$s6,$s4
        subu.qb         $s6,$a2,$s6
        subu_s.ph       $v1,$a1,$s3
        subu_s.qb       $s1,$at,$ra
        subuh.qb        $zero,$gp,$gp
        subuh_r.qb      $s4,$s8,$s6
        swe             $24,94($k0)
        swle            $v1,-209($gp)
        swre            $k0,-202($s2)
        synci           20023($s0)
        tlbginv
        tlbginvf
        tlbgp
        tlbgr
        tlbgwi
        tlbgwr
        tlbinv
        tlbinvf
        trunc.l.d       $f23,$f23
        trunc.l.s       $f28,$f31
        wrpgpr          $zero,$13
        xor.v           $w20,$w21,$w30
        yield           $v1,$s0
