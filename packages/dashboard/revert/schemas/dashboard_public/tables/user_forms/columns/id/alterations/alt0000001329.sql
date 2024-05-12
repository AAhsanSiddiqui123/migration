-- Revert: schemas/dashboard_public/tables/user_forms/columns/id/alterations/alt0000001329 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

