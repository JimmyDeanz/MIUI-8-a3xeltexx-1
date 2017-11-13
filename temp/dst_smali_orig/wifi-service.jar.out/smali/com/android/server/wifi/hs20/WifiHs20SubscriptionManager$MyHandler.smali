.class Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;
.super Ljava/lang/Object;
.source "WifiHs20SubscriptionManager.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "HS20SubscriptionManager"

    const-string v8, "handling request"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.samsung.action.REDIRECT_STATUS"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "status"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "HS20SubscriptionManager"

    const-string v8, "RedirectURL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Content-Type"

    const-string v8, "text/html"

    invoke-interface {p2, v7, v8}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    const-string v1, "text/html"

    .local v1, "contentType":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/entity/EntityTemplate;

    new-instance v7, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler$1;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler$1;-><init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;)V

    invoke-direct {v4, v7}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    :try_start_1
    move-object v0, v4

    check-cast v0, Lorg/apache/http/entity/EntityTemplate;

    move-object v7, v0

    invoke-virtual {v7, v1}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v7, "HS20SubscriptionManager"

    const-string v8, "ACTION_SEC_CLOSE_BROWSER "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.HS20_SEC_CLOSE_BROWSER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "newIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->access$000(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "contentType":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "newIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1
.end method
