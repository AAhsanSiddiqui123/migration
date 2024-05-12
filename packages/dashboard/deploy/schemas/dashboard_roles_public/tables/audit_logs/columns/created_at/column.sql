-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/created_at/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs ADD COLUMN created_at timestamptz;
COMMIT;
