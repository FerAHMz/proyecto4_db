# proyecto4_db

## Project Overview

This project is a full-stack system designed to model, manage, and visualize data from the One Piece universe, including Devil Fruits, characters, and crews. It integrates:

- Data modeling and normalization (up to 3NF), with at least 15 tables, including N:M relationships and custom data types.
- Data access via ORM (SQLAlchemy), strictly avoiding raw SQL in the application code.
- Validations through constraints, triggers, and user-defined SQL functions.
- Custom data types and advanced SQL features (views, triggers, functions).
- Interactive reporting with multiple filters and CSV export.
- Group evaluation with critical reflection and peer/self-assessment.

The system consists of a FastAPI backend, a PostgreSQL database (with all schema, data, views, and triggers defined in SQL scripts), and a Streamlit frontend for interactive data exploration.

---

## Architecture

- **Backend:**  
  FastAPI application exposing RESTful endpoints for querying and managing data, using SQLAlchemy as the exclusive ORM.  
  Location: `backend/app/`

- **Database:**  
  PostgreSQL with initialization scripts for schema, data, views, triggers, and user-defined functions.  
  Location: `backend/db/`

- **Frontend:**  
  Streamlit app that consumes the backend API and provides interactive reports, filters, and CSV export.  
  Location: `frontend/src/`

---

## Prerequisites

- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) installed on your system.

---

## Setup & Running the Project

1. **Clone the repository:**
   ```bash
   git clone <https://github.com/FerAHMz/proyecto4_db.git>
   cd proyecto4_db
   ```

2. **Start all services:**
   ```bash
   docker-compose up --build
   ```

   This will build and start the database, backend, and frontend containers.

3. **Access the application:**
   - **Frontend (Streamlit):**  
     [http://localhost:8501](http://localhost:8501)
   - **Backend (FastAPI docs):**  
     [http://localhost:8502/docs](http://localhost:8502/docs)

---

## Usage

- Use the Streamlit interface to navigate between advanced reports for Devil Fruits, Characters, and Crews.
- Apply at least 5 meaningful filters per report and export data as CSV.
- The backend API can be explored and tested via the FastAPI Swagger UI.
- All CRUD operations are available for at least two entities, with full create, read, update, and delete functionality, and index views based on SQL views.

---

## Project Structure

### Additional Deliverables

- All SQL scripts for schema, data, views, triggers, and functions are in `backend/db/`.
- E-R diagram with cardinalities and keys (see project root or documentation folder).

```
proyecto4_db/
│
├── backend/
│   ├── app/
│   │   ├── api.py
│   │   ├── crud.py
│   │   ├── database.py
│   │   ├── main.py
│   │   ├── models.py
│   │   └── schemas.py
│   └── db/
│       ├── 01_ddl.sql
│       ├── 02_data.sql
│       ├── 03_views.sql
│       ├── 04_update.sql
│       ├── 05_functions.sql
│       └── 06_triggers.sql
│
├── frontend/
│   ├── src/
│   │   ├── Home.py
│   │   └── pages/
│   │       ├── frutas.py
│   │       ├── personajes.py
│   │       └── tripulaciones.py
│   └── utils/
│       ├── api.py
│       └── layout.py
│
├── docker-compose.yml
└── README.md
```

---

## Troubleshooting

- **Backend cannot connect to database:**  
  If you see errors like `connection to server at "db" ... failed: Connection refused`, try restarting the backend service:
  ```bash
  docker-compose restart backend
  ```
  Wait a few seconds and reload the frontend.

- **Database initialization issues:**  
  Ensure that the initialization scripts in `backend/db/` are correct and that the database service is healthy.

- **Frontend cannot connect to backend:**  
  Make sure the backend is running and accessible at `http://backend:8502` from within the Docker network.

---

## Authors

- [Vianka Castro (Vann06)](https://github.com/Vann06)
- [Nicolás Concuá (nicoCT04)](https://github.com/nicoCT04)
- [Ricardo Godínez (Ricgo01)](https://github.com/Ricgo01)
- [Fernando Hernández (FerAHMz)](https://github.com/FerAHMz)
- [Fernando Rueda (Fercho1118)](https://github.com/Fercho1118)


## License

This project is for educational purposes.

---