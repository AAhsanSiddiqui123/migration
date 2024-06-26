-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/user_agent/alterations/alt0000000541 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/user_agent/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN user_agent SET DEFAULT jwt_public.current_user_agent();
COMMIT;
