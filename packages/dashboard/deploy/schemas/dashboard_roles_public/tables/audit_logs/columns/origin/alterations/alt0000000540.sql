-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/origin/alterations/alt0000000540 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/origin/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();
COMMIT;
