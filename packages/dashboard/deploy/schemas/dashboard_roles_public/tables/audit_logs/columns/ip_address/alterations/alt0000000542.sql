-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/ip_address/alterations/alt0000000542 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/ip_address/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN ip_address SET DEFAULT jwt_public.current_ip_address();
COMMIT;
