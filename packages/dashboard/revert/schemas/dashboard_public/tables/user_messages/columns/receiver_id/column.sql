-- Revert: schemas/dashboard_public/tables/user_messages/columns/receiver_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN receiver_id;
COMMIT;  

