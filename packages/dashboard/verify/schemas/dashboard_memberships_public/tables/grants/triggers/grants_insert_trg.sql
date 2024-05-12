-- Verify: schemas/dashboard_memberships_public/tables/grants/triggers/grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_memberships_public.grants_insert_trg');
COMMIT;  

