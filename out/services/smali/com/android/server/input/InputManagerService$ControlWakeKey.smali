.class final Lcom/android/server/input/InputManagerService$ControlWakeKey;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlWakeKey"
.end annotation


# instance fields
.field private final WAKEKEY_TAG:Ljava/lang/String;

.field private mDefaultWakeKey:Ljava/lang/String;

.field private mWakeKeyFileName:Ljava/lang/String;

.field private mWakeKeyFilePath:Ljava/lang/String;

.field private mWakeKeyRefCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mfosWakeKey:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3844
    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 3845
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 3846
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFileName:Ljava/lang/String;

    .line 3847
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 3849
    const-string v2, "WAKEKEY"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->WAKEKEY_TAG:Ljava/lang/String;

    .line 3852
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 3853
    iput-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    .line 3855
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3856
    .local v1, "platform":Ljava/lang/String;
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3858
    .local v0, "buildcarrier":Ljava/lang/String;
    const-string/jumbo v2, "msm7k"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "msm7627a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3860
    :cond_0
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 3861
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 3870
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 3871
    const-string/jumbo v2, "ks023g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ks02lte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3872
    :cond_2
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 3873
    const-string v2, "116"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 3877
    :cond_3
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3878
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "makeWakeKeyRefCount in constructor returns false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    :goto_1
    return-void

    .line 3862
    :cond_4
    const-string/jumbo v2, "montblanc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3863
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 3864
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    goto :goto_0

    .line 3865
    :cond_5
    const-string/jumbo v2, "msm8960"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3866
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    .line 3867
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    goto :goto_0

    .line 3881
    :cond_6
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private makeWakeKeyRefCount(ZLjava/lang/String;)Z
    .locals 10
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3904
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3906
    .local v6, "splitted_keycodes":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 3907
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 3908
    .local v5, "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3910
    .local v3, "keycode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3911
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 3915
    .local v1, "count":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3916
    const-string v7, "WAKEKEY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mWakeKeyRefCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is increased: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3913
    .end local v1    # "count":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "count":I
    goto :goto_1

    .line 3919
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "i$":I
    .end local v3    # "keycode":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    :cond_1
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 3920
    .restart local v5    # "splitted_keycode":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3921
    .restart local v3    # "keycode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3922
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 3923
    .restart local v1    # "count":I
    if-gtz v1, :cond_3

    .line 3924
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    const-string v7, "WAKEKEY"

    const-string/jumbo v8, "keycode is removed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    .end local v1    # "count":I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3927
    .restart local v1    # "count":I
    :cond_3
    iget-object v7, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3928
    const-string v7, "WAKEKEY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mWakeKeyRefCount("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is decreased: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3933
    .end local v1    # "count":I
    .end local v3    # "keycode":Ljava/lang/String;
    .end local v5    # "splitted_keycode":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    return v7
.end method

.method private makeWakeKeyString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 3937
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3938
    .local v1, "buff":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3939
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 3940
    .local v4, "keycodes":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3941
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 3942
    .local v3, "keycode":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3941
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3944
    .end local v3    # "keycode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 3945
    const-string v6, "WAKEKEY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "keycodes in makeWakeKeyString is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "keycodes":[Ljava/lang/String;
    .end local v5    # "len$":I
    :goto_1
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 3947
    :cond_1
    const-string v6, "WAKEKEY"

    const-string/jumbo v7, "mWakeKeyRefCount is empty"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeWakeKeyString(Ljava/lang/String;)V
    .locals 4
    .param p1, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3954
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3955
    .local v1, "wakekeyfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3957
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 3958
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "wakekeyfile is created"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3966
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    .line 3967
    const-string v2, "WAKEKEY"

    const-string v3, "FileOutputStream is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3974
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1

    .line 3975
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3976
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "mfosWakeKey writing is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3985
    :cond_1
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    .line 3986
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3987
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mfosWakeKey:Ljava/io/FileOutputStream;

    .line 3988
    const-string v2, "WAKEKEY"

    const-string v3, "closing mfosWakeKey is passed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3994
    :cond_2
    :goto_3
    return-void

    .line 3959
    :catch_0
    move-exception v0

    .line 3960
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "wakekeyfile.createNewFile() is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3968
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3969
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "WAKEKEY"

    const-string v3, "FileOutputStream is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 3978
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 3979
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string/jumbo v3, "mfosWakeKey writing is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3990
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 3991
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "WAKEKEY"

    const-string v3, "closing mfosWakeKey is failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public setWakeKeyDynamically(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isPut"    # Z
    .param p2, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 3885
    const-string v0, "WAKEKEY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input keycodes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3888
    const-string v1, "WAKEKEY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keycodes in setWakeKeyDynamically is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    :goto_1
    return-void

    .line 3888
    :cond_0
    const-string/jumbo v0, "empty"

    goto :goto_0

    .line 3892
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3893
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    .line 3896
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3897
    const-string v0, "WAKEKEY"

    const-string/jumbo v1, "makeWakeKeyRefCount in setWakeKeyDynamically returns false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3900
    :cond_3
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    goto :goto_1
.end method
