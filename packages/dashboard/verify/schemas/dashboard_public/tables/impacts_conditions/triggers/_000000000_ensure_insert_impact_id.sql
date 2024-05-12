-- Verify: schemas/dashboard_public/tables/impacts_conditions/triggers/_000000000_ensure_insert_impact_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_impact_id');
COMMIT;  

