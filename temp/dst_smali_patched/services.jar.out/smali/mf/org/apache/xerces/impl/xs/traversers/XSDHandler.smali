.class public Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.super Ljava/lang/Object;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;,
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;,
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field static final ATTRIBUTEGROUP_TYPE:I = 0x2

.field static final ATTRIBUTE_TYPE:I = 0x1

.field private static final CIRCULAR_CODES:[Ljava/lang/String;

.field private static final COMP_TYPE:[Ljava/lang/String;

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DEBUG_NODE_POOL:Z = false

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field static final ELEMENT_TYPE:I = 0x3

.field private static final ELE_ERROR_CODES:[Ljava/lang/String;

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field static final GROUP_TYPE:I = 0x4

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field static final IDENTITYCONSTRAINT_TYPE:I = 0x5

.field private static final INC_KEYREF_STACK_AMOUNT:I = 0x2

.field private static final INC_STACK_SIZE:I = 0xa

.field private static final INIT_KEYREF_STACK:I = 0x2

.field private static final INIT_STACK_SIZE:I = 0x1e

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field static final NOTATION_TYPE:I = 0x6

.field private static final NS_ERROR_CODES:[[Ljava/lang/String;

.field public static final REDEF_IDENTIFIER:Ljava/lang/String; = "_fn3dktizrknc9pi"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field static final TYPEDECL_TYPE:I = 0x7

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private fAllContext:[I

.field private fAllTNSs:Ljava/util/Vector;

.field fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

.field private fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

.field fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

.field fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

.field fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field protected fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDependencyMap:Ljava/util/Hashtable;

.field private fDoc2SystemId:Ljava/util/Hashtable;

.field private fDoc2XSDocumentMap:Ljava/util/Hashtable;

.field fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

.field private fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

.field fHiddenNodes:Ljava/util/Hashtable;

.field private fHonourAllSchemaLocations:Z

.field private fImportMap:Ljava/util/Hashtable;

.field private fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fKeyrefNamespaceContext:[[Ljava/lang/String;

.field private fKeyrefStackPos:I

.field fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

.field private fKeyrefs:[Lmf/org/w3c/dom/Element;

.field private fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fLastSchemaWasDuplicate:Z

.field private fLocalElemNamespaceContext:[[Ljava/lang/String;

.field private fLocalElemStackPos:I

.field private fLocalElementDecl:[Lmf/org/w3c/dom/Element;

.field private fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fLocationPairs:Ljava/util/Hashtable;

.field fNamespaceGrowth:Z

.field protected fNotationRegistry:Ljava/util/Hashtable;

.field fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

.field private fParent:[Lmf/org/apache/xerces/xs/XSObject;

.field private fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fRedefine2NSSupport:Ljava/util/Hashtable;

.field private fRedefine2XSDMap:Ljava/util/Hashtable;

.field private fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

.field private fReportedTNS:Ljava/util/Vector;

.field private fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

.field fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTolerateDuplicates:Z

.field private fTraversed:Ljava/util/Hashtable;

.field fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

.field private fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedElementRegistry:Ljava/util/Hashtable;

.field private fUnparsedElementRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistry:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedRegistriesExt:[Ljava/util/Hashtable;

.field private fUnparsedTypeRegistry:Ljava/util/Hashtable;

.field private fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

.field private fValidateAnnotations:Z

.field fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

.field fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

.field private fXSDocumentInfoRegistry:Ljava/util/Hashtable;

.field private xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "src-include.2.1"

    aput-object v2, v1, v6

    const-string v2, "src-include.2.1"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "src-redefine.3.1"

    aput-object v2, v1, v6

    const-string v2, "src-redefine.3.1"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "src-import.3.1"

    aput-object v2, v1, v6

    const-string v2, "src-import.3.2"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TargetNamespace.1"

    aput-object v2, v1, v6

    const-string v2, "TargetNamespace.2"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TargetNamespace.1"

    aput-object v2, v1, v6

    const-string v2, "TargetNamespace.2"

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TargetNamespace.1"

    aput-object v3, v2, v6

    const-string v3, "TargetNamespace.2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TargetNamespace.1"

    aput-object v3, v2, v6

    const-string v3, "TargetNamespace.2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "src-include.1"

    aput-object v1, v0, v6

    const-string v1, "src-redefine.2"

    aput-object v1, v0, v4

    const-string v1, "src-import.2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "schema_reference.4"

    aput-object v2, v0, v1

    const-string v1, "schema_reference.4"

    aput-object v1, v0, v7

    const-string v1, "schema_reference.4"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string v2, "schema_reference.4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "schema_reference.4"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attribute declaration"

    aput-object v1, v0, v4

    const-string v1, "attribute group"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "element declaration"

    aput-object v2, v0, v1

    const-string v1, "group"

    aput-object v1, v0, v7

    const-string v1, "identity constraint"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string v2, "notation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type definition"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Internal-Error"

    aput-object v1, v0, v6

    const-string v1, "Internal-Error"

    aput-object v1, v0, v4

    const-string v1, "src-attribute_group.3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "e-props-correct.6"

    aput-object v2, v0, v1

    const-string v1, "mg-props-correct.2"

    aput-object v1, v0, v7

    const-string v1, "Internal-Error"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string v2, "Internal-Error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "st-props-correct.2"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x1e

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationRegistry:Ljava/util/Hashtable;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    new-array v0, v4, [Lmf/org/w3c/dom/Element;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    new-array v0, v4, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    new-array v0, v4, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    filled-new-array {v4, v7}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    new-array v0, v5, [Lmf/org/w3c/dom/Element;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    new-array v0, v5, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    new-array v0, v5, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    filled-new-array {v5, v7}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>()V

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 1
    .param p1, "gBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    return-void
.end method

.method private addGlobalAttributeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    return-void

    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-nez v2, :cond_2

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-nez v2, :cond_4

    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalAttributeGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x5

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    return-void

    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    if-nez v2, :cond_2

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    if-nez v2, :cond_4

    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)V
    .locals 6
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    const/4 v5, 0x1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .local v3, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    .local v0, "componentType":S
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_1
    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    goto :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_2
    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getScope()S

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    :cond_2
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    goto :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_3
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_3
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    goto :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_4
    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getScope()S

    move-result v4

    if-ne v4, v5, :cond_0

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_4
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_5
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_5
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    :pswitch_6
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, p1

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_6
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v4

    if-nez v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .end local p1    # "component":Lmf/org/apache/xerces/xs/XSObject;
    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private addGlobalComponents(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "components"    # Ljava/util/Vector;
    .param p2, "importDependencies"    # Ljava/util/Hashtable;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportDependencies(Ljava/util/Hashtable;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addGlobalElementDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 12
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v11, 0x2

    invoke-virtual {p1, v11}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    invoke-virtual {p1, v11}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_2

    return-void

    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v2, :cond_1

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_2
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    if-nez v2, :cond_3

    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x6

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    return-void

    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    if-nez v2, :cond_2

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v9, v2, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    if-nez v2, :cond_4

    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalNotationDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/16 v12, 0xb

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    return-void

    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .local v9, "srcDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    .local v2, "dstDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    if-nez v2, :cond_2

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    if-nez v2, :cond_4

    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGlobalTypeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v12, 0x3

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    .local v0, "components":Lmf/org/apache/xerces/xs/XSNamedMap;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v6

    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    invoke-virtual {p1, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v1

    .local v1, "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    return-void

    .end local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_0
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .local v9, "srcDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    .local v2, "dstDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v2, :cond_2

    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v9, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v10, :cond_1

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "dstDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .end local v9    # "srcDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .restart local v1    # "componentsExt":Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :cond_3
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "location":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .restart local v9    # "srcDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p2, v8, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    .restart local v2    # "dstDecl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v2, :cond_4

    invoke-virtual {p2, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1
.end method

.method private addGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .local v0, "tmpGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewGrammarLocations(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewImportedGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0
.end method

.method private addGrammars(Ljava/util/Vector;)V
    .locals 6
    .param p1, "grammars"    # Ljava/util/Vector;

    .prologue
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "length":I
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v3, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .local v4, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eq v3, v4, :cond_1

    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "sg"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "importedGrammars"    # Ljava/util/Vector;
    .param p3, "namespaceList"    # Ljava/util/Vector;

    .prologue
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .local v1, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .param p1, "namespace1"    # Ljava/lang/String;
    .param p2, "namespace2"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/Vector;

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ns1":Ljava/lang/String;
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ns2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addNewGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resetComponents()V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalElementDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalNotationDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-void
.end method

.method private addNewGrammarLocations(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    .local v3, "locations":Lmf/org/apache/xerces/xs/StringList;
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/StringList;->size()I

    move-result v2

    .local v2, "locSize":I
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    .local v4, "locations2":Lmf/org/apache/xerces/xs/StringList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v3, v0}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "loc":Ljava/lang/String;
    invoke-interface {v4, v1}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addNewImportedGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2
    .param p1, "srcGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "dstGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .local v0, "igs1":Ljava/util/Vector;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .local v1, "igs2":Ljava/util/Vector;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "igs2":Ljava/util/Vector;
    check-cast v1, Ljava/util/Vector;

    .restart local v1    # "igs2":Ljava/util/Vector;
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    .end local v1    # "igs2":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "igs2":Ljava/util/Vector;
    :cond_1
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportList(Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private addRelatedAttribute(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getScope()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    .local v0, "importedNamespaces":Ljava/util/Vector;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "importedNamespaces":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getScope()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    .local v0, "importedNamespaces":Ljava/util/Vector;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "importedNamespaces":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v0

    .local v0, "importedNamespaces":Ljava/util/Vector;
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0    # "importedNamespaces":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private canAddComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Z
    .locals 6
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    .local v2, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    .local v0, "componentType":S
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    if-eq v5, p1, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    :pswitch_4
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    :pswitch_5
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    :pswitch_6
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private canAddComponents(Ljava/util/Vector;)Z
    .locals 5
    .param p1, "components"    # Ljava/util/Vector;

    .prologue
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, "size":I
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .local v1, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObject;

    .local v0, "component":Lmf/org/apache/xerces/xs/XSObject;
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->canAddComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I
    .locals 15
    .param p1, "originalQName"    # Ljava/lang/String;
    .param p2, "elementSought"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "curr"    # Lmf/org/w3c/dom/Element;
    .param p5, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    const/4 v14, 0x0

    .local v14, "result":I
    invoke-static/range {p4 .. p4}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    .local v5, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v5, :cond_0

    return v14

    :cond_0
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v1

    add-int/2addr v14, v1

    :cond_1
    :goto_1
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto :goto_0

    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "ref":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p5

    invoke-direct {p0, v13, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findQName(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v12

    .local v12, "processedRef":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .local v11, "prefix":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, "colonptr":I
    if-lez v7, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "minOccurs":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "maxOccurs":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    const-string v1, "src-redefine.6.1.2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-virtual {p0, v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    .end local v8    # "maxOccurs":Ljava/lang/String;
    .end local v9    # "minOccurs":Ljava/lang/String;
    :cond_5
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v5, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z
    .locals 5
    .param p1, "importedGrammar"    # Ljava/util/Vector;
    .param p2, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createAnnotationValidator()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    new-instance v2, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .local v0, "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_0

    .end local v0    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_0
    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v3, "http://apache.org/xml/properties/locale"

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .end local v1    # "locale":Ljava/util/Locale;
    .restart local v0    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    .end local v0    # "errorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    goto :goto_0
.end method

.method private createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 2
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .local v0, "newGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method private createTraversers()V
    .locals 2

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    return-void
.end method

.method private doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    .local v0, "documentURI":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    instance-of v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "documentURI":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "documentURI":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method private emptyString2Null(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "ns":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private existingGrammars(Ljava/util/Vector;)Z
    .locals 7
    .param p1, "grammars"    # Ljava/util/Vector;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "length":I
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .local v0, "desc":Lmf/org/apache/xerces/impl/xs/XSDDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return v5

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v3, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .local v4, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private expandComponents([Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 4
    .param p1, "components"    # [Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "newComponents":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    return-object v2

    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObject;

    .local v0, "component":Lmf/org/apache/xerces/xs/XSObject;
    invoke-direct {p0, v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedComponents(Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private expandGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;
    .locals 7
    .param p1, "grammars"    # [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .local v0, "currGrammars":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-lt v2, v6, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    return-object v0

    :cond_0
    aget-object v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, p1, v2

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v4, "sg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .local v1, "gs":Ljava/util/Vector;
    if-nez v1, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v5, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v0, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private expandImportList(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "namespaceList"    # Ljava/util/Vector;

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .local v0, "isgs":Ljava/util/Vector;
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    .end local v0    # "isgs":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .restart local v0    # "isgs":Ljava/util/Vector;
    invoke-direct {p0, v1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    .end local v0    # "isgs":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "isgs":Ljava/util/Vector;
    :cond_1
    invoke-direct {p0, v1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedAttributeGroupComponents(Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attrGroup"    # Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedAttributeUseComponents(Lmf/org/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSAttributeUse;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeUse;->getAttrDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedAttribute(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "attrUses"    # Lmf/org/apache/xerces/xs/XSObjectList;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .local v0, "attrUseSize":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    return-void

    .end local v0    # "attrUseSize":I
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v0

    goto :goto_0

    .restart local v0    # "attrUseSize":I
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSAttributeUse;

    invoke-direct {p0, v2, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUseComponents(Lmf/org/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private expandRelatedComplexTypeComponents(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "type"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v0

    .local v0, "particle":Lmf/org/apache/xerces/xs/XSParticle;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method private expandRelatedComponents(Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    .local v0, "componentType":S
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_2
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_3
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeGroupComponents(Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :pswitch_4
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_5
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupDefinitionComponents(Lmf/org/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getSubstitutionGroupAffiliation()Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    .local v0, "subElemDecl":Lmf/org/apache/xerces/xs/XSElementDeclaration;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method private expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "modelGroup"    # Lmf/org/apache/xerces/xs/XSModelGroup;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSModelGroup;->getParticles()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    .local v2, "particles":Lmf/org/apache/xerces/xs/XSObjectList;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    return-void

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSParticle;

    invoke-direct {p0, v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private expandRelatedModelGroupDefinitionComponents(Lmf/org/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "modelGroupDef"    # Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;->getModelGroup()Lmf/org/apache/xerces/xs/XSModelGroup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "component"    # Lmf/org/apache/xerces/xs/XSParticle;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSParticle;->getTerm()Lmf/org/apache/xerces/xs/XSTerm;

    move-result-object v0

    .local v0, "term":Lmf/org/apache/xerces/xs/XSTerm;
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTerm;->getType()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .end local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    :goto_0
    return-void

    .restart local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    :sswitch_0
    check-cast v0, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .end local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    .restart local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    :sswitch_1
    check-cast v0, Lmf/org/apache/xerces/xs/XSModelGroup;

    .end local v0    # "term":Lmf/org/apache/xerces/xs/XSTerm;
    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private expandRelatedSimpleTypeComponents(Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "baseType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    .local v2, "itemType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    .local v4, "primitiveType":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    .local v3, "memberTypes":Lmf/org/apache/xerces/xs/XSObjectList;
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .end local v1    # "i":I
    :cond_3
    return-void

    .restart local v1    # "i":I
    :cond_4
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, v5, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "type"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "componentList"    # Ljava/util/Vector;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "dependencies"    # Ljava/util/Hashtable;

    .prologue
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .end local p1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedComplexTypeComponents(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    :goto_0
    return-void

    .restart local p1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    .end local p1    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedSimpleTypeComponents(Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method private findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/util/Hashtable;

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ns":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .local v0, "namespaceList":Ljava/util/Vector;
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    .end local v0    # "namespaceList":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .restart local v0    # "namespaceList":Ljava/util/Vector;
    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private findQName(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .local v1, "currNSMap":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "colonPtr":I
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .local v3, "prefix":Ljava/lang/String;
    if-lez v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "uri":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v2, p1

    .local v2, "localpart":Ljava/lang/String;
    :goto_0
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v5, :cond_1

    if-nez v4, :cond_1

    iget-boolean v5, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v5, :cond_1

    iget-object v4, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :cond_1
    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .end local v2    # "localpart":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "localpart":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private findXSDocumentForDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .locals 2
    .param p1, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p2, "decl"    # Lmf/org/w3c/dom/Element;
    .param p3, "decl_Doc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    move-object v1, p3

    .local v1, "temp":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .local v0, "declDocInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_0
.end method

.method private getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0
.end method

.method private getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method private getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method private getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method private getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object v0
.end method

.method private getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method private getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 19
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/util/DOMInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v5, 0x1

    .local v5, "hasInput":Z
    const/4 v8, 0x0

    .local v8, "exception":Ljava/io/IOException;
    const/16 v16, 0x0

    .local v16, "schemaElement":Lmf/org/w3c/dom/Element;
    const/16 v18, 0x0

    .local v18, "schemaRootElement":Lmf/org/w3c/dom/Element;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v13

    .local v13, "node":Lmf/org/w3c/dom/Node;
    const/4 v14, -0x1

    .local v14, "nodeType":S
    if-eqz v13, :cond_0

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v3, 0x9

    if-ne v14, v3, :cond_2

    check-cast v13, Lmf/org/w3c/dom/Document;

    .end local v13    # "node":Lmf/org/w3c/dom/Node;
    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    :cond_0
    :goto_0
    if-eqz v18, :cond_7

    const/4 v11, 0x0

    .local v11, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/16 v17, 0x0

    .local v17, "schemaId":Ljava/lang/String;
    const/4 v3, 0x3

    move/from16 v0, p4

    if-eq v0, v3, :cond_6

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    const/16 v3, 0x9

    if-ne v14, v3, :cond_3

    const/4 v10, 0x1

    .local v10, "isDocument":Z
    :goto_1
    if-nez v10, :cond_1

    invoke-interface/range {v18 .. v18}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v15

    .local v15, "parent":Lmf/org/w3c/dom/Node;
    if-eqz v15, :cond_1

    invoke-interface {v15}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    const/4 v10, 0x1

    .end local v15    # "parent":Lmf/org/w3c/dom/Node;
    :cond_1
    :goto_2
    if-eqz v10, :cond_6

    new-instance v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    move-object/from16 v0, v17

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v12, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .local v12, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v3, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v3, v16

    .end local v10    # "isDocument":Z
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v17    # "schemaId":Ljava/lang/String;
    :goto_3
    return-object v3

    .restart local v13    # "node":Lmf/org/w3c/dom/Node;
    :cond_2
    const/4 v3, 0x1

    if-ne v14, v3, :cond_0

    move-object/from16 v18, v13

    check-cast v18, Lmf/org/w3c/dom/Element;

    goto :goto_0

    .end local v13    # "node":Lmf/org/w3c/dom/Node;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v17    # "schemaId":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "isDocument":Z
    .restart local v15    # "parent":Lmf/org/w3c/dom/Node;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "parent":Lmf/org/w3c/dom/Node;
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :cond_5
    move-object v11, v12

    .end local v10    # "isDocument":Z
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :cond_6
    move-object/from16 v16, v18

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_3

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v17    # "schemaId":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto :goto_3

    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v17    # "schemaId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "ioe":Ljava/io/IOException;
    :goto_5
    move-object v8, v9

    goto :goto_4

    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v10    # "isDocument":Z
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    goto :goto_5
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 22
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/util/SAXInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .local v13, "parser":Lorg/xml/sax/XMLReader;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v9

    .local v9, "inputSource":Lorg/xml/sax/InputSource;
    const/4 v5, 0x1

    .local v5, "hasInput":Z
    const/4 v8, 0x0

    .local v8, "exception":Ljava/io/IOException;
    const/16 v16, 0x0

    .local v16, "schemaElement":Lmf/org/w3c/dom/Element;
    if-eqz v9, :cond_6

    :try_start_0
    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_0
    const/4 v11, 0x0

    .local v11, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/16 v17, 0x0

    .local v17, "schemaId":Ljava/lang/String;
    const/4 v3, 0x3

    move/from16 v0, p4

    if-eq v0, v3, :cond_1

    invoke-virtual {v9}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    new-instance v11, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, v17

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v11, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v3, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v3, v16

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v17    # "schemaId":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v17    # "schemaId":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .local v12, "namespacePrefixes":Z
    if-eqz v13, :cond_4

    :try_start_1
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v12

    :cond_2
    :goto_1
    const/16 v21, 0x0

    .local v21, "stringsInternalized":Z
    :try_start_2
    const-string v3, "http://xml.org/sax/features/string-interning"

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v21

    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    if-nez v3, :cond_3

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move/from16 v0, v21

    invoke-virtual {v3, v4, v6, v12, v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v13, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v3, 0x0

    :try_start_4
    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v15

    .local v15, "schemaDocument":Lmf/org/w3c/dom/Document;
    if-eqz v15, :cond_5

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v16

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    :try_end_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v3

    goto :goto_0

    .end local v15    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v21    # "stringsInternalized":Z
    :cond_4
    :try_start_6
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v13

    :goto_5
    :try_start_7
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v4, 0x1

    invoke-interface {v13, v3, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const/4 v12, 0x1

    instance-of v3, v13, Lmf/org/apache/xerces/parsers/SAXParser;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .local v19, "securityManager":Ljava/lang/Object;
    if-eqz v19, :cond_2

    const-string v3, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v0, v19

    invoke-interface {v13, v3, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .end local v19    # "securityManager":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    :catch_1
    move-exception v18

    .local v18, "se":Lorg/xml/sax/SAXException;
    :try_start_8
    new-instance v14, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v14}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>()V
    :try_end_8
    .catch Lorg/xml/sax/SAXParseException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .end local v13    # "parser":Lorg/xml/sax/XMLReader;
    .local v14, "parser":Lorg/xml/sax/XMLReader;
    move-object v13, v14

    .end local v14    # "parser":Lorg/xml/sax/XMLReader;
    .restart local v13    # "parser":Lorg/xml/sax/XMLReader;
    goto :goto_5

    .end local v18    # "se":Lorg/xml/sax/SAXException;
    .restart local v15    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .restart local v21    # "stringsInternalized":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_4

    .end local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v12    # "namespacePrefixes":Z
    .end local v15    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v17    # "schemaId":Ljava/lang/String;
    .end local v21    # "stringsInternalized":Z
    :cond_6
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto/16 :goto_0

    :catch_2
    move-exception v20

    .local v20, "spe":Lorg/xml/sax/SAXParseException;
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXMLParseException0(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v3

    throw v3

    .end local v20    # "spe":Lorg/xml/sax/SAXParseException;
    :catch_3
    move-exception v18

    .restart local v18    # "se":Lorg/xml/sax/SAXException;
    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXNIException0(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v3

    throw v3

    .end local v18    # "se":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v10

    .local v10, "ioe":Ljava/io/IOException;
    move-object v8, v10

    goto :goto_6

    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v11    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v12    # "namespacePrefixes":Z
    .restart local v17    # "schemaId":Ljava/lang/String;
    .restart local v21    # "stringsInternalized":Z
    :catch_5
    move-exception v3

    goto :goto_3

    :catch_6
    move-exception v3

    goto/16 :goto_2

    .end local v21    # "stringsInternalized":Z
    :catch_7
    move-exception v3

    goto/16 :goto_1
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 19
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/util/StAXInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v7, 0x0

    .local v7, "exception":Ljava/io/IOException;
    const/4 v14, 0x0

    .local v14, "schemaElement":Lmf/org/w3c/dom/Element;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->shouldConsumeRemainingContent()Z

    move-result v8

    .local v8, "consumeRemainingContent":Z
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v17

    .local v17, "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v10

    .local v10, "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    const/4 v12, 0x0

    .local v12, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/4 v15, 0x0

    .local v15, "schemaId":Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    move v11, v8

    .local v11, "isDocument":Z
    if-nez v11, :cond_0

    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v11, 0x1

    :cond_0
    :goto_0
    if-eqz v11, :cond_3

    new-instance v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-direct {v12, v15, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v14, v0

    if-eqz v14, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    move-object v2, v14

    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v11    # "isDocument":Z
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :goto_1
    return-object v2

    .restart local v8    # "consumeRemainingContent":Z
    .restart local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .restart local v11    # "isDocument":Z
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v15    # "schemaId":Ljava/lang/String;
    .restart local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v10}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Lmf/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v11

    goto :goto_0

    .end local v11    # "isDocument":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    if-nez v2, :cond_4

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;)V

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->parse(Lmf/javax/xml/stream/XMLStreamReader;)V

    if-eqz v8, :cond_5

    :goto_2
    invoke-interface/range {v17 .. v17}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v13

    .local v13, "schemaDocument":Lmf/org/w3c/dom/Document;
    if-eqz v13, :cond_8

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_1

    .end local v13    # "schemaDocument":Lmf/org/w3c/dom/Document;
    :cond_6
    invoke-interface/range {v17 .. v17}, Lmf/javax/xml/stream/XMLStreamReader;->next()I
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :catch_0
    move-exception v9

    .local v9, "e":Lmf/javax/xml/stream/XMLStreamException;
    invoke-virtual {v9}, Lmf/javax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object v18

    .local v18, "t":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_9

    move-object/from16 v7, v18

    check-cast v7, Ljava/io/IOException;

    .end local v9    # "e":Lmf/javax/xml/stream/XMLStreamException;
    .end local v18    # "t":Ljava/lang/Throwable;
    :goto_4
    const/4 v4, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_1

    .restart local v8    # "consumeRemainingContent":Z
    .restart local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v15    # "schemaId":Ljava/lang/String;
    .restart local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->parse(Lmf/javax/xml/stream/XMLEventReader;)V

    if-eqz v8, :cond_5

    :goto_5
    invoke-interface {v10}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    move-object v7, v9

    goto :goto_4

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "consumeRemainingContent":Z
    .restart local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .restart local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v13    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .restart local v15    # "schemaId":Ljava/lang/String;
    .restart local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .end local v8    # "consumeRemainingContent":Z
    .end local v10    # "eventReader":Lmf/javax/xml/stream/XMLEventReader;
    .end local v12    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v13    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v15    # "schemaId":Ljava/lang/String;
    .end local v17    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    .local v9, "e":Lmf/javax/xml/stream/XMLStreamException;
    .restart local v18    # "t":Ljava/lang/Throwable;
    :cond_9
    new-instance v16, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    .local v16, "slw":Lmf/org/apache/xerces/util/StAXLocationWrapper;
    invoke-virtual {v9}, Lmf/javax/xml/stream/XMLStreamException;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-virtual {v9}, Lmf/javax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3, v9}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 12
    .param p1, "schemaNamespace"    # Ljava/lang/String;
    .param p2, "schemaSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p3, "mustResolve"    # Z
    .param p4, "referType"    # S
    .param p5, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v3, 0x1

    .local v3, "hasInput":Z
    const/4 v6, 0x0

    .local v6, "exception":Ljava/io/IOException;
    const/4 v10, 0x0

    .local v10, "schemaElement":Lmf/org/w3c/dom/Element;
    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v8, 0x0

    .local v8, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    const/4 v11, 0x0

    .local v11, "schemaId":Ljava/lang/String;
    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    .end local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move/from16 v0, p4

    invoke-direct {v8, v11, v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .restart local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v10, v0

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    move-object v1, v10

    .end local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v11    # "schemaId":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .restart local v11    # "schemaId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v9

    .local v9, "schemaDocument":Lmf/org/w3c/dom/Document;
    if-eqz v9, :cond_2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    :goto_1
    invoke-direct {p0, v8, v11, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .end local v8    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v9    # "schemaDocument":Lmf/org/w3c/dom/Document;
    .end local v11    # "schemaId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    :goto_2
    move-object v1, p0

    move v2, p3

    move-object v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    move-object v6, v7

    goto :goto_2
.end method

.method private getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;
    .locals 9
    .param p1, "schemaSource"    # Lmf/org/apache/xerces/impl/xs/util/XSInputSource;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .local v3, "grammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    .local v5, "referType":S
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lez v6, :cond_2

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;

    move-result-object v2

    .local v2, "expandedGrammars":Ljava/util/Vector;
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v6, :cond_0

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->existingGrammars(Ljava/util/Vector;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGrammars(Ljava/util/Vector;)V

    if-ne v5, v8, :cond_1

    aget-object v6, v3, v7

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    .end local v2    # "expandedGrammars":Ljava/util/Vector;
    :cond_1
    :goto_0
    const/4 v6, 0x0

    return-object v6

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->getComponents()[Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    .local v0, "components":[Lmf/org/apache/xerces/xs/XSObject;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .local v4, "importDependencies":Ljava/util/Hashtable;
    invoke-direct {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandComponents([Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v1

    .local v1, "expandedComponents":Ljava/util/Vector;
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->canAddComponents(Ljava/util/Vector;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_3
    invoke-direct {p0, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalComponents(Ljava/util/Vector;Ljava/util/Hashtable;)V

    if-ne v5, v8, :cond_1

    aget-object v6, v0, v7

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "key"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .param p2, "schemaId"    # Ljava/lang/String;
    .param p3, "schemaElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object p3
.end method

.method private getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p1, "mustResolve"    # Z
    .param p2, "hasInput"    # Z
    .param p3, "schemaSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p4, "referElement"    # Lmf/org/w3c/dom/Element;
    .param p5, "ioe"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    const-string v0, "schema_reference.4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "schema_reference.4"

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_0

    const-string v0, "schema_reference.4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getSchemaGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 4
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .local v0, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    .restart local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    goto :goto_0
.end method

.method private isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z
    .locals 7
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "ignoreConflict"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    move v2, v3

    goto :goto_0
.end method

.method private final needReportTNSError(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nonAnnotationContent(Lmf/org/w3c/dom/Element;)Z
    .locals 3
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;

    .prologue
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .local v0, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .end local p1    # "ns":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 7
    .param p1, "group"    # Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .param p2, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v3, v0

    .local v2, "member":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    if-ne v2, p2, :cond_2

    move v1, v0

    .local v1, "j":I
    :goto_2
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "j":I
    :cond_2
    iget-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p2, "child"    # Lmf/org/w3c/dom/Element;
    .param p3, "componentType"    # Ljava/lang/String;
    .param p4, "oldName"    # Ljava/lang/String;
    .param p5, "newName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .local v10, "grandKid":Lmf/org/w3c/dom/Element;
    if-nez v10, :cond_1

    const-string v1, "src-redefine.5.a.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .end local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    :cond_0
    :goto_0
    return-void

    .restart local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    :cond_1
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .local v11, "grandKidName":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    :cond_2
    if-nez v10, :cond_3

    const-string v1, "src-redefine.5.a.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "src-redefine.5.a.b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v10, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v8

    .local v8, "attrs":[Ljava/lang/Object;
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v9, v8, v1

    check-cast v9, Lmf/org/apache/xerces/xni/QName;

    .local v9, "derivedBase":Lmf/org/apache/xerces/xni/QName;
    if-eqz v9, :cond_5

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, v3, :cond_5

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    const-string v3, "src-redefine.5.a.c"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v11, v4, v1

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {p0, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v10, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v8    # "attrs":[Ljava/lang/Object;
    .end local v9    # "derivedBase":Lmf/org/apache/xerces/xni/QName;
    .end local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    .end local v11    # "grandKidName":Ljava/lang/String;
    :cond_9
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .restart local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    if-nez v10, :cond_a

    const-string v1, "src-redefine.5.b.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    :cond_b
    if-nez v10, :cond_c

    const-string v1, "src-redefine.5.b.a"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    .local v12, "greatGrandKid":Lmf/org/w3c/dom/Element;
    if-nez v12, :cond_d

    const-string v1, "src-redefine.5.b.b"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    .local v13, "greatGrandKidName":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    :cond_e
    if-nez v12, :cond_f

    const-string v1, "src-redefine.5.b.b"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "src-redefine.5.b.c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    invoke-virtual {p0, v1, v3, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v12, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "attrs":[Ljava/lang/Object;
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v9, v8, v1

    check-cast v9, Lmf/org/apache/xerces/xni/QName;

    .restart local v9    # "derivedBase":Lmf/org/apache/xerces/xni/QName;
    if-eqz v9, :cond_11

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v1, v3, :cond_11

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    const-string v3, "src-redefine.5.b.d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v4, v1

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, ""

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_3

    :cond_13
    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v1, v3}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v12, v1, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "attrs":[Ljava/lang/Object;
    .end local v9    # "derivedBase":Lmf/org/apache/xerces/xni/QName;
    .end local v10    # "grandKid":Lmf/org/w3c/dom/Element;
    .end local v12    # "greatGrandKid":Lmf/org/w3c/dom/Element;
    .end local v13    # "greatGrandKidName":Ljava/lang/String;
    :cond_15
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "processedBaseName":Ljava/lang/String;
    :goto_4
    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v7

    .local v7, "attGroupRefsCount":I
    const/4 v1, 0x1

    if-le v7, v1, :cond_17

    const-string v1, "src-redefine.7.1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v7    # "attGroupRefsCount":I
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .restart local v2    # "processedBaseName":Ljava/lang/String;
    .restart local v7    # "attGroupRefsCount":I
    :cond_17
    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_18

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v7    # "attGroupRefsCount":I
    :cond_19
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "processedBaseName":Ljava/lang/String;
    :goto_5
    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v14

    .local v14, "groupRefsCount":I
    const/4 v1, 0x1

    if-le v14, v1, :cond_1b

    const-string v1, "src-redefine.6.1.1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v14    # "groupRefsCount":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .restart local v2    # "processedBaseName":Ljava/lang/String;
    .restart local v14    # "groupRefsCount":I
    :cond_1b
    const/4 v1, 0x1

    if-eq v14, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v2    # "processedBaseName":Ljava/lang/String;
    .end local v14    # "groupRefsCount":I
    :cond_1d
    const-string v1, "Internal-Error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p0, v1, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0
.end method

.method private reportSharingError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "qName":Ljava/lang/String;
    :goto_0
    const-string v1, "sch-props-correct.2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void

    .end local v0    # "qName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/w3c/dom/Element;
    .locals 8
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "mustResolve"    # Z
    .param p3, "referElement"    # Lmf/org/w3c/dom/Element;
    .param p4, "usePairs"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .local v7, "pairs":Ljava/util/Hashtable;
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, v7, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v7    # "pairs":Ljava/util/Hashtable;
    :goto_1
    instance-of v0, v2, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lmf/org/apache/xerces/util/DOMInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_2
    return-object v0

    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_0
    :try_start_1
    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    if-eqz p2, :cond_1

    const-string v0, "schema_reference.4"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    const-string v0, "schema_reference.4"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .end local v6    # "ex":Ljava/io/IOException;
    :cond_2
    instance-of v0, v2, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lmf/org/apache/xerces/util/SAXInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_3
    instance-of v0, v2, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lmf/org/apache/xerces/util/StAXInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_4
    instance-of v0, v2, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_5

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    .end local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-direct {p0, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .restart local v2    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_2
.end method

.method private resolveSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 6
    .param p1, "schemaSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p3, "mustResolve"    # Z
    .param p4, "referElement"    # Lmf/org/w3c/dom/Element;

    .prologue
    instance-of v0, p1, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/DOMInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .end local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :goto_0
    return-object v0

    .restart local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_3

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    .end local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    .restart local p1    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_3
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveSchemaSource(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "mustResolve"    # Z
    .param p3, "referElement"    # Lmf/org/w3c/dom/Element;
    .param p4, "usePairs"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .local v1, "pairs":Ljava/util/Hashtable;
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    .end local v1    # "pairs":Ljava/util/Hashtable;
    :goto_1
    return-object v2

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    if-eqz p2, :cond_1

    const-string v3, "schema_reference.4"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    const-string v3, "schema_reference.4"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1
.end method

.method private setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 4
    .param p1, "startSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lmf/org/apache/xerces/util/DOMUtil;->setVisible(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .local v0, "dependingSchemas":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .end local v0    # "dependingSchemas":Ljava/util/Vector;
    .end local v1    # "i":I
    :cond_0
    return-void

    .restart local v0    # "dependingSchemas":Ljava/util/Vector;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateImportDependencies(Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "table"    # Ljava/util/Hashtable;

    .prologue
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "namespace":Ljava/lang/String;
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .local v0, "importList":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandImportList(Ljava/lang/String;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private updateImportList(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .param p1, "importedSrc"    # Ljava/util/Vector;
    .param p2, "importedDst"    # Ljava/util/Vector;

    .prologue
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v1, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-direct {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "sg"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "importedGrammars"    # Ljava/util/Vector;
    .param p3, "namespaceList"    # Ljava/util/Vector;

    .prologue
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .local v1, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v1, :cond_1

    invoke-direct {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .local v1, "importedGrammars":Ljava/util/Vector;
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0    # "i":I
    :cond_0
    return-void

    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v2, "isg1":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .local v3, "isg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 8
    .param p1, "newGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .local v4, "schemaGrammars":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-lt v0, v6, :cond_0

    return-void

    :cond_0
    aget-object v5, v4, v0

    .local v5, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eq v5, p1, :cond_1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    .local v1, "importedGrammars":Ljava/util/Vector;
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    .end local v1    # "importedGrammars":Ljava/util/Vector;
    .end local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1    # "importedGrammars":Ljava/util/Vector;
    .restart local v3    # "j":I
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .local v2, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eq v2, p1, :cond_1

    invoke-virtual {v1, v3, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private validateAnnotations(Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "annotationInfo"    # Ljava/util/ArrayList;

    .prologue
    const/4 v5, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-nez v4, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createAnnotationValidator()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v3, v5, v5, v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "src":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->refreshGrammars(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    .local v0, "annotation":Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    :goto_1
    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/StringReader;

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->next:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 4
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "declKey":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    .end local v0    # "declKey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected buildGlobalNameRegistries()V
    .locals 29

    .prologue
    new-instance v28, Ljava/util/Stack;

    invoke-direct/range {v28 .. v28}, Ljava/util/Stack;-><init>()V

    .local v28, "schemasToProcess":Ljava/util/Stack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .local v8, "currSchemaDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    move-object/from16 v23, v0

    .local v23, "currDoc":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v24, v23

    .local v24, "currRoot":Lmf/org/w3c/dom/Element;
    const/16 v26, 0x1

    .local v26, "dependenciesCanOccur":Z
    invoke-static/range {v24 .. v24}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    .local v20, "globalComp":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Vector;

    .local v25, "currSchemaDepends":Ljava/util/Vector;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .end local v25    # "currSchemaDepends":Ljava/util/Vector;
    .end local v27    # "i":I
    :cond_2
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_2
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_0

    :cond_4
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    if-nez v26, :cond_6

    const-string v2, "s4s-elt-invalid-content.3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_2

    :cond_7
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v26, :cond_8

    const-string v2, "s4s-elt-invalid-content.3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_8
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    .local v7, "redefineComp":Lmf/org/w3c/dom/Element;
    :goto_3
    if-eqz v7, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "lName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_4
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    goto :goto_3

    :cond_a
    iget-object v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "qName":Ljava/lang/String;
    :goto_5
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    .local v22, "componentType":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fn3dktizrknc9pi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "targetLName":Ljava/lang/String;
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v3    # "qName":Ljava/lang/String;
    .end local v14    # "targetLName":Ljava/lang/String;
    .end local v22    # "componentType":Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .restart local v3    # "qName":Ljava/lang/String;
    .restart local v22    # "componentType":Ljava/lang/String;
    :cond_c
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_d
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fn3dktizrknc9pi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "targetLName":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v14    # "targetLName":Ljava/lang/String;
    :cond_f
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v7, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_fn3dktizrknc9pi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "targetLName":Ljava/lang/String;
    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v10, v8

    move-object v11, v7

    invoke-direct/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v3    # "qName":Ljava/lang/String;
    .end local v7    # "redefineComp":Lmf/org/w3c/dom/Element;
    .end local v13    # "lName":Ljava/lang/String;
    .end local v14    # "targetLName":Ljava/lang/String;
    .end local v22    # "componentType":Ljava/lang/String;
    :cond_10
    const/16 v26, 0x0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "lName":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "qName":Ljava/lang/String;
    :goto_6
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "componentType":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    .end local v3    # "qName":Ljava/lang/String;
    .end local v22    # "componentType":Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .restart local v3    # "qName":Ljava/lang/String;
    .restart local v22    # "componentType":Ljava/lang/String;
    :cond_12
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_13
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    const/16 v17, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_15
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_16
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_17
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2
.end method

.method checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 18
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "declType"    # I
    .param p3, "registry"    # Ljava/util/Hashtable;
    .param p4, "registry_sub"    # Ljava/util/Hashtable;
    .param p5, "currComp"    # Lmf/org/w3c/dom/Element;
    .param p6, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    const/16 v16, 0x0

    .local v16, "objElem":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILmf/org/w3c/dom/Element;)V

    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v4, v4, p2

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v12, v16

    check-cast v12, Lmf/org/w3c/dom/Element;

    .local v12, "collidingElem":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .local v13, "collidingElemSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    move-object/from16 v0, p5

    if-eq v12, v0, :cond_2

    const/4 v14, 0x0

    .local v14, "elemParent":Lmf/org/w3c/dom/Element;
    const/16 v17, 0x0

    .local v17, "redefinedSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    const/4 v11, 0x1

    .local v11, "collidedWithRedefine":Z
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "redefinedSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v17, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v17    # "redefinedSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_4
    :goto_2
    if-eqz v17, :cond_c

    move-object/from16 v0, p6

    if-ne v13, v0, :cond_6

    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_5
    invoke-static/range {p5 .. p5}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v17, v13

    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_fn3dktizrknc9pi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "newName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p6

    if-ne v0, v1, :cond_9

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v15}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, p6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v11, :cond_b

    move-object/from16 v0, p6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v15    # "newName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v4, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p6

    if-ne v4, v0, :cond_1

    :cond_d
    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0
.end method

.method checkForDuplicateNames(Ljava/lang/String;ILmf/org/w3c/dom/Element;)V
    .locals 7
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "declType"    # I
    .param p3, "currComp"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "namespaceEnd":I
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "namespace":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .local v0, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    const-string v4, "sch-props-correct.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .locals 44
    .param p1, "schemaRoot"    # Lmf/org/w3c/dom/Element;
    .param p2, "locationHint"    # Ljava/lang/String;
    .param p3, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p4, "nsCollision"    # Z

    .prologue
    if-nez p1, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v17

    .local v17, "callerTNS":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v33

    .local v33, "referType":S
    const/4 v9, 0x0

    .local v9, "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :try_start_0
    new-instance v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .end local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;-><init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;Lmf/org/apache/xerces/util/SymbolTable;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "EmptyTargetNamespace"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v4, 0x0

    iput-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :cond_1
    if-eqz v17, :cond_8

    const/16 v40, 0x0

    .local v40, "secondIdx":I
    if-eqz v33, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_7

    :cond_2
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v4, :cond_6

    move-object/from16 v0, v17

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    .end local v40    # "secondIdx":I
    :cond_3
    :goto_1
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    const/16 v41, 0x0

    .local v41, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz p4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v8, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v42

    .local v42, "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-virtual/range {v42 .. v42}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    invoke-direct/range {v41 .. v42}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .end local v42    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_4
    :goto_3
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .local v18, "dependencies":Ljava/util/Vector;
    move-object/from16 v34, p1

    .local v34, "rootNode":Lmf/org/w3c/dom/Element;
    const/16 v29, 0x0

    .local v29, "newSchemaRoot":Lmf/org/w3c/dom/Element;
    invoke-static/range {v34 .. v34}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    .local v5, "child":Lmf/org/w3c/dom/Element;
    :goto_4
    if-nez v5, :cond_f

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    invoke-virtual {v4, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v5    # "child":Lmf/org/w3c/dom/Element;
    .end local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .end local v18    # "dependencies":Ljava/util/Vector;
    .end local v29    # "newSchemaRoot":Lmf/org/w3c/dom/Element;
    .end local v34    # "rootNode":Lmf/org/w3c/dom/Element;
    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :catch_0
    move-exception v39

    .local v39, "se":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    aget-object v4, v4, v33

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v39    # "se":Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
    .restart local v9    # "currSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v40    # "secondIdx":I
    :cond_6
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v33

    aget-object v4, v4, v40

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x3

    move/from16 v0, v33

    if-eq v0, v4, :cond_3

    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v33

    aget-object v4, v4, v40

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v40    # "secondIdx":I
    :cond_8
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    move/from16 v0, v33

    if-ne v0, v4, :cond_9

    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_1

    :cond_9
    const/16 v40, 0x1

    .restart local v40    # "secondIdx":I
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v33

    aget-object v4, v4, v40

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v8, v10

    const/4 v10, 0x1

    iget-object v11, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v40    # "secondIdx":I
    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v42    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_a
    move-object/from16 v41, v42

    goto/16 :goto_2

    .end local v42    # "sg2":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_b
    if-eqz v33, :cond_c

    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v8, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v41

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    move/from16 v0, v33

    if-ne v0, v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v41

    if-nez v41, :cond_4

    new-instance v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v41

    invoke-direct {v0, v4, v8, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_3

    :cond_e
    new-instance v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .end local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v41

    invoke-direct {v0, v4, v8, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    .restart local v41    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_3

    .restart local v5    # "child":Lmf/org/w3c/dom/Element;
    .restart local v18    # "dependencies":Ljava/util/Vector;
    .restart local v29    # "newSchemaRoot":Lmf/org/w3c/dom/Element;
    .restart local v34    # "rootNode":Lmf/org/w3c/dom/Element;
    :cond_f
    const/16 v37, 0x0

    .local v37, "schemaNamespace":Ljava/lang/String;
    const/16 v35, 0x0

    .local v35, "schemaHint":Ljava/lang/String;
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v26

    .local v26, "localName":Ljava/lang/String;
    const/16 v32, -0x1

    .local v32, "refType":S
    const/16 v20, 0x0

    .local v20, "importCollision":Z
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    :goto_5
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto/16 :goto_4

    :cond_11
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .local v7, "importAttrs":[Ljava/lang/Object;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v35, v7, v4

    .end local v35    # "schemaHint":Ljava/lang/String;
    check-cast v35, Ljava/lang/String;

    .restart local v35    # "schemaHint":Ljava/lang/String;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v37, v7, v4

    .end local v37    # "schemaNamespace":Ljava/lang/String;
    check-cast v37, Ljava/lang/String;

    .restart local v37    # "schemaNamespace":Ljava/lang/String;
    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    :cond_12
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .local v19, "importChild":Lmf/org/w3c/dom/Element;
    if-eqz v19, :cond_15

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    .local v21, "importComponentType":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :goto_6
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .end local v21    # "importComponentType":Ljava/lang/String;
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v37

    if-ne v0, v4, :cond_17

    if-eqz v37, :cond_16

    const-string v4, "src-import.1.1"

    :goto_8
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v37, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    .restart local v21    # "importComponentType":Ljava/lang/String;
    :cond_14
    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v21, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_6

    .end local v21    # "importComponentType":Ljava/lang/String;
    :cond_15
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_7

    .end local v6    # "text":Ljava/lang/String;
    :cond_16
    const-string v4, "src-import.1.2"

    goto :goto_8

    :cond_17
    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_10

    :cond_18
    :goto_9
    iget-object v4, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .local v43, "tns":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Vector;

    .local v24, "ins":Ljava/util/Vector;
    if-nez v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v24, Ljava/util/Vector;

    .end local v24    # "ins":Ljava/util/Vector;
    invoke-direct/range {v24 .. v24}, Ljava/util/Vector;-><init>()V

    .restart local v24    # "ins":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v35, v8, v10

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v25

    .local v25, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_1f

    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v8, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-nez v4, :cond_10

    const/16 v20, 0x1

    :cond_1a
    :goto_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v10, 0x0

    if-nez v25, :cond_20

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/w3c/dom/Element;

    move-result-object v29

    .end local v7    # "importAttrs":[Ljava/lang/Object;
    .end local v19    # "importChild":Lmf/org/w3c/dom/Element;
    .end local v24    # "ins":Ljava/util/Vector;
    .end local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v43    # "tns":Ljava/lang/String;
    :goto_d
    const/16 v28, 0x0

    .local v28, "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    if-eqz v4, :cond_2f

    if-nez v29, :cond_2e

    const/16 v28, 0x0

    :goto_e
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v28, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    if-eqz v29, :cond_10

    if-eqz v28, :cond_1c

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1c
    const/16 v29, 0x0

    goto/16 :goto_5

    .end local v28    # "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v7    # "importAttrs":[Ljava/lang/Object;
    .restart local v19    # "importChild":Lmf/org/w3c/dom/Element;
    :cond_1d
    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    goto/16 :goto_9

    .restart local v24    # "ins":Ljava/util/Vector;
    .restart local v43    # "tns":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_a

    .restart local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_5

    :cond_20
    const/4 v4, 0x0

    goto :goto_c

    .end local v7    # "importAttrs":[Ljava/lang/Object;
    .end local v19    # "importChild":Lmf/org/w3c/dom/Element;
    .end local v24    # "ins":Ljava/util/Vector;
    .end local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .end local v43    # "tns":Ljava/lang/String;
    :cond_21
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v13

    .local v13, "includeAttrs":[Ljava/lang/Object;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v35, v13, v4

    .end local v35    # "schemaHint":Ljava/lang/String;
    check-cast v35, Ljava/lang/String;

    .restart local v35    # "schemaHint":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    new-instance v8, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v8, v10}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v22

    .local v22, "includeChild":Lmf/org/w3c/dom/Element;
    if-eqz v22, :cond_29

    invoke-static/range {v22 .. v22}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    .local v23, "includeComponentType":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v13, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :goto_f
    invoke-static/range {v22 .. v22}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_24

    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v22 .. v22}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .end local v22    # "includeChild":Lmf/org/w3c/dom/Element;
    .end local v23    # "includeComponentType":Ljava/lang/String;
    :cond_24
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v13, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    if-nez v35, :cond_25

    const-string v4, "s4s-att-must-appear"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "<include> or <redefine>"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "schemaLocation"

    aput-object v11, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_25
    const/16 v27, 0x0

    .local v27, "mustResolve":Z
    const/16 v32, 0x0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->nonAnnotationContent(Lmf/org/w3c/dom/Element;)Z

    move-result v27

    const/16 v32, 0x1

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v35, v8, v10

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    const/16 v16, 0x0

    .local v16, "alreadyTraversed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v4, v1, v5, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchemaSource(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v38

    .local v38, "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v4, :cond_27

    if-nez v32, :cond_27

    :try_start_2
    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v4, v8, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v36

    .local v36, "schemaId":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .end local v36    # "schemaId":Ljava/lang/String;
    :cond_27
    :goto_11
    if-nez v16, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v27

    invoke-direct {v0, v1, v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v29

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v37, v0

    goto/16 :goto_d

    .end local v16    # "alreadyTraversed":Z
    .end local v27    # "mustResolve":Z
    .end local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v22    # "includeChild":Lmf/org/w3c/dom/Element;
    .restart local v23    # "includeComponentType":Ljava/lang/String;
    :cond_28
    const-string v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v8, v10

    const/4 v10, 0x1

    const-string v11, "annotation?"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v23, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_f

    .end local v23    # "includeComponentType":Ljava/lang/String;
    :cond_29
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v14, 0x1

    move-object v11, v5

    move-object v12, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_10

    .end local v6    # "text":Ljava/lang/String;
    .end local v22    # "includeChild":Lmf/org/w3c/dom/Element;
    :cond_2a
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v30

    .local v30, "redefinedChild":Lmf/org/w3c/dom/Element;
    :goto_12
    if-eqz v30, :cond_24

    invoke-static/range {v30 .. v30}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v31

    .local v31, "redefinedComponentType":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v8, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v13, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_2b
    :goto_13
    invoke-static/range {v30 .. v30}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v30

    goto :goto_12

    :cond_2c
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v6, :cond_2b

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v14, 0x1

    move-object v11, v5

    move-object v12, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_13

    .end local v6    # "text":Ljava/lang/String;
    .end local v30    # "redefinedChild":Lmf/org/w3c/dom/Element;
    .end local v31    # "redefinedComponentType":Ljava/lang/String;
    .restart local v16    # "alreadyTraversed":Z
    .restart local v27    # "mustResolve":Z
    .restart local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_2d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    goto/16 :goto_d

    .end local v13    # "includeAttrs":[Ljava/lang/Object;
    .end local v16    # "alreadyTraversed":Z
    .end local v27    # "mustResolve":Z
    .end local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v28    # "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v28, v4

    goto/16 :goto_e

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v28

    goto/16 :goto_e

    .end local v28    # "newSchemaInfo":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v13    # "includeAttrs":[Ljava/lang/Object;
    .restart local v16    # "alreadyTraversed":Z
    .restart local v27    # "mustResolve":Z
    .restart local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_1
    move-exception v4

    goto/16 :goto_11

    .end local v13    # "includeAttrs":[Ljava/lang/Object;
    .end local v16    # "alreadyTraversed":Z
    .end local v27    # "mustResolve":Z
    .end local v38    # "schemaSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v7    # "importAttrs":[Ljava/lang/Object;
    .restart local v19    # "importChild":Lmf/org/w3c/dom/Element;
    .restart local v24    # "ins":Ljava/util/Vector;
    .restart local v25    # "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .restart local v43    # "tns":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_b
.end method

.method public element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 3
    .param p1, "e"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    .local v0, "l":Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0    # "l":Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "l":Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z
    .locals 8
    .param p1, "e"    # Lmf/org/w3c/dom/Element;
    .param p2, "l"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v2, :cond_0

    move-object v7, p1

    check-cast v7, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .local v7, "ele":Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    .local v6, "doc":Lmf/org/w3c/dom/Document;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "sid":Ljava/lang/String;
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v3

    .local v3, "line":I
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v4

    .local v4, "column":I
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v5

    move-object v0, p2

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method fillInLocalElemInfo(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 9
    .param p1, "elmDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "allContextFlags"    # I
    .param p4, "parent"    # Lmf/org/apache/xerces/xs/XSObject;
    .param p5, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v8, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v6, v6

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v5, v6, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .local v5, "newStackP":[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v1, v6, [Lmf/org/w3c/dom/Element;

    .local v1, "newStackE":[Lmf/org/w3c/dom/Element;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v2, v6, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .local v2, "newStackE_schema":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v3, v6, [I

    .local v3, "newStackI":[I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v0, v6, [Lmf/org/apache/xerces/xs/XSObject;

    .local v0, "newStackC":[Lmf/org/apache/xerces/xs/XSObject;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v6, v6, 0xa

    new-array v4, v6, [[Ljava/lang/String;

    .local v4, "newStackN":[[Ljava/lang/String;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    .end local v0    # "newStackC":[Lmf/org/apache/xerces/xs/XSObject;
    .end local v1    # "newStackE":[Lmf/org/w3c/dom/Element;
    .end local v2    # "newStackE_schema":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .end local v3    # "newStackI":[I
    .end local v4    # "newStackN":[[Ljava/lang/String;
    .end local v5    # "newStackP":[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p5, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p1, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p2, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput p3, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p4, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    iget-object v8, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    return-void
.end method

.method protected findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 4
    .param p1, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p2, "ignoreConflict"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .local v0, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .end local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .restart local v0    # "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GrammarConflict"

    invoke-virtual {p0, v1, v3, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "declKey"    # Ljava/lang/String;
    .param p2, "declType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "retObj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_3
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_4
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_6
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    .locals 14
    .param p1, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p2, "declType"    # I
    .param p3, "declToTraverse"    # Lmf/org/apache/xerces/xni/QName;
    .param p4, "elmNode"    # Lmf/org/w3c/dom/Element;

    .prologue
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_1

    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v9, v10, :cond_1

    const/4 v9, 0x7

    move/from16 v0, p2

    if-ne v0, v9, :cond_1

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    .local v5, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v5, :cond_1

    .end local v5    # "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_0
    :goto_0
    return-object v5

    :cond_1
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->needReportTNSError(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v1, "src-resolve.4.1"

    .local v1, "code":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v12, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    .local v7, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v7, :cond_5

    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->needReportTNSError(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "src-resolve"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object v12, v12, p2

    aput-object v12, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .end local v7    # "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_4
    const-string v1, "src-resolve.4.2"

    goto :goto_1

    .restart local v7    # "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_5
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {p0, v7, v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "retObj":Ljava/lang/Object;
    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "declKey":Ljava/lang/String;
    :goto_2
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v9, :cond_8

    if-nez v5, :cond_0

    :cond_6
    const/4 v8, 0x0

    .local v8, "schemaWithDecl":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    const/4 v2, 0x0

    .local v2, "decl":Lmf/org/w3c/dom/Element;
    const/4 v3, 0x0

    .local v3, "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    packed-switch p2, :pswitch_data_0

    const-string v9, "Internal-Error"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "XSDHandler asked to locate component of type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; it does not recognize this type!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_3
    if-nez v2, :cond_9

    if-nez v5, :cond_0

    const-string v9, "src-resolve"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object v12, v12, p2

    aput-object v12, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {p0, v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .end local v4    # "declKey":Ljava/lang/String;
    .end local v8    # "schemaWithDecl":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .restart local v4    # "declKey":Ljava/lang/String;
    :cond_8
    move/from16 v0, p2

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    .local v6, "retObj2":Ljava/lang/Object;
    if-eqz v6, :cond_6

    move-object v5, v6

    goto/16 :goto_0

    .end local v6    # "retObj2":Ljava/lang/Object;
    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .restart local v8    # "schemaWithDecl":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :pswitch_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_3

    :pswitch_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_3

    :pswitch_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto :goto_3

    :pswitch_3
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    :pswitch_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    :pswitch_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    :pswitch_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "decl":Lmf/org/w3c/dom/Element;
    check-cast v2, Lmf/org/w3c/dom/Element;

    .restart local v2    # "decl":Lmf/org/w3c/dom/Element;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .restart local v3    # "declDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    goto/16 :goto_3

    :cond_9
    invoke-direct {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findXSDocumentForDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v8

    if-nez v8, :cond_b

    if-nez v5, :cond_0

    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v1, "src-resolve.4.1"

    .restart local v1    # "code":Ljava/lang/String;
    :goto_4
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v12, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p3

    iget-object v11, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v1    # "code":Ljava/lang/String;
    :cond_a
    const-string v1, "src-resolve.4.2"

    goto :goto_4

    :cond_b
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v9}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-nez v5, :cond_0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    aget-object v1, v9, p2

    .restart local v1    # "code":Ljava/lang/String;
    const/4 v9, 0x7

    move/from16 v0, p2

    if-ne v0, v9, :cond_c

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v1, "ct-props-correct.3"

    :cond_c
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v1    # "code":Ljava/lang/String;
    :cond_d
    move/from16 v0, p2

    invoke-virtual {p0, v0, v2, v8, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseGlobalDecl(ILmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "sGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "declType"    # I
    .param p3, "localpart"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "retObj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "sGrammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p2, "declType"    # I
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "schemaLoc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "retObj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .end local v0    # "retObj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "retObj":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    .local v0, "retObj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    .local v0, "retObj":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .param p1, "tns"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    return-object v0
.end method

.method getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    .locals 9
    .param p1, "type"    # I
    .param p2, "name"    # Lmf/org/apache/xerces/xni/QName;
    .param p3, "currSchema"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "elmNode"    # Lmf/org/w3c/dom/Element;

    .prologue
    iget-object v5, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "realName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "nameToFind":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x0

    :cond_0
    :goto_1
    return-object v4

    .end local v1    # "nameToFind":Ljava/lang/String;
    .end local v3    # "realName":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v1    # "nameToFind":Ljava/lang/String;
    .restart local v3    # "realName":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nameToFind":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "nameToFind":Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nameToFind":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "nameToFind":Ljava/lang/String;
    goto :goto_2

    :cond_2
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "commaPos":I
    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_3

    const/4 v5, 0x0

    :goto_3
    invoke-direct {v2, v6, v7, v8, v5}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "qNameToFind":Lmf/org/apache/xerces/xni/QName;
    invoke-virtual {p0, p3, p1, v2, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "retObj":Ljava/lang/Object;
    if-nez v4, :cond_0

    packed-switch p1, :pswitch_data_1

    :goto_4
    :pswitch_3
    const/4 v4, 0x0

    goto :goto_1

    .end local v2    # "qNameToFind":Lmf/org/apache/xerces/xni/QName;
    .end local v4    # "retObj":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .restart local v2    # "qNameToFind":Lmf/org/apache/xerces/xni/QName;
    .restart local v4    # "retObj":Ljava/lang/Object;
    :pswitch_4
    const-string v5, "src-redefine.7.2.1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    :pswitch_5
    const-string v5, "src-redefine.6.2.1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected getIDRegistry()Ljava/util/Hashtable;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getIDRegistry_sub()Ljava/util/Hashtable;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    return-object v0
.end method

.method public parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 23
    .param p1, "is"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p3, "locationPairs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->resetNodePool()V

    const/4 v12, 0x0

    .local v12, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v4, 0x0

    .local v4, "schemaNamespace":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    .local v7, "referType":S
    const/4 v3, 0x3

    if-eq v7, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-ne v7, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v3, :cond_1

    move-object v3, v12

    :goto_1
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v12

    goto :goto_1

    :catch_0
    move-exception v3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->prepareForParse()V

    const/16 v20, 0x0

    .local v20, "schemaRoot":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v3, :cond_5

    move-object/from16 v5, p1

    check-cast v5, Lmf/org/apache/xerces/util/DOMInputSource;

    const/4 v3, 0x3

    if-ne v7, v3, :cond_4

    const/4 v6, 0x1

    :goto_2
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    :goto_3
    if-nez v20, :cond_d

    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v3, :cond_7

    move-object/from16 v5, p1

    check-cast v5, Lmf/org/apache/xerces/util/SAXInputSource;

    const/4 v3, 0x3

    if-ne v7, v3, :cond_6

    const/4 v6, 0x1

    :goto_4
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v3, :cond_9

    move-object/from16 v5, p1

    check-cast v5, Lmf/org/apache/xerces/util/StAXInputSource;

    const/4 v3, 0x3

    if-ne v7, v3, :cond_8

    const/4 v6, 0x1

    :goto_5
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v0, p1

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v3, :cond_a

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_3

    :cond_a
    const/4 v3, 0x3

    if-ne v7, v3, :cond_b

    const/4 v6, 0x1

    :goto_6
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v20

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    move-object v3, v12

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x3

    if-ne v7, v3, :cond_11

    move-object/from16 v18, v20

    .local v18, "schemaElem":Lmf/org/w3c/dom/Element;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .local v19, "schemaId":Ljava/lang/String;
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v3, :cond_e

    if-eqz v19, :cond_10

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    move-object v3, v12

    goto/16 :goto_1

    .end local v19    # "schemaId":Ljava/lang/String;
    :cond_f
    const/4 v4, 0x0

    goto :goto_7

    .restart local v19    # "schemaId":Ljava/lang/String;
    :cond_10
    new-instance v17, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    .local v17, "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v17    # "key":Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    .end local v18    # "schemaElem":Lmf/org/w3c/dom/Element;
    .end local v19    # "schemaId":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->prepareForTraverse()V

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-eqz v12, :cond_12

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    if-nez v3, :cond_13

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->buildGlobalNameRegistries()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz v3, :cond_15

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "annotationInfo":Ljava/util/ArrayList;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseSchemas(Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseLocalElements()V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveKeyRefs()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_a
    if-gez v13, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz v3, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->validateAnnotations(Ljava/util/ArrayList;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    goto/16 :goto_1

    .end local v9    # "annotationInfo":Ljava/util/ArrayList;
    .end local v13    # "i":I
    :cond_15
    const/4 v9, 0x0

    goto :goto_9

    .restart local v9    # "annotationInfo":Ljava/util/ArrayList;
    .restart local v13    # "i":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v3, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .local v22, "tns":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Vector;

    .local v14, "ins":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v21

    .local v21, "sg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-nez v21, :cond_17

    :goto_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_17
    const/4 v10, 0x0

    .local v10, "count":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_c
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_18

    invoke-virtual {v14, v10}, Ljava/util/Vector;->setSize(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v15

    .local v15, "isg":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v15, :cond_19

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "count":I
    .local v11, "count":I
    invoke-virtual {v14, v15, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v10, v11

    .end local v11    # "count":I
    .restart local v10    # "count":I
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto :goto_c
.end method

.method prepareForParse()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-void
.end method

.method prepareForTraverse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-lt v0, v2, :cond_2

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-lt v0, v2, :cond_3

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createTraversers()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reset(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    return-void

    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    return-void
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {p0, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    return-void
.end method

.method reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {p0, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 9
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v8, 0x0

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .local v3, "er":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .local v0, "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eq v0, v5, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v7, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_4

    move-object v5, v0

    :goto_0
    invoke-virtual {v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v6, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_5

    .end local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_1
    invoke-virtual {v5, v6, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .local v1, "currentLocale":Ljava/util/Locale;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/locale"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/locale"

    invoke-virtual {v5, v6, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v6, "http://apache.org/xml/properties/locale"

    invoke-virtual {v5, v6, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "currentLocale":Ljava/util/Locale;
    :cond_2
    :goto_2
    :try_start_1
    const-string v5, "http://apache.org/xml/features/validate-annotations"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    const-string v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    const-string v5, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    const-string v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/features/continue-after-fatal-error"

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_a

    :goto_7
    :try_start_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/features/allow-java-encodings"

    const-string v7, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_9

    :goto_8
    :try_start_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v7, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_8

    :goto_9
    :try_start_8
    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_a
    :try_start_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v7, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_b
    :try_start_a
    const-string v5, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "security":Ljava/lang/Object;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v6, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_6

    .end local v4    # "security":Ljava/lang/Object;
    :cond_3
    :goto_c
    return-void

    .restart local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_4
    :try_start_b
    new-instance v5, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v5}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    goto/16 :goto_0

    .end local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :catch_0
    move-exception v5

    goto :goto_2

    .restart local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    .end local v0    # "currErrorHandler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    .local v2, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    goto :goto_3

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    goto :goto_4

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    goto :goto_5

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    goto :goto_6

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v5, 0x0

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_a

    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v5

    goto :goto_c

    :catch_7
    move-exception v5

    goto :goto_b

    :catch_8
    move-exception v5

    goto :goto_9

    :catch_9
    move-exception v5

    goto :goto_8

    :catch_a
    move-exception v5

    goto :goto_7
.end method

.method protected resolveKeyRefs()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aget-object v2, v3, v0

    .local v2, "keyrefSchemaDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->makeGlobal()V

    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .local v1, "keyrefGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aget-object v4, v4, v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V
    .locals 0
    .param p1, "dvFactory"    # Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    return-void
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0
    .param p1, "declPool"    # Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method

.method public setGenerateSyntheticAnnotations(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method protected storeKeyRef(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 12
    .param p1, "keyrefToStore"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "currElemDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "keyrefName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "keyrefQName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .end local v1    # "keyrefQName":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v8, v0, [Lmf/org/w3c/dom/Element;

    .local v8, "elemArray":[Lmf/org/w3c/dom/Element;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v7, v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .local v7, "declArray":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v10, v0, [[Ljava/lang/String;

    .local v10, "stringArray":[[Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, v0, 0x2

    new-array v11, v0, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .local v11, "xsDocumentInfo":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    invoke-static {v0, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .end local v7    # "declArray":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .end local v8    # "elemArray":[Lmf/org/w3c/dom/Element;
    .end local v10    # "stringArray":[[Ljava/lang/String;
    .end local v11    # "xsDocumentInfo":[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p1, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p3, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v3, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p2, v0, v2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected traverseGlobalDecl(ILmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;
    .locals 5
    .param p1, "declType"    # I
    .param p2, "decl"    # Lmf/org/w3c/dom/Element;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v2, 0x0

    .local v2, "retObj":Ljava/lang/Object;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {p2, v3}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    const/4 v0, 0x0

    .local v0, "nsSupport":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    .local v1, "parent":Lmf/org/w3c/dom/Element;
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nsSupport":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .restart local v0    # "nsSupport":Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
    :cond_0
    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    packed-switch p1, :pswitch_data_0

    .end local v2    # "retObj":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    return-object v2

    .restart local v2    # "retObj":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    goto :goto_0

    .local v2, "retObj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    goto :goto_0

    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto :goto_0

    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    goto :goto_0

    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    goto :goto_0

    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto :goto_0

    .local v2, "retObj":Ljava/lang/Object;
    :pswitch_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {v3, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    .local v2, "retObj":Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method traverseLocalElements()V
    .locals 11

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-lt v9, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aget-object v2, v0, v9

    .local v2, "currElem":Lmf/org/w3c/dom/Element;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aget-object v3, v0, v9

    .local v3, "currSchema":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .local v4, "currGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v9

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    aget v5, v5, v9

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v6, v6, v9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual/range {v0 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v9

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_2

    const/4 v8, 0x0

    .local v8, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, v9

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, v9

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v10

    .local v10, "p":Lmf/org/apache/xerces/xs/XSParticle;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Lmf/org/apache/xerces/xs/XSParticle;->getTerm()Lmf/org/apache/xerces/xs/XSTerm;

    move-result-object v8

    .end local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .end local v10    # "p":Lmf/org/apache/xerces/xs/XSParticle;
    .restart local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v9

    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    .end local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .restart local v8    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, v9

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    goto :goto_1
.end method

.method protected traverseSchemas(Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "annotationInfo"    # Ljava/util/ArrayList;

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v17, Ljava/util/Stack;

    invoke-direct/range {v17 .. v17}, Ljava/util/Stack;-><init>()V

    .local v17, "schemasToProcess":Ljava/util/Stack;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .local v6, "currSchemaDoc":Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    .local v8, "currDoc":Lmf/org/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    .local v9, "currSG":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, v8

    .local v2, "currRoot":Lmf/org/w3c/dom/Element;
    const/16 v16, 0x0

    .local v16, "sawAnnotation":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    .local v11, "globalComp":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v11, :cond_4

    if-nez v16, :cond_2

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getAnnotations()Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-result-object v13

    .local v13, "info":Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v13    # "info":Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    :cond_3
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->returnSchemaAttrs()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Vector;

    .local v10, "currSchemaDepends":Ljava/util/Vector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v10    # "currSchemaDepends":Ljava/util/Vector;
    .end local v12    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .local v7, "componentType":Ljava/lang/String;
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    .local v14, "redefinedComp":Lmf/org/w3c/dom/Element;
    :goto_2
    if-nez v14, :cond_5

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    .end local v14    # "redefinedComp":Lmf/org/w3c/dom/Element;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    goto/16 :goto_0

    .restart local v14    # "redefinedComp":Lmf/org/w3c/dom/Element;
    :cond_5
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    .local v15, "redefinedComponentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    goto :goto_2

    :cond_6
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_4

    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    goto :goto_4

    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v1, v14, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_4

    :cond_9
    const-string v1, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v5

    const/4 v5, 0x1

    const-string v18, "(annotation | (simpleType | complexType | group | attributeGroup))*"

    aput-object v18, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    .end local v14    # "redefinedComp":Lmf/org/w3c/dom/Element;
    .end local v15    # "redefinedComponentType":Ljava/lang/String;
    :cond_a
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto/16 :goto_3

    :cond_b
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    goto/16 :goto_3

    :cond_c
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto/16 :goto_3

    :cond_d
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_3

    :cond_e
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    goto/16 :goto_3

    :cond_f
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    goto/16 :goto_3

    :cond_10
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v1, v11, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto/16 :goto_3

    :cond_11
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v11, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_12
    const-string v1, "s4s-elt-invalid-content.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v18, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    aput-object v18, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_3
.end method
