-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_encrypted".user_encrypted_secrets FOR INSERT TO authenticated WITH CHECK ( owner_id = jwt_public.current_user_id() );
COMMIT;
