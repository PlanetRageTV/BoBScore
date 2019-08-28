-- This is the BOBScore Addon
-- If you are interested in helping further development of BOBScore feel free to contact me via Curse.com e.g.
-- Have a lot of fun with BOBScore! It gave us a good amount of laughter, and don't take life too serious :-)
-- Rage

SetNames = {}

function BOBScoreCalculator(arg1, arg2)
  
 local SelectedName = UnitName("mouseover");
 local PseudoRandom = math.random(100);
 local amount = string.len(SelectedName) * PseudoRandom;
 local bobscore = "";
 

 -- Check if the player is already "known" to ensure he always gets the same BOBScore
 if ( SetNames[UnitName("mouseover")] ) then
  bobscore = SetNames[UnitName("mouseover")];
 else
  bobscore = amount;
  SetNames[UnitName("mouseover")] = amount;
 end
 
 if (SetNames[UnitName("mouseover")] == "Tadonis") then
 amount = 0;
 end
 
-- Here the Tooltip is beeing altered to show the BOBScore
GameTooltip:AddLine("|cff00cfffBOBScore: |r"..bobscore, 1,1,1);
if (amount == 0) then
GameTooltip:AddLine("CRITERROR! GOD DETECTED!", 1,1,1);
 end
 if ( amount < 100 ) then
GameTooltip:AddLine("WARNING! PRO GAMER DETECTED!", 1,1,1);
 end
if ((amount > 100) and (amount < 701)) then
GameTooltip:AddLine("Normal Player / NPC", 1,1,1);
 end
if ((amount > 701) and (amount < 2100)) then
GameTooltip:AddLine("WARNING! BOB DETECTED!", 1,1,1);
 end
if ( amount > 2100 ) then
GameTooltip:AddLine("LEEEEEEEEROY JENKINS!", 1,1,1);
 end
 
 end

GameTooltip:HookScript("OnTooltipSetUnit", BOBScoreCalculator);
