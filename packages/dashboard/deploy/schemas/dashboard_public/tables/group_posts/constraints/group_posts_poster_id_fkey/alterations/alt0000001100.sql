-- Deploy: schemas/dashboard_public/tables/group_posts/constraints/group_posts_poster_id_fkey/alterations/alt0000001100 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/constraints/group_posts_poster_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT group_posts_poster_id_fkey ON "dashboard_public".group_posts IS E'@omit manyToMany';
COMMIT;
