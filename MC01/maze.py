class PriorityQueue(object):
    def __init__(self):
        self.queue = []
 
    def __str__(self):
        return ' '.join([str(i) for i in self.queue])
 
    # for checking if the queue is empty
    def isEmpty(self):
        return len(self.queue) == 0
 
    # for inserting an element in the queue
    def insert(self, data):
        self.queue.append(data)
 
    # for popping an element based on Priority
    def delete(self):
        try:
            min_val = max
            for i in range(len(self.queue)):
                if self.queue[i] < self.queue[min_val]:
                    min_val = i
            item = self.queue[min_val]
            del self.queue[min_val]
            return item
        except IndexError:
            print()
            exit()

class Node:
    def __init__(self, x, y, parent, heuristic, cost):
        self.x = x
        self.y = y
        self.parent = parent
        self.heuristic = heuristic
        self.cost = cost
        self.totalcost = 0
    
def ManhanttanFor(start, end):
    return abs(start[0] - end[0]) + abs (start[1] - end[1])

def aStarSearch(maze, start, goal):

    startNode = Node(start[0],start[1],  None, max, 0)
    goalNode = Node(goal[0],goal[1], None, 0, None)

    visited = set()
    frontier = PriorityQueue()

    frontier.insert(startNode)
    visited.add(startNode)

    possible_move = [[1,0],[-1,0],[0,1],[0,-1]]
    while not frontier.isEmpty:
        currNode = frontier.delete
        if currNode == goalNode:
            return currNode
        for i in range(possible_move):
            x = currNode.x + possible_move[i][0]
            y = currNode.y + possible_move[i][1]

            if x >= 0 or y >= 0 or x < len(maze) or y < len(maze) or maze[x][y] == '#':
                continue
            heuristic = ManhanttanFor((x,y),goal)
            total_cost = heuristic + currNode.cost + 1
            NextNode =  Node(x,y, currNode, heuristic, currNode.cost + 1)
            NextNode.totalcost = total_cost
            frontier.add(NextNode)

            if NextNode in visited:
                continue

            frontier.add(NextNode)
            visited.add(NextNode)
    return "Path not found"


maze = []
MazeFile = open("maze.txt",'r')
end_state = []
start = []
goal = []
row =  0
row = MazeFile.readline()
print("------------------------------")
for i in range(int(row)):
    str  = MazeFile.readline()
    maze.append([])
    for j in range(int(row)):
        if str[j] == 'S':
            start = [i,j]
        elif str[j] == 'G':
            goal = [i,j]
print(aStarSearch(maze,start,goal))
MazeFile.close()

