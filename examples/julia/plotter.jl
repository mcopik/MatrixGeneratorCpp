workspace()
reload("Benchmarker")

using Benchmarker;
using Benchmarker.Plotter;

function matmul(n::Int)
  A = rand(n, n);
  B = rand(n, n);
  return A*B;
end

plotter2 = Plotter.Plot{Float64}("julia_data.txt", ["N"]);
for i=50:10:100
  Benchmarker.Plotter.add_data(plotter2, [i], @Benchmarker.time(matmul(i)));
end
Benchmarker.Plotter.finish(plotter2);