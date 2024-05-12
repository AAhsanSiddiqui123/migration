-- Deploy: schemas/dashboard_public/tables/form_questions/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;

ALTER TABLE "dashboard_public".form_questions ADD COLUMN owner_id uuid;
COMMIT;
