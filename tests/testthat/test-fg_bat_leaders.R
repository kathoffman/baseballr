context("FanGraphs Batting Leaders")

cols <- c(
  "playerid", "#", "Season", "Name", "Team", "Age", "G", 
  "AB", "PA", "H", "1B", "2B", "3B", "HR", "R", "RBI", "BB", 
  "IBB", "SO", "HBP", "SF", "SH", "GDP", "SB", "CS", "AVG", "GB", 
  "FB", "LD", "IFFB", "Pitches", "Balls", "Strikes", "IFH", "BU", 
  "BUH", "BB_pct", "K_pct", "BB_K", "OBP", "SLG", "OPS", "ISO", 
  "BABIP", "GB_FB", "LD_pct", "GB_pct", "FB_pct", "IFFB_pct", "HR_FB",
  "IFH_pct", "BUH_pct", "wOBA", "wRAA", "wRC", "Bat", "Fld",
  "Rep", "Pos", "RAR", "WAR", "Dol", "Spd", "wRC_plus", "WPA",
  "WPA_minus", "WPA_plus", "RE24", "REW", "pLI", "phLI", "PH",
  "WPA_LI", "Clutch", "FBall_pct", "FBv", "SL_pct", "SLv", 
  "CT_pct", "CTv", "CB_pct", "CBv", "CH_pct", "CHv", "SF_pct", 
  "SFv", "KN_pct", "KNv", "XX_pct", "PO_pct", "wFB", "wSL", 
  "wCT", "wCB", "wCH", "wSF", "wKN", "wFB_C", "wSL_C", "wCT_C", 
  "wCB_C", "wCH_C", "wSF_C", "wKN_C", "O-Swing_pct", "Z-Swing_pct",
  "Swing_pct", "O-Contact_pct", "Z-Contact_pct", "Contact_pct", 
  "Zone_pct", "F-Strike_pct", "SwStr_pct", "BsR", "FA_pct (sc)",
  "FT_pct (sc)", "FC_pct (sc)", "FS_pct (sc)", "FO_pct (sc)", 
  "SI_pct (sc)", "SL_pct (sc)", "CU_pct (sc)", "KC_pct (sc)",
  "EP_pct (sc)", "CH_pct (sc)", "SC_pct (sc)", "KN_pct (sc)", 
  "UN_pct (sc)", "vFA (sc)", "vFT (sc)", "vFC (sc)", "vFS (sc)", 
  "vFO (sc)", "vSI (sc)", "vSL (sc)", "vCU (sc)", "vKC (sc)", 
  "vEP (sc)", "vCH (sc)", "vSC (sc)", "vKN (sc)", "FA-X (sc)", 
  "FT-X (sc)", "FC-X (sc)", "FS-X (sc)", "FO-X (sc)", "SI-X (sc)",
  "SL-X (sc)", "CU-X (sc)", "KC-X (sc)", "EP-X (sc)", "CH-X (sc)", 
  "SC-X (sc)", "KN-X (sc)", "FA-Z (sc)", "FT-Z (sc)", "FC-Z (sc)",
  "FS-Z (sc)", "FO-Z (sc)", "SI-Z (sc)", "SL-Z (sc)", "CU-Z (sc)", 
  "KC-Z (sc)", "EP-Z (sc)", "CH-Z (sc)", "SC-Z (sc)", "KN-Z (sc)", 
  "wFA (sc)", "wFT (sc)", "wFC (sc)", "wFS (sc)", "wFO (sc)",
  "wSI (sc)", "wSL (sc)", "wCU (sc)", "wKC (sc)", "wEP (sc)",
  "wCH (sc)", "wSC (sc)", "wKN (sc)", "wFA_C (sc)", "wFT_C (sc)", 
  "wFC_C (sc)", "wFS_C (sc)", "wFO_C (sc)", "wSI_C (sc)", "wSL_C (sc)", 
  "wCU_C (sc)", "wKC_C (sc)", "wEP_C (sc)", "wCH_C (sc)", "wSC_C (sc)", 
  "wKN_C (sc)", "O-Swing_pct (sc)", "Z-Swing_pct (sc)", "Swing_pct (sc)",
  "O-Contact_pct (sc)", "Z-Contact_pct (sc)", "Contact_pct (sc)",
  "Zone_pct (sc)", "Pace", "Def", "wSB", "UBR", "AgeRng", "Off", 
  "Lg", "wGDP", "Pull_pct", "Cent_pct", "Oppo_pct", "Soft_pct",
  "Med_pct", "Hard_pct", "TTO_pct", "CH_pct_pi", "CS_pct_pi",
  "CU_pct_pi", "FA_pct_pi", "FC_pct_pi", "FS_pct_pi", "KN_pct_pi", 
  "SB_pct_pi", "SI_pct_pi", "SL_pct_pi", "XX_pct_pi", "vCH_pi", 
  "vCS_pi", "vCU_pi", "vFA_pi", "vFC_pi", "vFS_pi", "vKN_pi", "vSB_pi", 
  "vSI_pi", "vSL_pi", "vXX_pi", "CH-X_pi", "CS-X_pi", "CU-X_pi",
  "FA-X_pi", "FC-X_pi", "FS-X_pi", "KN-X_pi", "SB-X_pi", "SI-X_pi", 
  "SL-X_pi", "XX-X_pi", "CH-Z_pi", "CS-Z_pi", "CU-Z_pi", "FA-Z_pi", 
  "FC-Z_pi", "FS-Z_pi", "KN-Z_pi", "SB-Z_pi", "SI-Z_pi", "SL-Z_pi", 
  "XX-Z_pi", "wCH_pi", "wCS_pi", "wCU_pi", "wFA_pi", "wFC_pi", "wFS_pi",
  "wKN_pi", "wSB_pi", "wSI_pi", "wSL_pi", "wXX_pi", "wCH_C_pi", "wCS_C_pi",
  "wCU_C_pi", "wFA_C_pi", "wFC_C_pi", "wFS_C_pi", "wKN_C_pi", "wSB_C_pi",
  "wSI_C_pi", "wSL_C_pi", "wXX_C_pi", "O-Swing_pct_pi", "Z-Swing_pct_pi",
  "Swing_pct_pi", "O-Contact_pct_pi", 
  "Z-Contact_pct_pi", "Contact_pct_pi", "Zone_pct_pi", "Pace_pi"
)

test_that("FanGraphs Batting Leaders", {
  skip_on_cran()
  
  x <- fg_bat_leaders(x = 2015, y = 2015, qual = 400)
  
  expect_equal(colnames(x), cols)
  expect_s3_class(x, "data.frame")
})
