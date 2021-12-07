%{
#include <string.h>
// * 0 ou mais vezes
// + 1 ou mais vezes

%}

INT [0-9]+
CHAR [a-zA-Z]+
VAR "_"({CHAR}|{INT})*","?
COMENTARIO "--".*  
TIPO {ESPAC0}?("inte"|"quebrado"|"stringi")
INICIO "inicio"
FIM "fim"
STRING \"[^\"]*\"
NUM [0-9]+\.?[0-9]*
INPUT "leia"
INPUTS "leias"
PRINT "imprima"
PRINTS "imprimas"

IF "if"
ELSE "else"
WHILE "while"
ESPAC0 [\ ]
INVALID (.)
ESCREVER "escrever"
QUEBRARLINHA "pularLinha"

%%


{INICIO} {return INICIO;}
{FIM} {return FIM;}
{IF} {return IF;}
{ELSE} {return ELSE;}
{WHILE} {return WHILE;}
{PRINT} {return PRINT;}
{PRINTS} {return PRINTS;}
{INPUT} {return INPUT;}
{INPUTS} {return INPUTS;}

{ESCREVER} {return ESCREVER;}
{QUEBRARLINHA} {return QUEBRARLINHA;}

{VAR} {
	strcpy(yylval.str,yytext);
	return VAR;
	}

{NUM} {
	yylval.flo = atof(yytext);
	return NUM;
	}
	

[-+()=/*^{};] {
	return *yytext;
	}
{STRING} {
    for(int x=0; x<strlen(yytext); x++){
        yytext[x] = yytext[x+1];
    }
    yytext[strlen(yytext)-1] = '\0';
    strcpy(yylval.str, yytext);
    return STRING;
}			
 /* OPERADORES LOGICOS */
">" {yylval.fn = 1; return CMP; }
"<" {yylval.fn = 2; return CMP; }
"<>" {yylval.fn = 3; return CMP; }
"==" {yylval.fn = 4; return CMP; }
">=" {yylval.fn = 5; return CMP; }
"<=" {yylval.fn = 6; return CMP; }


{COMENTARIO} {;}
"\n" {;}
{INVALID} {;}
%%