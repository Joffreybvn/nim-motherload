
type
  Controller = ref object of RootObj
    buttonDown: bool
    buttonUp: bool
    buttonLeft: bool
    buttonRight: bool

proc detectKeys(self: Controller) =
  self.buttonDown = btn(NicoButton.pcDown)
  self.buttonUp = btn(NicoButton.pcUp)
  self.buttonLeft = btn(NicoButton.pcLeft)
  self.buttonRight = btn(NicoButton.pcRight)
