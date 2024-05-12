-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/created_at/alterations/alt0000000545 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/created_at/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN created_at SET DEFAULT current_timestamp;
COMMIT;
