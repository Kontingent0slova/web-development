PROGRAM HelloUser(INPUT, OUTPUT);
{Печатает приветствие, обращаясь к пользователю, если есть параметр name}
USES
  GPC;
VAR
  Env: STRING;
BEGIN {HelloUser}                                                
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Env := GetEnv('QUERY_STRING');
  IF (Env <> '') AND (POS('name=', Env) <> 0)
  THEN
    BEGIN
      WRITE('Hello dear, ');
      IF POS('&', Env) <> 0
      THEN
        WRITELN(COPY(Env, POS('=', Env) + 1, POS('&', Env) - POS('=', Env) - 1))
      ELSE
        WRITELN(COPY(Env, POS('=', Env) + 1, LENGTH(Env) - POS('=', Env)))
    END
  ELSE
    WRITELN('Hello dear Anonymus!')
END. {HelloUser}
