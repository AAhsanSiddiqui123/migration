-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/user_id/alterations/alt0000000590 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
