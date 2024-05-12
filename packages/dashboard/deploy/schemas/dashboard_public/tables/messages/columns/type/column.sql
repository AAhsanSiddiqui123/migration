-- Deploy: schemas/dashboard_public/tables/messages/columns/type/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;

ALTER TABLE "dashboard_public".messages ADD COLUMN type text;
COMMIT;
