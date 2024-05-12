-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/action_id/alterations/alt0000001018 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

