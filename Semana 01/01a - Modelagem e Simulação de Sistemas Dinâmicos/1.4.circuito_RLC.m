% Parâmetros do circuito RLC
R = 1e3; % Resistência (ohms)
L = 1e-3; % Indutância (H)
C = 1e-6; % Capacitância (F)

% Condições iniciais
v0 = 10; % Tensão inicial no capacitor (V)
i0 = 0; % Corrente inicial (A)

% Tempo de simulação
tspan = [0, 0.1]; % Intervalo de tempo [t_inicial, t_final]
% Função que define o sistema de equações diferenciais para o circuito RLC
% dv/dt = -1/(R*C) * v - (1/L) * i
% di/dt = v/L
ode = @(t, Y) [(-1/(R*C)) * Y(1) - (1/L) * Y(2); Y(1)/L];

% Condições iniciais combinadas [tensão no capacitor; corrente]
y0 = [v0; i0];

% Resolvendo o sistema de equações diferenciais
[t, Y] = ode45(ode, tspan, y0);

% Obtendo as soluções individuais (tensão no capacitor e corrente)
v_capacitor = Y(:, 1);
i_indutor = Y(:, 2);

% Criando uma figura para os gráficos
figure;

% Plotando o gráfico de tensão no capacitor
subplot(1, 2, 1);
plot(t, v_capacitor);
xlabel('Tempo (s)');
ylabel('Tensão no Capacitor (V)');
title('Circuito RLC - Tensão no Capacitor');

% Plotando o gráfico de corrente no indutor
subplot(1, 2, 2);
plot(t, i_indutor);
xlabel('Tempo (s)');
ylabel('Corrente no Indutor (A)');
title('Circuito RLC - Corrente no Indutor');

% Ajustando o layout
sgtitle('Circuito RLC - Simulação');