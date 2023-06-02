import java.util.*;
import java.io.BufferedWriter;
//import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

class Node implements Comparable<Node> {
    int x;
    int y;
    int heuristic;
    int cost;
    int totalcost;
    int order;
    Node parent;

    Node(int x, int y, int order, Node parent) {
        this.x = x;
        this.y = y;
        this.order = order;
        this.parent = parent;
    }

    public void printCoor() {
        System.out.println("(" + x + "," + y + ")");
    }

    @Override
    public int compareTo(Node other) {
        return Integer.compare(this.totalcost, other.totalcost);
    }
}

public class mazeSearch {

    public static void aStarSearch(String filename, char[][] maze, int[] start, int[] goal) throws IOException {
        int n = maze.length;
        Boolean pathFound = false;
        // Possible Moves
        int[][] MOVES = { { 1, 0 }, { -1, 0 }, { 0, 1 }, { 0, -1 } };

        // Initialize the start and goal nodes
        Node startNode = new Node(start[0], start[1], 0,null);
        Node goalNode = new Node(goal[0], goal[1],0,null);

        // Initialize the frontier with the start node
        PriorityQueue<Node> frontier = new PriorityQueue<>();
        frontier.add(startNode);

        // Initialize the set of visited nodes
        Set<Node> visited = new HashSet<>();
        visited.add(startNode);

        // Initialize the current node
        Node currentNode = startNode;

        // Initialize the number of states explored
        int statesExplored = 0;
        // System.out.println("Start, initialization, entering loop");
        // Loop until the frontier is empty or the goal is found
        while (!frontier.isEmpty()) {
            // System.out.println("Loop entered");
            // Get the node with the lowest cost from the frontier
            currentNode = frontier.poll();
            // System.out.println("CurrentNode: " + currentNode.x + ", " + currentNode.y);
            statesExplored++;
            // Check if the goal has been reached
            if (currentNode.x == goalNode.x && currentNode.y == goalNode.y) {
                // System.out.println("Reached goal node");
                // Reconstruct the path from start to goal and return it
                List<Node> path = new ArrayList<>();
                Node node = currentNode;

                while (node != null) {
                    path.add(node);
                    node = node.parent;
                }
                Collections.reverse(path);
                System.out.println("Path Found");
                System.out.println("States explored: " + statesExplored);
                saveMazeWithPath(filename, statesExplored, path, maze);
                pathFound = true;
                // return path;
            }

            for (int[] move : MOVES) {
                // System.out.println("Moves loop");
                int x = currentNode.x + move[0];
                // System.out.println("x: " + x);
                int y = currentNode.y + move[1];
                // System.out.println("y: " + y);

                // Check if the move is valid
                if (x < 0 || x >= n || y < 0 || y >= n || maze[y][x] == '#') {
                    // System.out.println("Invalid");
                    // Invalid move, skip to the next one
                    continue;
                }

                // Compute the cost of the next move
                int cost = currentNode.cost + 1;
                int heuristic = manhattanDistance(x, y, goalNode.x, goalNode.y);
                int totalcost = cost + heuristic;

                // Create the next node
                Node nextNode = new Node(x, y,statesExplored, currentNode);
                nextNode.cost = cost;
                nextNode.heuristic = heuristic;
                nextNode.totalcost = totalcost;

                // Check if the next node is already visited or in the frontier with a lower
                boolean alreadyVisited = visited.stream()
                        .anyMatch(node -> node.x == nextNode.x
                                && node.y == nextNode.y);
                if (alreadyVisited || frontier.stream()
                        .anyMatch(node -> node.x == nextNode.x
                                && node.y == nextNode.y
                                && node.totalcost <= nextNode.totalcost)) {
                    // Node is already visited or in frontier with a lower cost, skip to the next
                    // move
                    continue;
                }

                // Add the next node to the frontier
                frontier.add(nextNode);
                visited.add(nextNode);
            }
            // System.out.println("End of loop");
        }
        ;
        // Failed to find a path from start to goal
        if (!pathFound) {
            System.out.println("No path found towards goal");
            System.out.println("States explored: " + statesExplored);
        }

        // return null;
    }

    public static int manhattanDistance(int x, int y, int x2, int y2) {
        return Math.abs(x2 - x) + Math.abs(y2 - y);
    }

    public static void saveMazeWithPath(String fileName, int numStatesExplored, List<Node> path, char[][] maze)
            throws IOException {
        String pathFileName = fileName.replaceFirst("[.][^.]+$", "_Path.txt").replace("Mazes/", "Mazes_Results/");
        // System.out.println("Path Found");
        System.out.println("Saved maze to: " + pathFileName);
        BufferedWriter writer = new BufferedWriter(new FileWriter(pathFileName));

        // Print the maze
        writer.write("Maze:\n");
        printMazeToFile(maze, writer);
        writer.newLine();

        // Print the number of states explored
        writer.write("Number of States Explored: " + numStatesExplored);
        writer.newLine();
        writer.newLine();

        // Print the maze with arrows added to the path
        writer.write("Path:");
        writer.newLine();
        addArrowsToPath(path, maze);
        printMazeToFile(maze, writer);
        writer.newLine();

        // Print each node in the path
        writer.write("Nodes in Path:\n");
        for (Node node : path) {
            writer.write(node.order + ". " + "(" + node.x + ", " + node.y + ")");
            writer.newLine();
        }

        writer.close();
    }

    public static void printMazeToFile(char[][] maze, BufferedWriter writer) throws IOException {
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[0].length; col++) {
                writer.write(maze[row][col] + " ");
            }
            writer.newLine();
        }
    }

    public static void addArrowsToPath(List<Node> path, char[][] maze) {
        Node previousNode = null;
        for (Node currentNode : path) {
            if (previousNode != null) {
                // Determine the direction from the previous node to the current node
                int deltaX = currentNode.x - previousNode.x;
                int deltaY = currentNode.y - previousNode.y;
                char arrow;
                if (deltaX == -1) {
                    arrow = '<';
                } else if (deltaX == 1) {
                    arrow = '>';
                } else if (deltaY == -1) {
                    arrow = '^';
                } else if (deltaY == 1) {
                    arrow = 'v';
                } else {
                    throw new IllegalArgumentException("Nodes in the path are not adjacent.");
                }
                // Replace the space with the arrow in the maze, unless the current node is the
                // goal
                if (maze[currentNode.y][currentNode.x] != 'G') {
                    maze[currentNode.y][currentNode.x] = arrow;
                }
            }
            previousNode = currentNode;
        }
    }
}
