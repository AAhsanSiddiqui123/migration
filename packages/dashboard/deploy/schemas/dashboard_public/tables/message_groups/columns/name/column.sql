-- Deploy: schemas/dashboard_public/tables/message_groups/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;

ALTER TABLE "dashboard_public".message_groups ADD COLUMN name text;
COMMIT;
