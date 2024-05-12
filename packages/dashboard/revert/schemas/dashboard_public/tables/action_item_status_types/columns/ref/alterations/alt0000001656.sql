-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/ref/alterations/alt0000001656 from pg

BEGIN;
ALTER TABLE "dashboard_public".action_item_status_types DROP CONSTRAINT action_item_status_types_ref_chk;
COMMIT;  

