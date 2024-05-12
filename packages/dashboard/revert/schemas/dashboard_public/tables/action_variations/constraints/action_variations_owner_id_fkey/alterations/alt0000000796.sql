-- Revert: schemas/dashboard_public/tables/action_variations/constraints/action_variations_owner_id_fkey/alterations/alt0000000796 from pg

BEGIN;
COMMENT ON CONSTRAINT action_variations_owner_id_fkey ON "dashboard_public".action_variations IS NULL;
COMMIT;  

