-- Revert: schemas/dashboard_public/tables/user_answers/columns/is_private/alterations/alt0000001379 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN is_private DROP DEFAULT;

COMMIT;  

