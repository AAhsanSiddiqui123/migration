-- Deploy: schemas/dashboard_public/tables/action_status_types/alterations/alt0000001664 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_status_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
