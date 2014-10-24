#define PERL_NO_GET_CONTEXT
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>

#include "ppport.h"

#include "foo.h"
#include "foo/bar.h"
#include "foo/baz.h"

#include "Install/hook_op_annotation.h"

bool
foo_is_ok(void){
#ifdef FOO_OK
	return TRUE;
#else
	return FALSE;
#endif
}

MODULE = Foo	PACKAGE = Foo

PROTOTYPES: DISABLE

BOOT:
	op_annotation_group_free(aTHX_ op_annotation_group_new());

bool
foo_is_ok()

int
bar_is_ok(int a, int b, int c)
