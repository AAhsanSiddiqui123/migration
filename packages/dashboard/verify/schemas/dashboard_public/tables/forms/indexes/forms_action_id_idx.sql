-- Verify: schemas/dashboard_public/tables/forms/indexes/forms_action_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.forms', 'forms_action_id_idx');
COMMIT;  

