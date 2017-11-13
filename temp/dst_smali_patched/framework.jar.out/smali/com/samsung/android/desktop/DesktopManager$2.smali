.class Lcom/samsung/android/desktop/DesktopManager$2;
.super Landroid/os/Handler;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktop/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktop/DesktopManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktop/DesktopManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager$2;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "homeState":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "items":[Ljava/lang/String;
    :try_start_0
    const-string v6, "com.sec.android.app.desktoplauncher"

    invoke-static {v6}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .local v0, "cacheDirs":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "backupinfo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/util/JsonWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .local v5, "writer":Landroid/util/JsonWriter;
    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v6, "package-name"

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v6, "class-name"

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v5}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v5}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cacheDirs":[Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "writer":Landroid/util/JsonWriter;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
