-- Verify: schemas/dashboard_public/tables/users/triggers/app_mbr_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.app_mbr_trg');
COMMIT;  

