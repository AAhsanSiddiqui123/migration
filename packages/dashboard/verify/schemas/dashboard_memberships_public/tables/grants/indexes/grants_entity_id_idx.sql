-- Verify: schemas/dashboard_memberships_public/tables/grants/indexes/grants_entity_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.grants', 'grants_entity_id_idx');
COMMIT;  

