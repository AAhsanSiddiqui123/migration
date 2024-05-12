-- Revert: schemas/dashboard_public/tables/posts/indexes/posts_poster_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".posts_poster_id_idx;
COMMIT;  

