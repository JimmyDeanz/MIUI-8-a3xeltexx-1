.class Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;
.super Lmf/org/apache/xerces/util/ErrorHandlerProxy;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    .line 143
    invoke-direct {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # getter for: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$5(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    .line 146
    .local v0, "handler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    if-eqz v0, :cond_0

    .line 147
    .end local v0    # "handler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :goto_0
    return-object v0

    .restart local v0    # "handler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .end local v0    # "handler":Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    invoke-static {}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0
.end method
