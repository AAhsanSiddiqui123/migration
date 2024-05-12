-- Deploy: schemas/dashboard_public/tables/actions/columns/notification_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN notification_text text;
COMMIT;
