-- Deploy: schemas/dashboard_roles_public/procedures/get_current_user/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

CREATE FUNCTION "dashboard_roles_public".get_current_user()
    RETURNS "dashboard_public".users
AS $$
DECLARE
  v_user "dashboard_public".users;
BEGIN
  IF "dashboard_roles_public".get_current_user_id() IS NOT NULL THEN
     SELECT * FROM "dashboard_public".users WHERE id = "dashboard_roles_public".get_current_user_id() INTO v_user;
     RETURN v_user;
  ELSE
     RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION "dashboard_roles_public".get_current_user TO authenticated;
COMMIT;
