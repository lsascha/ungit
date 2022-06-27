# ungit

... in a container!


## Starting

run like so:

```shell
docker run -it --rm \
-p 8448:8448 \
-v $HOME/.ssh:/home/node/.ssh \
-v $HOME/.gitconfig:/home/node/.gitconfig \
-v $HOME/Projects/:/data \
beo6/ungit
```

For the moment it will default to listening on tcp port `8448` and bind to
`0.0.0.0`


