if AZP == nil then AZP = {} end
if AZP.ToolTips == nil then AZP.ToolTips = {} end

local StartString, EndString = "\124T", ":14\124t"

AZP.ToolTips.Currencies =
{
                 Valor = string.format("%s%d%s", StartString,  463447, EndString),
                 Honor = string.format("%s%d%s", StartString, 1455894, EndString),
                 Anima = string.format("%s%d%s", StartString, 3528288, EndString),
               SoulAsh = string.format("%s%d%s", StartString, 3743738, EndString),
           SoulCinders = string.format("%s%d%s", StartString, 4067362, EndString),
    CataloggedResearch = string.format("%s%d%s", StartString, 1506458, EndString),
         StygianEmbers = string.format("%s%d%s", StartString,  636333, EndString),
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
    INVTYPE_HOLDABLE = 250,
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
    -- 240
    [8203] = {CurRank =  1, NextRankID = 8204, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8204] = {CurRank =  2, NextRankID = 8205, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8205] = {CurRank =  3, NextRankID = 8206, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8206] = {CurRank =  4, NextRankID = 8207, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8207] = {CurRank =  5, NextRankID = 8208, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8208] = {CurRank =  6, NextRankID = 8209, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8209] = {CurRank =  7, NextRankID = 8210, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8210] = {CurRank =  8, NextRankID = 8211, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8211] = {CurRank =  9, NextRankID = 8212, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8212] = {CurRank = 10, NextRankID = 8213, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8213] = {CurRank = 11, NextRankID = 8214, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [8214] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 241
    [8189] = {CurRank =  1, NextRankID = 8190, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8190] = {CurRank =  2, NextRankID = 8191, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8191] = {CurRank =  3, NextRankID = 8192, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8192] = {CurRank =  4, NextRankID = 8193, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8193] = {CurRank =  5, NextRankID = 8194, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8194] = {CurRank =  6, NextRankID = 8195, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8195] = {CurRank =  7, NextRankID = 8196, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8196] = {CurRank =  8, NextRankID = 8197, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8197] = {CurRank =  9, NextRankID = 8198, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8198] = {CurRank = 10, NextRankID = 8199, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8199] = {CurRank = 11, NextRankID = 8200, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [8200] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 242
    [8231] = {CurRank =  1, NextRankID = 8232, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8232] = {CurRank =  2, NextRankID = 8233, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8233] = {CurRank =  3, NextRankID = 8234, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8234] = {CurRank =  4, NextRankID = 8235, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8235] = {CurRank =  5, NextRankID = 8236, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8236] = {CurRank =  6, NextRankID = 8237, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8237] = {CurRank =  7, NextRankID = 8238, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8238] = {CurRank =  8, NextRankID = 8239, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8239] = {CurRank =  9, NextRankID = 8240, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8240] = {CurRank = 10, NextRankID = 8241, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8241] = {CurRank = 11, NextRankID = 8242, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [8242] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 243
    [8245] = {CurRank =  1, NextRankID = 8246, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8246] = {CurRank =  2, NextRankID = 8247, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8247] = {CurRank =  3, NextRankID = 8248, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8248] = {CurRank =  4, NextRankID = 8249, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8249] = {CurRank =  5, NextRankID = 8250, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8250] = {CurRank =  6, NextRankID = 8251, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8251] = {CurRank =  7, NextRankID = 8252, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8252] = {CurRank =  8, NextRankID = 8253, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8253] = {CurRank =  9, NextRankID = 8254, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8254] = {CurRank = 10, NextRankID = 8255, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8255] = {CurRank = 11, NextRankID = 8256, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [8256] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 244
    [8273] = {CurRank =  1, NextRankID = 8274, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8274] = {CurRank =  2, NextRankID = 8275, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8275] = {CurRank =  3, NextRankID = 8276, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8276] = {CurRank =  4, NextRankID = 8277, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8277] = {CurRank =  5, NextRankID = 8278, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8278] = {CurRank =  6, NextRankID = 8279, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8279] = {CurRank =  7, NextRankID = 8280, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8280] = {CurRank =  8, NextRankID = 8281, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8281] = {CurRank =  9, NextRankID = 8282, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8282] = {CurRank = 10, NextRankID = 8283, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8283] = {CurRank = 11, NextRankID = 8284, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8284] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 245
    [8259] = {CurRank =  1, NextRankID = 8260, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8260] = {CurRank =  2, NextRankID = 8261, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8261] = {CurRank =  3, NextRankID = 8262, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8262] = {CurRank =  4, NextRankID = 8263, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8263] = {CurRank =  5, NextRankID = 8264, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8264] = {CurRank =  6, NextRankID = 8265, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8265] = {CurRank =  7, NextRankID = 8266, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8266] = {CurRank =  8, NextRankID = 8267, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8267] = {CurRank =  9, NextRankID = 8268, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8268] = {CurRank = 10, NextRankID = 8269, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8269] = {CurRank = 11, NextRankID = 8270, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [8270] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 246
    [8217] = {CurRank =  1, NextRankID = 7788, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8218] = {CurRank =  2, NextRankID = 7789, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8219] = {CurRank =  3, NextRankID = 7790, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8220] = {CurRank =  4, NextRankID = 7791, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8221] = {CurRank =  5, NextRankID = 7792, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8222] = {CurRank =  6, NextRankID = 7793, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8223] = {CurRank =  7, NextRankID = 7794, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8224] = {CurRank =  8, NextRankID = 7795, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8225] = {CurRank =  9, NextRankID = 7796, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8226] = {CurRank = 10, NextRankID = 7797, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8227] = {CurRank = 11, NextRankID = 7798, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [8228] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    ---------------------------------
    ---------- Honor Items ----------
    ---------------------------------
    -- Back, Ring, Neck, Wrist
    [8290] = {CurRank = 1, NextRankID = 8291, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 200},
    [8291] = {CurRank = 2, NextRankID = 8292, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 225},
    [8292] = {CurRank = 3, NextRankID = 8293, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 275},
    [8293] = {CurRank = 4, NextRankID = 8294, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 300},
    [8294] = {CurRank = 5, NextRankID = 8295, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 350},
    [8295] = {CurRank = 6, NextRankID = 8296, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    [8296] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- Trinket, Waist, Shoulder, Hands, Feet 
    [8297] = {CurRank = 1, NextRankID = 8298, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 250},
    [8298] = {CurRank = 2, NextRankID = 8299, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 300},
    [8299] = {CurRank = 3, NextRankID = 8300, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 350},
    [8300] = {CurRank = 4, NextRankID = 8301, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 400},
    [8301] = {CurRank = 5, NextRankID = 8302, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 450},
    [8302] = {CurRank = 6, NextRankID = 8303, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 500},
    [8303] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- Legs, Head, Chest
    [8304] = {CurRank = 1, NextRankID = 8305, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 325},
    [8305] = {CurRank = 2, NextRankID = 8306, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    [8306] = {CurRank = 3, NextRankID = 8307, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 450},
    [8307] = {CurRank = 4, NextRankID = 8308, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 500},
    [8308] = {CurRank = 5, NextRankID = 8309, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 575},
    [8309] = {CurRank = 6, NextRankID = 8310, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 650},
    [8310] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- Two Hand
    [8311] = {CurRank = 1, NextRankID = 8312, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  650},
    [8312] = {CurRank = 2, NextRankID = 8313, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  750},
    [8313] = {CurRank = 3, NextRankID = 8314, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  900},
    [8314] = {CurRank = 4, NextRankID = 8315, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1000},
    [8315] = {CurRank = 5, NextRankID = 8316, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1150},
    [8316] = {CurRank = 6, NextRankID = 8317, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1300},
    [8317] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Off-Hand
    [8318] = {CurRank = 1, NextRankID = 8319, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 175},
    [8319] = {CurRank = 2, NextRankID = 8320, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 200},
    [8320] = {CurRank = 3, NextRankID = 8321, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 225},
    [8321] = {CurRank = 4, NextRankID = 8322, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 250},
    [8322] = {CurRank = 5, NextRankID = 8323, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 300},
    [8323] = {CurRank = 6, NextRankID = 8324, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 350},
    [8324] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},
    
    -- One Hand
    [8325] = {CurRank = 1, NextRankID = 8326, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 475},
    [8326] = {CurRank = 2, NextRankID = 8327, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 550},
    [8327] = {CurRank = 3, NextRankID = 8328, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 675},
    [8328] = {CurRank = 4, NextRankID = 8329, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 750},
    [8329] = {CurRank = 5, NextRankID = 8330, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 850},
    [8330] = {CurRank = 6, NextRankID = 8331, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 950},
    [8331] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- Axe / Dagger
    [8332] = {CurRank = 1, NextRankID = 8333, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 325},
    [8333] = {CurRank = 2, NextRankID = 8334, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    [8334] = {CurRank = 3, NextRankID = 8335, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 450},
    [8335] = {CurRank = 4, NextRankID = 8336, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 500},
    [8336] = {CurRank = 5, NextRankID = 8337, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 575},
    [8337] = {CurRank = 6, NextRankID = 8338, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 650},
    [8338] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},
    ------------------------------------
    ---------- Conquest items ----------
    ------------------------------------
    -- 2Hand
    [8357] = {CurRank = 1, NextRankID = 8390, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1550},
    [8390] = {CurRank = 2, NextRankID = 8358, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1700},
    [8358] = {CurRank = 3, NextRankID = 8391, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1850},
    [8391] = {CurRank = 4, NextRankID = 8359, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2150},
    [8359] = {CurRank = 5, NextRankID = 8392, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2450},
    [8392] = {CurRank = 6, NextRankID = 8360, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2750},
    [8360] = {CurRank = 7, NextRankID = 8362, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3050},
    [8362] = {CurRank = 8, NextRankID = 8361, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3650},
    [8361] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- One Hand
    [8369] = {CurRank = 1, NextRankID = 8396, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1175},
    [8396] = {CurRank = 2, NextRankID = 8370, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1275},
    [8370] = {CurRank = 3, NextRankID = 8397, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    [8397] = {CurRank = 4, NextRankID = 8371, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1600},
    [8371] = {CurRank = 5, NextRankID = 8398, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1825},
    [8398] = {CurRank = 6, NextRankID = 8372, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2050},
    [8372] = {CurRank = 7, NextRankID = 8374, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2275},
    [8374] = {CurRank = 8, NextRankID = 8373, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2750},
    [8373] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Off-Hand
    [8363] = {CurRank = 1, NextRankID = 8393, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 375},
    [8393] = {CurRank = 2, NextRankID = 8364, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 425},
    [8364] = {CurRank = 3, NextRankID = 8394, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 475},
    [8394] = {CurRank = 4, NextRankID = 8365, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 550},
    [8365] = {CurRank = 5, NextRankID = 8395, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 625},
    [8395] = {CurRank = 6, NextRankID = 8366, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 700},
    [8366] = {CurRank = 7, NextRankID = 8368, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 775},
    [8368] = {CurRank = 8, NextRankID = 8367, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 900},
    [8367] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = nil},

    -- Feet, Hands, Shoulders, Waist
    [8345] = {CurRank = 1, NextRankID = 8384, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  600},
    [8384] = {CurRank = 2, NextRankID = 8346, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  675},
    [8346] = {CurRank = 3, NextRankID = 8385, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  725},
    [8385] = {CurRank = 4, NextRankID = 8347, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  850},
    [8347] = {CurRank = 5, NextRankID = 8386, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  975},
    [8386] = {CurRank = 6, NextRankID = 8348, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1100},
    [8348] = {CurRank = 7, NextRankID = 8350, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1225},
    [8350] = {CurRank = 8, NextRankID = 8349, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1475},
    [8349] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Chest, Head, Legs, 
    [8351] = {CurRank = 1, NextRankID = 8387, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  775},
    [8387] = {CurRank = 2, NextRankID = 8352, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  850},
    [8352] = {CurRank = 3, NextRankID = 8388, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  925},
    [8388] = {CurRank = 4, NextRankID = 8353, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1075},
    [8353] = {CurRank = 5, NextRankID = 8389, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1225},
    [8389] = {CurRank = 6, NextRankID = 8354, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    [8354] = {CurRank = 7, NextRankID = 8356, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1525},
    [8356] = {CurRank = 8, NextRankID = 8355, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1825},
    [8355] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Wrist
    [8339] = {CurRank = 1, NextRankID = 8381, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  450},
    [8381] = {CurRank = 2, NextRankID = 8340, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  500},
    [8340] = {CurRank = 3, NextRankID = 8382, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  550},
    [8382] = {CurRank = 4, NextRankID = 8341, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  650},
    [8341] = {CurRank = 5, NextRankID = 8344, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  925},
    [8344] = {CurRank = 6, NextRankID = 8383, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  725},
    [8383] = {CurRank = 7, NextRankID = 8342, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  825},
    [8342] = {CurRank = 8, NextRankID = 8343, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1100},
    [8343] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Axe
    [8375] = {CurRank = 1, NextRankID = 8399, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  775},
    [8399] = {CurRank = 2, NextRankID = 8376, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  850},
    [8376] = {CurRank = 3, NextRankID = 8400, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  925},
    [8400] = {CurRank = 4, NextRankID = 8377, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1075},
    [8377] = {CurRank = 5, NextRankID = 8401, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1225},
    [8401] = {CurRank = 6, NextRankID = 8378, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    [8378] = {CurRank = 7, NextRankID = 8380, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1525},
    [8380] = {CurRank = 8, NextRankID = 8379, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1825},
    [8379] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    ---------------------------------
    ---------- Anima Items ----------
    ---------------------------------
    [7195] = {CurRank = 1, NextRankID = 7196, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount =  50},
    [7196] = {CurRank = 1, NextRankID = 7197, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount = 100},
    [7197] = {CurRank = 1, NextRankID = 7198, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount = 150},
    [7198] = {CurRank = 1, NextRankID = 7199, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount = 200},
    [7199] = {CurRank = 1, NextRankID = 7200, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount = 250},
    [7200] = {CurRank = 1, NextRankID = 7201, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount = 300},
    [7201] = {CurRank = 1, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Anima, Amount = nil},

    -----------------------------------
    ---------- Korthia Items ----------
    -----------------------------------
    [7692] = {CurRank = 1, NextRankID = 7693, MaxRank = 6, Icon = AZP.ToolTips.Currencies.CataloggedResearch, Amount =  250},
    [7693] = {CurRank = 2, NextRankID = 7694, MaxRank = 6, Icon = AZP.ToolTips.Currencies.CataloggedResearch, Amount =  750},
    [7694] = {CurRank = 3, NextRankID = 7695, MaxRank = 6, Icon = AZP.ToolTips.Currencies.CataloggedResearch, Amount = 1250},
    [7695] = {CurRank = 4, NextRankID = 7696, MaxRank = 6, Icon = AZP.ToolTips.Currencies.CataloggedResearch, Amount = 2000},
    [7696] = {CurRank = 5, NextRankID = 7697, MaxRank = 6, Icon = AZP.ToolTips.Currencies.CataloggedResearch, Amount = 3000},
    [7697] = {CurRank = 6, NextRankID =  nil, MaxRank = 6, Icon = AZP.ToolTips.Currencies.CataloggedResearch, Amount =  nil},
}