#include <stdio.h>
#include <unistd.h>
#include <dlfcn.h>
#include <err.h>

int main() {
	void *lib;
	void (*fn)();
	for (;;) {
		lib = dlopen("./libmylib.so", RTLD_LAZY);
		if (lib == NULL) {
			errx(1, "dlopen");
		}

		fn = dlsym(lib, "speak");
		if (fn == NULL) {
			errx(3, "dlsym: can't find speak");
		}

		(*fn)();

		if (dlclose(lib) != 0) {
			errx(2, "dlclose");
		}
		sleep(2);
	}
	return 0;
}

