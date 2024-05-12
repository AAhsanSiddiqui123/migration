-- Deploy: schemas/dashboard_public/tables/user_forms/columns/form_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table

BEGIN;

ALTER TABLE "dashboard_public".user_forms ADD COLUMN form_id uuid;
COMMIT;
