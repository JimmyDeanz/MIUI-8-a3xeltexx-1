.class public final Lorg/apache/james/mime4j/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# direct methods
.method public static getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 27
    new-instance v0, Lorg/apache/james/mime4j/Log;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/Log;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
