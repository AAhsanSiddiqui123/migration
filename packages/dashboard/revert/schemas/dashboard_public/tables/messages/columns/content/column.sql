-- Revert: schemas/dashboard_public/tables/messages/columns/content/column from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN content;
COMMIT;  

