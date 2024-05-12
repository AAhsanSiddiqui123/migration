-- Revert: schemas/dashboard_public/tables/user_actions/columns/action_id/alterations/alt0000000856 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

