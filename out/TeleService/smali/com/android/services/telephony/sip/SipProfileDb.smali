.class public Lcom/android/services/telephony/sip/SipProfileDb;
.super Ljava/lang/Object;
.source "SipProfileDb.java"


# instance fields
.field private mProfilesCount:I

.field private mProfilesDirectory:Ljava/lang/String;

.field private mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    .line 57
    return-void
.end method

.method private deleteProfile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 72
    return-void
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;
    .locals 7
    .param p1, "profileObjectFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 147
    .local v0, "atomicFile":Lcom/android/internal/os/AtomicFile;
    const/4 v2, 0x0

    .line 149
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .local v4, "p":Landroid/net/sip/SipProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    move-object v2, v3

    .line 157
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "p":Landroid/net/sip/SipProfile;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v4

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deserialize, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipProfileDb;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 157
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v5

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 152
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipProfileDb] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private retrieveSipProfileListInternal()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 112
    .local v7, "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v6, "root":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "dirs":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-object v7

    .line 115
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 116
    .local v1, "dir":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v5

    .line 117
    .local v5, "p":Landroid/net/sip/SipProfile;
    if-nez v5, :cond_1

    .line 115
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    :cond_1
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    .end local v1    # "dir":Ljava/lang/String;
    .end local v5    # "p":Landroid/net/sip/SipProfile;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    iput v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    .line 121
    iget-object v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    iget v9, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v8, v9}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setProfilesCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 60
    const-class v1, Lcom/android/services/telephony/sip/SipProfileDb;

    monitor-enter v1

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    .line 62
    iget v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    iget v2, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 142
    :cond_0
    :goto_0
    return-object v2

    .line 130
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, ".pobj"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipProfileDb;->deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 135
    .local v2, "p":Landroid/net/sip/SipProfile;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .end local v2    # "p":Landroid/net/sip/SipProfile;
    :cond_2
    :goto_1
    move-object v2, v4

    .line 142
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveSipProfileListInternal, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipProfileDb;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public retrieveSipProfileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-class v1, Lcom/android/services/telephony/sip/SipProfileDb;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveProfile(Landroid/net/sip/SipProfile;)V
    .locals 9
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const-class v7, Lcom/android/services/telephony/sip/SipProfileDb;

    monitor-enter v7

    .line 76
    :try_start_0
    iget v6, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    if-gez v6, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 77
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_1
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v8, ".pobj"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    .local v0, "atomicFile":Lcom/android/internal/os/AtomicFile;
    const/4 v3, 0x0

    .line 81
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 83
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 84
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 87
    iget-object v6, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    iget v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v6, v8}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 88
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 95
    :cond_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    return-void

    .line 89
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    :try_start_4
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 91
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    throw v6

    .line 95
    .end local v0    # "atomicFile":Lcom/android/internal/os/AtomicFile;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 93
    .restart local v0    # "atomicFile":Lcom/android/internal/os/AtomicFile;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 89
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method
