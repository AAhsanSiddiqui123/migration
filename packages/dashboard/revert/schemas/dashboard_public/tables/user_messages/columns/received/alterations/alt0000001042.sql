-- Revert: schemas/dashboard_public/tables/user_messages/columns/received/alterations/alt0000001042 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN received DROP DEFAULT;

COMMIT;  

