.class Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler$1;
.super Ljava/lang/Object;
.source "WifiHs20SubscriptionManager.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler$1;->this$1:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager$MyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .local v1, "writer":Ljava/io/OutputStreamWriter;
    const-string v0, "<script> window.open(\'\',\'_self\').close() </script>"

    .local v0, "resp":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method
