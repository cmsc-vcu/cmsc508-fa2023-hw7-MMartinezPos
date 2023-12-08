# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int,
    skills_name varchar(256) NOT NULL,
    skills_description text NOT NULL,
    skills_tag varchar(256) NOT NULL,
    skills_url varchar(256),
    skills_time_commitment varchar(256),
    PRIMARY KEY (skills_id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES
(1, 'Coding', 'Proficient in multiple programming languages, including Python, Java, and JavaScript. Experienced in software development and debugging.', 'Skill 1', 'https://example.com/coding', '10 hours per week'),
(2, 'Graphic Design', 'Skilled in using Adobe Creative Suite (Photoshop, Illustrator, InDesign) to create visually appealing designs. Familiar with design principles and typography.', 'Skill 2', 'https://example.com/graphic-design', '8 hours per week'),
(3, 'Data Analysis', 'Experience in data cleaning, analysis, and visualization using tools like Excel, SQL, and Python libraries (Pandas, Matplotlib).', 'Skill 3', 'https://example.com/data-analysis', '12 hours per week'),
(4, 'Digital Marketing', 'Knowledgeable in online marketing strategies, including social media management, SEO, and email marketing. Able to analyze campaign performance.', 'Skill 4', 'https://example.com/digital-marketing', '10 hours per week'),
(5, 'Public Speaking', 'Effective communication skills with experience in public speaking. Able to articulate ideas clearly and engage with diverse audiences.', 'Skill 5', 'https://example.com/public-speaking', '5 hours per week'),
(6, 'Project Management', 'Experienced in project planning, execution, and coordination. Proficient in using project management tools like Trello and Asana.', 'Skill 6', 'https://example.com/project-management', '15 hours per week'),
(7, 'Language Fluency', 'Fluent in multiple languages, including English, Spanish, and French. Able to communicate effectively in both written and spoken forms.', 'Skill 7', 'https://example.com/language-fluency', '8 hours per week'),
(8, 'Problem Solving', 'Strong analytical and problem-solving skills. Able to approach challenges with a systematic and creative mindset to find effective solutions.', 'Skill 8', 'https://example.com/problem-solving', '10 hours per week');

SELECT * FROM skills;

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.


CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(256),
    people_last_name varchar(256) NOT NULL,
    people_email varchar(256),
    people_linkedin_url varchar(256),
    people_headshot_url varchar(256),
    people_discord_handle varchar(256),
    people_brief_bio varchar(256),
    people_date_joined date NOT NULL,
    PRIMARY KEY (people_id)
);

SELECT * FROM people;

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES
(1, 'John', 'Person 1', 'john.person1@example.com', 'https://www.linkedin.com/in/john-person1', 'https://example.com/headshot1.jpg', 'john_person1#1234', 'Passionate coder and tech enthusiast.', '2023-01-15'),
(2, 'Jane', 'Person 2', 'jane.person2@example.com', 'https://www.linkedin.com/in/jane-person2', 'https://example.com/headshot2.jpg', 'jane_person2#5678', 'Creative graphic designer with a love for visual arts.', '2023-02-20'),
(3, 'Michael', 'Person 3', 'michael.person3@example.com', 'https://www.linkedin.com/in/michael-person3', 'https://example.com/headshot3.jpg', 'michael_person3#9012', 'Data analyst with a keen eye for insights.', '2023-03-10'),
(4, 'Emily', 'Person 4', 'emily.person4@example.com', 'https://www.linkedin.com/in/emily-person4', 'https://example.com/headshot4.jpg', 'emily_person4#3456', 'Digital marketing expert passionate about online strategies.', '2023-04-05'),
(5, 'David', 'Person 5', 'david.person5@example.com', 'https://www.linkedin.com/in/david-person5', 'https://example.com/headshot5.jpg', 'david_person5#7890', 'Experienced public speaker with a focus on effective communication.', '2023-05-15'),
(6, 'Sophie', 'Person 6', 'sophie.person6@example.com', 'https://www.linkedin.com/in/sophie-person6', 'https://example.com/headshot6.jpg', 'sophie_person6#1234', 'Project manager adept at coordinating tasks and leading teams.', '2023-06-20'),
(7, 'Alex', 'Person 7', 'alex.person7@example.com', 'https://www.linkedin.com/in/alex-person7', 'https://example.com/headshot7.jpg', 'alex_person7#5678', 'Software engineer with a passion for problem-solving.', '2023-07-15'),
(8, 'Sarah', 'Person 8', 'sarah.person8@example.com', 'https://www.linkedin.com/in/sarah-person8', 'https://example.com/headshot8.jpg', 'sarah_person8#9012', 'UX designer focused on creating intuitive user interfaces.', '2023-08-20'),
(9, 'Brian', 'Person 9', 'brian.person9@example.com', 'https://www.linkedin.com/in/brian-person9', 'https://example.com/headshot9.jpg', 'brian_person9#3456', 'Data scientist with a knack for uncovering patterns in data.', '2023-09-10'),
(10, 'Laura', 'Person 10', 'laura.person10@example.com', 'https://www.linkedin.com/in/laura-person10', 'https://example.com/headshot10.jpg', 'laura_person10#7890', 'Product manager with a track record of successful launches.', '2023-10-05');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

create table peopleskills (
    id int auto_increment NOT NULL,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    PRIMARY KEY (id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

-- Insert entries into peopleskills based on specified pattern
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES
(1, 1, '2023-01-20'), (3, 1, '2023-02-15'), (6, 1, '2023-03-10'),
(3, 2, '2023-02-20'), (5, 2, '2023-03-25'), (6, 2, '2023-04-15'),
(1, 3, '2023-01-25'), (5, 3, '2023-04-05'),
-- Person 4 has no skills
-- No entry for Person 4
(3, 5, '2023-02-25'), (6, 5, '2023-04-20'),
(2, 6, '2023-02-10'), (3, 6, '2023-03-05'), (4, 6, '2023-04-10'),
(3, 7, '2023-03-15'), (5, 7, '2023-04-25'), (6, 7, '2023-05-10'),
(1, 8, '2023-01-30'), (3, 8, '2023-03-20'), (5, 8, '2023-04-15'), (6, 8, '2023-05-05'),
(2, 9, '2023-02-05'), (5, 9, '2023-04-10'), (6, 9, '2023-05-20'),
(1, 10, '2023-01-15'), (4, 10, '2023-03-10'), (5, 10, '2023-04-20');


# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

-- Section 8
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    sort_priority INT NOT NULL
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (name, sort_priority) VALUES
('Designer', 10),
('Developer', 20),
('Recruit', 30),
('Team Lead', 40),
('Boss', 50),
('Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

-- Section 10
CREATE TABLE peopleroles (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    people_id INT NOT NULL,
    role_id INT NOT NULL,
    date_assigned DATE NOT NULL
);


# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES
(1, 2, '2023-01-20'),    -- Person 1 is a Developer
(2, 5, '2023-02-15'),    -- Person 2 is a Boss and Mentor
(2, 6, '2023-02-15'),    -- Person 2 is a Boss and Mentor
(3, 2, '2023-03-10'),    -- Person 3 is a Developer
(3, 4, '2023-03-10'),    -- Person 3 is a Team Lead
(4, 3, '2023-02-20'),    -- Person 4 is a Recruit
(5, 3, '2023-03-25'),    -- Person 5 is a Recruit
(6, 2, '2023-04-15'),    -- Person 6 is a Developer
(6, 1, '2023-04-15'),    -- Person 6 is a Designer
(7, 1, '2023-01-25'),    -- Person 7 is a Designer
(8, 1, '2023-04-05'),    -- Person 8 is a Designer
(8, 4, '2023-04-05'),    -- Person 8 is a Team Lead
(9, 2, '2023-02-25'),    -- Person 9 is a Developer
(10, 2, '2023-04-20'),   -- Person 10 is a Developer
(10, 1, '2023-04-20');   -- Person 10 is a Designer

SELECT * FROM peopleroles;