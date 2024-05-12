-- Revert: schemas/dashboard_public/tables/messages/columns/sender_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN sender_id;
COMMIT;  

