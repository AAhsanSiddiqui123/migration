-- Deploy: schemas/dashboard_public/tables/users/columns/type/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE "dashboard_public".users ADD COLUMN type int;
COMMIT;
