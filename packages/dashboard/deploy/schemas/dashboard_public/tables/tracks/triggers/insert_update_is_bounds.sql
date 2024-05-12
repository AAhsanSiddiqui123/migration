-- Deploy schemas/dashboard_public/tables/tracks/triggers/insert_update_is_bounds to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_insert_update_is_bounds()
RETURNS TRIGGER AS $$
BEGIN
  CASE
      WHEN (new.bounds IS NULL) THEN 
        new.is_bounds = false;
      ELSE 
        new.is_bounds = true;
  END CASE;

 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER insert_update_is_bounds
BEFORE INSERT OR UPDATE ON dashboard_public.tracks
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_insert_update_is_bounds ();



COMMIT;
