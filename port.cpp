#include <iostream>
#include <vector>
#include <string>

using namespace std;

class Project {
private:
    string name;
    string technology;
    string description;
    vector<string> features;

public:
    Project(string n, string tech, string desc, vector<string> f) {
        name = n;
        technology = tech;
        description = desc;
        features = f;
    }

    void display() {
        cout << "\n========================================\n";
        cout << "Project: " << name << endl;
        cout << "Technology: " << technology << endl;
        cout << "========================================\n";
        cout << description << endl;

        cout << "\nFeatures:\n";
        for (string feature : features) {
            cout << "- " << feature << endl;
        }
    }
};

class Portfolio {
private:
    string name = "Bevinto Paul";
    string degree = "B.Tech - Computer Science Engineering";
    string university = "VIT-AP University";
    int batch = 2027;

    vector<string> skills = {
        "Java",
        "C++",
        "Python",
        "SQL",
        "HTML5",
        "CSS3",
        "JavaScript",
        "Git",
        "GitHub",
        "VS Code"
    };

    vector<Project> projects;

public:

    void addProjects() {

        projects.push_back(Project(
            "Student Management System",
            "Java",
            "A console application for managing student records.",
            {
                "Add students",
                "View students",
                "Search students",
                "Delete students"
            }
        ));

        projects.push_back(Project(
            "Banking Management System",
            "Java",
            "A project that simulates basic banking operations.",
            {
                "Account management",
                "Deposit money",
                "Withdraw money",
                "Check balance"
            }
        ));

        projects.push_back(Project(
            "Graduate Skill Index",
            "HTML, CSS, JavaScript",
            "A career accelerator project designed to bridge the gap between education and employability.",
            {
                "Skill development",
                "Career guidance",
                "Project showcase",
                "Responsive design"
            }
        ));
    }

    void aboutMe() {

        cout << "\n========================================\n";
        cout << "              ABOUT ME\n";
        cout << "========================================\n";

        cout << "Name       : " << name << endl;
        cout << "Degree     : " << degree << endl;
        cout << "University : " << university << endl;
        cout << "Batch      : " << batch << endl;

        cout << "\nI am a Computer Science Engineering student\n";
        cout << "interested in software development, programming,\n";
        cout << "problem solving and real-world projects.\n";
    }

    void showSkills() {

        cout << "\n========================================\n";
        cout << "                SKILLS\n";
        cout << "========================================\n";

        for (string skill : skills) {
            cout << "- " << skill << endl;
        }
    }

    void showProjects() {

        cout << "\n========================================\n";
        cout << "               PROJECTS\n";
        cout << "========================================\n";

        for (int i = 0; i < projects.size(); i++) {
            cout << i + 1 << ". " << endl;
            projects[i].display();
        }
    }

    void education() {

        cout << "\n========================================\n";
        cout << "              EDUCATION\n";
        cout << "========================================\n";

        cout << "Degree     : " << degree << endl;
        cout << "University : " << university << endl;
        cout << "Batch      : " << batch << endl;
    }

    void contact() {

        cout << "\n========================================\n";
        cout << "               CONTACT\n";
        cout << "========================================\n";

        cout << "Name   : Bevinto Paul" << endl;
        cout << "Email  : bevintop@gmail.com" << endl;
        cout << "GitHub : github.com/bevintop-coder" << endl;
    }

    void run() {

        addProjects();

        int choice;

        do {
            cout << "\n\n========================================\n";
            cout << "       BEVINTO PAUL - PORTFOLIO\n";
            cout << "========================================\n";

            cout << "1. About Me\n";
            cout << "2. Skills\n";
            cout << "3. Projects\n";
            cout << "4. Education\n";
            cout << "5. Contact\n";
            cout << "6. Exit\n";

            cout << "========================================\n";
            cout << "Enter your choice: ";
            cin >> choice;

            switch (choice) {

                case 1:
                    aboutMe();
                    break;

                case 2:
                    showSkills();
                    break;

                case 3:
                    showProjects();
                    break;

                case 4:
                    education();
                    break;

                case 5:
                    contact();
                    break;

                case 6:
                    cout << "\nThank you for visiting my portfolio!\n";
                    break;

                default:
                    cout << "\nInvalid choice. Try again.\n";
            }

        } while (choice != 6);
    }
};

int main() {

    Portfolio portfolio;

    portfolio.run();

    return 0;
}
