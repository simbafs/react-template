# React Template

a template to start react in the minimum setup  
## Install
```
bash <(curl -s https://raw.githubusercontent.com/simba-fs/react-template/master/create.sh)
```

you can copy the `create.sh` to your computer with `install.sh`
```
bash <(curl -s https://raw.githubusercontent.com/simba-fs/react-template/master/install.sh)
```

## Features:  
- [x] react
- [x] react static
- [ ] react native

## npm script
| name | description | 
| :--- | :---------- |
| dev  | Building a development mode website. |
| watch | Being similar with `dev` but rebuilding when files are changed. |
| depoly | Building and minify all the file, it is for the production env |
| dev-server | Being similat with `watch` but start a dev server |
| static | Building a static website |

## folder structure
```
.
├── artifacts           (this was auto gen by react-static, you can ignore and delete it)
├── create.sh           (execute this script to start a new react project, you can mv it to /usr/bin or anywhere in the $PATH)
├── dist         
│   ├── 404
│   │   └── routeInfo.json
│   ├── 404.html
│   ├── index.html
│   ├── main.0f6c3bee.js
│   ├── routeInfo.json
│   ├── styles.13660eb1.css
│   └── templates
│       ├── __react_static_root__
│       ├── styles.314d63ca.js
│       └── vendors~main.fd1c8d5b.js
├── jsconfig.json  
├── LICENCE
├── package.json
├── package-lock.json
├── public              (public files, auto copy to dist when you build app)
│   └── index.html
├── README.md
├── README.md.html
├── src                 (all your script in this folder)
│   ├── app.css
│   ├── App.js
│   └── index.js
├── static.config.js    (react-static config file. If you don't need, delete it is OK)
└── webpack.config.js   (webpack config file)
```
