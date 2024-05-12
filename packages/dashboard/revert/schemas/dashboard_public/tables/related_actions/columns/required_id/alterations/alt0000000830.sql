-- Revert: schemas/dashboard_public/tables/related_actions/columns/required_id/alterations/alt0000000830 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN required_id DROP NOT NULL;


COMMIT;  

