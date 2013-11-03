if(select(2, UnitClass'player') ~= 'HUNTER') then return end

local __, bindings = ...


local huntbase = {
	'',
	'',
	'm|/petattack\n/startattack\n/cast Укус змеи',
	'm|/petattack\n/startattack\n/cast Выстрел кобры\n/cast Верный выстрел',
	'm|/cancelaura Сдерживание\n/cancelaura Длань защиты\n/petattack\n/startattack\n/cast Убийственный выстрел',
	'm|/cast Камуфляж',
	's|Усмиряющий выстрел',
	
	E = 'MACRO arcane',--'m|/petattack\n/startattack\n/cast !Дух ястреба\n/cast Чародейский выстрел\n/focus arenaX',
	Q = 'm|/startattack\n/cast Контузящий выстрел',
	
	R = 'm|/cast Дезориентирующий выстрел',
	C = 's|Отрыв',
	G = 's|Притвориться мертвым',
	X = 'm|/cast !Змеиная ловушка',
	T = 'm|/cast !Замораживающая ловушка',
	V = 'm|/cast !Взрывная ловушка',
	TAB = 's|Метание ловушки',
	F = 'm|/cast Укус виверны\n/cast Устрашение\n/cast !Связующий выстрел',
	
	BUTTON3 = 's|Каждый за себя', -- or 'm|/use 13'
	
	-- naga below
	NUMPAD1 = 'm|/use 14\n/cast Быстрая стрельба\n/cast Звериный натиск\n/petattack\n/petattack',	--'m|/click PetActionButton5',
	END = 'm|/use 14\n/cast Быстрая стрельба',
	--
	NUMPAD2 = 'm|/stopattack\n/stopcasting\n/cast Глушащий выстрел\n/cast Встречный выстрел',
	DOWN = 'm|/cast [@focus,exists,nodead,harm][] Глушащий выстрел\n/cast [@focus,exists,nodead,harm][] Встречный выстрел',
	--
	NUMPAD4 = 'm|/target arena1',
	LEFT = 'm|/cast [@arena1,exists,nodead] Укус виверны',
	--
	F6 = 'm|/target arena2',
	--
	NUMPAD6 = 'm|/target arena3',
	RIGHT = 'm|/cast [@arena3,exists,nodead] Укус виверны',
	--
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Огненный боевой конь',
	NUMPAD8 = 'm|/cast Крылатый страж',
	NUMPADMINUS = 'm|/petfollow',
	NUMPADPLUS = 'm|/use 15',
	-- tilde
	['`'] = 'm|/cast !Осветительная ракета',
	['¸'] = 'm|/cast !Осветительная ракета',
	
	
	shift = {
		's|Отпугивание зверя',
		's|Токсин черной вдовы',
		'm|/petattack\n/startattack\n/cast Залп',
		's|Токсин черной вдовы',
		
		R = 'm|/cast [@focus,exists,nodead,harm] Дезориентирующий выстрел',
		C = 'MACRO assist',--'m|/assist X',
		X = 's|Ледяная ловушка',
		G = 's|Лечение питомца',
		E = 'm|/cast Бросок глеф\n/cast Мощный выстрел\n/cast Шквал',				--'s|Порыв(Симбиоз)',
		F = 'm|/cast [@focus,exists,nodead,harm] Укус виверны\n/cast [@focus,exists,nodead,harm] Устрашение',
		T = 's|Звериный натиск',
		Q = 'm|/cast [@Пьедра,exists][@Хаузвар,exists][@Дое,exists] Приказ хозяина',
		
		SPACE = 'm|/use 6',
		MOUSEWHEELUP = 's|Дух ястреба',
		MOUSEWHEELDOWN = 's|Дух гепарда',
		F6 = 'm|/cast [@arena2,exists,nodead] Укус виверны',
	},
	ctrl = {
		'MACRO scare',--'m|/cast [@arenapetX,harm,exists][] Отпугивание зверя',
		E = 's|Колыбельная',
		R = 'm|/use Камень здоровья\n/use Лечебное зелье мастера',
		T = 's|Воскрешение питомца',
		F = 's|Стая воронов',
		-- naga below
		Q = 'm|/cast [@Целестайн,exists][@Эннио,exists][@Койдвин,exists] Приказ хозяина',
		NUMPAD4 = 'm|/cast [@player] Рев жертвенности',
		F6 = 'm|/cast [@Койдвин,exists][@Хаузвар,exists][@Церендос,exists][@Пьедра,exists][@Иефия,exists][@Дое,exists] Рев жертвенности',
		NUMPAD6 = 'm|/cast [@Амандус,exists][@Целестайн,exists][@Эннио,exists] Рев жертвенности',
	},
	alt = {
		's|Прогнать питомца',
		's|Призыв питомца 1',
		's|Призыв питомца 2',
		's|Призыв питомца 3',
		's|Призыв питомца 4',
		's|Призыв питомца 5',
		Q = 's|Сдерживание',
		E = 'm|/petfollow\n/cast [@player] Приказ хозяина',
		F = 's|Метка охотника',
		NUMPAD4 = 'm|/focus arena1',
		F6 = 'm|/focus arena2',
		NUMPAD6 = 'm|/focus arena3',
	},
}

local surv = {
	'm|/petattack\n/startattack\n/cast Разрывной выстрел',
	'm|/petattack\n/startattack\n/use 10\n/cast Черная стрела',
}

local bm = {
	'm|/startattack\n/cast Команда взять',
	'm|/cast Звериный гнев',
}

local mm = {
	'm|/petattack\n/startattack\n/use 10\n/cast Выстрел химеры',
	'm|/petattack\n/startattack\n/cast Прицельный выстрел',
}


pBindings:RegisterKeyBindings('Выживание', bindings.base, huntbase, surv)
pBindings:RegisterKeyBindings('Стрельба', bindings.base, huntbase, mm)
pBindings:RegisterKeyBindings('Повелитель зверей', bindings.base, huntbase, bm)