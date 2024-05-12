-- Verify: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_entity_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.memberships', 'memberships_entity_id_idx');
COMMIT;  

