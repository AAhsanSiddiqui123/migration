-- Deploy: schemas/dashboard_public/tables/message_groups/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".message_groups FOR SELECT TO authenticated USING ( jwt_public.current_user_id() = ANY( member_ids ) );
COMMIT;
