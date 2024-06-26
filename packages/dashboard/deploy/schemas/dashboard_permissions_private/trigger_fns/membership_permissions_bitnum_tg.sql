-- Deploy: schemas/dashboard_permissions_private/trigger_fns/membership_permissions_bitnum_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_private/schema

BEGIN;

CREATE FUNCTION "dashboard_permissions_private".membership_permissions_bitnum_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    bitlen int = bit_length(NEW.bitstr);
BEGIN
    NEW.bitstr = 
        lpad('', bitlen - NEW.bitnum, '0') ||
	    '1' ||
	    lpad('', NEW.bitnum - 1, '0');
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;
