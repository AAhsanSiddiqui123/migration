-- Revert: schemas/dashboard_public/tables/impact_language_variations/triggers/_000000000_ensure_update_impact_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_impact_id ON "dashboard_public".impact_language_variations;
COMMIT;  

