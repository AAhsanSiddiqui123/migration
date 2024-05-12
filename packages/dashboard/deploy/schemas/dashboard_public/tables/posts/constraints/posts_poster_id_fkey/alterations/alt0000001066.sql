-- Deploy: schemas/dashboard_public/tables/posts/constraints/posts_poster_id_fkey/alterations/alt0000001066 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/constraints/posts_poster_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT posts_poster_id_fkey ON "dashboard_public".posts IS E'@omit manyToMany';
COMMIT;
