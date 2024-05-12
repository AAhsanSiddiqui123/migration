-- Revert: schemas/dashboard_public/tables/messages/columns/type/alterations/alt0000001056 from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN type DROP DEFAULT;

COMMIT;  

