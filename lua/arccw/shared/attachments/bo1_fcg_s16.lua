att.PrintName = "A2 Skullsplitter FCG"
att.Icon = Material("entities/acwatt_fcg_s13.png", "mips smooth")
att.Description = "Firemode conversion allowing for an absurd 6-round burst with a lightly longer delay between bursts."
att.Desc_Pros = {
    "+ Burst Fire mode allows for ammunition",
    "conservation"
}
att.Desc_Cons = {
    "- Burst Delay"
}
att.AutoStats = true
att.Slot = "fcg_m16a2"
att.RequireFlags = {"papname1"}
att.GivesFlags = {"a2top"}
att.SortOrder = 105
att.HideIfBlocked = true

att.Override_Firemodes = {
    {
        Mode = -6,
        PostBurstDelay = 0.2,
        RunawayBurst = true,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Hook_Compatible = function(wep)
    local auto = false
    for i, v in pairs(wep.Firemodes) do
        if v.Mode and v.Mode == -3 then
            auto = true
            break
        end
    end
    if auto then return false end
end