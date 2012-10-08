if(select(2, UnitClass'player') ~= 'WARRIOR') then return end

local __, bindings = ...

local warbase = {
	R = 'm|/startattack\n/cast Рывок',
	T = 'm|/tar Деморализующее знамя\n/tar Знамя с черепом\n/tar Издевательское знамя\n/cast [help] Вмешательство\n/targetlasttarget\n/cast !Издевательское знамя',
	G = 'm|/cast Верная победа\n/cast Победный раж',
	B = 's|Устрашающий крик',
	Q = 'm|/startattack\n/cast Удар героя',
	V = 'm|/startattack\n/cast Рассекающий удар',
	X = 'm|/cast !Героический прыжок',
	F = 'm|/cast Разрушительный крик\n/cast Пронзительный вой\n/cast Ошеломляющий крик',
	
	F1 = 's|Боевая стойка',
	F2 = 's|Стойка берсерка',
	F3 = 's|Оборонительная стойка',
	F4 = 's|Искупление',
	TAB = 's|Ярость берсерка',
	BUTTON3 = 's|/use 13',
	
	--naga
	NUMPAD1 = 'm|/cast Ударная волна\n/cast Вихрь клинков\n/cast Рев дракона',
	NUMPAD2 = 's|Зуботычина',
	DOWN = 'm|/cast [@focus,exists,nodead,harm] Зуботычина; Зуботычина',
	NUMPAD3 = 'm|/cast [@party1,exists,help,nodead,mod:ctrl][@party2,exists,help,nodead,mod:alt][@mouseover,exists,help,nodead][@targettarget,exists,help][] Вмешательство',
	PAGEDOWN = 'm|/cast [@healer,exists,help,nodead] Вмешательство',
	NUMPAD4 = 's|Отражение заклинания',
	LEFT = 's|Массовое отражение заклинания',
	NUMPAD5 = 's|Смертельное спокойствие',
	NUMPAD6 = 'm|/cast Кровавое неистовство\n/use 14\n/cast Безрассудство\n/cast',
	NUMPAD7 = 'm|/cast Стремительный лесной волк',
	NUMPAD8 = 'm|/cast Обсидиановое крыло ночи',
	
	['`'] = 's|Деморализующий крик',
	['¸'] = 's|Деморализующий крик',
	
	
	shift = {
		's|Сокрушительный бросок',
		'm|/cast [@focus] Обезоруживание',
		'm|/cast Героический бросок',
		's|Ободряющий клич',
		G = 'm|/cast Безудержное восстановление',
		E = 's|Подрезать сухожилия',
		F = 'm|/cast Аватара\n/cast Удар громовержца',
		C = 's|Размашистые удары',
		
		SPACE = 'm|/use 8',
		MOUSEWHEELUP = 's|Боевой крик',
		MOUSEWHEELDOWN = 's|Командирский крик',

		X = 'm|/use 13',
	},
	ctrl = {
		's|Бросок',
		[3] = 'm|/cast [@focus,harm,nodead,exists] Героический бросок',
		[4] = 'm|/cast [@focus,harm,nodead,exists] Удар громовержца',
		E = 'm|/cast [@focus,harm,nodead,exists] Подрезать сухожилия',
		Q = 's|Симбиоз',
	},
	alt = {
		Q = 'm|/cast Бой насмерть\n/cast Ни шагу назад',
		E = 's|Глухая оборона',
	},
}

local prot = {
	'm|/startattack\n/cast Мощный удар щитом',
	's|Удар грома',
	'm|/startattack\n/cast Реванш',
	'm|/cast Блок щитом\n/use 14',
	's|Непроницаемый щит',
	
	C = 's|Провокация',
	E = 'm|/startattack\n/cast Сокрушение',
	
	shift = {
		[5] = 's|Казнь',
	},
}

local arms = {
	'm|/startattack\n/cast Удар колосса',
	'm|/cast Обезоруживание',
	'm|/startattack\n/cast Превосходство',
	'm|/startattack\n/cast Мощный удар',
	'm|/startattack\n/cast Казнь',
	C = 's|Вихрь',
	E = 'm|/startattack\n/cast Смертельный удар',
	
	shift = {
		[5] = 's|Удар грома',
	},
}

local fury = {
	'm|/startattack\n/cast Удар колосса',
	'm|/cast Обезоруживание',
	'm|/startattack\n/cast Зверский удар',
	'm|/startattack\n/cast Яростный выпад',
	'm|/startattack\n/cast Казнь',
	C = 's|Вихрь',
	E = 'm|/startattack\n/cast Кровожадность',
	
	shift = {
		[5] = 's|Удар грома',
	},
}
pBindings:RegisterKeyBindings('Оружие', bindings.base, warbase, arms)
pBindings:RegisterKeyBindings('Защита', bindings.base, warbase, prot)
pBindings:RegisterKeyBindings('Неистовство', bindings.base, warbase, fury)