if(select(2, UnitClass'player') ~= 'WARLOCK') then return end

local __, bindings = ...

local lockbase = {
	
	C = 's|Демонический прыжок',
	X = 's|Демонический круг: телепортация',
	G = 'm|/cast Темное восстановление\n/cast Жатва жизни',
	T = 's|Жизнеотвод',
	V = 'm|',
	B = 's|',
	R = 'm|/cast Неистовство тьмы\n/cast Лик тлена\n/cast Вой ужаса',
	F1 = 's|Призыв беса',
	F2 = 's|Призыв охотника Скверны',
	F3 = 's|Призыв суккуба',
	F4 = 's|Призыв демона Бездны',
	F5 = 's|Призыв стража Скверны',
	TAB = 's|Твердая решимость',
	BUTTON3 = 's|Каждый за себя',
	BUTTON4 = 's|Доспех скверны',
	BUTTON5 = 's|Узы Тьмы',
	--'m|/cast Гримуар жертвоприношения\n/cast Гримуар служения\n/cast Гримуар верховной власти',
	-- naga
	NUMPAD1 = 's|Проклятие стихий',
	END = 's|Проклятие упадка сил',
	-- NUMPAD2 spec specific
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]',
	PAGEDOWN = 's|',
	
	NUMPAD4 = 'm|/cast Стремительный бег\n/cast Кровавый ужас',
	LEFT = 'm|',
	F6 = 's|', -- num5
	NUMPAD6 = 's|',
	RIGHT = 'm|',
	NUMPAD7 = 'm|/cast Огненный боевой конь',
	HOME = 'm|/cast Конь погибели',
	NUMPAD8 = 'm|/cast Крылатый страж',
	NUMPAD9 = 's|',
	NUMPADPLUS = 'm|/use 15',
	['`'] = 's|Призыв стража ужаса',
	['¸'] = 's|Призыв стража ужаса',
	
	shift = {
		's|Нестабильное колдовство',
		's|Стрела Тьмы',
		's|Порча',
		's|Похищение жизни',
		's|Семя порчи',
		
		G = 'm|',
		E = 'm|',
		F = 's|Черная душа',
		Q = 's|Страх',
		C = 's|Проклятие упадка сил',
		T = 'm|/cast !Призыв инфернала',
		X = 's|Демонический круг: создание',
		MOUSEWHEELUP = 'm|',
		MOUSEWHEELDOWN = 'm|',
		SPACE = 'm|/use 6',
		F6 = 'm|', --num5
	},
	ctrl = {
		's|',
		's|',
		's|',
		's|',
		Q = 'm|/cast [@focus,exists,harm,nodead] Страх',
		E = 'm|/cast [@pet] Канал здоровья',
		R = 'i|Камень здоровья',
		T = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Камень души',
		F = 'm|',
		NUMPAD2 = 's|',
		NUMPAD4 = 'm|',
		F6 = 'm|', -- num5
		NUMPAD6 = 'm|',
	},
	alt = {
		'm|/petattack',
		'm|/petfollow',
		E = 'm|/cast Темная сделка\n/cast Жертвенный договор',
		Q = 's|Завеса сумерек',
		R = 's|Создание камня здоровья',
	},
}

local affli = {
	's|Пламя Скверны',
	's|Нестабильное колдовство',
	's|Порча',
	's|Блуждающий дух',
	's|Семя порчи',
	E = 's|Гибельная хватка',
	Q = 's|Агония',
	F = 's|Горящая душа',
	
	shift = {
		E = 's|Похищение жизни',
		R = 's|Похищение души',
	},
}

local demo = {
	's|Пламя скверны',
	's|Ожог души',
	's|Порча',
	's|Стрела тьмы',
	's|Адское пламя',
	E = 's|Рука Гул\'дана',
	Q = 's|Агония',
	F = 's|Метаморфоза',
	V = 's|Метание топора',
	
	NUMPAD2 = 's|Темная стая',
	
	shift = {
		[3] = 's|Проклятие стихий',
		E = 'm|/cast Буря скверны\n/cast Буря гнева',
		R = 's|Стая бесов',
	},
}

local destro = {
	's|Пламя Скверны',
	's|Жертвенный огонь',
	's|Испепеление',
	's|Стрела Хаоса',
	's|Хаос',
	E = 's|Поджигание',
	Q = 'm|/cast !Огненный ливень',
	F = 's|Ожог Тьмы',
	
	NUMPAD2 = 's|Темная стая',
	
	shift = {
		R = 's|Огонь и сера',
	},
}

pBindings:RegisterKeyBindings('Колдовство', bindings.base, lockbase, affli)
pBindings:RegisterKeyBindings('Демонология', bindings.base, lockbase, demo)
pBindings:RegisterKeyBindings('Разрушение', bindings.base, lockbase, destro)
