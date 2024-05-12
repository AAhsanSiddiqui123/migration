-- Verify: schemas/dashboard_public/tables/users/triggers/membership_mbr_trg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.membership_mbr_trg');
COMMIT;  

