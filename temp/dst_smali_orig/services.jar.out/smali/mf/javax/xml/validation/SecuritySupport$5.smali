.class Lmf/javax/xml/validation/SecuritySupport$5;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/validation/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/validation/SecuritySupport;

.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmf/javax/xml/validation/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lmf/javax/xml/validation/SecuritySupport$5;->this$0:Lmf/javax/xml/validation/SecuritySupport;

    iput-object p2, p0, Lmf/javax/xml/validation/SecuritySupport$5;->val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lmf/javax/xml/validation/SecuritySupport$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v1, p0, Lmf/javax/xml/validation/SecuritySupport$5;->val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, Lmf/javax/xml/validation/SecuritySupport$5;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .local v0, "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .end local v0    # "url":Ljava/net/URL;
    :cond_0
    iget-object v1, p0, Lmf/javax/xml/validation/SecuritySupport$5;->val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lmf/javax/xml/validation/SecuritySupport$5;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .restart local v0    # "url":Ljava/net/URL;
    goto :goto_0
.end method
