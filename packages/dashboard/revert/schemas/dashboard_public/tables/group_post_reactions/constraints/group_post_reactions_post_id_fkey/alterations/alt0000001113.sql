-- Revert: schemas/dashboard_public/tables/group_post_reactions/constraints/group_post_reactions_post_id_fkey/alterations/alt0000001113 from pg

BEGIN;
COMMENT ON CONSTRAINT group_post_reactions_post_id_fkey ON "dashboard_public".group_post_reactions IS NULL;
COMMIT;  

