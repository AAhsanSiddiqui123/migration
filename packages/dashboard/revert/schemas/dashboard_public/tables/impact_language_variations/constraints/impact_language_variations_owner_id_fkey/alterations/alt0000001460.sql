-- Revert: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_owner_id_fkey/alterations/alt0000001460 from pg

BEGIN;
COMMENT ON CONSTRAINT impact_language_variations_owner_id_fkey ON "dashboard_public".impact_language_variations IS NULL;
COMMIT;  

