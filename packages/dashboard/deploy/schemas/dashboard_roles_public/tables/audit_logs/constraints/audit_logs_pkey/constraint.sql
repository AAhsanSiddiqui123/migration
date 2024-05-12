-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/constraints/audit_logs_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table

BEGIN;

ALTER TABLE "dashboard_roles_public".audit_logs
    ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id);
COMMIT;
