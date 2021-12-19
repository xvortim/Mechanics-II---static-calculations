disp "Mehanika II zadatak"
disp "Pre svake operacije promenljive ide tacka: .*t ./t .^t"
disp "Podrazumevane mere su t[s], x,y,z[m]"
disp "Ne zelis z osu?: z = t.*0"
disp "\nPrimer: x = t.^2 + t.*2\n"

syms t

xo = input("Jednacina kretanja x: ");
yo = input("Jednacina kretanja y: ");
zo = input("Jednacina kretanja z: ");

X = sym( @(t) xo );
Y = sym( @(t) yo );
Z = sym( @(t) zo );

disp("\nIzvodi: ")
X1 = diff(X)
Y1 = diff(Y)
Z1 = diff(Z)
  
X2 = diff(X,2)
Y2 = diff(Y,2)
Z2 = diff(Z,2)

disp("\nVektorski: ")
v = @(t) sqrt(X1^2 + Y1^2 + Z1^2);
V = sym(v)

A = @(t) sqrt(X2^2 + Y2^2 + Z2^2);
a = sym(A)
at = diff(V)
an = sqrt(a^2 - at^2)
Rk = V^2/an

t = input("Raspon vremena (pocetak:korak:kraj): ");

x = eval(X);
y = eval(Y);
z = eval(Z);

x1 = eval(X1);
y1 = eval(Y1);
z1 = eval(Z1);

x2 = eval(X2);
y2 = eval(Y2);
z2 = eval(Z2);

figure(1)
  plot3(x, y, z, 'r--', 'markerfacecolor', 'r', 'markersize', 30, 'linewidth', 2)
  set(gca, 'fontsize', 15)
    
  xlabel('x', 'fontsize', 25)
  ylabel('y', 'fontsize', 25)
  zlabel('z', 'fontsize', 25)
  title('Trajektorija', 'fontsize', 30)
%
figure(2)
  plot3(x1, y1, z1, 'r--', 'markerfacecolor', 'r', 'markersize', 30, 'linewidth', 2)
  set(gca, 'fontsize', 15)
    
  xlabel('x', 'fontsize', 25)
  ylabel('y', 'fontsize', 25)
  zlabel('z', 'fontsize', 25)
  title('Hodograf', 'fontsize', 30)
  
t1 = input("Trenutak t1: ");

x0 = eval(xo);
y0 = eval(yo);
z0 = eval(zo);

xod = diff(x0);
yod = diff(y0);
zod = diff(z0);

xodd = diff(xod);
yodd = diff(yod);
zodd = diff(zod);

disp("Ubrzanje i brzina u trenutku t1:")
  Vt1 = sqrt(xod(t1)^2 + yod(t1)^2 + zod(t1)^2)
  at1  = sqrt(xodd(t1)^2 + yodd(t1)^2 + zodd(t1)^2)

 