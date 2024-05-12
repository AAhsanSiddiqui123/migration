-- Revert: schemas/dashboard_public/tables/user_answers/columns/user_id/alterations/alt0000001199 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

