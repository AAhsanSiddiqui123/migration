-- Deploy: schemas/dashboard_public/tables/notifications/alterations/alt0000001164 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications
    DISABLE ROW LEVEL SECURITY;
COMMIT;
