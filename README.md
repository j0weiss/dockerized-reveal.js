# Dockerized Reveal.js Framework

This repository contains a Dockerfile to run a [reveal.js](https://github.com/hakimel/reveal.js) presentation in a Docker container.

## Usage

### Build the Docker image

```sh
docker build -t revealjs .
```

### Run the Docker container

To run the presentation simply run:
```sh
./runPresentation.sh
```

Then you can view the presentation under [localhost:8080](http://localhost:8080).

## Creating your presentation

### Configuration

The configuration of the presentation is done via the `index.html` file in the `presentation` folder. For the default reveal.js `index.html` simply remove the `.example` ending in the shipped example HTML file. This HTML file gets mounted to the Docker container and is the entry file like it is described in the [reveal.js repository](https://github.com/hakimel/reveal.js).

### Creating the slides

The content and styles as well as additional JavaScript logic lives also in the `presentation` folder:

```
presentation
├── assets
│   ├── css
│   │   └── styles.css
│   └── js
│       └── custom.js
├── index.html
└── slides
    └── slides.md
```

The folder structure is the same as it is in the docker container. So you can reference your styles and JavaScript files in the `index.html` file like you would do it according to the outlined folder stucture.

The content of your slides is defined in the `slides.md` file (you'll find an `slides.md.example` file in the `slides` folder). Currently only external Markdown is supported.

For more documentation on how to customize your presentation see the [repository for reveal.js](https://github.com/hakimel/reveal.js).

## Licence

This code is licensed under the [MIT Licence](https://opensource.org/licenses/MIT).