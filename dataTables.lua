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

AZP.ToolTips.ItemUpgrades =
{
    ---------------------------------
    ---------- Valor Items ----------
    ---------------------------------
    -- 223: 2H Wep
    [7815] = {CurRank =  1, NextRankID = 7816, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7816] = {CurRank =  2, NextRankID = 7817, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7817] = {CurRank =  3, NextRankID = 7818, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7818] = {CurRank =  4, NextRankID = 7819, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7819] = {CurRank =  5, NextRankID = 7820, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7820] = {CurRank =  6, NextRankID = 7821, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7821] = {CurRank =  7, NextRankID = 7822, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7822] = {CurRank =  8, NextRankID = 7823, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7823] = {CurRank =  9, NextRankID = 7824, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7824] = {CurRank = 10, NextRankID = 7825, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7825] = {CurRank = 11, NextRankID = 7826, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 1000},
    [7826] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount =  nil},

    -- 224: ?? UnChecked!       Wrist / Waist / Hands / Feet ??
    [7801] = {CurRank =  1, NextRankID = 7802, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7802] = {CurRank =  2, NextRankID = 7803, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7803] = {CurRank =  3, NextRankID = 7804, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7804] = {CurRank =  4, NextRankID = 7805, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7805] = {CurRank =  5, NextRankID = 7806, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7806] = {CurRank =  6, NextRankID = 7807, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7807] = {CurRank =  7, NextRankID = 7808, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7808] = {CurRank =  8, NextRankID = 7809, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7809] = {CurRank =  9, NextRankID = 7810, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7810] = {CurRank = 10, NextRankID = 7811, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7811] = {CurRank = 11, NextRankID = 7812, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 500},
    [7812] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 225: 1H Wep
    [7843] = {CurRank =  1, NextRankID = 7844, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7844] = {CurRank =  2, NextRankID = 7845, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7845] = {CurRank =  3, NextRankID = 7846, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7846] = {CurRank =  4, NextRankID = 7847, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7847] = {CurRank =  5, NextRankID = 7848, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7848] = {CurRank =  6, NextRankID = 7849, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7849] = {CurRank =  7, NextRankID = 7850, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7850] = {CurRank =  8, NextRankID = 7851, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7851] = {CurRank =  9, NextRankID = 7852, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7852] = {CurRank = 10, NextRankID = 7853, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7853] = {CurRank = 11, NextRankID = 7854, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 750},
    [7854] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 226: Shield / OffHand
    [7829] = {CurRank =  1, NextRankID = 7830, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7830] = {CurRank =  2, NextRankID = 7831, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7831] = {CurRank =  3, NextRankID = 7832, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7832] = {CurRank =  4, NextRankID = 7833, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7833] = {CurRank =  5, NextRankID = 7834, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7834] = {CurRank =  6, NextRankID = 7835, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7835] = {CurRank =  7, NextRankID = 7836, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7836] = {CurRank =  8, NextRankID = 7837, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7837] = {CurRank =  9, NextRankID = 7838, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7838] = {CurRank = 10, NextRankID = 7839, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7839] = {CurRank = 11, NextRankID = 7840, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7840] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 227: Chest / Legs
    [7759] = {CurRank =  1, NextRankID = 7760, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7760] = {CurRank =  2, NextRankID = 7761, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7761] = {CurRank =  3, NextRankID = 7762, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7762] = {CurRank =  4, NextRankID = 7763, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7763] = {CurRank =  5, NextRankID = 7764, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7764] = {CurRank =  6, NextRankID = 7765, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7765] = {CurRank =  7, NextRankID = 7766, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7766] = {CurRank =  8, NextRankID = 7767, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7767] = {CurRank =  9, NextRankID = 7768, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7768] = {CurRank = 10, NextRankID = 7769, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7769] = {CurRank = 11, NextRankID = 7770, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 475},
    [7770] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 228: Trinket / Shoulders / Head
    [7773] = {CurRank =  1, NextRankID = 7774, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7774] = {CurRank =  2, NextRankID = 7775, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7775] = {CurRank =  3, NextRankID = 7776, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7776] = {CurRank =  4, NextRankID = 7777, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7777] = {CurRank =  5, NextRankID = 7778, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7778] = {CurRank =  6, NextRankID = 7779, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7779] = {CurRank =  7, NextRankID = 7780, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7780] = {CurRank =  8, NextRankID = 7781, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7781] = {CurRank =  9, NextRankID = 7782, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7782] = {CurRank = 10, NextRankID = 7783, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7783] = {CurRank = 11, NextRankID = 7784, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 400},
    [7784] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

    -- 229: Finger / Back / Neck
    [7787] = {CurRank =  1, NextRankID = 7788, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7788] = {CurRank =  2, NextRankID = 7789, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7789] = {CurRank =  3, NextRankID = 7790, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7790] = {CurRank =  4, NextRankID = 7791, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7791] = {CurRank =  5, NextRankID = 7792, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7792] = {CurRank =  6, NextRankID = 7793, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7793] = {CurRank =  7, NextRankID = 7794, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7794] = {CurRank =  8, NextRankID = 7795, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7795] = {CurRank =  9, NextRankID = 7796, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7796] = {CurRank = 10, NextRankID = 7797, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7797] = {CurRank = 11, NextRankID = 7798, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = 250},
    [7798] = {CurRank = 12, NextRankID =  nil, MaxRank = 12, Icon = AZP.ToolTips.Currencies.Valor, Amount = nil},

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

AZP.ToolTips.LegendaryItemUpgrades =
{
    -------------------------------------
    ---------- Legendary Items ----------
    -------------------------------------
    [6716] = {CurRank = 1, NextRankID = 6717, MaxRank = 6, Icon =     AZP.ToolTips.Currencies.SoulAsh, Amount =  750},
    [6717] = {CurRank = 2, NextRankID = 6718, MaxRank = 6, Icon =     AZP.ToolTips.Currencies.SoulAsh, Amount = 1200},
    [6718] = {CurRank = 3, NextRankID = 6758, MaxRank = 6, Icon =     AZP.ToolTips.Currencies.SoulAsh, Amount = 1950},
    [6758] = {CurRank = 4, NextRankID = 7450, MaxRank = 6, Icon = AZP.ToolTips.Currencies.SoulCinders, Amount = 1100},
    [7450] = {CurRank = 5, NextRankID = 7451, MaxRank = 6, Icon = AZP.ToolTips.Currencies.SoulCinders, Amount =  550},
    [7451] = {CurRank = 6, NextRankID =  nil, MaxRank = 6, Icon = nil,                                 Amount =  nil},
}

AZP.ToolTips.ShardUpgrades =
{
    -------------------------------------
    ------------ Shard of Bek -----------
    -------------------------------------
    [187057] = {CurRank = 1, NextRankID = 187284, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187284] = {CurRank = 2, NextRankID = 187293, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187293] = {CurRank = 3, NextRankID = 187302, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187302] = {CurRank = 4, NextRankID = 187312, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187312] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Jas -----------
    -------------------------------------
    [187059] = {CurRank = 1, NextRankID = 187285, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187285] = {CurRank = 2, NextRankID = 187294, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187294] = {CurRank = 3, NextRankID = 187303, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187303] = {CurRank = 4, NextRankID = 187313, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187313] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Rev -----------
    -------------------------------------
    [187061] = {CurRank = 1, NextRankID = 187286, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187286] = {CurRank = 2, NextRankID = 187295, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187295] = {CurRank = 3, NextRankID = 187304, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187304] = {CurRank = 4, NextRankID = 187314, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187314] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Cor -----------
    -------------------------------------
    [187063] = {CurRank = 1, NextRankID = 187287, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187287] = {CurRank = 2, NextRankID = 187296, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187296] = {CurRank = 3, NextRankID = 187305, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187305] = {CurRank = 4, NextRankID = 187315, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187315] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Kyr -----------
    -------------------------------------
    [187065] = {CurRank = 1, NextRankID = 187288, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187288] = {CurRank = 2, NextRankID = 187297, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187297] = {CurRank = 3, NextRankID = 187306, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187306] = {CurRank = 4, NextRankID = 187316, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187316] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Tel -----------
    -------------------------------------
    [187071] = {CurRank = 1, NextRankID = 187289, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187289] = {CurRank = 2, NextRankID = 187298, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187298] = {CurRank = 3, NextRankID = 187307, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187307] = {CurRank = 4, NextRankID = 187317, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187317] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Dyz -----------
    -------------------------------------
    [187073] = {CurRank = 1, NextRankID = 187290, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187290] = {CurRank = 2, NextRankID = 187299, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187299] = {CurRank = 3, NextRankID = 187308, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187308] = {CurRank = 4, NextRankID = 187318, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187318] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Oth -----------
    -------------------------------------
    [187076] = {CurRank = 1, NextRankID = 187291, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187291] = {CurRank = 2, NextRankID = 187300, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187300] = {CurRank = 3, NextRankID = 187309, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187309] = {CurRank = 4, NextRankID = 187319, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187319] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},

    -------------------------------------
    ------------ Shard of Zed -----------
    -------------------------------------
    [187079] = {CurRank = 1, NextRankID = 187292, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =   5,},
    [187292] = {CurRank = 2, NextRankID = 187301, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  15,},
    [187301] = {CurRank = 3, NextRankID = 187310, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  30,},
    [187310] = {CurRank = 4, NextRankID = 187320, MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount =  50,},
    [187320] = {CurRank = 5, NextRankID = nil,    MaxRank = 5, Icon = AZP.ToolTips.Currencies.StygianEmbers, Amount = nil,},
}