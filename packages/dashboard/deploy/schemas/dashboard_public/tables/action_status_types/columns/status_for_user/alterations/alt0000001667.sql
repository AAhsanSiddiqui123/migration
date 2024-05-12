-- Deploy: schemas/dashboard_public/tables/action_status_types/columns/status_for_user/alterations/alt0000001667 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table
-- requires: schemas/dashboard_public/tables/action_status_types/columns/status_for_user/column

BEGIN;

ALTER TABLE "dashboard_public".action_status_types 
    ALTER COLUMN status_for_user SET DEFAULT true;
COMMIT;
