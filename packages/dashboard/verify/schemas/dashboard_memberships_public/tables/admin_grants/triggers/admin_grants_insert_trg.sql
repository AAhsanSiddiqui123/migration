-- Verify: schemas/dashboard_memberships_public/tables/admin_grants/triggers/admin_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public.admin_grants_insert_trg');
COMMIT;  

