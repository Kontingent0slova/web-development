PROGRAM WorkWithQueryString(INPUT, OUTPUT);
{Печатает значение выбранного параметра}
USES
  GPC;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Env, Parameter: STRING;
BEGIN {GetQueryStringParameter}
  Env := GetEnv('QUERY_STRING');
  Parameter := '';
  {Отсекаем данные до необходимого параметра}
  Env := COPY(Env, POS(Key, Env), LENGTH(Env) - POS(Key, Env) + 1);
  IF (Env <> '') AND (POS(Key, Env) <> 0)
  THEN
    IF POS('&', Env) <> 0
    THEN
      Parameter := COPY(Env, POS('=', Env) + 1, POS('&', Env) - POS('=', Env) - 1)
    ELSE
      Parameter := COPY(Env, POS('=', Env) + 1, (LENGTH(Env) + 1) - POS('=', Env));
  GetQueryStringParameter := Parameter     
END; {GetQueryStringParameter}
BEGIN {WorkWithQueryString}                                                
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
