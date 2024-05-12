-- Verify: schemas/dashboard_memberships_public/tables/app_owner_grants/triggers/app_owner_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public.app_owner_grants_insert_trg');
COMMIT;  

