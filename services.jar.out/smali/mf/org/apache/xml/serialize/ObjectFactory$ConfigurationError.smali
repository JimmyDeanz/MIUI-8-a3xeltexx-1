.class final Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0xd033156a03d9206L


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Exception;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 529
    iput-object p2, p0, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    .line 530
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
