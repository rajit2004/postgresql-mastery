# 🗺️ PostgreSQL Mastery – Full Learning Roadmap

> **Status:** Phase 1 in progress. Checkboxes will be ticked as concepts are completed.

---

## Phase 1 — Foundation & Tools

**Goal:** Install PostgreSQL, connect with clients, and perform basic database operations.

- [ ] Install PostgreSQL 17 locally (Windows / macOS / Linux)
- [ ] Verify installation with `psql --version`
- [ ] Connect to default database using `psql` (CLI)
- [ ] Connect using GUI tool (DataGrip / pgAdmin / DBeaver)
- [ ] Create a new database: `CREATE DATABASE mydb;`
- [ ] List databases: `\l` (psql) or equivalent
- [ ] Connect to a specific database: `\c mydb`
- [ ] Create first table: `CREATE TABLE users (id INT, name VARCHAR(50));`
- [ ] Insert a row: `INSERT INTO users VALUES (1, 'Alice');`
- [ ] Query the table: `SELECT * FROM users;`
- [ ] Drop and recreate tables
- [ ] Understand basic data types: `INT`, `VARCHAR`, `TEXT`, `DATE`, `TIMESTAMP`, `BOOLEAN`, `NUMERIC`
- [ ] Use `psql` meta-commands: `\dt`, `\d table_name`, `\?`
- [ ] Understand the difference between `psql` and other clients

---

## Phase 2 — SQL Power Tools

**Goal:** Write complex queries, filter, sort, aggregate, and combine data.

- [ ] Basic `SELECT` with column aliases
- [ ] `WHERE` clause with operators (`=`, `<`, `>`, `LIKE`, `IN`, `BETWEEN`)
- [ ] `ORDER BY` (ascending / descending)
- [ ] `LIMIT` and `OFFSET` (pagination)
- [ ] Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- [ ] `GROUP BY` with `HAVING`
- [ ] `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`
- [ ] `CROSS JOIN` and `SELF JOIN`
- [ ] Working with `NULL` values (`IS NULL`, `COALESCE`, `NULLIF`)
- [ ] Subqueries in `SELECT`, `FROM`, `WHERE`
- [ ] Correlated subqueries
- [ ] `EXISTS` and `NOT EXISTS`
- [ ] Common Table Expressions (CTEs) – `WITH` clause
- [ ] Recursive CTEs (e.g., tree traversal, graph paths)
- [ ] Window functions: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`
- [ ] `DISTINCT ON` (PostgreSQL-specific)
- [ ] `CASE` expression (conditional logic in queries)
- [ ] Set operations: `UNION`, `INTERSECT`, `EXCEPT`

---

## Phase 3 — Data Integrity & Design

**Goal:** Design robust schemas, enforce data quality, and use advanced constraints.

- [ ] Primary key constraints (single column & composite)
- [ ] Foreign key constraints with `ON DELETE` / `ON UPDATE` actions
- [ ] Unique constraints
- [ ] Check constraints (`CHECK (age >= 0)`)
- [ ] Exclusion constraints (e.g., no overlapping time ranges)
- [ ] Not-null constraints
- [ ] Default values for columns
- [ ] Identity columns / `SERIAL` (auto-increment)
- [ ] Understanding normalisation (1NF, 2NF, 3NF)
- [ ] Creating and using indexes for foreign key columns
- [ ] Understanding and using `ENUM` types
- [ ] Using `DOMAIN` for custom data types
- [ ] Table inheritance (PostgreSQL-specific)
- [ ] Partitioning (declarative) – see Phase 9

---

## Phase 4 — Transactions & Concurrency (MVCC)

**Goal:** Understand PostgreSQL's MVCC model, isolation levels, and locking.

- [ ] Transaction blocks: `BEGIN`, `COMMIT`, `ROLLBACK`
- [ ] Savepoints (`SAVEPOINT`, `ROLLBACK TO SAVEPOINT`)
- [ ] Transaction isolation levels:
  - [ ] Read Uncommitted (same as Read Committed in PG)
  - [ ] Read Committed (default)
  - [ ] Repeatable Read
  - [ ] Serializable
- [ ] Understanding MVCC: tuple visibility, `xmin`, `xmax`
- [ ] Observing tuple visibility with internal queries (`ctid`, `xmin`)
- [ ] Autovacuum and vacuuming (why it's needed)
- [ ] Manual `VACUUM` and `VACUUM FULL`
- [ ] Row-level locks: `FOR UPDATE`, `FOR NO KEY UPDATE`, `FOR SHARE`, `FOR KEY SHARE`
- [ ] Advisory locks
- [ ] Deadlocks: detection and prevention
- [ ] `pg_locks` view
- [ ] When to use `SERIALIZABLE` isolation

---

## Phase 5 — Performance & Indexing

**Goal:** Make queries fast, read execution plans, and choose the right index.

- [ ] Understanding sequential scans vs index scans
- [ ] `EXPLAIN` and `EXPLAIN ANALYZE` output
- [ ] Interpreting `EXPLAIN` costs, rows, loops
- [ ] B‑Tree indexes (default) – when and how to use
- [ ] Composite indexes (multiple columns)
- [ ] Indexes on expressions (functional indexes)
- [ ] Partial indexes (`WHERE` clause on index)
- [ ] GIN indexes for full‑text search, JSON, arrays
- [ ] GiST indexes for geospatial and range types
- [ ] BRIN indexes for very large tables
- [ ] Covering indexes (`INCLUDE` columns)
- [ ] Monitoring index usage with `pg_stat_user_indexes`
- [ ] Removing unused indexes
- [ ] Index maintenance (`REINDEX`)
- [ ] Using `pg_stat_statements` to find slow queries
- [ ] Basic query tuning: reducing rows, better joins, rewriting CTEs

---

## Phase 6 — Programmability & Logic

**Goal:** Write server-side functions, triggers, and procedures.

- [ ] PL/pgSQL language basics
- [ ] Writing a simple function that returns a value
- [ ] Functions with parameters and return tables (`RETURNS TABLE`)
- [ ] Using variables, `IF/ELSE`, loops (`FOR`, `WHILE`)
- [ ] Returning query results (`RETURN QUERY`)
- [ ] Exception handling in functions (`BEGIN ... EXCEPTION`)
- [ ] Creating stored procedures (`CREATE PROCEDURE`, `CALL`)
- [ ] Triggers: `BEFORE` / `AFTER` / `INSTEAD OF`
- [ ] Row-level triggers vs statement-level triggers
- [ ] Trigger functions (`RETURNS TRIGGER`) with `NEW` and `OLD`
- [ ] Event triggers (DDL)
- [ ] Views and materialised views
- [ ] Updatable views (with `INSTEAD OF` triggers)
- [ ] Refreshing materialised views (`REFRESH MATERIALIZED VIEW`)
- [ ] Using `pgcrypto` for hashing / encryption
- [ ] Writing functions in other languages (PL/Python, PL/Perl) – optional

---

## Phase 7 — Administration & Security

**Goal:** Manage users, roles, backups, and secure the database.

- [ ] Roles: `CREATE ROLE`, `ALTER ROLE`, `DROP ROLE`
- [ ] Login roles vs group roles
- [ ] Granting and revoking privileges (`GRANT`, `REVOKE`)
- [ ] Row‑Level Security (RLS)
- [ ] Policies (`CREATE POLICY`)
- [ ] `pg_hba.conf` – client authentication
- [ ] SSL/TLS configuration for encrypted connections
- [ ] Backup and restore:
  - [ ] `pg_dump` (plain SQL, custom, directory)
  - [ ] `pg_dumpall` (globals + users)
  - [ ] `pg_restore`
  - [ ] Point‑in‑time recovery (WAL archiving) – basic concept
- [ ] Monitoring disk usage (`pg_database_size`, `pg_total_relation_size`)
- [ ] Logging and log analysis (`pg_stat_activity`, `log_statement`)
- [ ] Using connection poolers (PgBouncer) – concept
- [ ] Basic maintenance: `ANALYZE`, `REINDEX`, `VACUUM`

---

## Phase 8 — Modern PostgreSQL & Extensions

**Goal:** Use advanced data types, full‑text search, geospatial, and AI extensions.

- [ ] JSON and JSONB data types
- [ ] JSON operators (`->`, `->>`, `@>`, `?`, `?|`)
- [ ] Indexing JSONB with GIN
- [ ] Full‑Text Search:
  - [ ] `tsvector` and `tsquery`
  - [ ] Ranking with `ts_rank`
  - [ ] Dictionary and stop words
- [ ] `pgvector` extension for vector similarity (embeddings)
  - [ ] Install `pgvector`
  - [ ] Store vectors and use cosine distance
- [ ] PostGIS extension:
  - [ ] Install PostGIS
  - [ ] Geometry types (`POINT`, `LINESTRING`, `POLYGON`)
  - [ ] Spatial queries (`ST_Distance`, `ST_Contains`)
- [ ] TimescaleDB for time‑series data (optional)
- [ ] Foreign Data Wrappers (FDW): query external data sources
- [ ] `dblink` and `postgres_fdw`
- [ ] `pgcrypto`, `uuid-ossp`, `hstore` (other useful extensions)

---

## Phase 9 — Production & Monitoring

**Goal:** Deploy, monitor, and scale PostgreSQL for real applications.

- [ ] Deploy PostgreSQL on a cloud VM (DigitalOcean, AWS EC2)
- [ ] Use managed services (AWS RDS, Google Cloud SQL, Neon, Supabase) – understand trade-offs
- [ ] Basic performance tuning: `shared_buffers`, `work_mem`, `effective_cache_size`
- [ ] Connection management and pooling with PgBouncer
- [ ] Setting up streaming replication (primary → standby)
- [ ] Failover and high‑level concepts
- [ ] Using `pg_stat_statements` for query analysis
- [ ] Using `pgBadger` for log analysis
- [ ] Monitoring with Prometheus + Grafana (optional)
- [ ] Alerting on critical metrics
- [ ] Disaster recovery planning (backup + WAL archiving)
- [ ] Upgrading PostgreSQL versions (pg_upgrade)
- [ ] Security hardening (SSL, roles, network rules)
- [ ] Understanding `EXPLAIN` in a production context

---

## ✅ Progress Summary

| Phase | Topic | Status |
|-------|-------|--------|
| 1 | Foundation & Tools | 🔜 In progress |
| 2 | SQL Power Tools | ⬜ Upcoming |
| 3 | Data Integrity & Design | ⬜ Upcoming |
| 4 | Transactions & Concurrency (MVCC) | ⬜ Upcoming |
| 5 | Performance & Indexing | ⬜ Upcoming |
| 6 | Programmability & Logic | ⬜ Upcoming |
| 7 | Administration & Security | ⬜ Upcoming |
| 8 | Modern PostgreSQL & Extensions | ⬜ Upcoming |
| 9 | Production & Monitoring | ⬜ Upcoming |

---

*Last updated: June 2026*  
*Accompanies [postgresql-mastery](https://github.com/rajit2004/postgresql-mastery) repository – learning in public.*