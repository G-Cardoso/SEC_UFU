% Parâmetros do pêndulo
m = 1.2; % Massa (kg)
r = 0.1; % Raio da esfera (m)
l = 1.5; % Comprimento do pêndulo (m)
b = 1.5; % Coeficiente de arrasto (kg/m)
g = 9.81; % Aceleração devido à gravidade (m/s^2)
Tc = 0; % Torque constante (N*m)
theta0 = deg2rad(30); % Ângulo inicial (radianos)

% Condições iniciais
omega0 = 0; % Velocidade angular inicial (rad/s)

% Tempo de simulação
tspan = [0, 10]; % Intervalo de tempo [t_inicial, t_final]

% Função que define o sistema de equações diferenciais para o pêndulo
% dtheta/dt = omega
% domega/dt = (-b/m) * omega - (g/l) * sin(theta) + (Tc/(m * l^2))
ode = @(t, Y) [Y(2); (-b/m) * Y(2) - (g/l) * sin(Y(1)) + (Tc/(m * l^2))];

% Condições iniciais combinadas [ângulo; velocidade angular]
y0 = [theta0; omega0];

% Resolvendo o sistema de equações diferenciais
[t, Y] = ode45(ode, tspan, y0);

% Obtendo as soluções individuais (ângulo e velocidade angular)
theta = Y(:, 1);
omega = Y(:, 2);
figure;

% Plotando o gráfico de ângulo
subplot(1, 2, 1);
plot(t, rad2deg(theta));
xlabel('Tempo (s)');
ylabel('Ângulo (graus)');
title('Pêndulo Simples - Ângulo');

% Plotando o gráfico de velocidade angular
subplot(1, 2, 2);
plot(t, omega);
xlabel('Tempo (s)');
ylabel('Velocidade Angular (rad/s)');
title('Pêndulo Simples - Velocidade Angular');
sgtitle('Pêndulo Simples - Simulação');