if(select(2, UnitClass'player') ~= 'ROGUE') then return end

local __, bindings = ...


local roguebase = {
	'm|/cast [nostealth] Удар по почкам;[stealth] Гаррота',
	'm|/cast [nostealth,nomod][@focus,harm,nodead,exists,nostealth,mod:shift] Долой оружие;[stealth] Гаррота',
	[4] = 'm|/cast [nostealth] Потрошение;[stealth] Гаррота',
	[5] = 's|Рваная рана',
	[6] = 's|Ускользание',
	
	V = 's|Мастер побега',
	F = 's|Исчезновение',
	R = 'm|/cast [nomod] Мясорубка;[mod:shift] Заживление ран',
	T = 'm|/cast [@focus,exists,harm,nodead,mod:shift][] Парализующий удар\n/cast !Незаметность',
	G = 's|Дымовая шашка',
	B = 's|Ложный выпад',
	Z = 's|Смена приоритетов',
	
	F3 = 'm|/focus [@mouseover,exists,nodead][]',
	F4 = 's|',
	F5 = 's|',
	F6 = 's|',
	[9] = 'm|/cast [@focus,help,nodead,exists][@Миссхантер,help,exists,nodead][@targettarget] Маленькие хитрости',
	TAB = 's|Плащ теней',
	BUTTON3 = 'm|/use 13',
	
	BUTTON4 = 'm|/use [nomod] Смертоносный яд;[mod:shift] Калечащий яд;[mod:ctrl] Калечащий яд\n/use [nomod] 16;[mod:shift] 17;[mod:ctrl] 18\n/click StaticPopup1Button1',
	BUTTON5 = 'm|/use [nomod] Дурманящий яд;[mod:shift] Калечащий яд;[mod:ctrl] Калечащий яд\n/use [nomod] 16;[mod:shift] 17;[mod:ctrl] 18\n/click StaticPopup1Button1',
	
	NUMPAD1 = 'm|/cast [nostealth,nocombat] Незаметность;[stealth,harm] Ошеломление',
	NUMPAD2 = 'm|/cast [] Пинок\n/cast [@focus] Пинок',
	NUMPAD3 = 's|Ослепление',
	
	END = 'm|/cast [@focus,exists,nodead,harm] Ошеломление',
	DOWN = 'm|/cast  [@focus] Пинок',
	PAGEDOWN = 'm|/cast [@focus,harm,nodead,exists] Ослепление',
	
	NUMPAD4 = 'm|/focus [@mouseover]',
	NUMPAD5 = 'm|/cast [@focus,exists,nodead,harm] Смена приоритетов\n/cast [@focus,exists,nodead,harm] Удар по почкам',
	NUMPAD6 = 'm|/use 15',
	NUMPAD7 = 'm|/cast Боевой скакун Грозовой Вершины',
	NUMPAD8 = 'm|/cast Турбоветролет',
	['`'] = 's|Отвлечение',
	['¸'] = 's|Отвлечение',
	
	stealth = {
		's|Гаррота',
		's|Гаррота',
		[4] = 's|Подлый трюк',
		E = 's|Внезапный удар',
		Q = 's|Гаррота',
	},
	
	shift = {
		's|Боевая готовность',
		'm|/cast [@focus,exists,harm,nodead] Долой оружие',
		's|Веер клинков',
		'm|/cast Бросок\n/cast Смертельный бросок',
		SPACE = 'm|/use 6',
		MOUSEWHEELUP = 'm|/cancelaura Длань защиты\n/stopattack\n/targetenemy\n/cast [harm,nodead][@focus] Ошеломление',
		MOUSEWHEELDOWN = 'm|/cancelaura Длань защиты\n/stopattack\n/targetenemy\n/cast [harm,nodead][@focus] Ошеломление',
	},
	ctrl = {
		E = 's|Отравляющий укол', 
		Q = 'm|/cast [@focus] Отравляющий укол',
		R = 'i|Камень здоровья',
	},
	alt = {
		E = 's|Спринт',
		Q = 's|Ускользание',
	},
}

local subtlety = {
	[3] = 'm|/use [nostance] 10\n/cast [nostance] Танец теней; Подлый трюк',
	E = 'm|/startattack [nostealth]\n/cast [nostance] Удар в спину;Внезапный удар\n/cast !Незаметность',
	R = 'm|/cast [nomod] Заживление ран;[mod:shift] Мясорубка',
	Q = 'm|/startattack [nostealth]\n/cast [nostance] Кровоизлияние;Гаррота\n/cast !Незаметность',
	C = 'm|/cast Шаг сквозь тень',
	X = 's|Подготовка',

	shift = {
		C = 'm|/cast [@focus,harm] Шаг сквозь тень',
	},
	stealth = {
		'm|/cast Умысел\n/cast Гаррота',
		'm|/cast Умысел\n/cast Гаррота',
		[4] = 'm|/cast Умысел\n/cast Подлый трюк',
		E = 'm|/cast Умысел\n/cast Внезапный удар',
		Q = 'm|/cast Умысел\n/cast Гаррота',
	},
	shadowDance = {
		's|Удар по почкам',
		'm|/cast [nomod] Долой оружие;[@focus,harm,nodead,exists,mod:shift] Долой оружие',
		'm|/cast Умысел\n/cast Подлый трюк',
		's|Потрошение',
		's|Рваная рана',
		E = 'm|/cast Умысел\n/cast Внезапный удар',
		Q = 'm|/cast Умысел\n/cast Гаррота',
	},
}

local combat = {
	[3] = 'm|/cast Выброс адреналина',
	E = 'm|/startattack [nostealth]\n/cast Коварный удар',
	Q = 'm|/startattack [nostealth]\n/cast [nostance] Пробивающий удар;Гаррота',
	C = 's|Шквал клинков',
	X = 's|Череда убийств',
	
	stealth = {
		E = 's|Коварный удар',
	},
}

local mutilate = {
	[3] = 'm|/cast [nostance] Рваная рана; Подлый трюк',
	[4] = 's|Отравление',
	[5] = 's|Ложный выпад',
	E = 'm|/startattack [nostealth]\n/cast [nostance] Расправа; Внезапный удар',
	Q = 'm|/startattack [nostealth]\n/cast [nostance] Устранение; Гаррота',
	C = 'm|/cast Шаг сквозь тень',
	X = 's|Вендетта',
}


pBindings:RegisterKeyBindings('Ликвидация', bindings.base, roguebase, mutilate)
pBindings:RegisterKeyBindings('Бой', bindings.base, roguebase, combat)
pBindings:RegisterKeyBindings('Скрытность', bindings.base, roguebase, subtlety)
