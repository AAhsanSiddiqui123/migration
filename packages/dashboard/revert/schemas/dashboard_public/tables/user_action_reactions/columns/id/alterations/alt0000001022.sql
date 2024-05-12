-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/id/alterations/alt0000001022 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

