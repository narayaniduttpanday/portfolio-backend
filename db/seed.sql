USE portfolio_db;

INSERT INTO skills (name, category, display_order) VALUES
('Java','Languages',1),('SQL','Languages',2),('Python','Languages',3),('C++','Languages',4),('JavaScript','Languages',5),
('Spring Boot','Backend',1),('RESTful APIs','Backend',2),('Microservices','Backend',3),('FastAPI','Backend',4),('Swagger','Backend',5),
('MySQL','Databases',1),('MongoDB','Databases',2),('Schema Design','Databases',3),('Query Optimization','Databases',4),
('React','Frontend',1),('HTML','Frontend',2),('CSS','Frontend',3),
('Git & GitHub','Tools',1),('IntelliJ IDEA','Tools',2),('VS Code','Tools',3),('Jupyter / Colab','Tools',4);

INSERT INTO projects (title, description, tech_stack, period, github_url, featured, display_order) VALUES
('Explainable AI for Lung Cancer Detection',
 'Microservices-based clinical decision support system. Designed REST APIs that securely route CT scan data between the frontend and AI services, with audit logging, authentication and healthcare-aligned data handling. Integrated a Python FastAPI inference service (YOLO for tumour localization, Grad-CAM for explainable heatmaps).',
 'Spring Boot, FastAPI, Python, YOLO, Grad-CAM, REST', '2025 – Present', 'https://github.com/narayaniduttpanday', TRUE, 1),
('Bookstore Management API',
 'RESTful API with full CRUD operations, Spring Security and relational mapping for consistent transactional integrity.',
 'Java, Spring Boot, Spring Security, SQL', 'Feb 2026 – Present', 'https://github.com/narayaniduttpanday', TRUE, 2),
('Zerodha Platform Clone',
 'Backend REST APIs with JWT authentication on MongoDB. Refactored query indexing and payload handling to cut API response time by 25%, with a responsive React frontend.',
 'React, Node.js, MongoDB, JWT', 'May 2025 – Aug 2025', 'https://github.com/narayaniduttpanday', TRUE, 3),
('Climatech Weather App',
 'Python app that integrates third-party weather APIs to ingest, parse and display real-time JSON data.',
 'Python, Tkinter, REST APIs', 'Aug 2024 – Sept 2024', 'https://github.com/narayaniduttpanday', FALSE, 4);

INSERT INTO experience (type, title, organization, period, details, display_order) VALUES
('WORK','Remote Java Backend Developer Intern','SkyBrisk','Feb 2026 – Present',
 'Engineered RESTful APIs with Java and Spring Boot for structured data exchange\nIntegrated backend services with databases and optimized SQL for low query latency\nUsed Git/GitHub for version control and code reviews in an Agile workflow',1),
('WORK','Full Stack Development Trainee (MERN)','NRich Learning','Aug 2025 – Sept 2025',
 'Built web applications with MongoDB, Express.js, React.js and Node.js\nImproved frontend-backend integration across API endpoints',2),
('WORK','Python Training Workshop','United Institute of Technology','Aug 2024 – Sept 2024',
 'Learned OOP concepts and applied them in mini projects\nStrengthened problem-solving and coding practices',3),
('EDUCATION','B.Tech, Computer Science & Engineering','United Institute of Technology, Prayagraj','2023 – 2027','CGPA: 7.19',1),
('EDUCATION','Intermediate (XII – ISC)','Saint John''s Academy, Prayagraj','July 2022','69.0%',2),
('EDUCATION','High School (X – ICSE)','Saint John''s Academy, Prayagraj','June 2020','78.6%',3);
