-- Revert: schemas/dashboard_public/tables/user_messages/columns/receiver_read/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN receiver_read;
COMMIT;  

