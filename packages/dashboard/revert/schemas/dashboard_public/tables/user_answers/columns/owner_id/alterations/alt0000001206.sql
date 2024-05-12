-- Revert: schemas/dashboard_public/tables/user_answers/columns/owner_id/alterations/alt0000001206 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

