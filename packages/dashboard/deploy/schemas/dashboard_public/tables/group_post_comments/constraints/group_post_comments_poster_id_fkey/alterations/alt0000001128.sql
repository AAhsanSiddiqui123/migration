-- Deploy: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_poster_id_fkey/alterations/alt0000001128 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_poster_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT group_post_comments_poster_id_fkey ON "dashboard_public".group_post_comments IS E'@omit manyToMany';
COMMIT;
