A naive example of hot code reloading using a shared (dynamic) library.

Tested on OpenBSD, but __might__ work on GNU/Linux if you prefix these
commands with: `LIBS=-ldl`

Simple do:
```bash
$ make run
```

You should see a string printed to stdout every 2 seconds. To try out
hot-reload, while the `main` program is running, modify the `speak()`
function in `mylib.c` and rebuild the dynamic library (`libmylib.so`):

```bash
$ make libmylib.so
```


