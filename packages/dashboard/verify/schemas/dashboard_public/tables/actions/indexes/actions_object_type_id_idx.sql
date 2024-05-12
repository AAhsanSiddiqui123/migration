-- Verify: schemas/dashboard_public/tables/actions/indexes/actions_object_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.actions', 'actions_object_type_id_idx');
COMMIT;  

