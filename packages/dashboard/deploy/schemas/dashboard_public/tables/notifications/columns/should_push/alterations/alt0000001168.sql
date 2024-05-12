-- Deploy: schemas/dashboard_public/tables/notifications/columns/should_push/alterations/alt0000001168 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table
-- requires: schemas/dashboard_public/tables/notifications/columns/should_push/column

BEGIN;

ALTER TABLE "dashboard_public".notifications 
    ALTER COLUMN should_push SET NOT NULL;
COMMIT;
