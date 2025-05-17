_G.Chad = {aimbot = {aimbot = {enabled = false, psilet = false, vischeck = false}; triggerbot = {enabled = false}};
    misc = {
        anti_aim = {enabled = false};
    };};
repeat task.wait() until _G.Chad_2 and _G.Chad_2.loaded;

-- vars --------------------------------------------------------
    local Library = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))();
    local Window = Library:CreateWindow{Title = "Modest hook" ,SubTitle = "[FPS] Gun Grounds FFA",TabWidth = 160,Size = UDim2.fromOffset(830, 525),Resize = true,MinSize = Vector2.new(470, 380),Acrylic = false, Theme = "Dark",MinimizeKey = Enum.KeyCode.RightControl};
    local Tabs = {aimbot = Window:CreateTab{Title = "aimbot", Icon = ""}, visuals = Window:CreateTab{Title = "visuals", Icon = ""}, misc = Window:CreateTab{Title = "misc", Icon = ""}};
    local flags = _G.Chad;
    
-- ui ----------------------------------------------------------
    -- aimbot
    Tabs.aimbot:CreateToggle("a", {Title = "aimbot", Default = false , Callback = function (val) flags.aimbot.aimbot.enabled = val end});
    Tabs.aimbot:CreateToggle("b", {Title = "psilent", Default = false , Callback = function (val) flags.aimbot.aimbot.psilet = val end});
    Tabs.aimbot:CreateToggle("c", {Title = "vischeck", Default = false , Callback = function (val) flags.aimbot.aimbot.vischeck = val end});
       
    -- trigger bot
    Tabs.aimbot:CreateToggle("d", {Title = "triggerbot", Default = false , Callback = function (val) flags.aimbot.triggerbot.enabled = val end});
    
    -- anti aim 
    Tabs.misc:CreateToggle("e", {Title = "anti aim", Default = false , Callback = function (val) flags.misc.anti_aim.enabled = val end});
