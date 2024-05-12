-- Deploy: schemas/dashboard_public/tables/user_locations/policies/auth_ins/policy/alterations/alt0000001552 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".user_locations FOR INSERT TO authenticated WITH CHECK ( user_id = jwt_public.current_user_id() );
COMMIT;
