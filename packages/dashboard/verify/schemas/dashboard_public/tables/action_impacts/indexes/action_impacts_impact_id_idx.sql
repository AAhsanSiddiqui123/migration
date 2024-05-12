-- Verify: schemas/dashboard_public/tables/action_impacts/indexes/action_impacts_impact_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.action_impacts', 'action_impacts_impact_id_idx');
COMMIT;  

