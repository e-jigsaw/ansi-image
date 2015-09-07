ansi-image
==========

Show image in your console

# Install

```
% npm install ansi-image
```

# Usage

## From internet

```
% ansi-image https://40.media.tumblr.com/6b598858fdb06ce06a35822643ff4e65/tumblr_nua5vxXgju1s50zajo1_1280.jpg
```

![](https://cloud.githubusercontent.com/assets/557961/9709633/5d477c74-556a-11e5-8a19-90b8cdfacbd3.png)

## From local

```
% ansi-image hoge.png
```

## Use as module

```
var ansiImage = require("ansi-image");
ansiImage "hoge.png"
```

### `ansiImage(url, options)`

* url: `String` - URL
* options: [request](https://github.com/request/request) option

# Build

```
% npm run build
```

# Author

* jigsaw (http://jgs.me, [@e-jigsaw](http://github.com/e-jigsaw))

# License

MIT

The MIT License (MIT)

Copyright (c) 2015 Takaya Kobayashi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
