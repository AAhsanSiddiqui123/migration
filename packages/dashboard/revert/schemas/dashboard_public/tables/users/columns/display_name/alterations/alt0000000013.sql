-- Revert: schemas/dashboard_public/tables/users/columns/display_name/alterations/alt0000000013 from pg

BEGIN;
ALTER TABLE "dashboard_public".users DROP CONSTRAINT users_display_name_chk;
COMMIT;  

