if(select(2, UnitClass'player') ~= 'HUNTER') then return end

local __, bindings = ...


local huntbase = {
	[3] = 'm|/petattack\n/startattack\n/cast Укус змеи',
	[4] = 'm|/petattack\n/startattack\n/cast Выстрел кобры\n/cast Верный выстрел',
	[5] = 'm|/petattack\n/startattack\n/cast Убийственный выстрел',
	[6] = 's|Камуфляж',
	[7] = 's|Усмиряющий выстрел',
	E = 'm|/petattack\n/startattack\n/cast Чародейский выстрел',
	Q = 'm|/startattack\n/cast Контузящий выстрел',
	R = 'm|/cast [@focus,exists,nodead,mod:shift] Дезориентирующий выстрел;Дезориентирующий выстрел',
	C = 's|Отрыв',
	G = 's|Притвориться мертвым',
	X = 'm|/cast !Змеиная ловушка',
	T = 'm|/cast !Замораживающая ловушка',
	V = 'm|/cast !Взрывная ловушка',
	TAB = 's|Метание ловушки',
	F = 'm|/cast Укус виверны\n/cast Устрашение\n/cast !Связующий выстрел',
	
	BUTTON3 = 's|Каждый за себя',
	
	--naga
	NUMPAD1 = 'm|/click PetActionButton5',
	NUMPAD2 = 'm|/stopattack\n/stopcasting\n/cast Глушащий выстрел',
	DOWN = 'm|/cast [@focus,exists,nodead,harm] Глушащий выстрел; Глушащий выстрел',
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]',
	PAGEDOWN = '',
	NUMPAD4 = 'm|/cast [@player] Рев жертвенности',
	LEFT = '',
	NUMPAD5 = 'm|/cast [@player] Рев жертвенности',
	NUMPAD6 = 'm|/cast [@player] Рев жертвенности',
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Огненный боевой конь',
	NUMPAD8 = 'm|/cast Крылатый страж',
	NUMPADMINUS = 'm|/petfollow',
	NUMPADPLUS = 'm|/use 15',
	['`'] = 'm|/cast !Осветительная ракета',
	['¸'] = 'm|/cast !Осветительная ракета',
	
	
	shift = {
		's|Отпугивание зверя',
		's|Токсин черной вдовы',
		'm|/petattack\n/startattack\n/cast Залп',
		'm|/cast Бросок глеф\n/cast Мощный выстрел\n/cast Шквал',
		X = 's|Ледяная ловушка',
		G = 's|Лечение питомца',
		E = 's|Порыв(Симбиоз)',
		F = 'm|/cast Быстрая стрельба',
		T = 's|Звериный натиск',
		SPACE = 'm|/use 8',
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
		's|Призвать',
		's|Призвать',
		's|Призвать',
		Q = 's|Сдерживание',
		E = 'm|/cast [@player] Приказ хозяина',
	},
}

local surv = {
	'm|/petattack\n/startattack\n/cast Разрывной выстрел',
	'm|/petattack\n/startattack\n/cast Черная стрела',
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