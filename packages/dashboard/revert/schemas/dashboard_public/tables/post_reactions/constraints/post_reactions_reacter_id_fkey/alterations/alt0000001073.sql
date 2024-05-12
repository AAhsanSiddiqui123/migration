-- Revert: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_reacter_id_fkey/alterations/alt0000001073 from pg

BEGIN;
COMMENT ON CONSTRAINT post_reactions_reacter_id_fkey ON "dashboard_public".post_reactions IS NULL;
COMMIT;  

