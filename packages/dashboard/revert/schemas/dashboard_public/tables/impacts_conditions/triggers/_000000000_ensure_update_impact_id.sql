-- Revert: schemas/dashboard_public/tables/impacts_conditions/triggers/_000000000_ensure_update_impact_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_impact_id ON "dashboard_public".impacts_conditions;
COMMIT;  

