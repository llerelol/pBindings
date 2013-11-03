if(select(2, UnitClass'player') ~= 'HUNTER') then return end

local __, bindings = ...


local huntbase = {
	[3] = 'm|/startattack\n/cast Укус змеи',
	[4] = 'm|/startattack\n/cast Выстрел кобры\n/cast Верный выстрел',
	[5] = 'm|/startattack\n/cast Убийственный выстрел',
	[6] = 'm|/cast Камуфляж',
	[7] = 's|Усмиряющий выстрел',
	E = 'm|/startattack\n/cast Чародейский выстрел',
	Q = 'm|/startattack\n/cast Контузящий выстрел',
	R = 'm|/cast Дезориентирующий выстрел',
	C = 's|Отрыв',
	G = 's|Притвориться мертвым',
	X = 'm|/cast !Змеиная ловушка',
	T = 'm|/cast !Замораживающая ловушка',
	V = 'm|/cast !Взрывная ловушка',
	TAB = 's|Метание ловушки',
	F = 'm|/use 10\n/use 14\n/cast Рвение\n/cast Укус виверны\n/cast Устрашение\n/cast !Связующий выстрел',
	
	BUTTON3 = 's|Каждый за себя',
	
	--naga
	NUMPAD1 = 'm|/click PetActionButton5',
	NUMPAD2 = 'm|/stopattack\n/stopcasting\n/cast Глушащий выстрел',
	DOWN = 'm|/cast [@focus,exists,nodead,harm] Глушащий выстрел; Глушащий выстрел',
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]',
	PAGEDOWN = '',
	NUMPAD4 = 'm|/cast [@player] Рев жертвенности',
	LEFT = '',
	F6 = 'm|/cast [@Койдвин] Рев жертвенности',
	NUMPAD6 = 'm|/cast [@Амандус,exists,nodead,help][@Целестайн,exists,nodead,help] Рев жертвенности',
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Огненный боевой конь',
	NUMPAD8 = 'm|/cast Крылатый страж',
	NUMPADMINUS = 'm|/petfollow',
	NUMPADPLUS = 'm|/use 15',
	['`'] = 'm|/cast !Осветительная ракета',
	['¸'] = 'm|/cast !Осветительная ракета',
	
	
	shift = {
		's|Отпугивание зверя',
		's|Токсин черной вдовы',
		'm|/startattack\n/cast Залп',
		'm|/cast Бросок глеф\n/cast Мощный выстрел\n/cast Шквал',
		R = 'm|/cast [@focus,exists,nodead,harm] Дезориентирующий выстрел',
		X = 's|Ледяная ловушка',
		G = 's|Лечение питомца',
		E = 's|Порыв(Симбиоз)',
		F = 'm|/cast Быстрая стрельба\n/cast Звериный натиск',
		T = 's|Звериный натиск',
		Q = 's|Готовность',
		SPACE = 'm|/use 6',
		MOUSEWHEELUP = 's|Дух ястреба',
		MOUSEWHEELDOWN = 's|Дух гепарда',
	},
	ctrl = {
		E = 's|Метка охотника',
		R = 'i|Камень здоровья',
		T = 's|Воскрешение питомца',
		F = 's|Стая воронов',
	},
	alt = {
		's|Прогнать питомца',
		's|Призыв питомца 4',
		's|Призыв питомца 2',
		's|Призвать',
		Q = 's|Сдерживание',
		E = 'm|/cast [@player] Приказ хозяина',
	},
}

local surv = {
	'm|/startattack\n/cast Разрывной выстрел',
	'm|/startattack\n/cast Черная стрела',
}

local bm = {
	'm|/startattack\n/cast Команда взять',
	'm|/cast Звериный гнев',
}

local mm = {
	'm|/startattack\n/cast Выстрел химеры',
	'm|/startattack\n/cast Прицельный выстрел',
}


pBindings:RegisterKeyBindings('Выживание', bindings.base, huntbase, surv)
pBindings:RegisterKeyBindings('Стрельба', bindings.base, huntbase, mm)
pBindings:RegisterKeyBindings('Повелитель зверей', bindings.base, huntbase, bm)