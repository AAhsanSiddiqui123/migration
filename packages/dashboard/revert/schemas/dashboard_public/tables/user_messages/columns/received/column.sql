-- Revert: schemas/dashboard_public/tables/user_messages/columns/received/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN received;
COMMIT;  

