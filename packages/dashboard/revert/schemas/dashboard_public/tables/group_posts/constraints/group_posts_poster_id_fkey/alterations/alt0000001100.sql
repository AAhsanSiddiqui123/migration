-- Revert: schemas/dashboard_public/tables/group_posts/constraints/group_posts_poster_id_fkey/alterations/alt0000001100 from pg

BEGIN;
COMMENT ON CONSTRAINT group_posts_poster_id_fkey ON "dashboard_public".group_posts IS NULL;
COMMIT;  

