if(select(2, UnitClass'player') ~= 'MAGE') then return end

local __, bindings = ...

local magebase = {
	[5] = 's|Зеркальное изображение',
	[9] = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Замедленное падение',
	
	e = 's|Кольцо льда',
	g = 's|Прилив сил',
	c = 's|Скачок',
	v = 's|Чарокрад',
	z = 's|Невидимость',
	t = 'm|/cast !Кольцо мороза',
	q = 'm|/cast Живая бомба\n/cast Ледяная бомба\n/cast Буря пустоты',
	x = 'm|/cast Ледяная преграда\n/cast Молниеносность\n/cast Барьер времени',
	f = 's|Глубокая заморозка',
	
	NUMPAD1 = 's|Конус холода',
	END = 's|Конус холода',
	NUMPAD2 = 'm|/stopcasting\n/cast Антимагия',
	DOWN =  'm|/stopcasting\n/cast [@focus,harm,nodead] Антимагия',
	NUMPAD3 = 'm|/cast Величие разума',
	PAGEDOWN = 's|Холодная хватка',

	NUMPAD4 = 'm|/cast [@arena1,exists,nodead] Глубокая заморозка',
	F6 = 'm|/cast [@arena2,exists,nodead] Глубокая заморозка', --NUMPAD5
	NUMPAD6 = 'm|/cast [@arena3,exists,nodead] Глубокая заморозка',
	LEFT = 'm|/cast [@arena1,exists,nodead] Превращение',
	--SHIFT-F6 = 'm|/cast [@arena2,exists,nodead] Глубокая заморозка', --NUMPAD5
	RIGHT = 'm|/cast [@arena3,exists,nodead] Превращение',

	NUMPAD7 = 'm|/cast Белый боевой конь-скелет',
	NUMPAD8 = 'm|/cast Ржавый протодракон',
	NUMPAD9 = 'i|Самоцвет маны',
	TAB = 'm|/stopcasting\n/cast Ледяная глыба',
	-- mana gem F12 = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Замедленное падение',
	['`'] = 's|Ледяная сфера',
	['¸'] = 's|Ледяная сфера',
	BUTTON3 = 'm|/use 13',
	BUTTON4 = 'm|/cast [@player,nomod] Чародейская гениальность;[mod:shift] Сотворение самоцвета маны;[mod:ctrl] Сотворение яств;[mod:alt] Сотворение стола с яствами',
	BUTTON5 = 'm|/cast [nomod] Раскаленный доспех;[mod:shift] Магический доспех;[mod:ctrl] Морозный доспех',
	DOWN = 'm|/cast [@focus,exists,harm,nodead] Антимагия',
	
	shift = {
		's|Чародейская вспышка',
		's|Ледяная стрела',
		's|Чародейский взрыв',
		's|Огненный шар',
		'i|Сотворенный торт из маны',
		f = 'm|/cast [@focus,harm,nodead] Глубокая заморозка',
		E = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Снятие проклятия',
		C = 's|Зеркальное изображениие',
		t = 's|Огненный столб',
		g = 's|Стылая кровь',
		x = 's|Щит маны',
		q = 's|Превращение',
		F6 = 'm|/cast [@arena2,exists,nodead] Превращение', --NUMPAD5
		BUTTON3 = 's|Воля отрекшихся',
	},
	
	ctrl = {
		[2] = 'm|/petfollow',
		e = 'm|/cast [@player] Снятие проклятия',
		r = 'i|Камень здоровья',
		t = 's|Снежная буря',
		q = 'm|/cast [@focus,harm,nodead] Превращение',
	},
	
	alt = {
		'm|/cast [@focus] Огненный взрыв',
		q = 's|Магическая защита',
		e = 's|Искажение времени',
	},
}

local frost ={
	's|Огненный взрыв',
	'm|/petattack\n/cast Ледяная стрела',
	'm|/cancelaura Ледяная глыба\n/cast Ледяное копье',
	's|Стрела ледяного огня',
	's|Ледяная сфера',
	
	r = 'm|/cast [@pet,dead][nopet] Призыв элементаля воды;[pet] Холод',
	shift = {
		r = 'm|/use 14\n/use Самоцвет маны\n/cast Стылая кровь',
	},

}

local fire ={
	's|Пламенный взрыв',
	's|Огненный шар',
	'm|/stopcasting\n/cast Огненная глыба',
	's|Ожог',
	
	NUMPAD1 = 's|Дыхание дракона',
	r = 's|Возгорание',
	shift = {
		r = 'm|/cast Стылая кровь',
	},
}

local arcane ={
	's|Огненный взрыв',
	's|Чародейская вспышка',
	's|Замедление',
	's|Чародейские стрелы',
	r = 's|Чародейский обстрел',
	
	shift = {
		r = 'm|/use 13\n/use 14\n/use Самоцвет маны\n/cast Мощь тайной магии\n/cast Зеркальное изображение',
	},
}

pBindings:RegisterKeyBindings('Лед', bindings.base, magebase, frost)
pBindings:RegisterKeyBindings('Огонь', bindings.base, magebase, fire)
pBindings:RegisterKeyBindings('Тайная магия', bindings.base, magebase, arcane)
