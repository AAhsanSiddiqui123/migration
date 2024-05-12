-- Revert: schemas/dashboard_public/tables/group_posts/indexes/group_posts_poster_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".group_posts_poster_id_idx;
COMMIT;  

