;================================================================================
; Ganon Fixes
;================================================================================

;--------------------------------------------------------------------------------
; GanonWarpRNG
; out:	Accumulator - #$00 or #01 randomly, with no repeated #$01s
;--------------------------------------------------------------------------------
;GanonWarpRNG:
;	JSL GetRandomInt : AND.b #$01 : BEQ .zero
;	LDA !GANON_WARP_CHAIN : EOR #$01 : STA !GANON_WARP_CHAIN
;RTL
;	.zero
;	STA !GANON_WARP_CHAIN
;RTL
;--------------------------------------------------------------------------------