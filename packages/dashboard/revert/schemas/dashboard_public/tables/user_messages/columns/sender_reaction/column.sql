-- Revert: schemas/dashboard_public/tables/user_messages/columns/sender_reaction/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN sender_reaction;
COMMIT;  

