%%
%ODE45
% Define parameters
p = 7.3e3;
q = 5.1e-1;
delta = 7e-5;

% defining the system of ODEs using an anonymous function
ODEs = @(t, Y) [ ...
    p * Y(1) * (1 - q * Y(1)) - Y(1) * Y(3);  % dN/dt
    Y(1) * Y(3) - Y(2) - (3.42e-3) * Y(2) * Y(3);  % dL/dt
    (25.7 * Y(3)) * (1 - 2.04e-4 * Y(3)) - Y(1) * Y(3) - delta * Y(2) * Y(3) % dT/dt
];

% Initial conditions: N(0) = 1e4, L(0) = 1e2, T(0) = 1e6 as stated by the
% research paper.
Y0 = [1e4; 1e2; 1e6];

% Solve the system of ODEs
tspan = [0 20];
[t, Y] = ode45(ODEs, tspan, Y0);

% Extracting the solutions
N = Y(:, 1);
L = Y(:, 2);
T = Y(:, 3);

% Plot results
figure;
semilogy(t, N, 'r-', 'LineWidth', 1.5, 'DisplayName', 'N(t)'); % NK Cells
hold on;
semilogy(t, L, 'g--', 'LineWidth', 1.5, 'DisplayName', 'L(t)'); % CTLs
semilogy(t, T, 'b:', 'LineWidth', 1.5, 'DisplayName', 'T(t)'); % Tumor Cells

xlabel('t', 'FontSize', 12);
ylabel('Number of cells', 'FontSize', 12);
title('Numerical simulation of Case 1', 'FontSize', 12);
legend('Location', 'northeast');
grid on;
%%
% Define parameters
p = 5e3;
q = 3e-2;
delta = 4e-3;
% Define the system of ODEs
ODEs = @(t, Y) [ ...
    p * Y(1) * (1 - q * Y(1)) - Y(1) * Y(3);  % dN/dt
    Y(1) * Y(3) - Y(2) - (3.42e-3) * Y(2) * Y(3);  % dL/dt
    (25.7 * Y(3)) * (1 - 2.04e-4 * Y(3)) - Y(1) * Y(3) - delta * Y(2) * Y(3) % dT/dt
];

% Initial conditions: N(0) = 1e4, L(0) = 1e2, T(0) = 1e6 for the case 2
Y0 = [1e4; 1e2; 1e6];

% Solving the system of ODEs
tspan = [0 20];
[t, Y] = ode45(ODEs, tspan, Y0);

% Extract solutions
N = Y(:, 1);
L = Y(:, 2);
T = Y(:, 3);

% Plot results
figure;
semilogy(t, N, 'r-', 'LineWidth', 1.5, 'DisplayName', 'N(t)'); % NK Cells
hold on;
semilogy(t, L, 'g--', 'LineWidth', 1.5, 'DisplayName', 'L(t)'); % CTLs
semilogy(t, T, 'b:', 'LineWidth', 1.5, 'DisplayName', 'T(t)'); % Tumor Cells
ylim([10^-50 10^10])

xlabel('t', 'FontSize', 12);
ylabel('Number of cells', 'FontSize', 12);
title('Numerical simulation of Case 5', 'FontSize', 12);
legend('Location', 'northeast');
grid on;

%%
% Define parameters
p = 5e3;
q = 6.2;
delta = 1.08;
% Define the system of ODEs
ODEs = @(t, Y) [ ...
    p * Y(1) * (1 - q * Y(1)) - Y(1) * Y(3);  % dN/dt
    Y(1) * Y(3) - Y(2) - (3.42e-3) * Y(2) * Y(3);  % dL/dt
    (25.7 * Y(3)) * (1 - 2.04e-4 * Y(3)) - Y(1) * Y(3) - delta * Y(2) * Y(3) % dT/dt
];

% Initial conditions: N(0) = 1e4, L(0) = 1e2, T(0) = 1e6
Y0 = [1e4; 1e2; 1e6];

% Solve the system
tspan = [0 20];
[t, Y] = ode45(ODEs, tspan, Y0);

% Extract solutions
N = Y(:, 1);
L = Y(:, 2);
T = Y(:, 3);

% Plot results
figure;
semilogy(t, N, 'r-', 'LineWidth', 1.5, 'DisplayName', 'N(t)'); % NK Cells
hold on;
semilogy(t, L, 'g--', 'LineWidth', 1.5, 'DisplayName', 'L(t)'); % CTLs
semilogy(t, T, 'b:', 'LineWidth', 1.5, 'DisplayName', 'T(t)'); % Tumor Cells

xlabel('t', 'FontSize', 12);
ylabel('Number of cells', 'FontSize', 12);
title('Numerical simulation of Case 3', 'FontSize', 12);
legend('Location', 'northeast');
grid on;
%%
% Define parameters
p = 4.9e3;
q = 3e-2;
delta = 3e-2;
% Define the system of ODEs
ODEs = @(t, Y) [ ...
    p * Y(1) * (1 - q * Y(1)) - Y(1) * Y(3);  % dN/dt
    Y(1) * Y(3) - Y(2) - (3.42e-3) * Y(2) * Y(3);  % dL/dt
    (25.7 * Y(3)) * (1 - 2.04e-4 * Y(3)) - Y(1) * Y(3) - delta * Y(2) * Y(3) % dT/dt
];

% Initial conditions: N(0) = 1e4, L(0) = 1e2, T(0) = 1e6
Y0 = [1e4; 1e2; 1e6];

% Solve the system
tspan = [0 20];
[t, Y] = ode45(ODEs, tspan, Y0);

% Extract solutions
N = Y(:, 1);
L = Y(:, 2);
T = Y(:, 3);

% Plot results
figure;
semilogy(t, N, 'r-', 'LineWidth', 1.5, 'DisplayName', 'N(t)'); % NK Cells
hold on;
semilogy(t, L, 'g--', 'LineWidth', 1.5, 'DisplayName', 'L(t)'); % CTLs
semilogy(t, T, 'b:', 'LineWidth', 1.5, 'DisplayName', 'T(t)'); % Tumor Cells
ylim([10^-50 10^10])

xlabel('t', 'FontSize', 12);
ylabel('Number of cells', 'FontSize', 12);
title('Numerical simulation of Case 4', 'FontSize', 12);
legend('Location', 'northeast');
grid on;



 