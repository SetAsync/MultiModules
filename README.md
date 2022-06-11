# **MultiModules**
MultiModules allows you to quickly access modules within scripts without loading them in each time, or adding each of them to your game.

**Installation**
Add [the model](https://www.roblox.com/library/9879985650/MultiModules) to your game, ideally inside ReplicatedStorage. It will move itself there from any parent which allows scripts to run.

**Get the MM function.**
```lua
local MM = require(game.ReplicatedStorage:WaitForChild("MM"))
```
**Get the MM function without installation.**
```lua
local MM = require(9879985650)
```

**Get modules from MM.**
```lua
local Tree = MM("Tree")
```
**Example Usage.**
(Using [tree](https://github.com/SetAsync/Tree) which is a supported MM module.)
```lua
local MM = require(game.ReplicatedStorage:WaitForChild("MM"))
local Tree = MM("Tree")
print(Tree.FindFirstChild(script.Parent, {
	{"Attribute", "Emotion", "happy"}
}))
```

This was just a small project I added to help me create other small projects and quickly use modules I find helpfull.
Some people may object to how it works, it is generally easier and more efficient to just add modules to your game but for single script projects you may want something easier to write.
