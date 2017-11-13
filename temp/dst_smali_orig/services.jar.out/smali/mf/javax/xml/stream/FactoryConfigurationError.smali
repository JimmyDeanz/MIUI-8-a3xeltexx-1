.class public Lmf/javax/xml/stream/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# static fields
.field private static final serialVersionUID:J = -0x298e4a616f71e0c0L


# instance fields
.field nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    iput-object p1, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lmf/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0
.end method
