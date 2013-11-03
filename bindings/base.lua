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
	
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]', -- focus & swap focus\target below
	PAGEDOWN = 'm|/stopmacro [@focus,dead,noexists][noexists,dead]\n/target focus\n/targetlasttarget\n/focus target\n/targetlasttarget',
	
	shift = {
		B = 'TOGGLEBAG1',
		V = 'TOGGLECHARACTER0',
	},
	
	ctrl = {
		G = 'i|Плотные бинты из ветрошерсти',
	},
	F8 = 'm|/run ReloadUI()',
}
