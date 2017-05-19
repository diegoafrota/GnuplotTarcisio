f(x)=(x+3)*sin(x);

plot f(x),0;

pause -2 "Aperte enter para continuar (ou terminar)";

a=-5.0

## df(x) =  (x+3)*sin(x) +  (x+3)*sin(x);
## df(x) =  (x+3)*sin(x) +  (x+3)*sin(x);
## df(x) =  (x+3)*sin(x) +  (x+3)*sin(x);

df(x)= sin(x) + (x+3)*cos(x)

## y = b + m*(x-a)  -  a reta que passa em (a,b) com coef. ang. m
## y = f(a) + m*(x-a)  a reta que passa em (a,f(a)) com coef. ang. m
## y = f(a) + df(a)*(x-a)  a reta que passa em (a,f(a)) com coef. ang. df(a)

P(x)= f(a) + df(a)*(x-a);

set xrange [-15:15]; set yrange [-15:15];

plot f(x), P(x), 0;

pause -2 "Aperte enter para continuar (ou terminar)";

while(a<7) {
	plot f(x), P(x), 0;
	a = a + 1.0;
	pause -2 "Aperte enter para terminar";
}


pause -2 "Aperte enter para continuar (ou terminar)";

delta = 0.0001;
## epson = power(delta,2);  ###  um erro, porque 

power(x,n) = x**n;  ## redefinindo uma função do gnuplot

epson = power(delta,2);  ###  um erro, porque

g(x) = power(x,3) - 4*power(x,2) - 4;
dg(x) = (g(x+delta)-g(x))/delta; ## derivada aproximada
ddg(x) = (dg(x+epson)-dg(x))/epson;  ## derivada segunda aproximada

a = 0;

pause -2 "Aperte enter para continuar - Atenção, vou apagar a tela!";
print "Leu ? ";
pause -2 "Se tiver lido, aperte enter para continuar "

pause -2 "Aperte enter para continuar "

system("clear");

print "\n\n\n\n"
print "Vou exemplificar o uso da segunda derivada. Você vai ver o gráfico"
print "duma parábola tangente - isto porque a primeira derivada permite"
print "que se produza uma reta tangente a um gráfico.
pause -2 "Aperte enter para continuar "
print "Usando a segunda derivada posso obter o gráfico duma parábola "
print "tangente."

pause -2 "Aperte enter para continuar "
system("clear");

print "\n\n\n\n"
print "polinômio do segundo grau passando pelo ponto (a,b) b = a0"
print "Q(x)  = a0 + a1*(x-a) + a2*power(x-a,2);  ## passando em (a,g(a))"
print "Q(x)  = g(a) + dg(a)*(x-a) + a2*power(x-a,2);  ## com derivada g'(a)"
print "Q(x)  = g(a) + dg(a)*(x-a) + ddg(a)*power(x-a,2);  ## com derivada g'(a)"

pause -2 "Aperte enter para continuar "
system("clear");

print "\n\n\n\n"
print "Observe as três linhas acima, apenas na terceira e que tem uma fórmula"
print "entretanto está transformada numa mensagem dentro do comando print "
print "Este é uma forma alternativa de deixar comentários dentro dum programa."
print "É uma forma melhor e mais agradável. "
print "Vou transformar a terceira linha em comando definindo Q."

Q(x)  = g(a) + dg(a)*(x-a) + ddg(a)*power(x-a,2);  ## com derivada g'(a) 

P(x) = g(a) + dg(a)*(x-a) ##  a reta tangente em (a,g(a))

plot g(x), P(x), Q(x), 0


pause -2 "Aperte enter para continuar (ou terminar)";

print "corrigindo a fórmula de Taylor "
pause -2 "Aperte enter para continuar (ou terminar)";
##  quit; ## depois apague este quit!
pause -2 "Aperte enter para continuar (ou terminar)";
system("clear");

print "\n\n\n\n"

Q(x)  = g(a) + dg(a)*(x-a) + ddg(a)*power(x-a,2)/2.0;

pause -2 "Aperte enter para continuar - Atenção, vou apagar a tela!";
print "Leu ? ";
pause -2 "Aperte enter para continuar "

system("clear");

print "\n\n\n\n"
print "refazendo o gráfico com a fórmula corrigida "
print "compare com o gráfico gravado -  use a folha de apresentação"
print "Leu ? ";

pause -2 "Então, aperte enter para continuar! ";

plot g(x), P(x), Q(x), 0;

pause -2 "Então, aperte enter para continuar! " 

system("gnuplot riemann.gnuplot");

pause -2 "Então, aperte enter para terminar! "