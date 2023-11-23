
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     CHAR = 259,
     VOID = 260,
     DOUBLE = 261,
     DOUBLE_VALUE = 262,
     INTEGER_VALUE = 263,
     CHAR_VALUE = 264,
     VARIABLE_NAME = 265,
     ASSIGN = 266,
     BINARY_AND = 267,
     BINARY_OR = 268,
     MINUS = 269,
     PLUS = 270,
     MOD = 271,
     DIVISION = 272,
     MULTIPLE = 273,
     POW = 274,
     EQUAL = 275,
     NOT_EQUAL = 276,
     GREATER_THAN = 277,
     LESS_THAN = 278,
     GREATER_THAN_AND_EQUAL = 279,
     LESS_THAN_AND_EQUAL = 280,
     AND = 281,
     OR = 282,
     INC_ONE = 283,
     DEC_ONE = 284,
     TRUE = 285,
     FALSE = 286,
     COMMA = 287,
     COLON = 288,
     SEMICOLON = 289,
     THIRD_BRACKET_CLOSE = 290,
     THIRD_BRACKET_OPEN = 291,
     SECOND_BRACKET_CLOSE = 292,
     SECOND_BRACKET_OPEN = 293,
     FIRST_BRACKET_CLOSE = 294,
     FIRST_BRACKET_OPEN = 295,
     IF = 296,
     ELSE_IF = 297,
     ELSE = 298,
     SWITCH = 299,
     CASE = 300,
     DEFAULT = 301,
     FOR = 302,
     WHILE = 303,
     CONTINUE = 304,
     BREAK = 305,
     PRINTF = 306,
     SCANF = 307,
     SIZE_OF = 308,
     RETURN = 309,
     OUTPUTTEXT = 310,
     LIBRARY = 311,
     LCM = 312,
     GCD = 313,
     MAX = 314,
     MIN = 315
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 70 "project.y"

    char text[1000];

    struct datatype {
        char* name;
        char* data_type;
        int int_value;
        double double_value;
        char char_value; 
    } union_variable;
//YYSTYPE yylval;




/* Line 1676 of yacc.c  */
#line 128 "project.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


