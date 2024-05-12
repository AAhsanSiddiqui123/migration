-- Verify: schemas/dashboard_memberships_public/tables/owner_grants/indexes/owner_grants_entity_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.owner_grants', 'owner_grants_entity_id_idx');
COMMIT;  

