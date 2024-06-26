-- Deploy: schemas/dashboard_status_public/procedures/steps_achieved/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/procedures/steps_required/procedure

BEGIN;

CREATE FUNCTION "dashboard_status_public".steps_achieved (
  vlevel text,
  vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS boolean
AS $CODEZ$
DECLARE
  c int;
BEGIN
  SELECT COUNT(*) FROM
    "dashboard_status_public".steps_required(
      vlevel,
      vrole_id
    )
  INTO c;
  RETURN c <= 0;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION "dashboard_status_public".steps_achieved TO authenticated;
COMMIT;
