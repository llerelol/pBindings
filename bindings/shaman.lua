if(select(2, UnitClass'player') ~= 'SHAMAN') then return end

local __, bindings = ...

local shambase = {
	[0] = 'm|/focus',
	G = 's|Возвращение тотемов',
	B = 'm|/cast Стремительность предков\n/cast Покорение стихий',
	X = 'm|/cast Зов стихий\n/cast !Проецирование тотемов',
	C = 's|Тотем элементаля огня',
	V = 's|Призрачный волк',
	
	TAB = 'm|/cast Наставления предков\n/cast Тотем целительного прилива',
	BUTTON3 = 'm|/use 13',
	BUTTON4 = 'm|/cast [nomod] Щит молний;[mod:shift] Водный щит',
	BUTTON5 = 'm|/cast [@mouseover,help,nodead][@player] Хождение по воде',
	F3 = 'm|/focus',
	F4 = 's|Дух предков',
	--naga0
	NUMPADPLUS = 'm|/use 15',
	NUMPAD1 = 'm|/cast Ледяной шок\n/cast Тотем хватки земли',
	END = 's|Опаляющий тотем',
	NUMPAD2 = 's|Пронизывающий ветер',
	DOWN = 'm|/cast [@focus,exists,nodead,harm] Пронизывающий ветер; Пронизывающий ветер',
	NUMPAD3 = 's|Благосклонность предков',
	PAGEDOWN = 'm|/cast [@healer,exists,help,nodead] Вмешательство',
	NUMPAD4 = 's|Тотем заземления',
	LEFT = '',
	NUMPAD5 = 'm|/script DestroyTotem(2);\n/cast Тотем трепета',
	NUMPAD6 = 's|Тотем конденсации',
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Боевой скакун грозовой вершины',
	NUMPAD8 = 'm|/cast Крылатый страж',
	['`'] = 's|Сковать элементаля',
	['¸'] = 's|Сковать элементаля',
	
	
	shift = {
		's|Тотем порыва бури',
		'm|/cast [@mouseover,help,nodead][@player] Цепное исцеление',
		'm|/cast Высвободить чары стихий',
		'm|/cast [@mouseover,help,nodead][@player] Исцеляющий всплеск',
		C = 's|Тотем элементаля земли',
		X = 'm|/cast Тотем магмы\n/cast !Проецирование тотемов',
		Q = 's|Сглаз',
		E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Очищение духа',
		R = 's|Развеивание магии',
		T = 'm|/cast !Целительный ливень',
	},
	ctrl = {
		's|Оружие языка пламени',
		's|Оружие ледяного клейма',
		's|Оружие камнедробителя',
		's|Оружие жизни земли',
		Q = 'm|/cast [@focus,exists,nodead,harm][] Сглаз',
		T = 'm|/cast !Дальнее зрение',
		E = 's|Тотем порыва бури',
		R = 'i|Камень здоровья',
		F = 's|Тотем порыва бури',
	},
	alt = {
		Q = 'm|/cast Астральный сдвиг\n/cast Тотем каменной преграды',
		E = 'm|/cast Героизм\n/cast Жажда крови',
	},
}

local enh = {
}

local resto = {
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Щит земли',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Волна исцеления',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Исцеляющий всплеск',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Великая волна исцеления',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Тотем исцеляющего потока',
	Q = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Высвободить чары стихий',
	E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Быстрина',
	R = 's|Развеивание магии',
	T = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Цепное исцеление',
	F = 's|Тотем духовной связи',
	X = 's|Тотем оков земли',
	Z = 's|Тотем прилива маны',
	shift = {
		's|Молния',
		's|Выброс лавы',
		's|Земной шок',
		's|Огненный шок',
		F = 's|Перерождение',
		R = 's|Сотрясающая ладонь',
		MOUSEWHEELUP = 'm|/cast [@Целестайн] Очищение духа',
		MOUSEWHEELDOWN = 'm|/cast [@Ексна] Очищение духа',
	},
}

local elem = {
	's|Гром и молния',
	's|Удар духов стихии',
	'm|/use 10\n/cast Выброс лавы',
	's|Земной шок',
	's|Тотем магмы',
	Q = 's|Огненный шок',
	E = 's|Молния',
	R = 's|Цепная молния',
	F = 'm|/use 13\n/use 14\n/cast Перерождение\n/cast Тотем порыва бури',
	T = 'm|/cast !Землетрясение',
	shift = {
		's|Тотем порыва бури',
		'm|/cast [@mouseover,help,nodead][@player] Цепное исцеление',
		'm|/cast Высвободить чары стихий',
		'm|/cast [@mouseover,help,nodead][@player] Исцеляющий всплеск',
	},

}
pBindings:RegisterKeyBindings('Совершенствование', bindings.base, shambase, enh)
pBindings:RegisterKeyBindings('Исцеление', bindings.base, shambase, resto)
pBindings:RegisterKeyBindings('Стихии', bindings.base, shambase, elem)