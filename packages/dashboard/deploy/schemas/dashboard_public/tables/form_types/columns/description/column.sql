-- Deploy: schemas/dashboard_public/tables/form_types/columns/description/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;

ALTER TABLE "dashboard_public".form_types ADD COLUMN description text;
COMMIT;
