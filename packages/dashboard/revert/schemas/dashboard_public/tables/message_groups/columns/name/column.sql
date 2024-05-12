-- Revert: schemas/dashboard_public/tables/message_groups/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups DROP COLUMN name;
COMMIT;  

