if(select(2, UnitClass'player') ~= 'WARLOCK') then return end

local __, bindings = ...
local lockbase = {
	
	C = 's|Демонический круг: телепортация',
	X = 's|Демонический круг: создание',
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
	NUMPAD1 = 's|',
	END = 'm|',
	-- NUMPAD2 spec specific
	NUMPAD3 = 'm|/focus [@mouseover,exists,nodead][]',
	PAGEDOWN = 's|',
	
	NUMPAD4 = 's|',
	LEFT = 'm|',
	F6 = 's|', -- num5
	NUMPAD6 = 's|',
	RIGHT = 'm|',
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Боевой скакун грозовой вершины',
	NUMPAD8 = 's|',
	NUMPAD9 = 's|',
	NUMPADPLUS = 'm|/use 15',
	['`'] = 's|',
	['¸'] = 's|',
	
	shift = {
		's|Нестабильное колдовство',
		's|Стрела Тьмы',
		's|Порча',
		's|Похищение жизни',
		's|Семя порчи',
		
		G = 'm|',
		E = 'm|',
		F = 'm|',
		Q = 's|Страх',
		C = 's|',
		T = 's|Углеотвод',
		
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
		E = 's|',
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
	's|',
	's|',
	's|',
	's|',
	's|',
}

local demo = {
	's|',
	's|',
	's|',
	's|',
	's|',
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
	
	shift = {
		R = 's|Огонь и сера',
	},
}

pBindings:RegisterKeyBindings('Колдовство', bindings.base, lockbase, affli)
pBindings:RegisterKeyBindings('Демонология', bindings.base, lockbase, demo)
pBindings:RegisterKeyBindings('Разрушение', bindings.base, lockbase, destro)
