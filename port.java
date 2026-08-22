import java.util.ArrayList;
import java.util.Scanner;

class Project {
    String name;
    String description;
    String[] features;

    Project(String name, String description, String[] features) {
        this.name = name;
        this.description = description;
        this.features = features;
    }

    void displayProject() {
        System.out.println("\n========================================");
        System.out.println("Project: " + name);
        System.out.println("========================================");
        System.out.println(description);

        System.out.println("\nFeatures:");
        for (String feature : features) {
            System.out.println("- " + feature);
        }
    }
}

public class Portfolio {

    static Scanner scanner = new Scanner(System.in);
    static ArrayList<Project> projects = new ArrayList<>();

    public static void main(String[] args) {

        addProjects();

        int choice;

        do {
            displayMenu();

            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();
            scanner.nextLine();

            switch (choice) {

                case 1:
                    showAbout();
                    break;

                case 2:
                    showSkills();
                    break;

                case 3:
                    showProjects();
                    break;

                case 4:
                    showEducation();
                    break;

                case 5:
                    showContact();
                    break;

                case 6:
                    System.out.println("\nThank you for visiting my portfolio!");
                    break;

                default:
                    System.out.println("\nInvalid choice. Please try again.");
            }

        } while (choice != 6);

        scanner.close();
    }

    static void displayMenu() {

        System.out.println("\n\n========================================");
        System.out.println("        BEVINTO PAUL - PORTFOLIO");
        System.out.println("========================================");

        System.out.println("1. About Me");
        System.out.println("2. Skills");
        System.out.println("3. Projects");
        System.out.println("4. Education");
        System.out.println("5. Contact");
        System.out.println("6. Exit");

        System.out.println("========================================");
    }

    static void showAbout() {

        System.out.println("\n========================================");
        System.out.println("              ABOUT ME");
        System.out.println("========================================");

        System.out.println("Name        : Bevinto Paul");
        System.out.println("Role        : Computer Science Engineering Student");
        System.out.println("Degree      : B.Tech - Computer Science Engineering");
        System.out.println("University  : VIT-AP University");
        System.out.println("Batch       : 2027");

        System.out.println("\nI am a Computer Science Engineering student");
        System.out.println("interested in software development, programming,");
        System.out.println("problem solving and building real-world projects.");
    }

    static void showSkills() {

        System.out.println("\n========================================");
        System.out.println("                SKILLS");
        System.out.println("========================================");

        System.out.println("\nProgramming Languages:");
        System.out.println("- Java");
        System.out.println("- Python");
        System.out.println("- SQL");

        System.out.println("\nWeb Technologies:");
        System.out.println("- HTML5");
        System.out.println("- CSS3");
        System.out.println("- JavaScript");

        System.out.println("\nTools:");
        System.out.println("- Git");
        System.out.println("- GitHub");
        System.out.println("- VS Code");
    }

    static void addProjects() {

        projects.add(
            new Project(
                "Student Management System",
                "A Java-based console application for managing student records.",
                new String[]{
                    "Add students",
                    "View students",
                    "Search students",
                    "Delete students"
                }
            )
        );

        projects.add(
            new Project(
                "Banking Management System",
                "A Java application that simulates basic banking operations.",
                new String[]{
                    "Account management",
                    "Deposit money",
                    "Withdraw money",
                    "Check balance",
                    "User operations"
                }
            )
        );

        projects.add(
            new Project(
                "Graduate Skill Index",
                "A career accelerator project designed to bridge the gap between education and employability.",
                new String[]{
                    "Skill development",
                    "Career guidance",
                    "Project showcase",
                    "Responsive user interface"
                }
            )
        );
    }

    static void showProjects() {

        System.out.println("\n========================================");
        System.out.println("              MY PROJECTS");
        System.out.println("========================================");

        for (int i = 0; i < projects.size(); i++) {

            System.out.println("\n[" + (i + 1) + "] " + projects.get(i).name);
        }

        System.out.print("\nEnter project number to view details: ");
        int projectNumber = scanner.nextInt();

        if (projectNumber >= 1 && projectNumber <= projects.size()) {

            projects.get(projectNumber - 1).displayProject();

        } else {

            System.out.println("Invalid project number.");
        }
    }

    static void showEducation() {

        System.out.println("\n========================================");
        System.out.println("              EDUCATION");
        System.out.println("========================================");

        System.out.println("\nB.Tech - Computer Science Engineering");
        System.out.println("VIT-AP University");
        System.out.println("Batch: 2027");

        System.out.println("\nRelevant Areas:");
        System.out.println("- Data Structures and Algorithms");
        System.out.println("- Database Management Systems");
        System.out.println("- Operating Systems");
        System.out.println("- Computer Networks");
        System.out.println("- Software Engineering");
    }

    static void showContact() {

        System.out.println("\n========================================");
        System.out.println("               CONTACT");
        System.out.println("========================================");

        System.out.println("Name     : Bevinto Paul");
        System.out.println("Email    : bevintop@gmail.com");
        System.out.println("GitHub   : github.com/bevintop-coder");

        System.out.println("\nFeel free to connect with me for");
        System.out.println("projects, collaboration and opportunities.");
    }
}
