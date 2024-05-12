-- Verify: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_is_owner_idx on pg

BEGIN;
SELECT verify_index('dashboard_memberships_public.memberships', 'memberships_is_owner_idx');
COMMIT;  

