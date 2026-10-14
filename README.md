# Portfolio Backend (Spring Boot + MySQL)

## Run locally
1. In MySQL Workbench run `db/schema.sql`, then `db/seed.sql`.
2. Set your password: `export DB_PASSWORD=your_mysql_password` (Windows: `set DB_PASSWORD=...`)
3. `mvn spring-boot:run`
4. Test: http://localhost:8080/api/projects, /api/skills, /api/experience, /api/experience?type=EDUCATION

## Endpoints
| Method | Path | Purpose |
|---|---|---|
| GET | /api/projects | Projects, ordered |
| GET | /api/skills | Skills grouped by category |
| GET | /api/experience?type=WORK or EDUCATION | Experience / education |
| POST | /api/contact | Save a contact message `{name,email,message}` |
