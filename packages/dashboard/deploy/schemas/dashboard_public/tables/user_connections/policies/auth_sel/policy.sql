-- Deploy: schemas/dashboard_public/tables/user_connections/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".user_connections FOR SELECT TO authenticated USING ( responder_id = jwt_public.current_user_id() OR requester_id = jwt_public.current_user_id() );
COMMIT;
