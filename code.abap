*ABAPQuery Bypass for entry parameters.

FIELD-SYMBOLS <fs_kk> TYPE shp_parvw_range.
FIELD-SYMBOLS <fs_qq> TYPE shp_parvw_range_t.
DATA: campo(100).
campo = 'SP$00013[]'.
ASSIGN (campo) TO <fs_qq>.
IF sy-subrc = 0.
  IF <fs_qq>[] IS INITIAL.
    APPEND INITIAL LINE TO <fs_qq> ASSIGNING <fs_kk>.
    <fs_kk>-sign = 'I'.
    <fs_kk>-option = 'EQ'.
    <fs_kk>-low = 'AG'.
  ENDIF.
ENDIF.
