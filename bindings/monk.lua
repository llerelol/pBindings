if(select(2, UnitClass'player') ~= 'MONK') then return end

local __, bindings = ...

local monkbase = {

	C = 's|Кувырок',
	X = 'm|/cast !Целительная сфера',
	G = 's|Трансцендентность: перенос',
	V = 'm|/cast Несущийся бык\n/cast Круговой удар ногой',
	B = 's|Отвар ци',
	F4 = 's|Воскрешение',
	F5 = 's|Духовное путешествие',
	TAB = 'm|/cast Распыление магии\n/cast Смягчение удара',
	BUTTON3 = 'm|/use 13',
	BUTTON4 = 's|Наследие императора',

	-- 1 mouse
	NUMPAD1 = 's|Вывести из строя',
	END = '',
	-- 2 mouse
	NUMPAD2 = 's|Рука-копье',
	DOWN = 'm|/cast [@focus,exists,nodead,harm] Рука-копье',
	-- 3 mouse
	NUMPAD3 = 's|Паралич',
	PAGEDOWN = 'm|/cast [@focus,exists,nodead,harm] Паралич',
	-- 4 mouse
	NUMPAD4 = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Исцеляющий кокон',
	LEFT = '',
	-- 5 mouse
	F6 = '',
	-- 6 mouse
	NUMPAD6 = '',
	RIGHT = '',
	-- etc mouse
	NUMPAD7 = 's|Белый боевой конь-скелет',
	NUMPAD8 = 's|Облик стремительной птицы',
	NUMPAD9 = '',
	['`'] = 's|Дзен-медитация',
	['¸'] = 's|Дзен-медитация',
	
	shift = {
		's|Вызов',
		's|Сверкающая нефритовая молния',
		's|Маначай',
		's|Духовный подъем',
		R = 'm|/startattack\n/cast Лапа тигра',
		G = 's|Трансцендентность',
		E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Детоксикация',
		F = 's|Громовой чай',
		Q = 's|Восстановление сил',
		C = 's|Выхватить оружие',
		T = 'm|/cast !Путь цветения',
		X = 'm|/use 14',
		
		BUTTON3 = 's|Воля отрекшихся',
		MOUSEWHEELUP = 'm|/cast [@party1,help,nodead] Детоксикация',
		MOUSEWHEELDOWN = 'm|/cast [@party2,help,nodead] Детоксикация',
		
		F6 = '', --num5
	},
	ctrl = {
		R = 's|Смертельное касание',
	},
	alt = {
		E = 'm|/cast [@player] Тигриное рвение',
		Q = 's|Укрепляющий отвар',
	},
}


local mist = {
	's|Устранение вреда',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Успокаивающий туман',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Благотворный туман',
	'm|/cast [@mouseover,help,nodead][help,nodead][@player] Окутывающий туман',
	's|Танцующий журавль',
	Q = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Заживляющий туман',
	E = 'm|/startattack\n/cast Дзуки',
	R = 'm|/startattack\n/cast Нокаутирующий удар',
	F = 'm|/cast Волна ци\n/cast Сфера дзен\n/cast Выброс ци',
	T = 'm|/cast !Призыв статуи Нефритовой Змеи',
}


pBindings:RegisterKeyBindings('Ткач туманов', bindings.base, monkbase, mist)
--pBindings:RegisterKeyBindings('Хмелевар', bindings.base, monkbase, brew)
--pBindings:RegisterKeyBindings('Танцующий с ветром', bindings.base, monkbase, resto)