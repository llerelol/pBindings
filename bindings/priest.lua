if(select(2, UnitClass'player') ~= 'PRIEST') then return end

local __, bindings = ...


local healBase = {
	[6] = 'm|/cast [@xxx][@target] Сковывание нежити',
	E = 'm|/cast [@mouseover,help][@target,help][@player] Слово силы: Щит',
	F = 's|Слово Тьмы: Смерть',
	G = 'm|/cast [@mouseover][@player] Защита от страха',
	Z = 's|Внутренний огонь',
	X = 'm|/cast [@mouseover,help][@target,help][@focus,help] Духовное рвение',
	V = 's|Контроль над разумом',
	B = 's|Сожжение маны',
	TAB = 's|Ментальный крик',
	BUTTON3 = 'm|/use 13',
	BUTTON4 = 's|Слово силы: Стойкость',
	BUTTON5 = 's|Защита от темной магии',
	C = 'm|/cast [@mouseover,help][@target,help][@player] Молитва восстановления',
	NUMPAD3 = 's|Рассеивание заклинаний',
	NUMPAD4 = 'm|/cast [@mouseover,help][@target,help][@player] Рассеивание заклинаний',
	NUMPAD5 = 'm|/cast [@mouseover,help][@target,help][@player] Излечение болезни',
	NUMPAD6 = 'm|/focus',
	NUMPAD7 = 's|Стремительный весенний долгоног',
	NUMPAD8 = 's|Стремительный красный ветрокрыл',
	['`'] = 'm|/cast !Массовое рассеивание',
	['¸'] = 'm|/cast !Массовое рассеивание',
	F12 = 'm|/cast [@mouseover,help][@player] Левитация',
	
	shift = {
		's|Кара',
		's|Священный огонь',
		T = 's|Кольцо света',
		X = 's|Исчадие Тьмы',
		Z = 's|Внутренняя решимость',
		R = 'm|/cast [@mouseover,help][@target,help][@player] Придание сил',
		BUTTON3 = 's|Воля Отрекшихся',
	},

	alt = {
		E = 's|Гимн надежды',
		Q = 's|Божественный гимн',
	},
}

local disc = {
	'm|/cast [@mouseover,help][@target,help][@player] Связующее исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Быстрое исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Великое исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Молитва исцеления',
	Q = 'm|/cast [@mouseover,help][@target,help][@player] Обновление',
	R = 'm|/cast [@mouseover,help][@target,help][@player] Исповедь',
	T = 'm|/cast !Слово cилы: Барьер',
	shift = {
		[3] = 's|Взрыв разума',
		[4] = 's|Пронзание разума',
		E = 'm|/cast [@mouseover,help][@target,help][@player] Подавление боли',
		C = 's|Архангел',
	},

	ctrl = {
		E = 's|Молитва отчаяния',
		R = 's|Исповедь',
	},
}

local holy = {
	'm|/cast [@mouseover,help][@target,help][@player] Связующее исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Быстрое исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Великое исцеление',
	'm|/cast [@mouseover,help][@target,help][@player] Молитва исцеления',
	Q = 'm|/cast [@mouseover,help][@target,help][@player] Обновление',
	R = 'm|/cast [@mouseover,help][@target,help][@player] Слово Света: Воздаяние',
	T = 's|Круг исцеления',
	F = 's|Чакра',
	shift = {
		[3] = 's|Взрыв разума',
		[4] = 's|Пронзание разума',
		E = 'm|/cast [@mouseover,help][@target,help][@player] Оберегающий дух',
		C = 's|Колодец света',
	},

	ctrl = {
		E = 's|Молитва отчаяния',
		R = 's|Слово Тьмы: Смерть',
	},
}

local shadow = {
	's|Пронзание разума',
	's|Прикосновение вампира',
	's|Слово Тьмы: Боль',
	's|Пытка разума',
	's|Иссушение разума',
	Q = 's|Всепожирающая чума',
	R = 's|Взрыв разума',
	T = 's|Глубинный ужас',
	NUMPAD1 = 's|Слияние с Тьмой',
	NUMPAD2 = 's|Безмолвие',
	NUMPAD6 = 's|Облик тьмы',
	shift = {
		[3] = 'm|/cast [@mouseover,help][@target,help][@player] Быстрое исцеление',
		[4] = 'm|/cast [@mouseover,help][@target,help][@player] Великое исцеление',
		E = 's|Уход в тень',
		C = 's|Архангел',
	},
}

pBindings:RegisterKeyBindings('Послушание', bindings.base, healBase, disc)
pBindings:RegisterKeyBindings('Свет', bindings.base, healBase, holy)
pBindings:RegisterKeyBindings('Тьма', bindings.base, healBase, shadow)
