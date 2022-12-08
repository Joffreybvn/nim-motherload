import nico
include ./utils/location
include ./canvas/controller
include ./entities/player

const orgName = "Joffrey Bienvenu"
const appName = "Dive Miner"

let controller = Controller()
let player = Player(location: Location(x: 0, y: 0))

proc gameInit() =
  loadFont(0, "font.png")

proc gameUpdate(dt: float32) =
  controller.detectKeys()

  if controller.buttonDown:
    player.moveDown()
  elif controller.buttonUp:
    player.moveUp()
  if controller.buttonLeft:
    player.moveLeft()
  elif controller.buttonRight:
    player.moveRight()

proc gameDraw() =
  cls()
  player.draw()
  setColor(if controller.buttonDown: 7 else: 3)
  printc("welcome to " & appName, screenWidth div 2, screenHeight div 2)

nico.init(orgName, appName)
nico.createWindow(appName, 128, 128, 4, false)
nico.run(gameInit, gameUpdate, gameDraw)
