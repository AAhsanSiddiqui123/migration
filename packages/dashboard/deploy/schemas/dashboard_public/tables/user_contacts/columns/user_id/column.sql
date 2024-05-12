-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/user_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;

ALTER TABLE "dashboard_public".user_contacts ADD COLUMN user_id uuid;
COMMIT;
