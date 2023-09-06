% Parâmetros do sistema
m = 3; % Massa (kg)
k = 20; % Constante da mola (N/m)
b = 1.5; % Constante do amortecedor (N*s/m)
g = 9.81; % Aceleração devido à gravidade (m/s^2)

% Condições iniciais
x0 = 0.5; % Posição inicial (m)
v0 = 0; % Velocidade inicial (m/s)

% Tempo de simulação
tspan = [0, 10]; % Intervalo de tempo [t_inicial, t_final]

% Função que define o sistema de equações diferenciais
% dx/dt = v
% dv/dt = (1/m) * (-k * x - b * v) + g
ode = @(t, Y) [Y(2); (1/m) * (-k * Y(1) - b * Y(2)) + g];

% Condições iniciais combinadas [posição; velocidade]
y0 = [x0; v0];

% Resolvendo o sistema de equações diferenciais
[t, Y] = ode45(ode, tspan, y0);

% Obtendo as soluções individuais (posição e velocidade)
x = Y(:, 1);
v = Y(:, 2);

% Criando uma figura para os gráficos
figure;

% Plotando o gráfico de posição
subplot(1, 2, 1);
plot(t, x);
xlabel('Tempo (s)');
ylabel('Posição (m)');
title('Sistema Massa-Mola-Amortecedor com Gravidade - Posição');

% Plotando o gráfico de velocidade
subplot(1, 2, 2);
plot(t, v);
xlabel('Tempo (s)');
ylabel('Velocidade (m/s)');
title('Sistema Massa-Mola-Amortecedor com Gravidade - Velocidade');

% Ajustando o layout
sgtitle('Sistema Massa-Mola-Amortecedor com Gravidade');
