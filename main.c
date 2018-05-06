extern int yydebug;

main()
{
  int yyparse();

  yydebug = 1;
  return(yyparse());
}
