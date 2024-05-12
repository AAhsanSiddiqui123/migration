-- Revert: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_owner_id_fkey/alterations/alt0000001277 from pg

BEGIN;
COMMENT ON CONSTRAINT action_language_variations_owner_id_fkey ON "dashboard_public".action_language_variations IS NULL;
COMMIT;  

