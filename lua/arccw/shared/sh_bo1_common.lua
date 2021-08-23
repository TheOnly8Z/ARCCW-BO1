function ArcCW.BO1_ProPerkCheck(wep, data)
    local pro = wep:GetBuff_Override("BO1_ProPerk")
    if pro then
        local atttbl = ArcCW.AttachmentTable[pro]
        local atttbl2 = ArcCW.AttachmentTable[data.att]
        if atttbl.Slot ~= atttbl2.Slot then
            return false
        end
    end
end