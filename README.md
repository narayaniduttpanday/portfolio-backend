# Portfolio Backend (Spring Boot + MySQL)


## Endpoints
| Method | Path | Purpose |
|---|---|---|
| GET | /api/projects | Projects, ordered |
| GET | /api/skills | Skills grouped by category |
| GET | /api/experience?type=WORK or EDUCATION | Experience / education |
| POST | /api/contact | Save a contact message `{name,email,message}` |
