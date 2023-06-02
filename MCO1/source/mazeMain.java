import java.io.IOException;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.File;
import java.util.Scanner;
//import java.util.List;
//import java.util.ArrayList;

public class mazeMain {
    static int n;

    public static void main(String[] args) throws IOException {
        // Get the maze file name from the command line arguments
        Scanner myFile = new Scanner(System.in);
        System.out.println("Enter file name (add '.txt'): ");
        String fileName = myFile.nextLine();
        String filePath = new File(fileName).getAbsolutePath();

        // Read the maze from the file
        char[][] maze = readMazeFromFile(filePath);

        // Find the start and goal coordinates
        int[] start = findCoordinates(maze, 'S');
        int[] goal = findCoordinates(maze, 'G');

        // Print the maze and start/goal coordinates
        System.out.println("Maze:");
        printMaze(maze);
        System.out.println("Start: (" + start[0] + ", " + start[1] + ")");
        System.out.println("Goal: (" + goal[0] + ", " + goal[1] + ")");

        mazeSearch.aStarSearch(fileName, maze, start, goal);
        myFile.close();
    }

    /**
     * Read the content of the file
     * @param fileName The name of the path
     * @return 2d array of char of the maze
     * @throws IOException when file doesn't exist
     */
    public static char[][] readMazeFromFile(String fileName) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(fileName));

        // Get the dimensions of the maze from the first line of the file
        n = Integer.parseInt(reader.readLine());

        // Initialize the maze array
        char[][] maze = new char[n][n];

        // Read in the maze data from the file
        int row = 0;
        String line;
        while ((line = reader.readLine()) != null) {
            for (int col = 0; col < n; col++) {
                maze[row][col] = line.charAt(col);
            }
            row++;
        }

        reader.close();
        return maze;
    }

    /**
     * Get the coordinates of the char
     * @param maze The 2d array of char of the maze
     * @param c The character we want
     * @return an array which have coordinates of the letter
     */
    public static int[] findCoordinates(char[][] maze, char c) {
        int[] coordinates = new int[2];
        for (int y = 0; y < maze.length; y++) {
            for (int x = 0; x < maze[0].length; x++) {
                if (maze[y][x] == c) {
                    coordinates[0] = x;
                    coordinates[1] = y;
                    return coordinates;
                }
            }
        }
        return coordinates;
    }

    /**
     * Print out of the maze
     * @param maze The 2d array of char of the maze
     * 
     */
    public static void printMaze(char[][] maze) {
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[0].length; col++) {
                System.out.print(maze[row][col] + " ");
            }
            System.out.println();
        }
    }

}