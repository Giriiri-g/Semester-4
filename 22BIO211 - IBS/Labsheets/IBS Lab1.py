## [Graph]

graph = { "a": ["c"],
          "b": ["c", "e"],
          "c": ["a","b", "d","e"],
          "d": ["c"],
          "e": ["c","b"],
          "f": []
          }

print(graph)

print('\n\n\n')

print(graph.keys())

print('\n\n\n')

edges = []
print("Edges:")
for i in graph:
     for j in graph[i]:
          if {i, j} not in edges:
               edges.append({i, j})
               print(f"{i} -> {j}")


## [q2]

graph = {}

while True:
     edge = input("Enter an Edge(a, b) or QUIT: ")
     try:
          edge = edge.replace(' ', '')
          if edge == 'QUIT':
               break
          vertex1 = edge[1].upper()
          vertex2 = edge[3].upper()
          graph[vertex1] = vertex2
