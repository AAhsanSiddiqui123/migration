-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/success/alterations/alt0000000543 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/success/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN success SET NOT NULL;
COMMIT;
