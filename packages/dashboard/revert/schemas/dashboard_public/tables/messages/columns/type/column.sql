-- Revert: schemas/dashboard_public/tables/messages/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN type;
COMMIT;  

