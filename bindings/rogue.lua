if(select(2, UnitClass'player') ~= 'ROGUE') then return end

local __, bindings = ...


local roguebase = {
	'm|/cast [nostealth] Удар по почкам;[stealth] Гаррота',
	'm|/cast [nostealth,nomod][@focus,harm,nodead,exists,nostealth,mod:shift] Долой оружие;[stealth] Гаррота',
	[4] = 'm|/cast [nostealth] Потрошение;[stealth] Гаррота',
	[5] = 's|Рваная рана',
	
	C = 's|Шаг сквозь тень',
	X = 's|Подготовка',
	V = 's|Мастер побега',
	F = 's|Исчезновение',
	R = 's|Мясорубка',
	T = 'm|/cast [@focus,exists,harm,nodead,mod:shift][] Парализующий удар\n/cast !Незаметность',
	G = 's|Дымовая шашка',
	B = 's|Ложный выпад',
	Z = 's|Смена приоритетов',
	
	[9] = 'm|/cast [@Миссхантер,help,exists,nodead][@пати2,help,exists,nodead][@танк,help,exists,nodead][@targettarget] Маленькие хитрости',
	TAB = 's|Плащ теней',
	BUTTON3 = 'm|/use 13',
	
	BUTTON4 = 'm|/use [nomod] Паралитический яд;[mod:shift] Похищающий жизнь яд;[mod:ctrl] Калечащий яд;[mod:alt] Дурманящий яд',
	BUTTON5 = 'm|/use [nomod] Нейтрализующий яд;[mod:shift] Смертоносный яд',
	--
	NUMPAD1 = 'm|/cast [nostealth,nocombat] Незаметность;[stealth,harm] Ошеломление',
	END = 'm|/cast [@focus,exists,nodead,harm] Ошеломление',
	--
	NUMPAD2 = 'm|/cast [] Пинок\n/cast [@focus] Пинок',
	DOWN = 'm|/cast  [@focus] Пинок',
	--
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]',
	--PAGEDOWN = 'm|/cast [@focus,harm,nodead,exists] Ослепление',
	--
	NUMPAD4 = 'm|/cast [@arena1,harm,nodead] Отравляющий укол',
	LEFT = 'm|/cast [@arena1,harm,nodead] Ослепление',
	--
	F6 = 'm|/cast [@arena2,harm,nodead] Отравляющий укол',
	--
	NUMPAD6 = 'm|/cast [@arena3,harm,nodead] Отравляющий укол',
	RIGHT = 'm|/cast [@arena3,harm,nodead] Ослепление',
	--
	NUMPAD7 = 'm|/cast Огненный боевой конь',
	NUMPAD8 = 'm|/cast Крылатый страж',
	NUMPADPLUS = 'm|/use 15',
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
		
		G = 'i|Плотные бинты из ветрошерсти',
		C = 'm|/cast [@focus,harm] Шаг сквозь тень',
		R = 's|Заживление ран',
		
		SPACE = 'm|/use 6',
		MOUSEWHEELUP = 'm|/cancelaura Длань защиты\n/stopattack\n/targetenemy\n/cast [harm,nodead][@focus] Ошеломление',
		MOUSEWHEELDOWN = 'm|/cancelaura Длань защиты\n/stopattack\n/targetenemy\n/cast [harm,nodead][@focus] Ошеломление',
		
		F6 = 'm|/cast [@arena2,harm,nodead] Ослепление', -- num5
	},
	
	ctrl = {
		E = 's|Отравляющий укол', 
		Q = 'm|/cast [@focus] Отравляющий укол',
		R = 'i|Камень здоровья',
		
		NUMPAD4 = 'm|/cast [@arena1,exists,nodead,harm] Смена приоритетов\n/cast [@arena1,exists,nodead,harm] Удар по почкам',
		F6 = 'm|/cast [@arena2,exists,nodead,harm] Смена приоритетов\n/cast [@arena2,exists,nodead,harm] Удар по почкам', -- num5
		NUMPAD6 = 'm|/cast [@arena3,exists,nodead,harm] Смена приоритетов\n/cast [@arena3,exists,nodead,harm] Удар по почкам',
	},
	
	alt = {
		E = 's|Спринт',
		Q = 's|Ускользание',
		
		NUMPAD4 = 'm|/cast [@arena1,harm,nodead] Долой оружие',
		F6 = 'm|/cast [@arena2,harm,nodead] Долой оружие', -- num5
		NUMPAD6 = 'm|/cast [@arena3,harm,nodead] Долой оружие',
	},
}

local subtlety = {
	[3] = 'm|/use [nostance] 10\n/cast [nostance] Танец теней; Подлый трюк',
	E = 'm|/startattack [nostealth]\n/cast [nostance] Удар в спину;Внезапный удар\n/cast !Незаметность',
	Q = 'm|/startattack [nostealth]\n/cast [nostance] Кровоизлияние;Гаррота\n/cast !Незаметность',
	

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