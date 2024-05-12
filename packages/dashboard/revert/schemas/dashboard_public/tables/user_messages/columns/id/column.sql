-- Revert: schemas/dashboard_public/tables/user_messages/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN id;
COMMIT;  

