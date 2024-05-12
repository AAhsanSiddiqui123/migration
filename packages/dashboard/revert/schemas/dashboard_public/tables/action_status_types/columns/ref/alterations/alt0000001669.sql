-- Revert: schemas/dashboard_public/tables/action_status_types/columns/ref/alterations/alt0000001669 from pg

BEGIN;
ALTER TABLE "dashboard_public".action_status_types DROP CONSTRAINT action_status_types_ref_chk;
COMMIT;  

