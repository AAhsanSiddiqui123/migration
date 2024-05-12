-- Revert: schemas/dashboard_public/tables/messages/columns/group_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN group_id;
COMMIT;  

