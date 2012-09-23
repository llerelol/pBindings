if(select(2, UnitClass'player') ~= 'PALADIN') then return end

local __, bindings = ...
--[[ druid actionbars 1-12 | 13-24 | 25-36 | 37-48 | 48-59 | 60-71 | 72-83(cat form) | 84-95 | 96-107(bear form) | 108-119(moonkin) ]]--
local palabase = {
	[6] = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Длань жертвенности',
	[7] = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Длань свободы',
	[8] = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Длань спасения',
	[9] = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Длань защиты',
	
	X = 's|Каменная форма',
	F = 'm|/cast [harm][@targettarget,harm,exists] Правосудие',
	T = 's|Гнев небес',
	G = 's|Молот правосудия',
	
	B = 'm|/use 10\n/cast [@player] Святая клятва',	
	F4 = 's|Искупление',	
	TAB = 's|Божественный щит',
	BUTTON3 = 's|/use 13',
	BUTTON4 = 's|Благословение королей',
	BUTTON5 = 's|Благословение могущества',
	
	
	NUMPAD7 = 'm|/cast Скакун',
	NUMPAD8 = 'm|/cast Красный протодракон',
	
	['`'] = 's|Защитник древних королей',
	['¸'] = 's|Защитник древних королей',
	
	
	shift = {
		's|Печать праведности',
		's|Печать прозрения',
		's|Печать правды',
		's|Молот гнева',
		's|Печать справедливости',
		
		T = 's|Освящение',
		E = 'm|/cast [@mouseover,help,nodead][help,nodead][@player] Очищение',
		R = 's|Удар воина Света',

		X = 'm|/use 13',
	},
	ctrl = {

		R = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Возложение рук',
	},
	alt = {
		E = 's|Гнев карателя',
		Q = 's|Божественная защита',
	},
}


local holy = {
	's|Божественное одобрение',
	'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Свет небес',
	'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Вспышка Света',
	'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Божественный свет',
	'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Святое сияние',
	V = 's|Мастер аур',
	E = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Шок небес',
	R = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Торжество',
	C = 'm|/cast [@mouseover,help,nodead][@target,help,nodead][@player] Частица света',
	Q = 's|Свет зари',
}

pBindings:RegisterKeyBindings('Свет', bindings.base, palabase, holy)