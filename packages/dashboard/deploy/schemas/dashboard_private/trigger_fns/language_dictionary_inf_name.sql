-- Deploy: schemas/dashboard_private/trigger_fns/language_dictionary_inf_name to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;


CREATE FUNCTION inflection.upper ( str text ) RETURNS text AS $EOFCODE$
BEGIN
  return upper(str);
END;
$EOFCODE$ LANGUAGE plpgsql STABLE;

CREATE FUNCTION inflection.lower ( str text ) RETURNS text AS $EOFCODE$
BEGIN
  return lower(str);
END;
$EOFCODE$ LANGUAGE plpgsql STABLE;

CREATE FUNCTION "dashboard_private".language_dictionary_inf_name ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.name = inflection.upper(inflection.underscore(new.name));
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
