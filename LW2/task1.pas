PROGRAM Values(INPUT, OUTPUT);
{распечатывает значение перменных окружения}
USES
  GPC;
BEGIN {Values}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('REQUEST_METHOD: ', GetEnv('REQUEST_METHOD'));
  WRITELN('QUERY_STRING: ', GetEnv('QUERY_STRING'));
  WRITELN('CONTENT_LENGTH: ', GetEnv('CONTENT_LENGTH'));
  WRITELN('HTTP_USER_AGENT: ', GetEnv('HTTP_USER_AGENT'));
  WRITELN('REQUEST_METHOD: ', GetEnv('HTTP_HOST'))
END. {Values}
