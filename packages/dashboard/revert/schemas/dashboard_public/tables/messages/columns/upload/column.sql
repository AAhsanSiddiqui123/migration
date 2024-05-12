-- Revert: schemas/dashboard_public/tables/messages/columns/upload/column from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN upload;
COMMIT;  

