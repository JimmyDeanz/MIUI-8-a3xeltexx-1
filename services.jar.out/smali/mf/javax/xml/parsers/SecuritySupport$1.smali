.class Lmf/javax/xml/parsers/SecuritySupport$1;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/parsers/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/parsers/SecuritySupport;


# direct methods
.method constructor <init>(Lmf/javax/xml/parsers/SecuritySupport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmf/javax/xml/parsers/SecuritySupport$1;->this$0:Lmf/javax/xml/parsers/SecuritySupport;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method
