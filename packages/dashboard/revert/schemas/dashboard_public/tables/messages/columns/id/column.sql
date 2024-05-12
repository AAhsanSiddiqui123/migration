-- Revert: schemas/dashboard_public/tables/messages/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN id;
COMMIT;  

