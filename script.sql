-- ============================================
-- BEVINTO PAUL - PORTFOLIO DATABASE
-- ============================================

CREATE DATABASE PortfolioDB;

USE PortfolioDB;

-- ============================================
-- 1. PERSONAL INFORMATION
-- ============================================

CREATE TABLE PersonalInfo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    degree VARCHAR(150),
    email VARCHAR(150),
    github VARCHAR(255),
    objective TEXT
);

INSERT INTO PersonalInfo
(name, degree, email, github, objective)
VALUES
(
    'Bevinto Paul',
    'B.Tech Computer Science Engineering',
    'bevintop@gmail.com',
    'https://github.com/yourusername',
    'To showcase my technical skills, projects, education, and learning journey while building a professional online presence.'
);


-- ============================================
-- 2. SKILLS
-- ============================================

CREATE TABLE Skills (
    skill_id INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(100) NOT NULL,
    category VARCHAR(50)
);

INSERT INTO Skills (skill_name, category) VALUES
('HTML5', 'Frontend'),
('CSS3', 'Frontend'),
('JavaScript', 'Frontend'),
('Java', 'Programming'),
('Python', 'Programming'),
('SQL', 'Programming'),
('Git', 'Tools'),
('GitHub', 'Tools'),
('VS Code', 'Tools');


-- ============================================
-- 3. EDUCATION
-- ============================================

CREATE TABLE Education (
    education_id INT PRIMARY KEY AUTO_INCREMENT,
    degree VARCHAR(150),
    specialization VARCHAR(150),
    institution VARCHAR(200),
    graduation_year INT
);

INSERT INTO Education
(degree, specialization, institution, graduation_year)
VALUES
(
    'B.Tech',
    'Computer Science Engineering',
    'VIT-AP University',
    2027
);


-- ============================================
-- 4. PROJECTS
-- ============================================

CREATE TABLE Projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(150) NOT NULL,
    description TEXT,
    technology VARCHAR(200)
);

INSERT INTO Projects
(project_name, description, technology)
VALUES
(
    'Student Management System',
    'A Java-based console application that manages student records including adding, viewing, searching and deleting students.',
    'Java'
),
(
    'Banking Management System',
    'A Java project that simulates banking operations including account management and transactions.',
    'Java'
),
(
    'Graduate Skill Index',
    'A career accelerator landing page designed to bridge the gap between education and employability.',
    'HTML, CSS, JavaScript'
);


-- ============================================
-- 5. PROJECT FEATURES
-- ============================================

CREATE TABLE ProjectFeatures (
    feature_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    feature_name VARCHAR(200),
    FOREIGN KEY (project_id)
        REFERENCES Projects(project_id)
        ON DELETE CASCADE
);

-- Student Management System features
INSERT INTO ProjectFeatures (project_id, feature_name)
VALUES
(1, 'Add students'),
(1, 'View students'),
(1, 'Search students'),
(1, 'Delete students');

-- Banking Management System features
INSERT INTO ProjectFeatures (project_id, feature_name)
VALUES
(2, 'Account management'),
(2, 'Transactions'),
(2, 'User operations');

-- Graduate Skill Index features
INSERT INTO ProjectFeatures (project_id, feature_name)
VALUES
(3, 'Skill development section'),
(3, 'Career guidance'),
(3, 'Project showcase');


-- ============================================
-- 6. PORTFOLIO FEATURES
-- ============================================

CREATE TABLE PortfolioFeatures (
    feature_id INT PRIMARY KEY AUTO_INCREMENT,
    feature_name VARCHAR(200) NOT NULL
);

INSERT INTO PortfolioFeatures (feature_name) VALUES
('Personal introduction'),
('Skills showcase'),
('Project showcase'),
('Education details'),
('Contact section'),
('Interactive UI effects'),
('Responsive design');


-- ============================================
-- 7. TECHNOLOGIES
-- ============================================

CREATE TABLE Technologies (
    technology_id INT PRIMARY KEY AUTO_INCREMENT,
    technology_name VARCHAR(100),
    category VARCHAR(100)
);

INSERT INTO Technologies (technology_name, category) VALUES
('HTML5', 'Frontend'),
('CSS3', 'Frontend'),
('JavaScript', 'Frontend'),
('Java', 'Programming'),
('Python', 'Programming'),
('SQL', 'Programming'),
('Git', 'Development Tool'),
('GitHub', 'Development Tool'),
('VS Code', 'Development Tool');


-- ============================================
-- 8. FUTURE IMPROVEMENTS
-- ============================================

CREATE TABLE FutureImprovements (
    improvement_id INT PRIMARY KEY AUTO_INCREMENT,
    improvement TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'Planned'
);

INSERT INTO FutureImprovements (improvement, status) VALUES
('Add backend integration', 'Planned'),
('Add contact form functionality', 'Planned'),
('Add animations', 'Planned'),
('Add project filtering', 'Planned'),
('Deploy using GitHub Pages', 'Planned');


-- ============================================
-- 9. CONTACT MESSAGES
-- ============================================

CREATE TABLE ContactMessages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    visitor_name VARCHAR(100),
    visitor_email VARCHAR(150),
    message TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ============================================
-- 10. VIEW ALL PROJECTS WITH FEATURES
-- ============================================

SELECT
    p.project_name,
    p.description,
    p.technology,
    pf.feature_name
FROM Projects p
LEFT JOIN ProjectFeatures pf
ON p.project_id = pf.project_id
ORDER BY p.project_id;


-- ============================================
-- 11. VIEW ALL SKILLS
-- ============================================

SELECT
    skill_name,
    category
FROM Skills
ORDER BY category, skill_name;


-- ============================================
-- 12. VIEW EDUCATION
-- ============================================

SELECT
    degree,
    specialization,
    institution,
    graduation_year
FROM Education;


-- ============================================
-- 13. VIEW FUTURE IMPROVEMENTS
-- ============================================

SELECT
    improvement,
    status
FROM FutureImprovements;


-- ============================================
-- DATABASE COMPLETE
-- ============================================
