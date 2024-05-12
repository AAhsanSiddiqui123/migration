-- Verify: schemas/dashboard_memberships_public/tables/group_admin_grants/triggers/group_admin_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public.group_admin_grants_insert_trg');
COMMIT;  

