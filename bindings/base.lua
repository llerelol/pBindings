local __, bindings = ...

bindings.base = {
	W = 'MOVEFORWARD',
	A = 'STRAFELEFT',
	S = 'MOVEBACKWARD',
	D = 'STRAFERIGHT',
	J = 'TOGGLEGUILDTAB',
	Y = 'REPLY',
	K = 'TOGGLEACHIEVEMENT',
	H = 'TOGGLECHARACTER4',
	
	['.'] = 'OPENCHATSLASH',
	['/'] = 'OPENCHATSLASH',
	['-'] = 'CAMERAZOOMOUT',
	['='] = 'CAMERAZOOMIN',
	['\\'] = 'TOGGLEAUTORUN',
	MOUSEWHEELUP = 'TARGETSELF',
	MOUSEWHEELDOWN = 'TARGETNEARESTENEMY',
	NUMPAD0 = 'EXAMINER_TARGET',
	--NUMPAD1 = 'TARGETNEARESTENEMY',
	--END = 'm|/focus [@mouseover,exists,nodead][]',
	
	shift = {
		B = 'TOGGLEBAG1',
		V = 'TOGGLECHARACTER0',
	},

	F8 = 'm|/run ReloadUI()',
}
