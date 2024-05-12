-- Revert: schemas/dashboard_public/tables/posts/constraints/posts_poster_id_fkey/alterations/alt0000001066 from pg

BEGIN;
COMMENT ON CONSTRAINT posts_poster_id_fkey ON "dashboard_public".posts IS NULL;
COMMIT;  

