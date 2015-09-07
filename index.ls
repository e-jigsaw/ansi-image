require! {
  \is-url : isURL
  request
  fs: {readFileSync}
  path: {resolve}
  \@jigsaw/ansi-canvas : {term, Canvas}
}

module.exports = (url, opt)->
  render = (buf)->
    tm = term!
    ctx = tm.getContext \2d
    {width} = tm
    img = new Canvas.Image!
                ..src = buf

    scale = if img.width > width then width / img.width else 1
    scaleWidth = img.width * scale |> Math.floor
    scaleHeight = img.height * scale |> Math.floor

    ctx.drawImage img, 0, 0, scaleWidth, scaleHeight

    tm.render!

  if isURL url
    opt =
      if opt?
        opt.url = url
      else
        url: url
        encoding: null
    err, _, body <- request opt
    render body
  else
    url = url.replace /~/, process.env.HOME
    buf = resolve process.env.PWD, url |> readFileSync
    render buf
