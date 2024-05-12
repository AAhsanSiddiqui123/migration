-- Revert: schemas/dashboard_public/tables/addresses/columns/other/alterations/alt0000001648 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_other_chk;
COMMIT;  

