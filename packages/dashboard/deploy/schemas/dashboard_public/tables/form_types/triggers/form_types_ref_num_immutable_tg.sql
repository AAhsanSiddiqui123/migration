-- Deploy: schemas/dashboard_public/tables/form_types/triggers/form_types_ref_num_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;
CREATE TRIGGER form_types_ref_num_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".form_types 
 FOR EACH ROW 
 WHEN (OLD.ref_num IS DISTINCT FROM NEW.ref_num AND old.ref_num IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'ref_num' );
COMMIT;
