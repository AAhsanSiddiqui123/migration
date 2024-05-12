-- Revert: schemas/dashboard_public/tables/users/triggers/app_mbr_trg from pg

BEGIN;
DROP TRIGGER app_mbr_trg ON "dashboard_public".users;
COMMIT;  

