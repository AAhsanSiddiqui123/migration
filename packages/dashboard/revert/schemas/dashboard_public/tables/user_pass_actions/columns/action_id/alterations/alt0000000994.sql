-- Revert: schemas/dashboard_public/tables/user_pass_actions/columns/action_id/alterations/alt0000000994 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

