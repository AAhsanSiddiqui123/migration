-- Revert: schemas/dashboard_public/tables/related_actions/columns/action_id/alterations/alt0000000826 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

