%{
	#include "project.tab.h"
    void yyerror(char *);
%}


DIGIT [0-9]
CHAR [a-zA-Z]
WHITE_SPACE [ \t]
NEWLINE [\n]
REAL_NUMBER [-+]?[0-9]+[.][0-9]+
INTEGER [-+]?[0-9]+
ID (_|{CHAR})({CHAR}|{DIGIT})*
DATA_TYPE "<InT>"|"<ChaR>"|"<FloaT>"|"<DoublE>"|"<EmptY>"
ARITHMTIC_OPERATOR "+op+"|"-op-"|"*op*"|"/op/"|"%op%"|("|op|")|"&op&"|"//op//"
RELATIONAL_OPERATOR "=="|"<<"|">>"|"<<=="|">>=="|"!!=="
LOGICAL_OPERATOR "&&"|("||")|"!"



%%

"#import ".+".h"							{
												yylval.union_variable.name = strdup(yytext);
												return LIBRARY;
											}

"<!"										{
												printf("\nMultiple line comment begins");
												char c;
												while(c=input()!='!');
												
												if(c=input()=='>')
													printf("\n multiple line comment ends");		
											}

\$\$(.*)                                                                         { printf("\nSingle-line comment: %s\n", yytext);}

"<InT>"										{return INT ;}

"<ChaR>"									{return CHAR ;}

"<DoublE>"									{return DOUBLE ;}

"<EmptY>"									{return VOID ;}

":="										{return ASSIGN ;}

"=="										{return EQUAL ;}

"!!=="										{return NOT_EQUAL ;}

">>"										{return GREATER_THAN ;}

"<<"										{return LESS_THAN ;}

">>=="										{return GREATER_THAN_AND_EQUAL ;}

"<<=="										{return LESS_THAN_AND_EQUAL ;}

"&&"										{return AND ;}

"||"										{return OR ;}

"TruE"										{return TRUE ;}

"FalsE"										{return FALSE;}

"+op+"										{return PLUS ;}

"-op-"										{return MINUS ;}

"*op*"										{return MULTIPLE ;}

"/op/"										{return DIVISION ;}

"%op%"										{return MOD ;}

"^op^"									{return POW ;}

"&op&"										{return BINARY_AND ;}

"|op|"										{return BINARY_OR ;}

"IncOnE"									{return INC_ONE ;}

"DecOnE"									{return DEC_ONE ;}

"(("										{return FIRST_BRACKET_OPEN ;}

"))"										{return FIRST_BRACKET_CLOSE ;}

"{{"										{return SECOND_BRACKET_OPEN ;}

"}}"										{return SECOND_BRACKET_CLOSE ;}

"[["										{return THIRD_BRACKET_OPEN ;}

"]]"										{return THIRD_BRACKET_CLOSE ;}

";;"										{return SEMICOLON ;}

"::"										{return COLON ;}

",,"										{return COMMA ;}

"<ReturN>"									{return RETURN ;}

"<PrintF>"									{return PRINTF ;}

"<ScanF>"									{return SCANF ;}

"<FoR>"										{return FOR ;}

"<WhilE>"									{return WHILE ;}

"<ContinuE>"								{return CONTINUE ;}

"<BreaK>"									{return BREAK ;}

"<AmountOF>"								{return SIZE_OF ;}

"<IF>"										{return IF ;}

"<ElsE>"									{return ELSE ;}

"GCD"										{return GCD ;}

"LCM"										{return LCM ;}

"MIN"										{return MIN ;}

"MAX"										{return MAX ;}

"<SwitcH>"									{return SWITCH ;}

"<CasE>"									{return CASE ;}

"<DefaulT>"									{return DEFAULT ;}


{REAL_NUMBER}								{
												yylval.union_variable.double_value = atof(yytext);
												yylval.union_variable.data_type = "double";
												return DOUBLE_VALUE ;
											}

{INTEGER}									{
												yylval.union_variable.int_value = atoi(yytext);
												yylval.union_variable.data_type = "int";
												return INTEGER_VALUE ;
											}

{ID}										{
												yylval.union_variable.name = strdup(yytext);
												return VARIABLE_NAME ;
											}

[$]{CHAR}[$]								{
												yylval.union_variable.char_value = yytext[1];
												yylval.union_variable.data_type = "char";
												return CHAR_VALUE ;
											}

"$"({WHITE_SPACE}|.)*"$" 					{
											  	yytext++;
											  	int l=strlen(yytext);
											  	yylval.union_variable.name=yytext;
											  	yylval.union_variable.name[l-1]='\0';
											  	return OUTPUTTEXT;
											}



{WHITE_SPACE}								{}

.											{
												yyerror("Unknown character");
												exit(-1);
											}




%%

int yywrap()
{
	return 1;
}

// int main()
// {
// 	yyin = freopen("input.txt", "r", stdin);
// 	yyout = freopen("output.txt", "w", stdout);
// 	yylex();
// 	return 0;
// }