SELECT 
EMPRESA.NM_EMPRESA dsEmpresaItem,
ITEM.CD_OCORRENCIA cdOcorrencia,
ITEM.CD_ITEM_OCORRENCIA nrSequencia,
to_char(OC.DT_RE_OCORRENCIA,'DD/MM/YYYY') dtRegistro,
OC.CD_CLIENTE codigoCliente,
CLIENTE.DIGC_C digitoCliente,
PES_CLIENTE.NOMP_P razaoSocial,
ITEM.CD_SETOR cdSetor,
ENTREGADOR.DS_TRANSPORTADOR||' [ ' || ENTREGA.CD_ENTREGA || ' ] ' ENTREGADOR , ENTREGA.DS_ETIQUETA Etiqueta,
ENDERECO.NM_CIDADE cidade,
ENDERECO.ID_ESTADO UF,
OC.DS_CONTATO dsContato,
NROT_T codigoRede,SIGT_T dsRede,
ORIGEM.DS_AREA_ORIGEM dsAreaOrigem,
TIPO.NM_TIPO_OCORRENCIA dsTipoOcorrencia,
SUB_TIPO.NM_SUBTIPO_OCORRENCIA dsSubTipoOcorrencia,
USUARIO_S.NM_SOLUCIONADOR nomeSolucionador,
ITEM.DS_ITEM_OCORRENCIA descricaoOcorrencia,
CASE
  WHEN OC.CD_PR_OCORRENCIA = 1 THEN 'NORMAL'
  WHEN OC.CD_PR_OCORRENCIA = 2 THEN 'ALTA PRIORIDADE'
END dsPrioridade,
CASE
  WHEN  ITEM.CD_ST_SOLUCAO_ITEM_OCORRENCIA = 1 THEN 'PENDENTE'
  WHEN ITEM.CD_ST_SOLUCAO_ITEM_OCORRENCIA = 2  THEN 'FINALIZADO'
  WHEN ITEM.CD_ST_SOLUCAO_ITEM_OCORRENCIA = 4  THEN 'CANCELADO'
END dsStatusSolucao,
CASE
  WHEN ITEM.CD_ST_CAUSA_ITEM_OCORRENCIA = 1 THEN 'PENDENTE'
  WHEN ITEM.CD_ST_CAUSA_ITEM_OCORRENCIA = 2 THEN 'NAO NECESSITA CAUSA'
  WHEN ITEM.CD_ST_CAUSA_ITEM_OCORRENCIA = 3 THEN 'FINALIZADO'
  WHEN ITEM.CD_ST_CAUSA_ITEM_OCORRENCIA = 4 THEN 'CANCELADO'
END dsStatusCausa,
CASE
WHEN ITEM.CD_ST_SOLUCAO_ITEM_OCORRENCIA = 4 THEN 'CANCELADA' 
  ELSE Nvl(DESC_SOLUCAO.DS_SOLUCAO,'SOLUCAO EM ABERT0') END dsSolucao,
CASE
WHEN ITEM.CD_ST_CAUSA_ITEM_OCORRENCIA = 4 THEN 'CANCELADA' 
  ELSE Nvl(DESC_CAUSA.DS_CAUSA,'CAUSA EM ABERTO') END dsCausa,
TO_DATE(ITEM.DT_LIMITE_SOLUCAO,'DD/MM/YYYY') dataLimite,
EMPRESA_NFE.NM_EMPRESA dsEmpresaNFe,
ITEM.NR_NFE_ITEM_OCORRENCIA nrNFe,
ITEM.NR_SERIE_NFE nrSerieNFe,
TO_DATE(ITEM.DT_EMISSAO_NF_ITEM_OCORRENCIA,'DD/MM/YYYY') dataEmissao,
TRANSM.DS_MEIO_TRANSMISSAO Origem,
NVL(MERC.CD_MERCADORIA,'0') cdProduto,
NVL(NR_DV_MERCADORIA,'0') digitoProduto,
NVL(MERC.NM_MERCADORIA,'NENHUM PRODUTO ESPECIFICO VINCULADO') nomeProduto,
NVL(MERC.DS_APRESENTACAO_MERCADORIA,'') apresentacaoProduto,
ITEM.QT_PRODUTO_ITEM_OCORRENCIA quantProduto,
ITEM.PR_VAL_PRODUTO_ITEM_OCORRENCIA prazoValidade,
NVL(ITEM.DS_LOTE_ITEM_OCORRENCIA,'SEM TRATAMENTO') loteProduto,
TO_DATE(ITEM.DT_VAL_PRODUTO_ITEM_OCORRENCIA,'DD/MM/YYYY') dataValidadeProduto,
ds_Tipo_Mercadoria dsTipoMercadoria,
ds_grupo_fornecedor dsGrupoFornecedor,
ITEM.DS_DIGITADOR_PEDIDO dsDigitadorPedido,
ol.ds_operador_logistico||' [ '||nvl(ol.cd_operador_logistico,0) ||' ] ' operacaoLogistica, 
Nvl(MC.DS_MEIO_CONTATO,' ') dsMeioContato, 
EMB.DS_SITUACAO_EMBALAGEM dsSituacaoEmbalagem,
NVL(PESSOA.NOMP_P,TRANSP.DS_TRANSPORTADOR) nomeTransportador,
ITEM.DS_TRANSBORDO_VIAGEM dsTransbordoCarga,
ITEM.ID_EMPRESA_NFE_ITEM_OCORRENCIA idEmpresaNFe,
ITEM.CD_TIPO_OCORRENCIA cdTipoOcorrencia,
ITEM.CD_SUBTIPO_OCORRENCIA cdSubTipoOcorrencia,
Nvl(DESC_SOLUCAO.CD_SOLUCAO,0) cdSolucao,
Nvl(DESC_CAUSA.CD_CAUSA,0) cdCausa,
Nvl(SOLUCAO.CD_SUBTIPO_SOLUCAO,0) cdSubTipoSolucao,
Nvl(SOLUCAO.CD_SUBTIPO_CAUSA,0) cdSubTipoCausa,
ITEM.TP_PRODUTO_ITEM_OCORRENCIA cdTipoProduto,
ITEM.CD_EMPRESA_ITEM_OCORRENCIA cdEmpresa,
ITEM.NR_MATRIC_SOLUCIONADOR cdSolucionador,
ITEM.CD_ST_SOLUCAO_ITEM_OCORRENCIA cdStatusSolucao,
ITEM.CD_AREA_ORIGEM cdAreaOrigem,
ROUND((ITEM.DT_LIMITE_SOLUCAO - SYSDATE),2) prazoLimite,
Nvl(SOLUCAO.DS_SOLUCAO_ITEM_OCORRENCIA,' ') obsSolucao,
Nvl(SOLUCAO.ID_FILMAGEM_ITEM_OCORRENCIA,'Z') idExisteFilmagem,
Nvl(SOLUCAO.ID_VISIVEL_ITEM_OCORRENCIA,'Z') idFilmagemVisivel,
Nvl(SOLUCAO.NR_CAMERA,0) nrCamera,
Nvl(SOLUCAO.CD_CONFERENTE,0)  cdConferente,
Nvl(SOLUCAO.ID_CONTA_ESTOQUE,'Z') idConfereEstoque,
Nvl(SOLUCAO.ID_RESULTADO_ESTOQUE,'0') idSituacaoEstoque,
Nvl(SOLUCAO.ID_GRAVACAO_TLV,'Z') idGravacaoTlv,
Nvl(SOLUCAO.DT_SOLUCAO_ITEM_OCORRENCIA,NULL) dataRegistroSolucao,
Nvl(SOLUCAO.ID_RESULTADO_GRAVACAO_TLV,'0') idAtendimentoCorreto,
Nvl(SOLUCAO.CD_SITUACAO_EMBALAGEM,0) cdSituacaoEmbalagem,
Nvl(SOLUCAO.DS_CAUSA_ITEM_OCORRENCIA,' ') obsCausa,
Nvl(SOLUCAO.DT_CAUSA_ITEM_OCORRENCIA,NULL) dataRegistroCausa,
Nvl(SOLUCAO.DS_ACAO_CAUSA,' ') dsAcaoTomada,
Nvl(SOLUCAO.DT_ATUALIZACAO,NULL) dataAtualizacao,
Nvl(SOLUCAO.NM_USUARIO,' ') nomeUsuario,
Nvl(SOLUCAO.DS_TRANSP_RESP_CAUSA,' ') dsTranspCausa,
Nvl(SOLUCAO.DS_TRANSP_RESP_SOLUCAO,' ') dsTranspSolucao,
ITEM.CD_ST_CAUSA_ITEM_OCORRENCIA cdStatusCausa,
OC.CD_PR_OCORRENCIA idPrioridade,
Nvl(REC.CD_RECORRENCIA,0) cdRecorrencia,
Nvl(REC.DS_RECORRENCIA,' ') dsRecorrencia,
Nvl(REC.ID_TIPO_RECORRENCIA,'I') idTipoRecorrencia,
to_char(OC.DT_RE_OCORRENCIA,'MM/YYYY') dataRegistro,
Nvl(REC.DT_RECORRENCIA,NULL) dataRecorrencia, 
Nvl(DESC_SOLUCAO.DS_SOLUCAO,'SOLUCAO EM ABERT0') dsSolucao1,
Nvl(DESC_CAUSA.DS_CAUSA,'CAUSA EM ABERTO') dsCausa1,
CANAL.NM_CANAL dsCanal
,NVL(ITEM.VL_UNITARIO,0) valorItemUnitario
FROM GAMSAC.DC_SAC_ITEM_OCORRENCIA ITEM 
 JOIN GAMSAC.DC_SAC_OCORRENCIA OC ON ITEM.CD_OCORRENCIA = OC.CD_OCORRENCIA
 LEFT OUTER JOIN PRDDM.DCCLI CLIENTE ON OC.CD_CLIENTE = CLIENTE.NROC_C
 LEFT OUTER JOIN PRDDM.DC_CANAL CANAL ON CLIENTE.CANC_C = CANAL.CD_CANAL
 LEFT OUTER JOIN PRDDM.DCPES PES_CLIENTE ON CLIENTE.CGCP_C = PES_CLIENTE.CGCP_P
 LEFT OUTER JOIN PRDDM.DC_ENDERECO_CLIENTE ENDERECO ON OC.CD_CLIENTE = ENDERECO.CD_CLIENTE
 LEFT OUTER JOIN PRDDM.DC_MEIO_TRANSMISSAO TRANSM ON ITEM.CD_ORIGEM_PEDIDO = TRANSM.CD_MEIO_TRANSMISSAO
 LEFT OUTER JOIN PRDDM.DC_MERCADORIA MERC ON ITEM.CD_PRODUTO_ITEM_OCORRENCIA = MERC.CD_MERCADORIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SITUACAO_EMBALAGEM EMB ON ITEM.CD_SITUACAO_EMBALAGEM = EMB.CD_SITUACAO_EMBALAGEM
 LEFT OUTER JOIN GAMSAC.DC_SAC_TIPO_OCORRENCIA TIPO ON ITEM.CD_TIPO_OCORRENCIA = TIPO.CD_TIPO_OCORRENCIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SUBTIPO_OCORRENCIA SUB_TIPO ON ITEM.CD_SUBTIPO_OCORRENCIA = SUB_TIPO.CD_SUBTIPO_OCORRENCIA   AND ITEM.CD_TIPO_OCORRENCIA = SUB_TIPO.CD_TIPO_OCORRENCIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SOLUCIONADOR USUARIO_S ON ITEM.NR_MATRIC_SOLUCIONADOR = USUARIO_S.NR_MATRIC_SOLUCIONADOR
 LEFT OUTER JOIN PRDDM.DC_FRETE_TRANSPORTADOR TRANSP ON ITEM.CD_TRANSPORTADOR = TRANSP.CD_TRANSPORTADOR
 LEFT OUTER JOIN PRDDM.DCPES PESSOA ON TRANSP.NR_CNPJ = PESSOA.CGCP_P
 LEFT OUTER JOIN ACESSO.DC_USUARIO USUARIO_G ON ITEM.NR_MATRIC_GERENTE_SOLUCIONADOR = USUARIO_G.NR_MATRICULA
 LEFT OUTER JOIN PRDDM.DCVEN SETOR ON ITEM.CD_SETOR = SETOR.NROV_V
 LEFT OUTER JOIN GAMSAC.DC_SAC_AREA_ORIGEM_OCORRENCIA ORIGEM ON ITEM.CD_AREA_ORIGEM = ORIGEM.CD_AREA_ORIGEM
 LEFT OUTER JOIN ACESSO.DC_EMPRESA EMPRESA ON ITEM.CD_EMPRESA_ITEM_OCORRENCIA = EMPRESA.CD_EMPRESA
 LEFT OUTER JOIN ACESSO.DC_EMPRESA EMPRESA_NFE ON ITEM.ID_EMPRESA_NFE_ITEM_OCORRENCIA = EMPRESA_NFE.CD_EMPRESA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SOLUCAO_ITEM_OCORRENCIA SOLUCAO ON ITEM.CD_OCORRENCIA = SOLUCAO.CD_OCORRENCIA AND ITEM.CD_ITEM_OCORRENCIA = SOLUCAO.CD_ITEM_OCORRENCIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_RECORRENCIA REC ON ITEM.CD_OCORRENCIA = REC.CD_OCORRENCIA AND ITEM.CD_ITEM_OCORRENCIA = REC.CD_ITEM_OCORRENCIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SUBTIPO_SOLUCAO SUBTIPO_SOLUCAO ON SOLUCAO.CD_SUBTIPO_SOLUCAO = SUBTIPO_SOLUCAO.CD_SUBTIPO_SOLUCAO 
   AND ITEM.CD_SUBTIPO_OCORRENCIA = SUBTIPO_SOLUCAO.CD_SUBTIPO_OCORRENCIA  AND ITEM.CD_TIPO_OCORRENCIA = SUBTIPO_SOLUCAO.CD_TIPO_OCORRENCIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SOLUCAO DESC_SOLUCAO ON SUBTIPO_SOLUCAO.CD_SOLUCAO = DESC_SOLUCAO.CD_SOLUCAO
 LEFT OUTER JOIN GAMSAC.DC_SAC_SUBTIPO_CAUSA SUBTIPO_CAUSA ON SOLUCAO.CD_SUBTIPO_CAUSA = SUBTIPO_CAUSA.CD_SUBTIPO_CAUSA AND ITEM.CD_SUBTIPO_OCORRENCIA = SUBTIPO_CAUSA.CD_SUBTIPO_OCORRENCIA AND ITEM.CD_TIPO_OCORRENCIA = SUBTIPO_CAUSA.CD_TIPO_OCORRENCIA
 LEFT OUTER JOIN GAMSAC.DC_SAC_CAUSA DESC_CAUSA ON SUBTIPO_CAUSA.CD_CAUSA = DESC_CAUSA.CD_CAUSA
 JOIN GAMFRETE.DC_ENTREGA ENTREGA ON CLIENTE.CD_ENTREGA_CAMINHAO_SECUNDARIO = ENTREGA.CD_ENTREGA 
 LEFT OUTER JOIN PRDDM.DC_FRETE_TRANSPORTADOR ENTREGADOR ON ENTREGA.CD_TRANSPORTADOR = ENTREGADOR.CD_TRANSPORTADOR
 JOIN PRDDM.DCTAB REDE ON TIPT_T = 'C' AND CLIENTE.TIPC_C = REDE.NROT_T 
 LEFT OUTER JOIN PRDDM.DC_TIPO_MERCADORIA TIPO_MERC ON MERC.CD_TIPO_MERCADORIA = TIPO_MERC.CD_TIPO_MERCADORIA 
 LEFT OUTER JOIN PRDDM.DC_COMPRA_MERCADORIA COMPRA_MERC ON MERC.CD_MERCADORIA = COMPRA_MERC.CD_MERCADORIA
   AND EMPRESA.CD_EMPRESA = COMPRA_MERC.CD_EMPRESA
 LEFT OUTER JOIN PRDDM.DC_GRUPO_FORNECEDOR LAB ON COMPRA_MERC.cd_grupo_fornecedor = LAB.cd_grupo_fornecedor
 LEFT OUTER JOIN PRDDM.DC_OPERADOR_LOGISTICO OL ON ITEM.CD_OPERADOR_LOGISTICO = OL.CD_OPERADOR_LOGISTICO 
 LEFT OUTER JOIN GAMSAC.DC_SAC_MEIO_CONTATO MC ON OC.CD_MEIO_CONTATO = MC.CD_MEIO_CONTATO 
WHERE ITEM.CD_OCORRENCIA > 0 
AND TRUNC(OC.DT_RE_OCORRENCIA) BETWEEN :DT_INICIAL AND :DT_FINAL
ORDER BY dataRegistro, cdTipoOcorrencia, cdSubTipoOcorrencia, cdSolucao
