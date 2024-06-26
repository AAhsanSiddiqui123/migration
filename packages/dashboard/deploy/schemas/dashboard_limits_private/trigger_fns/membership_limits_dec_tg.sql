-- Deploy: schemas/dashboard_limits_private/trigger_fns/membership_limits_dec_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_private/schema

BEGIN;

CREATE FUNCTION "dashboard_limits_private".membership_limits_dec_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    actor_id uuid;
    limitname citext;
BEGIN
    IF (TG_NARGS < 1) THEN 
        RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', TG_NAME;
    ELSIF (TG_NARGS = 1) THEN 
        limitname = TG_ARGV[0];        
        PERFORM "dashboard_limits_private".membership_limits_dec(
            limitname
        );
    ELSIF (TG_NARGS = 2) THEN 
        limitname = TG_ARGV[0];        
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING OLD INTO actor_id;
        PERFORM "dashboard_limits_private".membership_limits_dec(
            limitname, actor_id
        );
    END IF;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;
