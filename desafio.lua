
--[[




=================================================================
|
|   CREEPER
|   som:tssss
|   atributos
|       Ataque:
|       Defesa:
|       vitalidade:
|   habilidades
|   furtividade
|   self-explode
================================================================
]]

os.execute("chcp 65001")
--Criatura
local monsterName = "Charmander"
local description = "Charmander é um Pokémon do Tipo Fogo. A sua cauda representa sua saúde e felicidade."
local emoji = "🔥"
local sound = "Char Charmander"
local favoriteTime = "Dia"
local heldItem = "Exp. Share"

--atributos
local attackAttribute = 5
local lifeAttribute = 3
local defenseAttribute = 2
local specialDefenseAttribute = 3
local specialAttackAttribute = 5
local speedAttribute = 4
local inteligenceAttribute = 2

--Função que recebe o atributo e transforma em barra de progresso
local function getProgressBar (attribute)
    local fullChar = "▰"
    local emptyChar = "═"
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    result = result .. "  " ..  attribute
    return result
end

--Habilidades
local scratch = "Arranha o adversário"
local growl = "Intimida o adversário, o deixando mais fraco"

print("=================================================================")
print("| Nome do Pokémon: " .. monsterName)
print("| Descrição do Pokemon: " .. description)
print("|")
print("|")
print("|   Emoji favorito:".. emoji)
print("|   Som: " .. sound)
print("|   Horario favorito: " .. favoriteTime)
print("|   Item na Mão: " .. heldItem)
print("|")
print("|")
print("|   Atributos")
print("| Ataque:          " .. getProgressBar(attackAttribute))
print("| Defesa:          " .. getProgressBar(defenseAttribute))
print("| Velocidade:      " .. getProgressBar(speedAttribute))
print("| Vitalidade:      " .. getProgressBar(lifeAttribute))
print("| Ataque Especial: " .. getProgressBar(specialAttackAttribute))
print("| Defesa Especial: " .. getProgressBar(specialDefenseAttribute))
print("| Inteligencia:    " .. getProgressBar(inteligenceAttribute))
print("|")
print("|    Habilidades")
print("|    Scratch:  " .. scratch)
print("|    Growl:    " .. growl)
print("=================================================================")