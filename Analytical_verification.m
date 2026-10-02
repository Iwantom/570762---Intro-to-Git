syms t alpha rho g S Cl h0 
% alpha = - sqrt(g/rho/S^2/Cl)
h = alpha^2/4 * t^2 + alpha * t * sqrt(h0) + h0

LHS = diff(h,t)
RHS = alpha * sqrt(h)

simplify(LHS - RHS)