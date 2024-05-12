-- Revert: schemas/dashboard_public/tables/post_reactions/indexes/post_reactions_post_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".post_reactions_post_id_idx;
COMMIT;  

