-- Revert: schemas/dashboard_public/tables/user_questions/columns/id/alterations/alt0000001190 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

