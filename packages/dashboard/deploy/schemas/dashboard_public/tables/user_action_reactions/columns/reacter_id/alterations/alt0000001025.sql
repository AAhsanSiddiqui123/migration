-- Deploy: schemas/dashboard_public/tables/user_action_reactions/columns/reacter_id/alterations/alt0000001025 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_action_reactions/columns/reacter_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN reacter_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
