[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/smenu.svg)](https://hub.docker.com/r/anthonymastrean/smenu/builds/) [![GitHub Link](https://img.shields.io/badge/github-p--gen%2Fsmenu-blue.svg)](https://github.com/p-gen/smenu)

# smenu

Terminal utility that allows you to create a nice selection window.

## Run

You should create a wrapper function in your current shell or profile, because
smenu wants input piped in on STDIN.

```
function smenu {
    docker run --rm -it \
        --name smenu \
        anthonymastrean/smenu
}
```

Then, you can call smenu normally.

```
echo $(grep Vm /proc/$$/status | smenu -n20 -W $':\t\n' -q -c -b -g -s /VmH)
```
