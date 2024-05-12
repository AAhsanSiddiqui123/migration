-- Revert: schemas/dashboard_public/tables/user_answers/columns/id/alterations/alt0000001197 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

