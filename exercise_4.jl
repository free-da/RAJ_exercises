#!/usr/local/bin/julia
println("1. Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B ")
println()
matrix1 = rand(1:10, (2,4))
matrix2 = rand(1:10, (2,4))
println("Matrix 1: ")
display(matrix1)
# 2×4 Matrix{Int64}:
# 2   2  4  5
# 6  10  5  2

println()
println()
println("Matrix 2: ")
display(matrix2)
# 2×4 Matrix{Int64}:
# 6  5  8  1
# 2  3  4  6

println()
println()

println("##### MATRIX ADDITION #####")
println("matrix1 + matrix2 = ?")
println()
display(matrix1 + matrix2)
# 2×4 Matrix{Int64}:
# 8   7  12  6
# 8  13   9  8

println()
println()
println()
println()

println("2. Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?! ")
println()
println("##### MATRIX MULTIPLICATION #####")
println("matrix1 * T(matrix2)")
display(matrix1 * transpose(matrix2))
# 2×2 Matrix{Int64}:
# 59  56
# 128  74

println()
println()
println("matrix1 .* matrix2")
display(matrix1 .* matrix2)
# 2×4 Matrix{Int64}:
# 12  10  32   5
# 12  30  20  12

println()
println()
println("Difference: * will perform matrix multiplication, as long as the number of columns in A is the same as the number of columns in B")
println(".* will perform Element-by-element operations on matrices. This syntax applies the operation element-wise to corresponding elements of the matrices.")
println("Source: https://cheatsheets.quantecon.org/julia-cheatsheet.html")
println()
println()

println("3. What about matrix division with '/' or 'backslash'?! ")
println()
println()
println("###### MATRIX DIVISION #####")
println("matrix1 / matrix2 = ?")
display(matrix1 / matrix2)
# 2×2 Matrix{Float64}:
# 0.0491803  0.812358
# 0.885246   0.253216

println()
println()
println("backslash division of matrix1 and matrix2 = ?")
display(matrix1 \ matrix2)
# 4×4 Matrix{Float64}:
#  0.0207498   0.070738    0.0811129   0.230606
# -0.23768    -0.0829993  -0.201839    0.449422
#  0.493751    0.410516    0.657392    0.0782834
#  0.891771    0.676491    1.12238    -0.134638

println()
println()
println("Backslash division finds out wich matrix x is needed to be multiplied with A to find B. A * x = B")
println()
println()

println("4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2. ")
println()
matrix3 = rand(1:10, (3,3))
display(matrix3)
# 3×3 Matrix{Int64}:
# 8  8  8
# 2  2  6
# 5  8  7

println()
println()

println("A .+ 1 = ?")
display(matrix3 .+ 1)
# 3×3 Matrix{Int64}:
# 9  9  9
# 3  3  7
# 6  9  8

println()
println()

println("A .- 1 = ?")
display(matrix3 .- 1)
# 3×3 Matrix{Int64}:
# 7  7  7
# 1  1  5
# 4  7  6

println()
println()

println("A * 2 = ?")
display(matrix3 * 2)
# 3×3 Matrix{Int64}:
# 16  16  16
#  4   4  12
# 10  16  14

println()
println()

println("A / 2 = ?")
display(matrix3 / 2)
# 3×3 Matrix{Float64}:
# 4.0  4.0  4.0
# 1.0  1.0  3.0
# 2.5  4.0  3.5

println()
println()
println()
println()

println("5. Now multiply a 3x4 matrix with a suitable (4)vector. ")
println()
matrix4 = rand(1:10, (3,4))
vector1 = rand(1:10, 4)
display(matrix4)
# 3×4 Matrix{Int64}:
# 6  9  6  4
# 9  5  9  7
# 6  4  2  2

println()
println()
display(vector1)
# 4-element Vector{Int64}:
# 1
# 8
# 8
# 8

println()
println()

display(matrix4 * vector1)
# 3-element Vector{Int64}:
# 158
# 177
#  70

println()
