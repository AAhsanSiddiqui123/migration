-- Revert: schemas/dashboard_public/tables/impact_language_variations/indexes/impact_language_variations_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".impact_language_variations_owner_id_idx;
COMMIT;  

