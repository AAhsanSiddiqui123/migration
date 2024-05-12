-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/alterations/alt0000000534 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs
    DISABLE ROW LEVEL SECURITY;
COMMIT;
