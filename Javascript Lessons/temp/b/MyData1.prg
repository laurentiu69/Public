* *********************************************************
* *
* * 13/10/2019             MYDATA1.DBC             17:59:42
* *
* *********************************************************
* *
* * Description:
* * This program was automatically generated by GENDBC
* * Version 2.26.67
* *
* *********************************************************


DisplayStatus([Creating database...])
CLOSE DATA ALL
CREATE DATABASE 'MYDATA1.DBC'
DisplayStatus([Creating table VANZATOR...])
MakeTable_VANZATOR()
DisplayStatus([Creating table CUMPARATOR...])
MakeTable_CUMPARATOR()
DisplayStatus([Creating table COMENZI...])
MakeTable_COMENZI()
DisplayStatus([Creating persistent relations...])
MakeRelation_1()
MakeRelation_2()
DisplayStatus([Finished.])

FUNCTION MakeTable_VANZATOR
***** Table setup for VANZATOR *****
CREATE TABLE 'VANZATOR.DBF' NAME 'VANZATOR' (ID C(6) NOT NULL, ;
                       NUME C(20) NOT NULL)

***** Create each index for VANZATOR *****
ALTER TABLE 'VANZATOR' ADD PRIMARY KEY ID TAG ID COLLATE 'MACHINE'

***** Change properties for VANZATOR *****
ENDFUNC

FUNCTION MakeTable_CUMPARATOR
***** Table setup for CUMPARATOR *****
CREATE TABLE 'CUMPARATOR.DBF' NAME 'CUMPARATOR' (ID I NOT NULL, ;
                         ID_VANZ C(10) NOT NULL, ;
                         NUME C(10) NOT NULL, ;
                         RAMURA C(10) NOT NULL)

***** Create each index for CUMPARATOR *****
ALTER TABLE 'CUMPARATOR' ADD PRIMARY KEY ID TAG ID COLLATE 'MACHINE'
INDEX ON NUME TAG NUME CANDIDATE COLLATE 'MACHINE'
INDEX ON ID_VANZ TAG ID_VANZ COLLATE 'MACHINE'

***** Change properties for CUMPARATOR *****
ENDFUNC

FUNCTION MakeTable_COMENZI
***** Table setup for COMENZI *****
CREATE TABLE 'COMENZI.DBF' NAME 'COMENZI' (ID I NOT NULL, ;
                      ID_CUMP I NOT NULL, ;
                      SUMA Y NOT NULL)

***** Create each index for COMENZI *****
INDEX ON ID_CUMP TAG ID_CUMP COLLATE 'MACHINE'
ALTER TABLE 'COMENZI' ADD PRIMARY KEY ID TAG ID COLLATE 'MACHINE'

***** Change properties for COMENZI *****
DBSETPROP('COMENZI.ID', 'Field', 'Caption', "Identificator Comanda")
DBSETPROP('COMENZI.ID_CUMP', 'Field', 'Caption', "Cod Cumparator")
DBSETPROP('COMENZI.SUMA', 'Field', 'Caption', "Suma LEI")
DBSETPROP('COMENZI.SUMA', 'Field', 'InputMask', "99999999")
DBSETPROP('COMENZI.SUMA', 'Field', 'Format', "$")
ENDFUNC

*************** Begin Relations Setup **************

FUNCTION MakeRelation_1
ALTER TABLE 'CUMPARATOR' ADD FOREIGN KEY TAG ID_VANZ REFERENCES VANZATOR TAG ID
ENDFUNC


FUNCTION MakeRelation_2
ALTER TABLE 'COMENZI' ADD FOREIGN KEY TAG ID_CUMP REFERENCES CUMPARATOR TAG ID
ENDFUNC


FUNCTION DisplayStatus(lcMessage)
WAIT WINDOW NOWAIT lcMessage
ENDFUNC
