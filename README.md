A naive example of hot code reloading using a shared (dynamic) library.

Tested on OpenBSD, but __might__ work on GNU/Linux et.al.

Simple do:
```bash
$ make run
```

You should see a string printed to stdout every 2 seconds. To try out
hot-reload, while the `main` program is running, modify `mylib.c` and
rebuild the dynamic library(`libmylib.so`) via `make libmylib.so`.

