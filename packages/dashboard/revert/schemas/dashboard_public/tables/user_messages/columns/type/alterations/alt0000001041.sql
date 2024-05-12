-- Revert: schemas/dashboard_public/tables/user_messages/columns/type/alterations/alt0000001041 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN type DROP DEFAULT;

COMMIT;  

