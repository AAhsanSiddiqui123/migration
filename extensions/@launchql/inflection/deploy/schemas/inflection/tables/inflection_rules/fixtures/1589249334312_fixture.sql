-- Deploy schemas/inflection/tables/inflection_rules/fixtures/1589249334312_fixture to pg

-- requires: schemas/inflection/schema
-- requires: schemas/inflection/tables/inflection_rules/table

BEGIN;

INSERT INTO inflection.inflection_rules
 (type, test, replacement) VALUES
    ('plural', '^(m|wom)en$', NULL),
    ('plural', '(pe)ople$', NULL),
    ('plural', '(child)ren$', NULL),
    ('plural', '([ti])a$', NULL),
    ('plural', '((a)naly|(b)a|(d)iagno|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$', NULL),
    ('plural', '(hi|ti)ves$', NULL),
    ('plural', '(curve)s$', NULL),
    ('plural', '([lr])ves$', NULL),
    ('plural', '([^fo])ves$', NULL),
    ('plural', '([^aeiouy]|qu)ies$', NULL),
    ('plural', '(s)eries$', NULL),
    ('plural', '(m)ovies$', NULL),
    ('plural', '(x|ch|ss|sh)es$', NULL),
    ('plural', '([m|l])ice$', NULL),
    ('plural', '(bus)es$', NULL),
    ('plural', '(o)es$', NULL),
    ('plural', '(shoe)s$', NULL),
    ('plural', '(cris|ax|test)es$', NULL),
    ('plural', '(octop|vir)i$', NULL),
    ('plural', '(alias|canvas|status|campus)es$', NULL),
    ('plural', '^(summons)es$', NULL),
    ('plural', '^(ox)en', NULL),
    ('plural', '(matr)ices$', NULL),
    ('plural', '^feet$', NULL),
    ('plural', '^teeth$', NULL),
    ('plural', '^geese$', NULL),
    ('plural', '(quiz)zes$', NULL),
    ('plural', '^(whereas)es$', NULL),
    ('plural', '^(criteri)a$', NULL),
    ('plural', '^genera$', NULL),
    ('plural', '^(m|wom)an$', E'\\1en'),
    ('plural', '(pe)rson$', E'\\1ople'),
    ('plural', '(child)$', E'\\1ren'),
    ('plural', '^(ox)$', E'\\1en'),
    ('plural', '(ax|test)is$', E'\\1es'),
    ('plural', '(octop|vir)us$', E'\\1i'),
    ('plural', '(alias|status|canvas|campus)$', E'\\1es'),
    ('plural', '^(summons)$', E'\\1es'),
    ('plural', '(bu)s$', E'\\1ses'),
    ('plural', '(buffal|tomat|potat)o$', E'\\1oes'),
    ('plural', '([ti])um$', E'\\1a'),
    ('plural', 'sis$', E'ses'),
    ('plural', '(?:([^f])fe|([lr])f)$', E'\\1\\2ves'),
    ('plural', '(hi|ti)ve$', E'\\1ves'),
    ('plural', '([^aeiouy]|qu)y$', E'\\1ies'),
    ('plural', '(matr)ix$', E'\\1ices'),
    ('plural', '(vert|ind)ex$', E'\\1ices'),
    ('plural', '(x|ch|ss|sh)$', E'\\1es'),
    ('plural', '([m|l])ouse$', E'\\1ice'),
    ('plural', '^foot$', E'feet'),
    ('plural', '^tooth$', E'teeth'),
    ('plural', '^goose$', E'geese'),
    ('plural', '(quiz)$', E'\\1zes'),
    ('plural', '^(whereas)$', E'\\1es'),
    ('plural', '^(criteri)on$', E'\\1a'),
    ('plural', '^genus$', E'genera'),
    ('plural', 's$', E's'),
    ('plural', '$', E's'),
    ('singular', '^(m|wom)an$', NULL),
    ('singular', '(pe)rson$', NULL),
    ('singular', '(child)$', NULL),
    ('singular', '^(ox)$', NULL),
    ('singular', '(ax|test)is$', NULL),
    ('singular', '(octop|vir)us$', NULL),
    ('singular', '(alias|status|canvas|campus)$', NULL),
    ('singular', '^(summons)$', NULL),
    ('singular', '(bu)s$', NULL),
    ('singular', '(buffal|tomat|potat)o$', NULL),
    ('singular', '([ti])um$', NULL),
    ('singular', 'sis$', NULL),
    ('singular', '(?:([^f])fe|([lr])f)$', NULL),
    ('singular', '(hi|ti)ve$', NULL),
    ('singular', '([^aeiouy]|qu)y$', NULL),
    ('singular', '(x|ch|ss|sh)$', NULL),
    ('singular', '(matr)ix$', NULL),
    ('singular', '([m|l])ouse$', NULL),
    ('singular', '^foot$', NULL),
    ('singular', '^tooth$', NULL),
    ('singular', '^goose$', NULL),
    ('singular', '(quiz)$', NULL),
    ('singular', '^(whereas)$', NULL),
    ('singular', '^(criteri)on$', NULL),
    ('singular', '^genus$', NULL),
    ('singular', '^(m|wom)en$', E'\\1an'),
    ('singular', '(pe)ople$', E'\\1rson'),
    ('singular', '(child)ren$', E'\\1'),
    ('singular', '^genera$', E'genus'),
    ('singular', '^(criteri)a$', E'\\1on'),
    ('singular', '([ti])a$', E'\\1um'),
    ('singular', '((a)naly|(b)a|(d)iagno|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$', E'\\1\\2sis'),
    ('singular', '(hi|ti)ves$', E'\\1ve'),
    ('singular', '(curve)s$', E'\\1'),
    ('singular', '([lr])ves$', E'\\1f'),
    ('singular', '([a])ves$', E'\\1ve'),
    ('singular', '([^fo])ves$', E'\\1fe'),
    ('singular', '(m)ovies$', E'\\1ovie'),
    ('singular', '([^aeiouy]|qu)ies$', E'\\1y'),
    ('singular', '(s)eries$', E'\\1eries'),
    ('singular', '(x|ch|ss|sh)es$', E'\\1'),
    ('singular', '([m|l])ice$', E'\\1ouse'),
    ('singular', '(bus)es$', E'\\1'),
    ('singular', '(o)es$', E'\\1'),
    ('singular', '(shoe)s$', E'\\1'),
    ('singular', '(cris|ax|test)es$', E'\\1is'),
    ('singular', '(octop|vir)i$', E'\\1us'),
    ('singular', '(alias|canvas|status|campus)es$', E'\\1'),
    ('singular', '^(summons)es$', E'\\1'),
    ('singular', '^(ox)en', E'\\1'),
    ('singular', '(matr)ices$', E'\\1ix'),
    ('singular', '(vert|ind)ices$', E'\\1ex'),
    ('singular', '^feet$', E'foot'),
    ('singular', '^teeth$', E'tooth'),
    ('singular', '^geese$', E'goose'),
    ('singular', '(quiz)zes$', E'\\1'),
    ('singular', '^(whereas)es$', E'\\1'),
    ('singular', 'ss$', E'ss'),
    ('singular', 's$', E'')
;

COMMIT;