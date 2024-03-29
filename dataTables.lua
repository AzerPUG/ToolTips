if AZP == nil then AZP = {} end
if AZP.ToolTips == nil then AZP.ToolTips = {} end

local StartString, EndString = "\124T", ":14\124t"

AZP.ToolTips.PrimalStones =
{
    [204018] = {Family = "Arcane", Name = "Humming Arcane Stone"},
    [204019] = {Family = "Arcane", Name = "Harmonic Music Stone"},
    [204025] = {Family = "Arcane", Name = "Obscure Pastel Stone"},

    [204006] = {Family = "Earth", Name = "Indomitable Earth Stone"},
    [204007] = {Family = "Earth", Name = "Shining Obsidian Stone"},
    [204009] = {Family = "Earth", Name = "Gleaming Iron Stone"},

    [204002] = {Family = "Fire", Name = "Flame Licked Stone"},
    [204003] = {Family = "Fire", Name = "Raging Magma Stone"},
    [204004] = {Family = "Fire", Name = "Searing Smokey Stone"},
    [204005] = {Family = "Fire", Name = "Entropic Fel Stone"},

    [204010] = {Family = "Frost", Name = "Deluging Water Stone"},
    [204011] = {Family = "Frost", Name = "Freezing Ice Stone"},
    [204012] = {Family = "Frost", Name = "Cold Frost Stone"},
    [204013] = {Family = "Frost", Name = "Exuding Steam Stone"},
    [204014] = {Family = "Frost", Name = "Sparkling Mana Stone"},

    [204000] = {Family = "Nature", Name = "Storm Infused Stone"},
    [204001] = {Family = "Nature", Name = "Echoing Thunder Stone"},
    [204020] = {Family = "Nature", Name = "Wild Spirit Stone"},
    [204022] = {Family = "Nature", Name = "Pestilent Plague Stone"},
    [204030] = {Family = "Nature", Name = "Wind Sculpted Stone"},

    [204021] = {Family = "Necromantic", Name = "Necromantic Death Stone"},
    [204027] = {Family = "Necromantic", Name = "Desirous Blood Stone"},

    [204015] = {Family = "Shadow", Name = "Swirling Mojo Stone"},
    [204029] = {Family = "Shadow", Name = "Prophetic Twilight Stone"},
}

AZP.ToolTips.Currencies =
{
    Valor = string.format("%s%d%s", StartString,  463447, EndString),  -- 1191
    Honor = string.format("%s%d%s", StartString, 1455894, EndString),
}

AZP.ToolTips.WeapConquestCostList =
{
    [201974] = 900,     -- 1h Warglaives, 900 Conquest ??
}

AZP.ToolTips.WeapValorCostList =
{
    [110038] = 500,
    [144086] = 500,
    [193631] = 500,
    [193646] = 500,
    [193688] = 500,
    [193711] = 500,
    [193717] = 500,
    [193756] = 500,
    [193767] = 500,
    [201996] = 500,
    [201998] = 500,

    [193632] = 750,
    [193710] = 750,
    [195592] = 750,
    [193687] = 750,
    [201997] = 750,
}

AZP.ToolTips.StaticSlotValorCost =
{
    INVTYPE_HEAD = 475,
    INVTYPE_CHEST = 475,
    INVTYPE_ROBE = 475,
    INVTYPE_LEGS = 475,
    INVTYPE_SHOULDER = 400,
    INVTYPE_WAIST = 400,
    INVTYPE_FEET = 400,
    INVTYPE_HAND = 400,
    INVTYPE_TRINKET = 400,
    INVTYPE_NECK = 250,
    INVTYPE_WRIST = 250,
    INVTYPE_FINGER = 250,
    INVTYPE_BACK = 250,
    INVTYPE_CLOAK = 250,
    INVTYPE_HOLDABLE = 250,
    INVTYPE_SHIELD = 250,
    INVTYPE_2HWEAPON = 1000,
    INVTYPE_RANGED = 1000,
}

AZP.ToolTips.RankBonusID =
{
    MythicPlus =
    {
        Ranks =
        {
            [8961] = 1,
            [8962] = 2,
            [8963] = 3,
            [8964] = 4,
            [8965] = 5,
            [8966] = 6,
            [8967] = 7,
            [8968] = 8,
            [8969] = 9,
            [8970] = 10,
            [8971] = 11,
            [8972] = 12,
            [8973] = 13,
        },
        MaxRank = 13,
        Icon = AZP.ToolTips.Currencies.Valor
    }
}

AZP.ToolTips.ItemUpgrades =
{
    ---------------------------------
    ---------- Valor Items ----------
    ---------------------------------
    -- 276
    [8961] = {CurRank =  1, NextRankID = 8962, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8962] = {CurRank =  1, NextRankID = 8963, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8963] = {CurRank =  1, NextRankID = 8964, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8964] = {CurRank =  1, NextRankID = 8965, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8965] = {CurRank =  1, NextRankID = 8966, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8966] = {CurRank =  1, NextRankID = 8967, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8967] = {CurRank =  1, NextRankID = 8968, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8968] = {CurRank =  1, NextRankID = 8969, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8969] = {CurRank =  1, NextRankID = 8970, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8970] = {CurRank =  1, NextRankID = 8971, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8971] = {CurRank =  1, NextRankID = 8972, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8972] = {CurRank =  1, NextRankID = 8973, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},
    [8973] = {CurRank =  1, NextRankID =  nil, MaxRank = 13, Icon = AZP.ToolTips.Currencies.Valor, Amount = 276},

    -- ---------------------------------
    -- ---------- Honor Items ----------
    -- ---------------------------------
    -- -- Back, Ring, Neck, Wrist
    -- [8290] = {CurRank = 1, NextRankID = 8291, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 200},
    -- [8291] = {CurRank = 2, NextRankID = 8292, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 225},
    -- [8292] = {CurRank = 3, NextRankID = 8293, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 275},
    -- [8293] = {CurRank = 4, NextRankID = 8294, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 300},
    -- [8294] = {CurRank = 5, NextRankID = 8295, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 350},
    -- [8295] = {CurRank = 6, NextRankID = 8296, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    -- [8296] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- -- Trinket, Waist, Shoulder, Hands, Feet 
    -- [8297] = {CurRank = 1, NextRankID = 8298, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 250},
    -- [8298] = {CurRank = 2, NextRankID = 8299, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 300},
    -- [8299] = {CurRank = 3, NextRankID = 8300, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 350},
    -- [8300] = {CurRank = 4, NextRankID = 8301, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 400},
    -- [8301] = {CurRank = 5, NextRankID = 8302, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 450},
    -- [8302] = {CurRank = 6, NextRankID = 8303, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 500},
    -- [8303] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- -- Legs, Head, Chest
    -- [8304] = {CurRank = 1, NextRankID = 8305, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 325},
    -- [8305] = {CurRank = 2, NextRankID = 8306, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    -- [8306] = {CurRank = 3, NextRankID = 8307, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 450},
    -- [8307] = {CurRank = 4, NextRankID = 8308, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 500},
    -- [8308] = {CurRank = 5, NextRankID = 8309, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 575},
    -- [8309] = {CurRank = 6, NextRankID = 8310, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 650},
    -- [8310] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- -- Two Hand
    -- [8311] = {CurRank = 1, NextRankID = 8312, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  650},
    -- [8312] = {CurRank = 2, NextRankID = 8313, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  750},
    -- [8313] = {CurRank = 3, NextRankID = 8314, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  900},
    -- [8314] = {CurRank = 4, NextRankID = 8315, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1000},
    -- [8315] = {CurRank = 5, NextRankID = 8316, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1150},
    -- [8316] = {CurRank = 6, NextRankID = 8317, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1300},
    -- [8317] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- -- Off-Hand
    -- [8318] = {CurRank = 1, NextRankID = 8319, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 175},
    -- [8319] = {CurRank = 2, NextRankID = 8320, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 200},
    -- [8320] = {CurRank = 3, NextRankID = 8321, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 225},
    -- [8321] = {CurRank = 4, NextRankID = 8322, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 250},
    -- [8322] = {CurRank = 5, NextRankID = 8323, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 300},
    -- [8323] = {CurRank = 6, NextRankID = 8324, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 350},
    -- [8324] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- -- One Hand
    -- [8325] = {CurRank = 1, NextRankID = 8326, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 475},
    -- [8326] = {CurRank = 2, NextRankID = 8327, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 550},
    -- [8327] = {CurRank = 3, NextRankID = 8328, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 675},
    -- [8328] = {CurRank = 4, NextRankID = 8329, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 750},
    -- [8329] = {CurRank = 5, NextRankID = 8330, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 850},
    -- [8330] = {CurRank = 6, NextRankID = 8331, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 950},
    -- [8331] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- -- Axe / Dagger
    -- [8332] = {CurRank = 1, NextRankID = 8333, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 325},
    -- [8333] = {CurRank = 2, NextRankID = 8334, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    -- [8334] = {CurRank = 3, NextRankID = 8335, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 450},
    -- [8335] = {CurRank = 4, NextRankID = 8336, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 500},
    -- [8336] = {CurRank = 5, NextRankID = 8337, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 575},
    -- [8337] = {CurRank = 6, NextRankID = 8338, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 650},
    -- [8338] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- ------------------------------------
    -- ---------- Conquest items ----------
    -- ------------------------------------
    -- -- 2Hand
    -- [8357] = {CurRank = 1, NextRankID = 8390, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1550},
    -- [8390] = {CurRank = 2, NextRankID = 8358, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1700},
    -- [8358] = {CurRank = 3, NextRankID = 8391, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1850},
    -- [8391] = {CurRank = 4, NextRankID = 8359, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2150},
    -- [8359] = {CurRank = 5, NextRankID = 8392, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2450},
    -- [8392] = {CurRank = 6, NextRankID = 8360, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2750},
    -- [8360] = {CurRank = 7, NextRankID = 8362, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3050},
    -- [8362] = {CurRank = 8, NextRankID = 8361, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3650},
    -- [8361] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- -- One Hand
    -- [8369] = {CurRank = 1, NextRankID = 8396, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1175},
    -- [8396] = {CurRank = 2, NextRankID = 8370, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1275},
    -- [8370] = {CurRank = 3, NextRankID = 8397, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    -- [8397] = {CurRank = 4, NextRankID = 8371, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1600},
    -- [8371] = {CurRank = 5, NextRankID = 8398, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1825},
    -- [8398] = {CurRank = 6, NextRankID = 8372, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2050},
    -- [8372] = {CurRank = 7, NextRankID = 8374, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2275},
    -- [8374] = {CurRank = 8, NextRankID = 8373, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2750},
    -- [8373] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- -- Off-Hand
    -- [8363] = {CurRank = 1, NextRankID = 8393, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    -- [8393] = {CurRank = 2, NextRankID = 8364, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 425},
    -- [8364] = {CurRank = 3, NextRankID = 8394, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 475},
    -- [8394] = {CurRank = 4, NextRankID = 8365, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 550},
    -- [8365] = {CurRank = 5, NextRankID = 8395, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 625},
    -- [8395] = {CurRank = 6, NextRankID = 8366, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 700},
    -- [8366] = {CurRank = 7, NextRankID = 8368, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 775},
    -- [8368] = {CurRank = 8, NextRankID = 8367, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 900},
    -- [8367] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- -- Feet, Hands, Shoulders, Waist
    -- [8345] = {CurRank = 1, NextRankID = 8384, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  600},
    -- [8384] = {CurRank = 2, NextRankID = 8346, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  675},
    -- [8346] = {CurRank = 3, NextRankID = 8385, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  725},
    -- [8385] = {CurRank = 4, NextRankID = 8347, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  850},
    -- [8347] = {CurRank = 5, NextRankID = 8386, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  975},
    -- [8386] = {CurRank = 6, NextRankID = 8348, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1100},
    -- [8348] = {CurRank = 7, NextRankID = 8350, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1225},
    -- [8350] = {CurRank = 8, NextRankID = 8349, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1475},
    -- [8349] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- -- Chest, Head, Legs, 
    -- [8351] = {CurRank = 1, NextRankID = 8387, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  775},
    -- [8387] = {CurRank = 2, NextRankID = 8352, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  850},
    -- [8352] = {CurRank = 3, NextRankID = 8388, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  925},
    -- [8388] = {CurRank = 4, NextRankID = 8353, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1075},
    -- [8353] = {CurRank = 5, NextRankID = 8389, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1225},
    -- [8389] = {CurRank = 6, NextRankID = 8354, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    -- [8354] = {CurRank = 7, NextRankID = 8356, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1525},
    -- [8356] = {CurRank = 8, NextRankID = 8355, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1825},
    -- [8355] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- -- Wrist
    -- [8339] = {CurRank = 1, NextRankID = 8381, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  450},
    -- [8381] = {CurRank = 2, NextRankID = 8340, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  500},
    -- [8340] = {CurRank = 3, NextRankID = 8382, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  550},
    -- [8382] = {CurRank = 4, NextRankID = 8341, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  650},
    -- [8341] = {CurRank = 5, NextRankID = 8344, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  925},
    -- [8344] = {CurRank = 6, NextRankID = 8383, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  725},
    -- [8383] = {CurRank = 7, NextRankID = 8342, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  825},
    -- [8342] = {CurRank = 8, NextRankID = 8343, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1100},
    -- [8343] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- -- Axe
    -- [8375] = {CurRank = 1, NextRankID = 8399, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  775},
    -- [8399] = {CurRank = 2, NextRankID = 8376, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  850},
    -- [8376] = {CurRank = 3, NextRankID = 8400, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  925},
    -- [8400] = {CurRank = 4, NextRankID = 8377, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1075},
    -- [8377] = {CurRank = 5, NextRankID = 8401, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1225},
    -- [8401] = {CurRank = 6, NextRankID = 8378, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    -- [8378] = {CurRank = 7, NextRankID = 8380, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1525},
    -- [8380] = {CurRank = 8, NextRankID = 8379, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1825},
    -- [8379] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
}