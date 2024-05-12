-- Revert: schemas/dashboard_public/tables/emails/columns/id/alterations/alt0000000431 from pg

BEGIN;


ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

