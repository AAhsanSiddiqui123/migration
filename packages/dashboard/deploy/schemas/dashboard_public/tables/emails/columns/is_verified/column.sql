-- Deploy: schemas/dashboard_public/tables/emails/columns/is_verified/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;

ALTER TABLE "dashboard_public".emails ADD COLUMN is_verified boolean;
COMMIT;
