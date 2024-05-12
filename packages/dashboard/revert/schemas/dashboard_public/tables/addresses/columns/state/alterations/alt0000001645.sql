-- Revert: schemas/dashboard_public/tables/addresses/columns/state/alterations/alt0000001645 from pg

BEGIN;
ALTER TABLE "dashboard_public".addresses DROP CONSTRAINT addresses_state_chk;
COMMIT;  

