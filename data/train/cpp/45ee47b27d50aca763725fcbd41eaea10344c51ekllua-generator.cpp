#include "../utils/kllua-caller.h"
#include "../utils/kllua-binder.h"

void dump_file( const char *file, const char *str )
{
	FILE *fp = fopen( file, "a" );
	fprintf( fp, "%s\n\n", str );
	fclose( fp );
}

#define TO_STR( x ) TO_STR1( x )
#define TO_STR1( x ) #x
#define CALLER_FILE "kllua-caller-gen.h"
#define BINDER_FILE "kllua-binder-gen.h"
#define BIND_CALLER_FILE "kllua-binder-call-gen.h"

#define DUMP_CALLER( i ) \
	{ \
		char str[256]; \
		sprintf( str, "/// %d param(s).\n", i ); \
		dump_file( CALLER_FILE, str ); \
		dump_file( CALLER_FILE, TO_STR( CREATE_LUA_CALLER( i ) ) ); \
	}

#define DUMP_BINDER( i ) \
	{ \
		char str[256]; \
		sprintf( str, "/// %d param(s).\n", i ); \
		dump_file( BINDER_FILE, str ); \
		dump_file( BINDER_FILE, TO_STR( CREATE_LUA_BINDER( i ) ) ); \
	}

#define DUMP_BIND_CALLER( i ) \
	{ \
		char str[256]; \
		sprintf( str, "/// %d param(s).\n", i ); \
		dump_file( BIND_CALLER_FILE, str ); \
		dump_file( BIND_CALLER_FILE, TO_STR( PRIVATE_CREATE_CALLER( i ) ) ); \
	}

int main()
{
	dump_file( CALLER_FILE, "/// this file was generated by a tiny program.\n" );
	DUMP_CALLER( 1 );
	DUMP_CALLER( 2 );
	DUMP_CALLER( 3 );
	DUMP_CALLER( 4 );
	DUMP_CALLER( 5 );
	DUMP_CALLER( 6 );
	DUMP_CALLER( 7 );
	DUMP_CALLER( 8 );
	DUMP_CALLER( 9 );
	DUMP_CALLER( 10 );
	DUMP_CALLER( 11 );
	DUMP_CALLER( 12 );
	DUMP_CALLER( 13 );
	DUMP_CALLER( 14 );
	DUMP_CALLER( 15 );
 
	dump_file( BINDER_FILE, "/// this file was generated by a tiny program.\n" );
	DUMP_BINDER( 1 );
	DUMP_BINDER( 2 );
	DUMP_BINDER( 3 );
	DUMP_BINDER( 4 );
	DUMP_BINDER( 5 );
	DUMP_BINDER( 6 );
	DUMP_BINDER( 7 );
	DUMP_BINDER( 8 );
	DUMP_BINDER( 9 );
	DUMP_BINDER( 10 );
	DUMP_BINDER( 11 );
	DUMP_BINDER( 12 );
	DUMP_BINDER( 13 );
	DUMP_BINDER( 14 );
	DUMP_BINDER( 15 );

	dump_file( BIND_CALLER_FILE, "/// this file was generated by a tiny program.\n" );
	DUMP_BIND_CALLER( 1 );
	DUMP_BIND_CALLER( 2 );
	DUMP_BIND_CALLER( 3 );
	DUMP_BIND_CALLER( 4 );
	DUMP_BIND_CALLER( 5 );
	DUMP_BIND_CALLER( 6 );
	DUMP_BIND_CALLER( 7 );
	DUMP_BIND_CALLER( 8 );
	DUMP_BIND_CALLER( 9 );
	DUMP_BIND_CALLER( 10 );
	DUMP_BIND_CALLER( 11 );
	DUMP_BIND_CALLER( 12 );
	DUMP_BIND_CALLER( 13 );
	DUMP_BIND_CALLER( 14 );
	DUMP_BIND_CALLER( 15 );

	return 0;
}

