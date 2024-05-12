-- Deploy: schemas/dashboard_public/tables/app_constants/triggers/app_constants_ref_num_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;
CREATE TRIGGER app_constants_ref_num_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".app_constants 
 FOR EACH ROW 
 WHEN (OLD.ref_num IS DISTINCT FROM NEW.ref_num AND old.ref_num IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'ref_num' );
COMMIT;
