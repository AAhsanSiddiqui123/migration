-- Deploy: schemas/dashboard_public/tables/notifications/columns/id/alterations/alt0000001166 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table
-- requires: schemas/dashboard_public/tables/notifications/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".notifications 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
