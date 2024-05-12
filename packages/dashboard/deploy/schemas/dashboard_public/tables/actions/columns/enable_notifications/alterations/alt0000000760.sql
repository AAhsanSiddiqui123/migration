-- Deploy: schemas/dashboard_public/tables/actions/columns/enable_notifications/alterations/alt0000000760 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/enable_notifications/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN enable_notifications SET DEFAULT FALSE;
COMMIT;
