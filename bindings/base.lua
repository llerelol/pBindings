local __, bindings = ...

bindings.base = {
	W = "MOVEFORWARD",
	A = "STRAFELEFT",
	S = "MOVEBACKWARD",
	D = "STRAFERIGHT",
	J = 'TOGGLEGUILDTAB',
	Y = 'REPLY',
	K = 'TOGGLEACHIEVEMENT',
	
	--NUMPAD1 = 'TARGETNEARESTENEMY',
	--END = 'm|/focus [@mouseover,exists,nodead][]',
	
	shift = {
		B = "TOGGLEBAG1",
		V = "TOGGLECHARACTER0",
	},

	F8 = "m|/run ReloadUI()",
}
