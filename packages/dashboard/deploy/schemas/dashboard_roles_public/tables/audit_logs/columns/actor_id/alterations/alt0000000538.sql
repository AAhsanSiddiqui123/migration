-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/columns/actor_id/alterations/alt0000000538 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table
-- requires: schemas/dashboard_roles_public/tables/audit_logs/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
