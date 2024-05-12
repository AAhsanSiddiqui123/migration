-- Deploy: schemas/dashboard_public/tables/post_comments/constraints/post_comments_poster_id_fkey/alterations/alt0000001089 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/constraints/post_comments_poster_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT post_comments_poster_id_fkey ON "dashboard_public".post_comments IS E'@omit manyToMany';
COMMIT;
