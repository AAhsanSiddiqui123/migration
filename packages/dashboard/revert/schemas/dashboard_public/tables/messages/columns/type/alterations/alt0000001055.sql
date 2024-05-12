-- Revert: schemas/dashboard_public/tables/messages/columns/type/alterations/alt0000001055 from pg

BEGIN;


ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN type DROP NOT NULL;


COMMIT;  

