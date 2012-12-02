if(select(2, UnitClass'player') ~= 'HUNTER') then return end

local _, bindings = ...


local roguebase = {
	[1] = 's|raptor',
	[2] = '',
	[4] = '
	[5] = '
	[6] = '
	[9] = '
	[0] = '',
	
	V = 's|Мастер побега',
	F = 's|Исчезновение',
	R = 'm|/cast [nomod] Мясорубка;[mod:shift] Заживление ран',
	T = 'm|/cast [@focus,exists,harm,nodead,mod:shift][] Парализующий удар\n/cast !Незаметность',
	G = 's|Дымовая шашка',
	B = 's|Ложный выпад',
	Z = 's|Смена приоритетов',
	Q = '',
	X = 'm|/castsequence reset=15 Быстрая стрельба, null\n/cast Готовность',
	F3 = 'm|/focus [@mouseover,exists,nodead][]',
	F4 = 's|',
	F5 = 's|',
	F6 = 's|',
	TAB = 's|Сдерживание',
	BUTTON3 = 'm|/use 13',
	
	BUTTON4 = 'm|/use [nomod] Нейтрализующий яд;[mod:shift] Калечащий яд;[mod:ctrl] Калечащий яд\n/use [nomod] 16;[mod:shift] 17;[mod:ctrl] 18\n/click StaticPopup1Button1',
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
	['`'] = 'm|/cast !Осветительная ракета',
	['¸'] = 'm|/cast !Осветительная ракета',
	

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
	C = 'm|/cast Шаг сквозь тень',
	X = 's|Подготовка',

	shift = {
		C = 'm|/cast [@focus,harm] Шаг сквозь тень',
	},
}

local combat = {
	[3] = 'm|/cast Выброс адреналина',
	E = 'm|/startattack [nostealth]\n/cast Коварный удар',
	C = 's|Шквал клинков',
	X = 's|Череда убийств',
}

local mutilate = {
	[3] = 's|Рваная рана',
	E = 'm|/startattack [nostealth]\n/cast [nostance] Расправа; Внезапный удар',
	C = 's|Хладнокровие',
	X = 's|Вендетта',
}


oBindings:RegisterKeyBindings('Ликвидация', bindings.base, roguebase, mutilate)
oBindings:RegisterKeyBindings('Бой', bindings.base, roguebase, combat)
oBindings:RegisterKeyBindings('Скрытность', bindings.base, roguebase, subtlety)