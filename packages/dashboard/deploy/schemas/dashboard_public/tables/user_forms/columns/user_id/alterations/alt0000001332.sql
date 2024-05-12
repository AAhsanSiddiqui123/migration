-- Deploy: schemas/dashboard_public/tables/user_forms/columns/user_id/alterations/alt0000001332 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_forms/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
