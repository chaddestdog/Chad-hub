_G.Chad = {
    aimbot = {};
    visuals = {};
    misc = {misc = {fullbright = {enabled = false}};fov_changer = {enabled = false,amount = 90};exploits = {ghost = {enabled = false,resolver = {enabled= false}}};movement = {always_shoot = {enabled = false};noslowdown = {enabled = false}}};
};
repeat task.wait() until _G.Chad_2 and _G.Chad_2.loaded;

--> vars --< May.19.2025
local Library = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))();
local Window = Library:CreateWindow{Title = "Modest hook" ,SubTitle = "Trident survival 2023",TabWidth = 160,Size = UDim2.fromOffset(830, 525),Resize = true,MinSize = Vector2.new(470, 380),Acrylic = false, Theme = "Dark",MinimizeKey = Enum.KeyCode.RightControl};
local Tabs = {aimbot = Window:CreateTab{Title = "aimbot", Icon = ""}, visuals = Window:CreateTab{Title = "visuals", Icon = ""}, misc = Window:CreateTab{Title = "misc", Icon = ""}};
local flags = _G.Chad;

--> misc <--
    --> fullbright 
    Tabs.misc:CreateToggle("a", {Title = "fullbright", Default = false , Callback = function (val) flags.misc.misc.fullbright.enabled = val end});
            
--> Fov changer <--
    Tabs.misc:AddSection("fov changer");
    Tabs.misc:CreateToggle("b", {Title = "enabled", Default = false , Callback = function (val) flags.misc.fov_changer.enabled = val end});
    Tabs.misc:Slider("c", {Title = "amount",Default = 90,Min = 0,Max = 120,Rounding = 0,Callback = function(val) flags.misc.fov_changer.amount = val end});
    
--> exploits <--
    Tabs.misc:AddSection("exploits");
    --> ghost
    Tabs.misc:AddSection("ghost");
    Tabs.misc:CreateToggle("d", {Title = "enabled", Default = false , Callback = function (val) flags.misc.exploits.ghost.enabled = val end});
    Tabs.misc:CreateToggle("e", {Title = "resolver", Default = false , Callback = function (val) flags.misc.exploits.ghost.resolver.enabled = val end});
        
    --> movement 
    Tabs.misc:AddSection("movement");
    Tabs.misc:CreateToggle("f", {Title = "always shoot", Default = false , Callback = function (val) flags.misc.movement.always_shoot.enabled = val end});
    Tabs.misc:CreateToggle("g", {Title = "no slowdown", Default = false , Callback = function (val) flags.misc.movement.noslowdown.enabled = val end});
