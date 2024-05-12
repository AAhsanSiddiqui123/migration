-- Deploy: schemas/dashboard_public/tables/user_saved_actions/columns/user_id/alterations/alt0000001002 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table
-- requires: schemas/dashboard_public/tables/user_saved_actions/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
