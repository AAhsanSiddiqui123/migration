-- Verify: schemas/dashboard_permissions_public/tables/membership_permissions/triggers/membership_permissions_insert_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_permissions_public.membership_permissions_insert_trg');
COMMIT;  

