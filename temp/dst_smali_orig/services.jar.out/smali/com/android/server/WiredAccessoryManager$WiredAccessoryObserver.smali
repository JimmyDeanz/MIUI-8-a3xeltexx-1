.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$700(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .local v0, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "ch_hdmi_audio"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v6

    :cond_1
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have wired headset support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have usb audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi_audio"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have HDMI audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ch_hdmi_audio"

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mExtInfoManager:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;)Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getHDMIInfo(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "dvi_or_non_speaker_hdmi_audio"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_1
    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    const/4 p3, 0x0

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$900(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1000(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 11

    .prologue
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v9, "init()"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x400

    new-array v0, v7, [C

    .local v0, "buffer":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v6, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v7, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .local v5, "len":I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "curState":I
    if-lez v1, :cond_0

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "curState":I
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found while attempting to determine initial switch state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "i":I
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v0    # "buffer":[C
    .restart local v4    # "i":I
    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_1
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEVPATH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_2
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .local v0, "devPath":Ljava/lang/String;
    :try_start_1
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .local v3, "state":I
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_2
    return-void

    .restart local v0    # "devPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v3

    .restart local v3    # "state":I
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
