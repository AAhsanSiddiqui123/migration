-- Revert: schemas/dashboard_public/tables/group_post_reactions/constraints/group_post_reactions_poster_id_fkey/alterations/alt0000001111 from pg

BEGIN;
COMMENT ON CONSTRAINT group_post_reactions_poster_id_fkey ON "dashboard_public".group_post_reactions IS NULL;
COMMIT;  

