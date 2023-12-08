L1 = 1;
L2 = 1;

o1 = [2, 0.1];
o2 = [0, 1.7];

qs = [0, 0]; 
qf = [pi/2, pi/2];

lr = 0.1;
iters = 100;
epsilon = 0.01;
reached_goal = false;

xs = zeros(1, iters);
ys = zeros(1, iters);

[x1, y1, x2, y2] = linkXYsFromQs(qs(1), qs(2), L1, L2);

plot([0, x1], [0, y1], 'bo-', 'LineWidth', 2);
hold on;
plot([x1, x2], [y1, y2], 'ro-', 'LineWidth', 2);
scatter(o1(1), o1(2), 10, "filled")
scatter(o2(1), o2(2), 10, "filled")

xlim([-3, 3])
ylim([-3, 3])

[meshgrid_xs, meshgrid_ys] = meshgrid(-3:0.5:3, -3:0.5:3);


function [x1, y1, x2, y2] = linkXYsFromQs(q1, q2, L1, L2)
    x1 = L1 * cos(q1);
    y1 = L1 * sin(q2);
    x2 = x1 + L2 * cos(q1 + q2);
    y2 = y1 + L2 * sin(q1 + q2);
end

function [Fx, Fy] = forceField(x, y)
    
end
