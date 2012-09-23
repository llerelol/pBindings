if(select(2, UnitClass'player') ~= 'DRUID') then return end

local __, bindings = ...
--[[ druid actionbars 1-12 | 13-24 | 25-36 | 37-48 | 48-59 | 60-71 | 72-83(cat form) | 84-95 | 96-107(bear form) | 108-119(moonkin) ]]--
local druidbase = {
	cat = {
		's|Калечение',
		's|Свирепый укус',
		'm|/cast [nostealth] Полоснуть;[stealth] Наскок',
		'm|/cast [nostealth] Глубокая рана;[stealth] Накинуться',
		's|Волшебный огонь',
		Q = 's|Глубокая рана',
		E = 'm|/cast [nostealth] Увечье;[stealth] Накинуться',
		R = 'm|/castsequence reset=6 Взбучка,Размах,Увечье,Размах',
		F = 's|Тигриное неистовство',
		T = 's|Размах',
	},
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
	
	C = 's|Стремительный рывок',
	X = 's|Мошь урсока',
	G = 'm|/cast [@focus,harm,nodead,mod:shift][@mouseover,exists,nodead,harm][harm,nodead] Смерч',
	V = 'm|/cast Мощное оглушение\n/cast Вихрь Урсола',
	B = 's|Природная стремительность',
	F4 = 's|Оживление',
	F5 = 's|Телепортация: Лунная поляна',
	TAB = 's|Слиться с тенью',
	BUTTON3 = 'm|/use 13',
	BUTTON4 = 's|Знак дикой природы',
	-- naga
	NUMPAD1 = 's|Крадущийся зверь',
	END = 'm|/cast [@mouseover,exists,nodead,help][@player]  Озарение',
	-- NUMPAD2 spec specific
	DOWN = 'm|/cast [@focus,exists,nodead,harm] Лобовая атака',
	NUMPAD3 = '',
	PAGEDOWN = '',
	
	NUMPAD4 = 's|Походный облик',
	LEFT = 'm|/cast [@arena1,harm,nodead,mod:shift] Смерч',
	F6 = 's|Облик кошки',
	NUMPAD6 = 's|Облик медведя',
	RIGHT = 'm|/cast [@arena3,harm,nodead,mod:shift] Смерч',
	NUMPAD7 = 's|Белый боевой конь-скелет',
	NUMPAD8 = 's|Облик стремительной птицы',
	NUMPAD9 = 's|Водный облик',
	['`'] = 's|Хватка природы',
	['¸'] = 's|Хватка природы',
	
	shift = {
		's|Громовая поступь',
		's|Умиротворение',
		'm|/cast [@mouseover,help,nodead][@player] Целительное прикосновение',
		'm|/cast [@mouseover,help,nodead][@player] Омоложение',
		
		E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Снятие порчи',
		F = 'm|/cast [stance:3] Берсерк\n/cast [nostance:3] Перевоплощение\n/cast [nostance:3] Сила природы',
		Q = 's|Спокойствие',
		C = 's|Тревожный рев',
		T = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Возрождение',
		X = 'm|/use 14',
		
		MOUSEWHEELUP = 'm|/cast [@party1,help,nodead] Снятие порчи',
		MOUSEWHEELDOWN = 'm|/cast [@party2,help,nodead] Снятие порчи',
		
		F6 = 'm|/cast [@arena2,harm,nodead,mod:shift] Смерч', --num5
	},
	ctrl = {
		[2] = 's|Гнев',
		[3] = 's|Звездный огонь',
		E = 's|Гнев деревьев',
		R = 'm|/focus\n/cast Гнев деревьев',
		F = 'm|/cast Перевоплощение\n/cast Сила природы',
		NUMPAD2 = 's|Тайфун',
		
	},
	alt = {
		E = 's|Порыв',
		Q = 's|Дубовая кожа',
	},
}

local feral = {
	's|Калечение',
	's|Свирепый укус',
	'm|/cast [nostealth] Полоснуть;[stealth] Наскок',
	'm|/cast [nostealth] Глубокая рана;[stealth] Накинуться',
	's|Волшебный огонь',
	Q = 's|Глубокая рана',
	E = 'm|/cast [nostealth] Увечье;[stealth] Накинуться',
	R = 's|Дикий рев',
	F = 's|Тигриное неистовство',
	T = 's|Размах',
	NUMPAD2 = 's|Лобовая атака',
	shift = {
		R = 'm|/castsequence reset=6 Взбучка,Размах,Увечье,Размах',
		F = 's|Берсерк',
	},
	ctrl = {
		F = 'm|/cast Перевоплощение\n/cast Сила природы',
	},
}

local guardian = {
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
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Быстрое восстановление',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Целительное прикосновение',
	's|Буйный рост',
	Q = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Жизнецвет',
	E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Омоложение',
	R = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Восстановление',
	F = 'm|/cast Перевоплощение\n/cast Сила природы',
	T = 's|Волшебный огонь',
	NUMPAD2 = 's|Тайфун',
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
	F = 's|Парад планет',
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