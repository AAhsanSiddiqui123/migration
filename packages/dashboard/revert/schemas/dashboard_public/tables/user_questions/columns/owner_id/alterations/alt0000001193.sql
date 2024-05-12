-- Revert: schemas/dashboard_public/tables/user_questions/columns/owner_id/alterations/alt0000001193 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

