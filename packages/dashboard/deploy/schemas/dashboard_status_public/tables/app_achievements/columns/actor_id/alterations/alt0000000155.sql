-- Deploy: schemas/dashboard_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000000155 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table
-- requires: schemas/dashboard_status_public/tables/app_achievements/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_achievements 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
