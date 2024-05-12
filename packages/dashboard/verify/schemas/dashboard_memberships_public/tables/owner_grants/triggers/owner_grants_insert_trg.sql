-- Verify: schemas/dashboard_memberships_public/tables/owner_grants/triggers/owner_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public.owner_grants_insert_trg');
COMMIT;  

