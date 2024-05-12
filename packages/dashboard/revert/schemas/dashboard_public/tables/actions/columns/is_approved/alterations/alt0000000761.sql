-- Revert: schemas/dashboard_public/tables/actions/columns/is_approved/alterations/alt0000000761 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_approved DROP NOT NULL;


COMMIT;  

