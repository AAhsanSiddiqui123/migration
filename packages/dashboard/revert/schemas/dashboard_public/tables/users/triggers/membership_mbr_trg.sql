-- Revert: schemas/dashboard_public/tables/users/triggers/membership_mbr_trg from pg

BEGIN;
DROP TRIGGER membership_mbr_trg ON "dashboard_public".users;
COMMIT;  

