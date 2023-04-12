import sys
import matplotlib.pyplot as plt

if(len(sys.argv) < 4):
    print("Usage: python3 plotter.py <trace file> <plot file> <plot title>")
    exit(-1)

# Extract the data points from the trace file
points = []
with open(sys.argv[1], 'r') as tracefile:
    for line in tracefile.readlines():
        throughput = float(line.split()[6])
        unit = line.split()[7]
        if "kbit" in unit.lower():
           points.append(throughput/1000)
        points.append(throughput)

# Plot the trace
plt.title(" ".join(sys.argv[3:]))
plt.xlabel("Time steps in seconds")
plt.ylabel("Throughput in Mbit/sec")
plt.autoscale(enable=True, axis='x', tight=True)
plt.plot(points)
plt.grid()
plt.savefig(sys.argv[2])
