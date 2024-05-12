-- Deploy: schemas/dashboard_public/tables/user_action_reactions/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".user_action_reactions FOR DELETE TO authenticated USING ( reacter_id = jwt_public.current_user_id() );
COMMIT;
