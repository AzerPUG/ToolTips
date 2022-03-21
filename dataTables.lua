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
    [7256] = {CurRank = 1, NextRankID = 7257, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  300},
    [7257] = {CurRank = 2, NextRankID = 7258, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  375},
    [7258] = {CurRank = 3, NextRankID = 7259, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  600},
    [7259] = {CurRank = 4, NextRankID = 7260, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  750},
    [7260] = {CurRank = 5, NextRankID = 7261, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  825},
    [7261] = {CurRank = 6, NextRankID = 7262, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  900},
    [7262] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    [7284] = {CurRank = 1, NextRankID = 7285, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  250},
    [7285] = {CurRank = 2, NextRankID = 7286, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  300},
    [7286] = {CurRank = 3, NextRankID = 7287, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  500},
    [7287] = {CurRank = 4, NextRankID = 7288, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  625},
    [7288] = {CurRank = 5, NextRankID = 7289, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  675},
    [7289] = {CurRank = 6, NextRankID = 7290, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  750},
    [7290] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    [7277] = {CurRank = 1, NextRankID = 7278, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1000},
    [7278] = {CurRank = 2, NextRankID = 7279, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1250},
    [7279] = {CurRank = 3, NextRankID = 7280, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2000},
    [7280] = {CurRank = 4, NextRankID = 7281, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2500},
    [7281] = {CurRank = 5, NextRankID = 7282, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2750},
    [7282] = {CurRank = 6, NextRankID = 7283, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3000},
    [7283] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    [7291] = {CurRank = 1, NextRankID = 7292, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  750},
    [7292] = {CurRank = 2, NextRankID = 7293, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  950},
    [7293] = {CurRank = 3, NextRankID = 7294, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1500},
    [7294] = {CurRank = 4, NextRankID = 7295, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1875},
    [7295] = {CurRank = 5, NextRankID = 7296, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2075},
    [7296] = {CurRank = 6, NextRankID = 7297, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2250},
    [7297] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    [7270] = {CurRank = 1, NextRankID = 7271, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  500},
    [7271] = {CurRank = 2, NextRankID = 7272, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  625},
    [7272] = {CurRank = 3, NextRankID = 7273, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1000},
    [7273] = {CurRank = 4, NextRankID = 7274, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1250},
    [7274] = {CurRank = 5, NextRankID = 7275, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1375},
    [7275] = {CurRank = 6, NextRankID = 7276, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1500},
    [7276] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    [7263] = {CurRank = 1, NextRankID = 7264, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  400},
    [7264] = {CurRank = 2, NextRankID = 7265, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  500},
    [7265] = {CurRank = 3, NextRankID = 7266, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  800},
    [7266] = {CurRank = 4, NextRankID = 7267, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1000},
    [7267] = {CurRank = 5, NextRankID = 7268, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1100},
    [7268] = {CurRank = 6, NextRankID = 7269, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1200},
    [7269] = {CurRank = 7, NextRankID =  nil, MaxRank = 7, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    ------------------------------------
    ---------- Conquest items ----------
    ------------------------------------
    -- 1H Int
    [7558] = {CurRank = 1, NextRankID = 7908, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7908] = {CurRank = 2, NextRankID = 7559, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7559] = {CurRank = 3, NextRankID = 7909, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7909] = {CurRank = 4, NextRankID = 7560, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7560] = {CurRank = 5, NextRankID = 7910, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7910] = {CurRank = 6, NextRankID = 7561, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7561] = {CurRank = 7, NextRankID = 7563, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7563] = {CurRank = 8, NextRankID = 7562, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7562] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- TrinketA, Hands, Waist
    [7534] = {CurRank = 1, NextRankID = 7896, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  600},
    [7896] = {CurRank = 2, NextRankID = 7535, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1275},
    [7535] = {CurRank = 3, NextRankID = 7897, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2000},
    [7897] = {CurRank = 4, NextRankID = 7536, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2850},
    [7536] = {CurRank = 5, NextRankID = 7898, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3825},
    [7898] = {CurRank = 6, NextRankID = 7537, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 4925},
    [7537] = {CurRank = 7, NextRankID = 7539, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 6150},
    [7539] = {CurRank = 8, NextRankID = 7538, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount = 7625},
    [7538] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Wrist, Back, Neck, TrinketB, Finger
    [7528] = {CurRank = 1, NextRankID = 7893, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7893] = {CurRank = 2, NextRankID = 7529, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7529] = {CurRank = 3, NextRankID = 7894, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7894] = {CurRank = 4, NextRankID = 7530, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7530] = {CurRank = 5, NextRankID = 7533, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7533] = {CurRank = 6, NextRankID = 7895, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7895] = {CurRank = 7, NextRankID = 7531, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7531] = {CurRank = 8, NextRankID = 7532, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7532] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Two Hand
    [7546] = {CurRank = 1, NextRankID = 7902, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7902] = {CurRank = 2, NextRankID = 7547, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7547] = {CurRank = 3, NextRankID = 7903, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7903] = {CurRank = 4, NextRankID = 7548, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7548] = {CurRank = 5, NextRankID = 7904, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7904] = {CurRank = 6, NextRankID = 7549, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7549] = {CurRank = 7, NextRankID = 7551, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7551] = {CurRank = 8, NextRankID = 7550, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7550] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- Head, Legs, Chest
    [7540] = {CurRank = 1, NextRankID = 7899, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7899] = {CurRank = 2, NextRankID = 7541, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7541] = {CurRank = 3, NextRankID = 7900, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7900] = {CurRank = 4, NextRankID = 7542, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7542] = {CurRank = 5, NextRankID = 7901, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7901] = {CurRank = 6, NextRankID = 7543, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7543] = {CurRank = 7, NextRankID = 7545, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7545] = {CurRank = 8, NextRankID = 7544, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7544] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- OH Int
    [7552] = {CurRank = 1, NextRankID = 7905, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7905] = {CurRank = 2, NextRankID = 7553, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7553] = {CurRank = 3, NextRankID = 7906, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7906] = {CurRank = 4, NextRankID = 7554, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7554] = {CurRank = 5, NextRankID = 7907, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7907] = {CurRank = 6, NextRankID = 7555, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7555] = {CurRank = 7, NextRankID = 7557, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7557] = {CurRank = 8, NextRankID = 7556, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},
    [7556] = {CurRank = 9, NextRankID =  nil, MaxRank = 9, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- [7305] = {CurRank = 1, NextRankID = 7306, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  475},
    -- [7306] = {CurRank = 2, NextRankID = 7307, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  950},
    -- [7307] = {CurRank = 3, NextRankID = 7308, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1550},
    -- [7308] = {CurRank = 4, NextRankID = 7309, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2375},
    -- [7309] = {CurRank = 5, NextRankID =  nil, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- [7311] = {CurRank = 1, NextRankID = 7312, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  650},
    -- [7312] = {CurRank = 2, NextRankID = 7313, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1300},
    -- [7313] = {CurRank = 3, NextRankID = 7314, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2100},
    -- [7314] = {CurRank = 4, NextRankID = 7315, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3250},
    -- [7315] = {CurRank = 5, NextRankID =  nil, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- [7317] = {CurRank = 1, NextRankID = 7318, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  800},
    -- [7318] = {CurRank = 2, NextRankID = 7319, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1600},
    -- [7319] = {CurRank = 3, NextRankID = 7320, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2600},
    -- [7320] = {CurRank = 4, NextRankID = 7321, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 4000},
    -- [7321] = {CurRank = 5, NextRankID =  nil, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- [7323] = {CurRank = 1, NextRankID = 7324, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1600},
    -- [7324] = {CurRank = 2, NextRankID = 7325, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3200},
    -- [7325] = {CurRank = 3, NextRankID = 7326, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 5200},
    -- [7326] = {CurRank = 4, NextRankID = 7327, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 8000},
    -- [7327] = {CurRank = 5, NextRankID =  nil, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- [7329] = {CurRank = 1, NextRankID = 7330, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  400},
    -- [7330] = {CurRank = 2, NextRankID = 7331, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  800},
    -- [7331] = {CurRank = 3, NextRankID = 7332, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1300},
    -- [7332] = {CurRank = 4, NextRankID = 7333, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2000},
    -- [7333] = {CurRank = 5, NextRankID =  nil, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

    -- [7335] = {CurRank = 1, NextRankID = 7336, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 1200},
    -- [7336] = {CurRank = 2, NextRankID = 7337, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 2400},
    -- [7337] = {CurRank = 3, NextRankID = 7338, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 3900},
    -- [7338] = {CurRank = 4, NextRankID = 7339, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount = 6000},
    -- [7339] = {CurRank = 5, NextRankID =  nil, MaxRank = 5, Icon = AZP.ToolTips.Currencies.Honor, Amount =  nil},

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