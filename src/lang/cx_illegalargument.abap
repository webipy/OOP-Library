class /OOP/CX_ILLEGALARGUMENT definition
  public
  inheriting from /OOP/CX_RUNTIMEEXCEPTION
  create public .

public section.
*"* public components of class /OOP/CX_ILLEGALARGUMENT
*"* do not include other source files here!!!

  constants /OOP/CX_ILLEGALARGUMENT type SOTR_CONC value '001560AB31521EE292B874449A84B972'. "#EC NOTEXT

  methods CONSTRUCTOR
    importing
      !TEXTID like TEXTID optional
      !PREVIOUS like PREVIOUS optional
      !MESSAGE type STRING optional .
protected section.
*"* protected components of class /OOP/CX_ILLEGALARGUMENT
*"* do not include other source files here!!!
private section.
*"* private components of class /OOP/CX_ILLEGALARGUMENT
*"* do not include other source files here!!!
ENDCLASS.



CLASS /OOP/CX_ILLEGALARGUMENT IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method /OOP/CX_ILLEGALARGUMENT->CONSTRUCTOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] TEXTID                         LIKE        TEXTID(optional)
* | [--->] PREVIOUS                       LIKE        PREVIOUS(optional)
* | [--->] MESSAGE                        TYPE        STRING(optional)
* +--------------------------------------------------------------------------------------</SIGNATURE>
method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
MESSAGE = MESSAGE
.
 IF textid IS INITIAL.
   me->textid = /OOP/CX_ILLEGALARGUMENT .
 ENDIF.
endmethod.
ENDCLASS.
