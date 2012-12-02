if(select(2, UnitClass'player') ~= 'DRUID') then return end

local __, bindings = ...
--[[ druid actionbars 1-12 | 13-24 | 25-36 | 37-48 | 48-59 | 60-71 | 72-83(cat form) | 84-95 | 96-107(bear form) | 108-119(moonkin) ]]--
local druidbase = {
	cat = {
		's|Калечение',
		's|Свирепый укус',
		'm|/cast [nostealth] Увечье;[stealth] Наскок',
		'm|/cast [nostealth] Глубокая рана;[stealth] Накинуться',
		's|Волшебный огонь',
	},
	bear = {
		's|Неистовое восстановление',
		's|Дикая защита',
		's|Увечье',
		's|Растерзать',
		T = 's|Размах',
	},
	moonkin = {
		's|Звездопад',
		's|Гнев',
		's|Звездный поток',
		's|Звездный огонь',
		's|Ураган',
		Q = 's|Лунный огонь',
		E = 's|Солнечный огонь',
		R = 's|Столп солнечного света',
		F = 's|Парад планет',
		T = 's|Волшебный огонь',
	},
	
	C = 'm|/cast Стремительный рывок\n/cast Астральный скачок',
	X = 'm|/cast Мощь урсока',
	G = 's|Спокойствие',
	V = 'm|/cast Мощное оглушение\n/cast Вихрь Урсола\n/cast Дезориентирующий рык',
	B = 's|Природная стремительность',
	F1 = 'm|/script SetRaidTarget("Лиару", 2)\n/script SetRaidTarget("Вердарис", 6)\n/script SetRaidTarget("Целестайн", 8)',
	F3 = 'm|/focus [@mouseover][@target]',
	F4 = 's|Оживление',
	F5 = 's|Телепортация: Лунная поляна',
	TAB = 's|Слиться с тенью',
	BUTTON3 = 'm|/use 13',
	BUTTON4 = 's|Знак дикой природы',
	BUTTON5 = 'm|/use 10',
	
	-- naga
	NUMPAD1 = 's|Крадущийся зверь',
	END = 'm|/cast [@Целестайн,exists] Озарение\n/cast [@Акиноджина,exists] Озарение',
	-- NUMPAD2 spec specific
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]',
	PAGEDOWN = 's|Тайфун',
	
	NUMPAD4 = 's|Походный облик',
	LEFT = 'm|/cast [@arena1,harm,nodead] Смерч',
	F6 = 's|Облик кошки', -- num5
	NUMPAD6 = 's|Облик медведя',
	RIGHT = 'm|/cast [@arena3,harm,nodead] Смерч',
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Боевой скакун грозовой вершины',
	NUMPAD8 = 's|Облик стремительной птицы',
	NUMPAD9 = 's|Водный облик',
	NUMPADPLUS = 'm|/use 15',
	['`'] = 's|Хватка природы',
	['¸'] = 's|Хватка природы',
	
	shift = {
		's|Спячка',
		'm|/cast [@focus,harm,nodead,exists] Спячка',
		'm|/cast [@mouseover,help,nodead][@player] Целительное прикосновение',
		'm|/cast [@mouseover,help,nodead][@player] Омоложение',
		'm|/cast !Ураган',
		
		G = 'm|/cast [@player] Озарение',
		E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Природный целитель',
		F = 'm|/cast [stance:3] Берсерк\n/cast [nostance:3] Перевоплощение\n/cast [nostance:3] Сила природы',
		Q = 's|Смерч',
		C = 's|Тревожный рев',
		T = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Возрождение',
		
		MOUSEWHEELUP = 'm|/cast [@Вердарис,help,nodead] Природный целитель',
		MOUSEWHEELDOWN = 'm|/cast [@Целестайн,help,nodead] Природный целитель',
		SPACE = 'm|/use 6',
		F6 = 'm|/cast [@arena2,harm,nodead] Смерч', --num5
	},
	ctrl = {
		's|Умиротворение',
		's|Гнев',
		's|Лунный огонь',
		's|Хватка природы',
		Q = 'm|/cast [@focus,exists,harm,nodead] Смерч',
		E = 's|Гнев деревьев',
		R = 'i|Камень здоровья',
		F = 'm|/cast Перевоплощение\n/cast Сила природы',
		NUMPAD2 = 's|Тайфун',
		NUMPAD4 = 'm|/cast [@arena1,harm,nodead] Рык\n/cast [@arena1,harm,nodead] Волшебный огонь',
		F6 = 'm|/cast [@arena2,harm,nodead] Рык\n/cast [@arena2,harm,nodead] Волшебный огонь', -- num5
		NUMPAD6 = 'm|/cast [@arena3,harm,nodead] Рык\n/cast [@arena3,harm,nodead] Волшебный огонь',
	},
	alt = {
		's|Симбиоз',
		'm|/cast [@Вердарис,exists,help] Целительное прикосновение\n/cast [@Акиноджина,exists,help] Целительное прикосновение',
		'm|/cast [@Целестайн,exists,help] Целительное прикосновение\n/cast [@Всекало,exists,help] Целительное прикосновение',
		E = 's|Порыв',
		Q = 's|Дубовая кожа',
	},
}

local feral = {
	'm|/startattack [nostealth]\n/cast [noform] Облик кошки; Глубокая рана',
	'm|/cast [noform] Облик кошки; Свирепый укус',
	'm|/startattack [nostealth]\n/cast [noform] Облик кошки\n/cast [stealth,form:3] Наскок; [form:3] Увечье',
	'm|/startattack [nostealth]\n/cast [noform] Облик кошки\n/cast [stealth,form:3] Наскок; [form:3] Разорвать',
	'm|/cast [noform] Облик кошки; Калечение',
	cat = {
		'm|/startattack [nostealth]\n/cast Глубокая рана',
		's|Свирепый укус',
		'm|/startattack [nostealth]\n/cast [nostealth] Увечье; [stealth] Наскок',
		'm|/startattack [nostealth]\n/cast [nostealth] Разорвать; [stealth] Наскок',
		's|Калечение',
	},
	Q = 'm|/startattack [nostealth]\n/cast [noform:3] Облик кошки\n/cast [stealth,form:3] Наскок; [form:3] Накинуться',
	E = 'm|/startattack [nostealth]\n/cast [noform:3] Облик кошки\n/cast [stealth,form:3] Накинуться; [form:3] Полоснуть',
	T = 's|Волшебный огонь',
	R = 'm|/cast [noform:3] Облик кошки; Дикий рев',
	F = 'm|/use 10\n/cast Тигриное неистовство',
	
	NUMPAD2 = 's|Лобовая атака',
	DOWN = 'm|/cast [@focus,exists,harm,nodead] Лобовая атака',
	
	['`'] = 'm|/cast Рык\n/cast Волшебный огонь',
	['¸'] = 'm|/cast Рык\n/cast Волшебный огонь',
	
	shift = {
		E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Снятие порчи',
		R = 's|Взбучка',
		T = 'm|/startattack [nostealth]\n/cast Наскок',
		F = 'm|/cast Тигриное неистовство\n/use 14\n/cast Берсерк\n/cast Природная чуткость\n/cast Перевоплощение: Король джунглей',
		X = 's|Инстинкты выживания',
		MOUSEWHEELUP = 'm|/cast [@Вердарис,help,nodead,exists] Снятие порчи\n/cast [@Акиноджина,help,nodead,exists] Снятие порчи',
		MOUSEWHEELDOWN = 'm|/cast [@Целестайн,help,nodead] Снятие порчи\n/cast [@Всекало,help,nodead] Снятие порчи',
	},
	ctrl = {
		NUMPAD2 = 's|Тайфун',
		C = 'm|/cancelform\n/cast [@Акиноджина,exists] Стремительный рывок\n/cast [@Целестайн,exists] Стремительный рывок',
		F = 'm|/cast Перевоплощение\n/cast Сила природы',
	},
}

local guardian = {
	bear = {
		's|Медвежьи объятия',
		's|Дикая защита',
		's|Волшебный огонь',
		's|Растерзать',
		's|Рык',
		Q = 's|Трепка',
		E = 'm|/cast [nostealth] Увечье;[stealth] Накинуться',
		R = 'm|/castsequence reset=6 Взбучка,Размах,Увечье,Размах',
		F = 's|Берсерк',
		T = 's|Размах',
	},
	's|Медвежьи объятия',
	's|Дикая защита',
	's|Волшебный огонь',
	's|Растерзать',
	's|Рык',
	NUMPAD2 = 's|Лобовая атака',
	Q = 's|Трепка',
	E = 'm|/cast [nostealth] Увечье;[stealth] Накинуться',
	R = 'm|/castsequence reset=6 Взбучка,Размах,Увечье,Размах',
	F = 's|Берсерк',
	T = 's|Размах',
	shift = {
		R = 's|Исступление',
		F = 'm|/cast Перевоплощение\n/cast Сила природы',
	},
}
local resto = {
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Железная кора',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Покровительство Природы',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Быстрое восстановление\n/click SpellStopTargetingButton',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Целительное прикосновение',
	's|Буйный рост',
	Q = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Жизнецвет',
	E = 'm|/cancelaura Ледяная глыба\n/cast [@mouseover,help,nodead][help,nodead][@player] Омоложение',
	R = 'm|/use 10\n/cast [@mouseover,help,nodead][help,nodead][@player] Восстановление',
	F = 'm|/cast Перевоплощение\n/cast Сила природы',
	T = 's|Волшебный огонь',
	NUMPAD2 = 's|Тайфун',
	shift = {
		F = 'm|/cast Природная чуткость\n/cast Сердце дикой природы',
	},
}

local balance = {
	's|Облик лунного совуха',
	's|Гнев',
	's|Звездный поток',
	's|Звездный огонь',
	's|Ураган',
	Q = 's|Лунный огонь',
	E = 's|Солнечный огонь',
	R = 's|Столп солнечного света',
	F = 'm|/use 14\n/cast Парад планет',
	T = 's|Волшебный огонь',
	NUMPAD2 = 's|Тайфун',
	cat = {
		R = 's|Облик лунного совуха',
	},
	bear = {
		R = 's|Облик лунного совуха',
	},
	shift = {
		R = 's|Гнев деревьев',
		F = 'm|/cast Перевоплощение\n/cast Сила природы',
	},	
}

pBindings:RegisterKeyBindings('Сила зверя', bindings.base, druidbase, feral)
pBindings:RegisterKeyBindings('Страж', bindings.base, druidbase, guardian)
pBindings:RegisterKeyBindings('Исцеление', bindings.base, druidbase, resto)
pBindings:RegisterKeyBindings('Баланс', bindings.base, druidbase, balance)