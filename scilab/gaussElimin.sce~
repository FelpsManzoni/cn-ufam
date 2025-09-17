// GaussElimin.sce - Copyright Prof. Felipe Sonntag Manzoni - UFAM
// Gaussian Elimination with Partial Pivoting + Back Substitution
// Input:  A (n×n), b (n×1)
// Output: x solution (n×1), E augmented matrix after elimination

function [x, E] = gaussElimin(A, b)
    // Basic checks
    // nX = lines
    // mX = collums
    [nA, mA] = size(A);
    [nb, mb] = size(b);
    if nA <> mA then
        error("Matrix A must be square.");
    end
    if nb <> nA | mb <> 1 then
        error("Vector b must have dimension n×1, with n = size(A,1).");
    end

    // Build augmented matrix [A | b]
    E = [A b];

    // Show initial state
    disp("Initial augmented matrix [A|b]:");
    disp(E);

    n = nA;

    // Elimination phase (for each column k)
    for k = 1:(n-1)
        // ---- Partial pivoting: choose max |E(i,k)|, i=k..n
        [pivMax, idxLocal] = max(abs(E(k:n, k)));
        iMax = k + idxLocal - 1;

        if pivMax == 0 then
            error(msprintf("Zero pivot in column %d: singular or ill-conditioned system.", k));
        end

        // If needed, swap Lk <-> LiMax
        if iMax <> k then
            aux = E(k, :);
            E(k, :) = E(iMax, :);
            E(iMax, :) = aux;

            disp(msprintf("// L%d <-> L%d (pivoting)", k, iMax));
            disp(E);
        end

        // ---- Eliminate entries below pivot E(k,k)
        for i = (k+1):n
            factor = E(i, k) / E(k, k);
            // Update row i (columns k..n+1) for efficiency
            E(i, k:(n+1)) = E(i, k:(n+1)) - factor * E(k, k:(n+1));
        end

        disp(msprintf("// Eliminate entries below pivot in column %d", k));
        disp(E);
    end

    // Check last pivot
    if E(n, n) == 0 then
        error("Final pivot is zero: singular system or multiple solutions.");
    end

    // Back substitution phase
    x = zeros(n, 1);
    x(n) = E(n, n+1) / E(n, n);
    for i = (n-1):-1:1
        sumVal = 0;
        for j = (i+1):n
            sumVal = sumVal + E(i, j) * x(j);
        end
        x(i) = (E(i, n+1) - sumVal) / E(i, i);
    end

    disp("// Solution x:");
    disp(x);
endfunction

// =========================
// Example usage:
A = [3.03 -12.1 142; -3.03 12.1 -7; 6.11 -14.2 21];
b = [-119; 120; -139];
[x, Epos] = gaussElimin(A, b);
disp("x ="); disp(x);
