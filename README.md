kaksha
======

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc/generate-toc again -->
**Table of Contents**

- [kaksha](#kaksha)
    - [Images](#images)
        - [baseimage](#baseimage)
        - [kaksha](#kaksha)
        - [apache2](#apache2)
    - [Building images](#building-images)
        - [Build a single image](#build-a-single-image)
        - [Pushing a single image](#pushing-a-single-image)
    - [Tagging](#tagging)
    - [Author](#author)
    - [License](#license)

<!-- markdown-toc end -->

## Images

Several useful images have been configured here. Here is the list of
them:

### baseimage

The base image used to build most of the other images.

Installs:

- git
- bash completion
- vnc server
- custom bashrc from
  [https://github.com/anshulverma/bashrc](https://github.com/anshulverma/bashrc)

### kaksha

_Hindi_ word for classroom. Simply adds a new user and sets as default
on login.

### apache2

A httpd server image. Exports port 80 and serves static pages located at
/usr/local/apache2/htdocs. This is also a exported volume.

To run:

``` bash
$ docker run -d -p 4040:80 -v /var/www:/usr/local/apache2/htdocs anshulverma/apache2
```

## Building images

Make a change to the respective Dockerfile then, to build all images again:

``` bash
$ make
```

### Build a single image

Image name is configured using a environment variable IMAGE. When you
run `make kaksha` for example, you are basically running:

``` bash
$ IMAGE=kaksha make build tag
```

### Pushing a single image

Similarly, to push a single image to docker repository:

``` bash
$ IMAGE=kaksha make push
```

## Tagging

The image tag is nothing but the commit id as returned by the `git
describe` command.

## Author

[Anshul Verma](http://anshulverma.github.io/) ::
[anshulverma](https://github.com/anshulverma) ::
[@anshulverma](http://twitter.com/anshulverma)

## License

The MIT License (MIT)

Copyright (c) 2015 Anshul Verma

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
