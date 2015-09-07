require! {
  request
  \@jigsaw/ansi-canvas : {term, Canvas}
}

module.exports = (url, opt)->
  tm = term!
  ctx = tm.getContext \2d

  opt =
    if opt?
      opt.url = url
    else
      url: url
      encoding: null

  {width} = tm
  err, _, body <- request opt
  img = new Canvas.Image!
              ..src = body

  scale = if img.width > width then width / img.width else 1
  scaleWidth = img.width * scale |> Math.floor
  scaleHeight = img.height * scale |> Math.floor

  ctx.drawImage img, 0, 0, scaleWidth, scaleHeight

  tm.render!
