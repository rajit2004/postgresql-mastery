# 🐘 PostgreSQL Mastery Roadmap

From zero to production‑grade PostgreSQL engineer.  
Each phase builds on the last. Ticked boxes = concepts you can write, explain, and debug.

---

## 📦 Phase 1 – Foundation & Tools
- [ ] Install PostgreSQL (local + Docker)
- [ ] Connect with `psql` (SQL Shell) and a GUI (DataGrip / pgAdmin)
- [ ] Create / drop databases and tables
- [ ] Basic data types: `INTEGER`, `TEXT`, `BOOLEAN`, `DATE`, `TIMESTAMPTZ`, `SERIAL` / `IDENTITY`
- [ ] `INSERT`, `UPDATE`, `DELETE`, `TRUNCATE`
- [ ] `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `OFFSET`
- [ ] `DISTINCT`, `AS` aliases
- [ ] `NULL` handling (`IS NULL`, `IS NOT NULL`, `COALESCE`)
- [ ] `LIKE` / `ILIKE` pattern matching

---

## 🧩 Phase 2 – SQL Power Tools
- [ ] Table relationships: one-to-one, one-to-many, many-to-many
- [ ] `JOIN` types: `INNER`, `LEFT`, `RIGHT`, `FULL OUTER`, `CROSS`
- [ ] `GROUP BY` and aggregate functions (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`)
- [ ] `HAVING` for filtering groups
- [ ] Subqueries in `SELECT`, `FROM`, `WHERE`
- [ ] `EXISTS` and `NOT EXISTS`
- [ ] Common Table Expressions (`WITH` … `AS`) – non-recursive
- [ ] **Recursive CTEs** (threaded comments, tree structures)
- [ ] Window functions: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LAG()`, `LEAD()`, `SUM() OVER`
- [ ] `CASE` statements
- [ ] `DISTINCT ON` (PostgreSQL‑specific)
- [ ] Set operations: `UNION`, `INTERSECT`, `EXCEPT`

---

## 🔒 Phase 3 – Data Integrity & Design
- [ ] Primary key, foreign key
- [ ] `NOT NULL`, `UNIQUE`, `CHECK` constraints
- [ ] Exclusion constraints (`EXCLUDE USING GIST`)
- [ ] `DEFAULT` values
- [ ] Normalization basics (1NF, 2NF, 3NF) – when to denormalize
- [ ] `ENUM` and `DOMAIN` types
- [ ] `GENERATED ALWAYS AS` computed columns

---

## 🧠 Phase 4 – Transactions & Concurrency (MVCC)
- [ ] `BEGIN`, `COMMIT`, `ROLLBACK`
- [ ] Understanding MVCC: snapshots, tuple visibility, vacuum basics
- [ ] Transaction isolation levels: Read Committed, Repeatable Read, Serializable
- [ ] Row‑level locks (`SELECT ... FOR UPDATE`, `SKIP LOCKED`)
- [ ] `pg_stat_activity` for watching connections/queries
- [ ] Deadlock detection basics

---

## ⚡ Phase 5 – Performance & Indexing
- [ ] Reading `EXPLAIN` and `EXPLAIN ANALYZE` output
- [ ] B‑Tree indexes (default) and when they work
- [ ] Composite indexes, covering indexes (`INCLUDE`)
- [ ] Partial indexes (`WHERE` clause)
- [ ] GIN, GiST, BRIN indexes – purpose and use cases
- [ ] Index vs. sequential scan – when an index isn't used
- [ ] `pg_stat_user_indexes` to see index usage
- [ ] Query optimization basics (rewriting queries for speed)

---

## 🗃️ Phase 6 – Programmability & Logic
- [ ] Views (`CREATE VIEW`) and materialized views (`REFRESH MATERIALIZED VIEW`)
- [ ] SQL functions vs. PL/pgSQL functions
- [ ] Stored procedures (`CALL`)
- [ ] Trigger functions and triggers (`BEFORE`, `AFTER`, `INSTEAD OF`)
- [ ] Event triggers (for DDL changes)
- [ ] `DO` anonymous blocks
- [ ] Error handling in PL/pgSQL (`RAISE`, `EXCEPTION`)

---

## 🔐 Phase 7 – Administration & Security
- [ ] Roles, users, groups (`CREATE ROLE`, `GRANT`, `REVOKE`)
- [ ] Row‑Level Security (`CREATE POLICY`)
- [ ] Schema management and `search_path`
- [ ] Backup: `pg_dump`, `pg_dumpall`, `pg_restore`
- [ ] `VACUUM`, `ANALYZE`, autovacuum basics
- [ ] Table bloat and how to detect it
- [ ] Connection pooling (PgBouncer)
- [ ] Major version upgrades (`pg_upgrade`)

---

## 🚀 Phase 8 – Modern PostgreSQL & Extensions
- [ ] Full‑text search (`tsvector`, `tsquery`, GIN indexes)
- [ ] JSON / JSONB: storage, indexing, `->`, `->>`, `@>`, `?`
- [ ] `pgvector` – vector storage and similarity search (AI/RAG)
- [ ] PostGIS basics – spatial data types and functions
- [ ] `pg_cron` – in‑database job scheduling
- [ ] Table partitioning (`PARTITION BY RANGE/LIST/HASH`)
- [ ] `timescaledb` (time‑series) – optional but valuable
- [ ] Foreign Data Wrappers (`postgres_fdw`, `file_fdw`)

---

## 📊 Phase 9 – Production & Monitoring
- [ ] Logging configuration (`log_min_duration_statement`, `auto_explain`)
- [ ] Connection management and `pg_stat_activity`
- [ ] Replication concepts: streaming replication, logical replication
- [ ] High‑availability patterns (Patroni, etc.) – awareness level
- [ ] Monitoring with `pg_stat_statements`, `pg_stat_user_tables`

---

## 🧭 How to Use This Roadmap
1. Start at Phase 1 – even if you think you know it, test yourself.
2. For each unchecked item:
   - Learn the concept (docs, videos, hands‑on)
   - Write a working SQL script that demonstrates it
   - Explain it in your own words (in a comment or a note)
3. Commit your script to the repository and tick the box.
4. Only move to the next phase when the current one is fully checked.

This roadmap lives in your GitHub repo. Watching the checkboxes fill up is proof of real, demonstrable growth.  
Good luck, and enjoy becoming a PostgreSQL master! 🐘