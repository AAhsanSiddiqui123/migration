-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/event/alterations/alt0000000537 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/event/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN event SET NOT NULL;
COMMIT;
