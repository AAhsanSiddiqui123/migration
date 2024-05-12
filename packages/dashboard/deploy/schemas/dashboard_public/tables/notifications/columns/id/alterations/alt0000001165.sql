-- Deploy: schemas/dashboard_public/tables/notifications/columns/id/alterations/alt0000001165 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table
-- requires: schemas/dashboard_public/tables/notifications/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".notifications 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
