-- Revert: schemas/dashboard_public/tables/group_post_reactions/indexes/group_post_reactions_reacter_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".group_post_reactions_reacter_id_idx;
COMMIT;  

