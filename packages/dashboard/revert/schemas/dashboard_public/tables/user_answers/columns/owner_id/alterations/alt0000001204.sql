-- Revert: schemas/dashboard_public/tables/user_answers/columns/owner_id/alterations/alt0000001204 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

