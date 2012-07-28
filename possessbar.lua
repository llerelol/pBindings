local globalName = ...

local FONT = [=[Interface\AddOns\pBindings\semplice.ttf]=]
local TEXTURE = [=[Interface\ChatFrame\ChatFrameBackground]=]
local BACKDROP = {
	bgFile = TEXTURE, insets = {top = -1, bottom = -1, left = -1, right = -1}
}

local function UpdateRange(self, elapsed)
	if((self.rangeTimer or 1) > 0.2) then
		if(IsActionInRange(self.action) == 0) then
			self.icon:SetVertexColor(1, 0, 0)
		else
			self.icon:SetVertexColor(1, 1, 1)
		end

		self.rangeTimer = 0
	else
		self.rangeTimer = self.rangeTimer + elapsed
	end
end

local function UpdateButton(self)
	local texture = GetActionTexture(self.action)
	if(texture) then
		self.icon:SetTexture(texture)
		self:SetAlpha(1)
	else
		self:SetAlpha(0)
	end
end

local function OnEnter(self)
	if(self:GetAlpha() == 1) then
		self:SetBackdropColor(0, 4/6, 1)
		ActionButton_SetTooltip(self)
	end
end

local function OnLeave(self)
	self:SetBackdropColor(0, 0, 0)
	GameTooltip:Hide()
end

function pBindings:ACTIONBAR_UPDATE_COOLDOWN()
	if(not oBindings1:IsShown()) then return end

	for index = 1, 6 do
		local button = _G['oBindings' .. index]

		local _, id = GetActionInfo(button.action)
		if(id) then
			local start, duration = GetSpellCooldown(id)
			button.cooldown:SetCooldown(start, duration)
		end
	end
end

function pBindings:UPDATE_BINDINGS()
	for index = 1, 6 do
		local key = GetBindingKey('CLICK oBindings' .. index .. ':LeftButton')
		if(key) then
			_G['oBindings' .. index].hotkey:SetText(GetBindingText(key, 'KEY_', 1))
		end
	end
end

pBindings:HookScript('OnEvent', function(self, event, name)
	if(event ~= 'ADDON_LOADED' or name ~= globalName) then return end

	self:RegisterEvent('ACTIONBAR_UPDATE_COOLDOWN')
	self:RegisterEvent('UPDATE_BINDINGS')

	local _STATE = oBindings1:GetParent()
	RegisterStateDriver(_STATE, 'visibility', '[bonusbar:5] show; hide')

	local lastValue
	_STATE:HookScript('OnAttributeChanged', function(self, attribute, value)
		if(attribute == 'statehidden' and value ~= lastValue) then
			for index = 1, 6 do
				UpdateButton(_G['oBindings' .. index])
			end

			lastValue = value
		end
	end)

	for index = 1, 6 do
		local button = _G['oBindings' .. index]
		button:SetSize(26, 26)
		button:SetBackdrop(BACKDROP)
		button:SetBackdropColor(0, 0, 0)

		button:SetScript('OnEnter', OnEnter)
		button:SetScript('OnLeave', OnLeave)
		button:HookScript('OnUpdate', UpdateRange)

		button:SetPushedTexture(TEXTURE)
		button:GetPushedTexture():SetVertexColor(0, 0, 0, 1/3)

		local icon = button:CreateTexture(nil, 'BORDER')
		icon:SetAllPoints()
		icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		button.icon = icon

		local cooldown = CreateFrame('Cooldown', nil, button)
		cooldown:SetAllPoints()
		button.cooldown = cooldown

		if(index == 1) then
			button:SetPoint('BOTTOM', UIParent, -133, 100)
		else
			button:SetPoint('LEFT', _G['oBindings' .. index - 1], 'RIGHT', 4, 0)
		end

		local hotkey = button:CreateFontString(nil, 'ARTWORK')
		hotkey:SetPoint('BOTTOMRIGHT')
		hotkey:SetFont(FONT, 8, 'OUTLINEMONOCHROME')
		button.hotkey = hotkey

		button.action = string.match(button:GetAttribute('ob-possess-attribute'), 'action,(%d+)')
	end
end)
