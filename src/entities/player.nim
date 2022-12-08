
type
  Player = ref object of RootObj
    location: Location

proc moveLeft(self: Player) =
  self.location.x -= 1

proc moveRight(self: Player) =
  self.location.x += 1

proc moveUp(self: Player) =
  self.location.y -= 1

proc moveDown(self: Player) =
  self.location.y += 1

proc draw(self: Player) =
  pset(self.location.x, self.location.y)
