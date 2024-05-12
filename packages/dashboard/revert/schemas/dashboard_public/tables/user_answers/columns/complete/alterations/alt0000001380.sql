-- Revert: schemas/dashboard_public/tables/user_answers/columns/complete/alterations/alt0000001380 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN complete DROP DEFAULT;

COMMIT;  

