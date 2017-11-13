.class public abstract Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.super Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
.source "BaseSchemaDVFactory.java"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"


# instance fields
.field protected fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method

.method protected static createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 85
    .param p0, "builtInTypes"    # Lmf/org/apache/xerces/util/SymbolHash;
    .param p1, "baseAtomicType"    # Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .prologue
    const-string v39, "anySimpleType"

    .local v39, "ANYSIMPLETYPE":Ljava/lang/String;
    const-string v40, "anyURI"

    .local v40, "ANYURI":Ljava/lang/String;
    const-string v41, "base64Binary"

    .local v41, "BASE64BINARY":Ljava/lang/String;
    const-string v42, "boolean"

    .local v42, "BOOLEAN":Ljava/lang/String;
    const-string v43, "byte"

    .local v43, "BYTE":Ljava/lang/String;
    const-string v44, "date"

    .local v44, "DATE":Ljava/lang/String;
    const-string v45, "dateTime"

    .local v45, "DATETIME":Ljava/lang/String;
    const-string v46, "gDay"

    .local v46, "DAY":Ljava/lang/String;
    const-string v47, "decimal"

    .local v47, "DECIMAL":Ljava/lang/String;
    const-string v48, "double"

    .local v48, "DOUBLE":Ljava/lang/String;
    const-string v49, "duration"

    .local v49, "DURATION":Ljava/lang/String;
    const-string v51, "ENTITY"

    .local v51, "ENTITY":Ljava/lang/String;
    const-string v50, "ENTITIES"

    .local v50, "ENTITIES":Ljava/lang/String;
    const-string v52, "float"

    .local v52, "FLOAT":Ljava/lang/String;
    const-string v53, "hexBinary"

    .local v53, "HEXBINARY":Ljava/lang/String;
    const-string v54, "ID"

    .local v54, "ID":Ljava/lang/String;
    const-string v55, "IDREF"

    .local v55, "IDREF":Ljava/lang/String;
    const-string v56, "IDREFS"

    .local v56, "IDREFS":Ljava/lang/String;
    const-string v57, "int"

    .local v57, "INT":Ljava/lang/String;
    const-string v58, "integer"

    .local v58, "INTEGER":Ljava/lang/String;
    const-string v60, "long"

    .local v60, "LONG":Ljava/lang/String;
    const-string v63, "Name"

    .local v63, "NAME":Ljava/lang/String;
    const-string v65, "negativeInteger"

    .local v65, "NEGATIVEINTEGER":Ljava/lang/String;
    const-string v61, "gMonth"

    .local v61, "MONTH":Ljava/lang/String;
    const-string v62, "gMonthDay"

    .local v62, "MONTHDAY":Ljava/lang/String;
    const-string v64, "NCName"

    .local v64, "NCNAME":Ljava/lang/String;
    const-string v66, "NMTOKEN"

    .local v66, "NMTOKEN":Ljava/lang/String;
    const-string v67, "NMTOKENS"

    .local v67, "NMTOKENS":Ljava/lang/String;
    const-string v59, "language"

    .local v59, "LANGUAGE":Ljava/lang/String;
    const-string v68, "nonNegativeInteger"

    .local v68, "NONNEGATIVEINTEGER":Ljava/lang/String;
    const-string v69, "nonPositiveInteger"

    .local v69, "NONPOSITIVEINTEGER":Ljava/lang/String;
    const-string v70, "normalizedString"

    .local v70, "NORMALIZEDSTRING":Ljava/lang/String;
    const-string v71, "NOTATION"

    .local v71, "NOTATION":Ljava/lang/String;
    const-string v72, "positiveInteger"

    .local v72, "POSITIVEINTEGER":Ljava/lang/String;
    const-string v73, "QName"

    .local v73, "QNAME":Ljava/lang/String;
    const-string v74, "short"

    .local v74, "SHORT":Ljava/lang/String;
    const-string v75, "string"

    .local v75, "STRING":Ljava/lang/String;
    const-string v76, "time"

    .local v76, "TIME":Ljava/lang/String;
    const-string v77, "token"

    .local v77, "TOKEN":Ljava/lang/String;
    const-string v78, "unsignedByte"

    .local v78, "UNSIGNEDBYTE":Ljava/lang/String;
    const-string v79, "unsignedInt"

    .local v79, "UNSIGNEDINT":Ljava/lang/String;
    const-string v80, "unsignedLong"

    .local v80, "UNSIGNEDLONG":Ljava/lang/String;
    const-string v81, "unsignedShort"

    .local v81, "UNSIGNEDSHORT":Ljava/lang/String;
    const-string v82, "gYear"

    .local v82, "YEAR":Ljava/lang/String;
    const-string v83, "gYearMonth"

    .local v83, "YEARMONTH":Ljava/lang/String;
    new-instance v84, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct/range {v84 .. v84}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    .local v84, "facets":Lmf/org/apache/xerces/impl/dv/XSFacets;
    const-string v33, "anySimpleType"

    sget-object v34, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v7, "string"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .local v5, "stringDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v33, "string"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "boolean"

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v8, "boolean"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v8, "decimal"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .local v6, "decimalDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v33, "decimal"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "anyURI"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "anyURI"

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x12

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "base64Binary"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "base64Binary"

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x11

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "duration"

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x7

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .local v7, "durationDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v33, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "dateTime"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "dateTime"

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x8

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "time"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "time"

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x9

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "date"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "date"

    const/16 v11, 0x9

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xa

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "gYearMonth"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "gYearMonth"

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xb

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "gYear"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "gYear"

    const/16 v11, 0xb

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xc

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "gMonthDay"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "gMonthDay"

    const/16 v11, 0xc

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xd

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "gDay"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "gDay"

    const/16 v11, 0xd

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xe

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "gMonth"

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "gMonth"

    const/16 v11, 0xe

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xf

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "integer"

    const/16 v11, 0x18

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1e

    move-object v9, v6

    invoke-direct/range {v8 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .local v8, "integerDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v33, "integer"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "0"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v11, "nonPositiveInteger"

    const-string v12, "http://www.w3.org/2001/XMLSchema"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1f

    move-object v10, v8

    invoke-direct/range {v9 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v9, "nonPositiveDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v9, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "nonPositiveInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v9}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "-1"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v12, "negativeInteger"

    const-string v13, "http://www.w3.org/2001/XMLSchema"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object v11, v9

    invoke-direct/range {v10 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v10, "negativeDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v10, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "negativeInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "9223372036854775807"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v33, "-9223372036854775808"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v13, "long"

    const-string v14, "http://www.w3.org/2001/XMLSchema"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x21

    move-object v12, v8

    invoke-direct/range {v11 .. v18}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v11, "longDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x120

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v11, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "long"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "2147483647"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v33, "-2147483648"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v14, "int"

    const-string v15, "http://www.w3.org/2001/XMLSchema"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x22

    move-object v13, v11

    invoke-direct/range {v12 .. v19}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v12, "intDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x120

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v12, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "int"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "32767"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v33, "-32768"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "short"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x23

    move-object v14, v12

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v13, "shortDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x120

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v13, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "short"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "127"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const-string v33, "-128"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "byte"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x24

    move-object v15, v13

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v14, "byteDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x120

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v14, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "byte"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "0"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "nonNegativeInteger"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x25

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v15, "nonNegativeDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x100

    const/16 v34, 0x0

    move-object/from16 v0, v84

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v15, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "nonNegativeInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "18446744073709551615"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v16, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "unsignedLong"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x26

    move-object/from16 v17, v15

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v16, "unsignedLongDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "unsignedLong"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "4294967295"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v17, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "unsignedInt"

    const-string v20, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x27

    move-object/from16 v18, v16

    invoke-direct/range {v17 .. v24}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v17, "unsignedIntDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "unsignedInt"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "65535"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v18, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v20, "unsignedShort"

    const-string v21, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x28

    move-object/from16 v19, v17

    invoke-direct/range {v18 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v18, "unsignedShortDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "unsignedShort"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "255"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    new-instance v19, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v21, "unsignedByte"

    const-string v22, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x29

    move-object/from16 v20, v18

    invoke-direct/range {v19 .. v26}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v19, "unsignedByteDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "unsignedByte"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "1"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    new-instance v20, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v22, "positiveInteger"

    const-string v23, "http://www.w3.org/2001/XMLSchema"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x2a

    move-object/from16 v21, v15

    invoke-direct/range {v20 .. v27}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v20, "positiveIntegerDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x100

    const/16 v34, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "positiveInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "float"

    new-instance v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v23, "float"

    const/16 v24, 0x4

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x5

    move-object/from16 v22, p1

    invoke-direct/range {v21 .. v30}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "double"

    new-instance v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v23, "double"

    const/16 v24, 0x5

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x6

    move-object/from16 v22, p1

    invoke-direct/range {v21 .. v30}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "hexBinary"

    new-instance v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v23, "hexBinary"

    const/16 v24, 0xf

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x10

    move-object/from16 v22, p1

    invoke-direct/range {v21 .. v30}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v33, "NOTATION"

    new-instance v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v23, "NOTATION"

    const/16 v24, 0x14

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x14

    move-object/from16 v22, p1

    invoke-direct/range {v21 .. v30}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v23, "normalizedString"

    const-string v24, "http://www.w3.org/2001/XMLSchema"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x15

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v28}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v21, "normalizedDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x10

    const/16 v34, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "normalizedString"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v22, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v24, "token"

    const-string v25, "http://www.w3.org/2001/XMLSchema"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x16

    move-object/from16 v23, v21

    invoke-direct/range {v22 .. v29}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v22, "tokenDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x10

    const/16 v34, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "token"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    const-string v33, "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*"

    move-object/from16 v0, v33

    move-object/from16 v1, v84

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    new-instance v23, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v25, "language"

    const-string v26, "http://www.w3.org/2001/XMLSchema"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x17

    move-object/from16 v24, v22

    invoke-direct/range {v23 .. v30}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v23, "languageDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x18

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "language"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v24, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v26, "Name"

    const-string v27, "http://www.w3.org/2001/XMLSchema"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x19

    move-object/from16 v25, v22

    invoke-direct/range {v24 .. v31}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v24, "nameDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x10

    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v33, "Name"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v25, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v27, "NCName"

    const-string v28, "http://www.w3.org/2001/XMLSchema"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1a

    move-object/from16 v26, v24

    invoke-direct/range {v25 .. v32}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v25, "ncnameDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x10

    const/16 v34, 0x0

    const/16 v35, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v33, "NCName"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v36, "QName"

    new-instance v26, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v28, "QName"

    const/16 v29, 0x12

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x13

    move-object/from16 v27, p1

    invoke-direct/range {v26 .. v35}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v36, "ID"

    new-instance v26, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v28, "ID"

    const/16 v29, 0x15

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1b

    move-object/from16 v27, v25

    invoke-direct/range {v26 .. v35}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v26, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v28, "IDREF"

    const/16 v29, 0x16

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1c

    move-object/from16 v27, v25

    invoke-direct/range {v26 .. v35}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .local v26, "idrefDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v33, "IDREF"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v27, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v28, 0x0

    const-string v29, "http://www.w3.org/2001/XMLSchema"

    const/16 v30, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v31, v26

    invoke-direct/range {v27 .. v33}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    .local v27, "tempDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    new-instance v28, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v30, "IDREFS"

    const-string v31, "http://www.w3.org/2001/XMLSchema"

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, v27

    invoke-direct/range {v28 .. v34}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    .local v28, "idrefsDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x2

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "IDREFS"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v29, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v31, "ENTITY"

    const/16 v32, 0x17

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x1d

    move-object/from16 v30, v25

    invoke-direct/range {v29 .. v38}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .local v29, "entityDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v33, "ENTITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v27, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local v27    # "tempDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v31, 0x0

    const-string v32, "http://www.w3.org/2001/XMLSchema"

    const/16 v33, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v30, v27

    move-object/from16 v34, v29

    invoke-direct/range {v30 .. v36}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    .restart local v27    # "tempDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    new-instance v30, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v32, "ENTITIES"

    const-string v33, "http://www.w3.org/2001/XMLSchema"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v27

    invoke-direct/range {v30 .. v36}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    .local v30, "entitiesDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x2

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "ENTITIES"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v31, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v33, "NMTOKEN"

    const-string v34, "http://www.w3.org/2001/XMLSchema"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x18

    move-object/from16 v32, v22

    invoke-direct/range {v31 .. v38}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .local v31, "nmtokenDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x10

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v33, "NMTOKEN"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v84

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v27, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local v27    # "tempDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x0

    const-string v34, "http://www.w3.org/2001/XMLSchema"

    const/16 v35, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v32, v27

    move-object/from16 v36, v31

    invoke-direct/range {v32 .. v38}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    .restart local v27    # "tempDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    new-instance v32, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v34, "NMTOKENS"

    const-string v35, "http://www.w3.org/2001/XMLSchema"

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v33, v27

    invoke-direct/range {v32 .. v38}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    .local v32, "nmtokensDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v33, 0x2

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v84

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v33, "NMTOKENS"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "itemType"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    .local v0, "st":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    move-object v4, p4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    .end local v0    # "st":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    goto :goto_0
.end method

.method public createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "base"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    .local v0, "st":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    move-object v1, p4

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    .end local v0    # "st":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v2, p4

    check-cast v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    goto :goto_0
.end method

.method public createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "memberTypes"    # [Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    move-object/from16 v0, p4

    array-length v12, v0

    .local v12, "typeNum":I
    new-array v5, v12, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .local v5, "mtypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2, v5, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v1

    .local v1, "st":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v6

    .end local v1    # "st":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :goto_0
    return-object v6

    :cond_0
    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p3

    move-object v10, v5

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    goto :goto_0
.end method

.method public newXSSimpleTypeDecl()Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>()V

    return-object v0
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0
    .param p1, "declPool"    # Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method
