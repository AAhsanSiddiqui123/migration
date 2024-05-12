-- Deploy: schemas/dashboard_public/tables/posts/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".posts FOR UPDATE TO authenticated USING ( poster_id = jwt_public.current_user_id() );
COMMIT;
