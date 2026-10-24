# QueryLab

**A hands-on project for learning SQL, PostgreSQL, and relational database design.**

## About

QueryLab is an ongoing learning project focused on building practical database skills through small, incremental steps.

The goal is to learn how to design relational databases, write SQL queries, work with structured data, and document technical decisions along the way.

The project currently contains a database of video games and their genres, demonstrating relational database concepts such as primary keys, foreign keys, and one-to-many relationships.

## Learning Roadmap

- [x] Set up a local PostgreSQL environment
- [x] Practice basic SQL queries and filtering
- [x] Learn sorting, grouping, and aggregate functions
- [x] Practice inserting, updating, and deleting records
- [x] Explore table structure and constraints
- [x] Design the initial database schema
- [x] Define relationships between tables
- [x] Write reusable database scripts
- [ ] Add tests and example queries
- [ ] Document design decisions and lessons learned

## Tech Stack

- **Database:** PostgreSQL 18
- **Query language:** SQL
- **Tools:** `psql`, Postgres.app, Git, GitHub

## Database Structure

The database currently contains two related tables.

### Games

| Column | Type | Description |
|---|---|---|
| id | INTEGER | Primary key, auto-generated |
| title | TEXT | Game title |
| release_year | INTEGER | Release year |
| score | NUMERIC | Game rating |
| genre_id | INTEGER | Foreign key referencing genres |

### Genres

| Column | Type | Description |
|---|---|---|
| id | INTEGER | Primary key, auto-generated |
| name | TEXT | Unique genre name |

Each game can reference one genre, while each genre can be associated with multiple games.

The database currently contains **28 games and 13 genres**.

## Project Structure

```text
QueryLab/
├── database/
│   ├── schema.sql
│   └── seed.sql
└── README.md
```

- `schema.sql` — creates the database tables and constraints.
- `seed.sql` — inserts sample data into the database.

## Getting Started

### Prerequisites

- PostgreSQL 18
- PostgreSQL command-line tools (`psql`, `createdb`)

### 1. Clone the repository

```bash
git clone git@github.com:Wormwood-1/QueryLab.git
cd QueryLab
```

### 2. Create the database

```bash
createdb -U postgres querylab
```

### 3. Create the database structure

```bash
psql -U postgres -d querylab -v ON_ERROR_STOP=1 -f database/schema.sql
```

### 4. Insert sample data

```bash
psql -U postgres -d querylab -v ON_ERROR_STOP=1 -f database/seed.sql
```

### 5. Verify the installation

Connect to PostgreSQL:

```bash
psql -U postgres -d querylab
```

Run the following queries:

```sql
SELECT COUNT(*) FROM games;
SELECT COUNT(*) FROM genres;
```

Expected results:

- Games: 28
- Genres: 13

You can also test the relationship between the tables:

```sql
SELECT
    games.title,
    COALESCE(genres.name, 'Unknown') AS genre
FROM games
LEFT JOIN genres ON games.genre_id = genres.id
ORDER BY games.title;
```

## Development Approach

The project is developed incrementally.

Each stage focuses on understanding the underlying concepts, applying them in practice, validating the results, and documenting important decisions.

Database changes are tested locally before being committed to Git.

## Status

**In progress.**

The initial relational database schema and sample data have been implemented and successfully tested through a complete database restoration.

Next steps include writing reusable SQL queries, adding automated tests, and documenting database design decisions.

## Author

Lev Kardakov