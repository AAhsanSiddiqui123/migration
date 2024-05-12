-- Deploy: schemas/dashboard_public/tables/question_types/triggers/question_types_ref_num_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;
CREATE TRIGGER question_types_ref_num_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".question_types 
 FOR EACH ROW 
 WHEN (OLD.ref_num IS DISTINCT FROM NEW.ref_num AND old.ref_num IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'ref_num' );
COMMIT;
