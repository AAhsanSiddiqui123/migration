-- Deploy: schemas/dashboard_roles_public/tables/audit_logs/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/audit_logs/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_roles_public".audit_logs FOR SELECT TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
