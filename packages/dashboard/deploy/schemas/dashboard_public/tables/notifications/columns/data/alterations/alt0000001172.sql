-- Deploy: schemas/dashboard_public/tables/notifications/columns/data/alterations/alt0000001172 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/columns/data/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.data IS E'all data required to send user to URLs, create emails, send notifications, etc';
COMMIT;
