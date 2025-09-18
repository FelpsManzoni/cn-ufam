//This is a simplified Gaus example code where we execute each step mannualy
//Copyright: Prof. Felipe Manzoni - UFAM - 2025

//Define simplified and merged Ab matrix and the x solution vector
Ab = [1 1 1 1;2 1 -1 0;2 2 1 1]
x = zeros(3,1)
printf("Starting values for Ab:\n")
disp(Ab)
printf("Starting values for x vector:\n")
printf("x(1)=%.2f \nx(2)=%.2f \nx(3)=%.2f \n", x(1), x(2), x(3))

//As the pivot on the first line is lower than the number on the collum 1 for Line 2:
//Change line L2 with line L1 (partial pivoting)
aux = Ab(2,:)
Ab(2,:) = Ab(1,:)
Ab(1,:) = aux
printf("Ab after partial pivoting:\n")
disp(Ab)

//First Ab iteration on Gauss to 0-down the first collum values < than pivot
//Zero on Lines 2 & 3, for collum 1
//Pivot is: Ab(1,1)
Ab(2:3,:) = Ab(2:3,:) - (Ab(2:3,1) / Ab(1,1)) * Ab(1,:)
printf("Ab after first substitution for 0-down lower triangular matrix:\n")
disp(Ab)

//Second Ab iteration on Gauss to 0-down the first collum values < than pivot
//Zero on Line 3, for collum 2
//Pivot is: Ab(2,2)
Ab(3,:) = Ab(3,:) - (Ab(3,2) / Ab(2,2)) * Ab(2,:)
printf("Ab after second substitution for 0-down lower triangular matrix:\n")
disp(Ab)

//We have the Lower Triangular Matrix, resolve with Regressive Subtitution method
//Regressive Substitution:
x(3) = Ab(3,4)/Ab(3,3)
x(2) = (Ab(2,4) - Ab(2,3) * x(3)) / Ab(2,2)
x(1) = (Ab(1,4) - Ab(1,3) * x(3) - Ab(1,2) * x(2)) / Ab(1,1)
printf("Final results of the Regressive Substitution:\n")
printf("x(1)=%.2f \nx(2)=%.2f \nx(3)=%.2f \n", x(1), x(2), x(3))
