if(select(2, UnitClass'player') ~= 'ROGUE') then return end

local __, bindings = ...


local roguebase = {
	'm|/startattack [nostealth]\n/cast [nostealth] Удар по почкам;[stealth] Гаррота',
	'm|/cast [nostealth] Долой оружие;[stealth] Гаррота',
	'm|/startattack [nostealth]\n/cast [nostealth] Рваная рана;[stealth] Подлый трюк',
	'm|/startattack [nostealth]\n/cast [nostealth] Потрошение;[stealth] Гаррота',
	'm|/cast Бросок сюрикена\n/cast Метка смерти',
	's|Прогулка в тенях',
	'm|/cast [@Миссхантер,help,exists,nodead][@targettarget] Маленькие хитрости',
	
	E = 'm|/startattack [nostealth]\n/cast [nostealth] Удар в спину\n/cast [nostealth] Расправа\n/cast [stealth] Умысел\n/cast [stealth] Внезапный удар\n/cast [nostealth] !Незаметность',
	Q = 'm|/startattack [nostealth]\n/cast [nostealth] Коварный удар\n/cast [stealth] Умысел\n/cast [stealth] Гаррота\n/cast [nostealth] !Незаметность',
	
	R = 's|Мясорубка',
	C = 'm|/cast Шаг сквозь тень\n/cast Внезапный порыв',
	G = 's|Дымовая шашка',
	X = 's|Смена приоритетов',
	T = 'm|/cast [@focus,exists,harm,nodead,mod:shift][] Парализующий удар\n/cast !Незаметность',
	V = 's|Уловка',
	TAB = 's|Плащ теней',
	F = 's|Исчезновение',
	Z = 's|Веер клинков',
	-- need to find a key for sunder armor
	BUTTON3 = 'm|/use 13', -- or 's|Каждый за себя',
	BUTTON4 = 'm|/use [nomod] Паралитический яд;[mod:shift] Похищающий жизнь яд;[mod:ctrl] Калечащий яд;[mod:alt] Дурманящий яд',
	BUTTON5 = 'm|/use [nomod] Нейтрализующий яд;[mod:shift] Смертоносный яд',
	
	-- naga below
	NUMPAD1 = 'm|/cast [nostealth,nocombat] Незаметность;[stealth,harm] Ошеломление',
	END = 'm|/cast [@focus,exists,nodead,harm] Ошеломление',
	--
	NUMPAD2 = 'm|/cast [] Пинок\n/cast [@focus] Пинок',
	DOWN = 'm|/cast  [@focus] Пинок',
	--
	NUMPAD4 = 'm|/target arena1',
	LEFT = 'm|/cast [@arena1,nodead] Ослепление',
	--
	F6 = 'm|/target arena2',
	--
	NUMPAD6 = 'm|/target arena3',
	RIGHT = 'm|/cast [@arena3,nodead] Ослепление',
	--
	NUMPAD7 = 'm|/cast Белый боевой конь-скелет\n/cast Огненный боевой конь',
	NUMPAD8 = 'm|/cast Крылатый страж',
	NUMPADMINUS = '',
	NUMPADPLUS = 'm|/use 15',
	-- tilde
	['`'] = 'm|/cast !Отвлечение',
	['¸'] = 'm|/cast !Отвлечение',

	shift = {
		'm|/cast Боевая готовность\n/cast Бросок\n/cast Смертельный бросок',
		'm|/cast [@focus,exists,harm,nodead] Долой оружие',
		'',
		's|Теневые клинки',
		'm|/startattack [nostealth]\n/cast [nostealth] Кровавый вихрь',
		
		R = 's|Заживление ран',
		C = 'm|/cast [@focus,exists,harm,nodead] Шаг сквозь тень\n/cast [@focus,exists,harm,nodead] Пинок',
		X = 'm|/cast [@focus,exists,harm,nodead] Смена приоритетов\n/cast [@focus,exists,harm,nodead] Удар по почкам',
		G = 's|Дымовая шашка',
		E = 's|Отравляющий укол',
		F = 's|Подготовка',
		T = 'm|/stopattack\n/stopattack\n/cast Слиться с тенью',
		Q = 's|Скрывающий покров',
		
		SPACE = 'm|/use 6',
		MOUSEWHEELUP = 'm|/cancelaura Длань защиты\n/stopattack\n/targetenemy\n/cast [harm,nodead][@focus] Ошеломление',
		MOUSEWHEELDOWN = 'm|/cancelaura Длань защиты\n/stopattack\n/targetenemy\n/cast [harm,nodead][@focus] Ошеломление',
		
		F6 = 'm|/cast [@arena2,nodead] Ослепление', -- num5
	},
	
	ctrl = {
		E = 'm|/cast [@focus.exists,nodead,harm][] Отравляющий укол', 
		Q = 's|Симбиоз',
		R = 'm|/use Камень здоровья\n/use Лечебное зелье мастера',
		T = 'm|/cast [@hyealer] Шаг сквозь тень',
		
		NUMPAD4 = 'm|/cast [@arena1,exists,nodead,harm] Смена приоритетов\n/cast [@arena1,exists,nodead,harm] Удар по почкам',
		F6 = 'm|/cast [@arena2,exists,nodead,harm] Смена приоритетов\n/cast [@arena2,exists,nodead,harm] Удар по почкам', -- num5
		NUMPAD6 = 'm|/cast [@arena3,exists,nodead,harm] Смена приоритетов\n/cast [@arena3,exists,nodead,harm] Удар по почкам',
	},
	
	alt = {
		E = 's|Спринт',
		Q = 's|Ускользание',
		
		NUMPAD4 = 'm|/cast [@arena1,harm,nodead] Долой оружие',
		F6 = 'm|/cast [@arena2,harm,nodead] Долой оружие', -- num5
		NUMPAD6 = 'm|/cast [@arena3,harm,nodead] Долой оружие',
	},
}

local subtlety = {

	shadowDance = {
		's|Удар по почкам',
		's|Долой оружие',
		'm|/cast Умысел\n/cast Подлый трюк',
		's|Потрошение',
		's|Рваная рана',
		E = 'm|/cast Умысел\n/cast Внезапный удар',
		Q = 'm|/cast Умысел\n/cast Гаррота',
	},
	
	shift = {
		[3] = 'm|/use [nostance] 10\n/cast [nostance] Танец теней; Подлый трюк',
	},
}

local combat = {
	
	E = 'm|/startattack [nostealth]\n/cast Коварный удар\n/cast [nostealth] !Незаметность',
	Q = 'm|/startattack [nostealth]\n/cast Пробивающий удар\n/cast [nostealth] !Незаметность',
	
	C = 's|Шквал клинков',
	X = 's|Череда убийств',
	
	shift = {
		[3] = 's|Выброс адреналина',
	},
}

local mutilate = {

	shift = {
		[3] = 's|Вендетта',
	},
}


pBindings:RegisterKeyBindings('Ликвидация', bindings.base, roguebase, mutilate)
pBindings:RegisterKeyBindings('Бой', bindings.base, roguebase, combat)
pBindings:RegisterKeyBindings('Скрытность', bindings.base, roguebase, subtlety)