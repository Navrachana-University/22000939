Gujarati Language Compiler
👤 Trunalkumar Rohit
🎓 EN ID: 22000939

Project Overview
This is a simple compiler created using Flex (Lex) and Bison (Yacc) for a custom programming language that uses Gujarati transliterated keywords. The compiler reads code from an input.txt file, parses it, and generates intermediate code or parsing validation through defined grammar rules.

📁 Files Included
File Name	Description
1.l	Lex (Flex) source file for lexical analysis
1.y	Yacc (Bison) source file for parsing rules
input.txt	Sample program written in the custom language

🛠️ How to Compile & Run
1️⃣ Generate parser and lexer files:
bison -d 1.y
flex 1.l
gcc 1.tab.c lex.yy.c -o a

2️⃣ Run the compiler:
a.exe

📦 Dependencies
Flex
Bison
GCC

