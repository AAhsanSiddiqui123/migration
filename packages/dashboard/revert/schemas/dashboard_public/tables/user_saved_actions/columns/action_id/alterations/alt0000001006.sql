-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/action_id/alterations/alt0000001006 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

