local _, bindings = ...

pBindings:RegisterKeyBindings('Feral Combat', bindings.base, {
	's|Lifebloom',
	'm|/cast [worn:Fishing Pole] Fishing; [nochanneling] Regrowth',
	's|Rejuvenation',
	's|Nourish',

	F = 's|Rebirth',

	BUTTON4 = 'm|/focus\n/cast Entangling Roots',
	BUTTON5 = 'm|/focus\n/cast Hibernate',

	cat = {
		'm|/cast [stealth] Pounce; Rake',
		'm|/cast [stealth] Ravage; Shred',
		's|Swipe(Cat Form)',
		's|Mangle(Cat Form)',

		Q = 'm|/cast Tiger\'s Fury\n/cast Berserk',
		E = 's|Tiger\'s Fury',

		F = 's|Savage Roar',

		BUTTON3 = 's|Prowl',
		BUTTON4 = 's|Rip',
		BUTTON5 = 's|Ferocious Bite',
	},

	bear = {
		's|Lacerate',
		's|Maul',
		'm|/castsequence reset=combat Swipe(Bear Form), Thrash(Bear Form)',
		's|Mangle(Bear Form)',

		Q = 's|Berserk',
		E = 's|Pulverize',

		F = 's|Challenging Roar',

		BUTTON3 = 's|Enrage',
		BUTTON4 = 's|Growl',
		BUTTON5 = 's|Bash',
	},

	shift = {
		'm|/cast Innervate',
		'm|/cast [form:1] Demoralizing Roar; [form:3] Dash; Mark of the Wild',
		's|Tranquility',
		's|Shadowmeld',

		Q = 'm|/cast Barkskin\n/cast [form:1/3] Survival Instincts(Cat or Bear Form)',
		E = 'm|/cast [form:1] Frenzied Regeneration',

		F = 'm|/cast [form:1] Feral Charge(Bear Form); [form:3] Feral Charge(Cat Form)\n/cast [form:3] Ravage!',

		BUTTON4 = 'm|/cast [form:1/3] Faerie Fire (Feral)(Feral); Faerie Fire',
		BUTTON5 = 'm|/cast [form:1] Skull Bash(Bear Form); [form:3] Skull Bash(Cat Form); Cyclone',
	},

	ctrl = {
		's|Bear Form',
		's|Cat Form',
		'm|/cast [swimming] Aquatic Form; [flyable] Swift Flight Form',
		's|Travel Form',

		F = 's|Survey',
		
		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [flyable] Bloodbathed Frostbrood Vanquisher; Amani Battle Bear',
	},
})
