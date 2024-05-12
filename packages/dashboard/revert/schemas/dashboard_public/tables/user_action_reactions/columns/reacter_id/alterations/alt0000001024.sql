-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/reacter_id/alterations/alt0000001024 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN reacter_id DROP NOT NULL;


COMMIT;  

