-- Revert: schemas/dashboard_public/tables/actions/columns/owner_id/alterations/alt0000000780 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

