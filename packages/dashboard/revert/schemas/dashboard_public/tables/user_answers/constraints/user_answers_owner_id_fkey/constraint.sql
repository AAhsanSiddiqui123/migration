-- Revert: schemas/dashboard_public/tables/user_answers/constraints/user_answers_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers 
    DROP CONSTRAINT user_answers_owner_id_fkey;

COMMIT;  

