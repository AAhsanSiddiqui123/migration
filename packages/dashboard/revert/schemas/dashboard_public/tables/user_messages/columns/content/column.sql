-- Revert: schemas/dashboard_public/tables/user_messages/columns/content/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN content;
COMMIT;  

