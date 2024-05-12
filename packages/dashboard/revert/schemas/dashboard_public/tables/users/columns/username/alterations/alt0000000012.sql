-- Revert: schemas/dashboard_public/tables/users/columns/username/alterations/alt0000000012 from pg

BEGIN;
ALTER TABLE "dashboard_public".users DROP CONSTRAINT users_username_chk;
COMMIT;  

