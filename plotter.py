import sys
import matplotlib.pyplot as plt

if(len(sys.argv) < 5):
    print("Usage: python3 plotter.py <trace file> <plot file> <plot title> <trace units>")
    exit(-1)

# Extract the data points from the trace file
points = []
with open(sys.argv[1], 'r') as tracefile:
    for line in tracefile.readlines():
        print("IMPLEMENT ME")
        throughput = line.split()[3]
        points.append(throughput)

# Plot the trace
plt.title(sys.argv[3])
plt.xlabel("Time steps")
plt.ylabel("Throughput in " + sys.argv[4])
plt.plot(points)
plt.savefig(sys.argv[2])
