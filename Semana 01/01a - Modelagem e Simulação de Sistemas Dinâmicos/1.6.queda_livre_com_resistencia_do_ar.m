% Parâmetros do problema
g = 9.81; % Aceleração devido à gravidade (m/s^2)
b = 0.3; % Coeficiente de arrasto (kg/m)
m = 5; % Massa (kg)

% Condições iniciais
y0 = 100; % Altura inicial (metros)
v0 = 0; % Velocidade inicial (m/s)

% Tempo de simulação
tspan = [0, 20]; % Intervalo de tempo [t_inicial, t_final]

% Função que define o sistema de equações diferenciais para queda livre com resistência do ar
% dy/dt = v
% dv/dt = -g - (b/m) * v^2
ode = @(t, Y) [Y(2); -g - (b/m) * Y(2)^2];

% Condições iniciais combinadas [posição (altura); velocidade]
y0 = [y0; v0];

% Resolvendo o sistema de equações diferenciais
[t, Y] = ode45(ode, tspan, y0);

% Obtendo as soluções individuais (posição e velocidade)
posicao = Y(:, 1);
velocidade = Y(:, 2);

% Criando uma figura para os gráficos
figure;

% Plotando o gráfico de altura
subplot(1, 2, 1);
plot(t, posicao);
xlabel('Tempo (s)');
ylabel('Altura (m)');
title('Queda Livre com Resistência do Ar - Altura');

% Plotando o gráfico de velocidade
subplot(1, 2, 2);
plot(t, velocidade);
xlabel('Tempo (s)');
ylabel('Velocidade (m/s)');
title('Queda Livre com Resistência do Ar - Velocidade');

% Ajustando o layout
sgtitle('Queda Livre com Resistência do Ar - Simulação');