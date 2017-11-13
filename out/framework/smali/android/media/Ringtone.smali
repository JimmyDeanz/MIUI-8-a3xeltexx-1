.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Ringtone$MyOnCompletionListener;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final TAG:Ljava/lang/String; = "Ringtone"

.field private static mStorageListener:Landroid/os/storage/StorageEventListener;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static final sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActualUri:Landroid/net/Uri;

.field private final mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mIsDecryptMode:Z

.field private mIsLooping:Z

.field private mIsTelecomPkg:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mPlaybackSettingsLock:Ljava/lang/Object;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mRingtoneLock:Ljava/lang/Object;

.field private mSecForSeek:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUriStatus:Z

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    .line 128
    const/4 v0, 0x0

    sput-object v0, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 129
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0}, Landroid/media/Ringtone$1;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    .line 94
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 99
    iput-boolean v3, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/Ringtone;->mVolume:F

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    .line 104
    iput v3, p0, Landroid/media/Ringtone;->mSecForSeek:I

    .line 107
    iput-boolean v3, p0, Landroid/media/Ringtone;->mIsDecryptMode:Z

    .line 108
    iput-object v1, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mRingtoneLock:Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 115
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 116
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 117
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 119
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    .line 120
    iget-boolean v0, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p1}, Landroid/media/Ringtone;->initStorageManager(Landroid/content/Context;)V

    .line 122
    :cond_1
    iput-boolean v3, p0, Landroid/media/Ringtone;->mUriStatus:Z

    .line 123
    invoke-static {}, Landroid/media/RingtoneManager;->clearCachedUri()V

    .line 125
    return-void

    :cond_2
    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method private ActualURIfromDefaultURI(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 749
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    .line 751
    .local v1, "ringtoneType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 752
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActualURIfromDefaultURI Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 754
    .local v0, "ActualUri":Landroid/net/Uri;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change URI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-nez v0, :cond_0

    move-object v0, p2

    .line 761
    :cond_0
    :goto_0
    return-object v0

    .line 757
    .end local v0    # "ActualUri":Landroid/net/Uri;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "This is not default URI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object v0, p2

    .restart local v0    # "ActualUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Landroid/media/Ringtone;->setExtSDCardPath()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-object v0
.end method

.method private applyPlaybackProperties_sync()V
    .locals 5

    .prologue
    .line 280
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 282
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    .line 285
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    const-string v2, "Problem setting playback properties: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Ringtone"

    const-string v2, "Neither local nor remote player available when applying playback properties"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 4

    .prologue
    .line 594
    iget-object v1, p0, Landroid/media/Ringtone;->mRingtoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 601
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 603
    sget-object v2, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 604
    :try_start_1
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 605
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 608
    return-void

    .line 605
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 607
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public static getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 313
    .local v1, "res":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 315
    .local v14, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "authority":Ljava/lang/String;
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    if-eqz p2, :cond_0

    .line 320
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 322
    .local v8, "actualUri":Landroid/net/Uri;
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {p0, v8, v2, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "actualTitle":Ljava/lang/String;
    const v2, 0x10403a6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 365
    .end local v7    # "actualTitle":Ljava/lang/String;
    .end local v8    # "actualUri":Landroid/net/Uri;
    .end local v10    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v14, :cond_1

    .line 366
    const v2, 0x10403a9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 368
    if-nez v14, :cond_1

    .line 369
    const-string v14, ""

    :cond_1
    move-object v2, v14

    .line 373
    :goto_1
    return-object v2

    .line 329
    .restart local v10    # "authority":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    .line 331
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "media"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    if-eqz p3, :cond_4

    const/4 v4, 0x0

    .line 333
    .local v4, "mediaSelection":Ljava/lang/String;
    :goto_2
    sget-object v3, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 334
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 335
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 336
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 354
    if-eqz v11, :cond_3

    .line 355
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 332
    .end local v4    # "mediaSelection":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 354
    :cond_5
    if-eqz v11, :cond_6

    .line 355
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_6
    const/4 v11, 0x0

    .line 359
    :goto_3
    if-nez v14, :cond_0

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 340
    :catch_0
    move-exception v12

    .line 341
    .local v12, "e":Ljava/lang/SecurityException;
    const/4 v13, 0x0

    .line 342
    .local v13, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    if-eqz p3, :cond_7

    .line 343
    :try_start_2
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 345
    .local v9, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 347
    .end local v9    # "audioManager":Landroid/media/AudioManager;
    :cond_7
    if-eqz v13, :cond_8

    .line 349
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 354
    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    .line 355
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_9
    const/4 v11, 0x0

    .line 358
    goto :goto_3

    .line 354
    .end local v12    # "e":Ljava/lang/SecurityException;
    .end local v13    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_a

    .line 355
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_a
    const/4 v11, 0x0

    throw v2

    .line 350
    .restart local v12    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method private static initStorageManager(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    sget-object v1, Landroid/media/Ringtone;->mStorageListener:Landroid/os/storage/StorageEventListener;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    .line 141
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 142
    sget-object v0, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "Ringtone"

    const-string v2, "Can\'t not get storagemager"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v1

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Landroid/media/Ringtone;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 147
    invoke-static {}, Landroid/media/Ringtone;->setExtSDCardPath()V

    .line 149
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isExtSDCardUri(Landroid/net/Uri;)Z
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    move v0, v11

    .line 407
    :cond_1
    :goto_0
    return v0

    .line 383
    :cond_2
    const/4 v7, 0x0

    .line 384
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 386
    .local v9, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 387
    .local v6, "cache":Ljava/lang/Boolean;
    :try_start_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getCachedUri(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 388
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get cachedUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 405
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 391
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 392
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 395
    invoke-static {p1, v9}, Landroid/media/RingtoneManager;->setCacheUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 396
    if-eqz v9, :cond_6

    sget-object v0, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 397
    const-string v0, "Ringtone"

    const-string/jumbo v1, "ringtone is in extSdcard "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    goto :goto_0

    .line 401
    :cond_5
    :try_start_2
    const-string v0, "Ringtone"

    const-string v1, "Invalid ringtone uri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_1
    move v0, v11

    .line 407
    goto :goto_0

    .line 402
    :catch_0
    move-exception v8

    .line 403
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "Ringtone"

    const-string v1, "can\'t check extSdcard"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private playFallbackRingtone()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 648
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    .line 651
    .local v9, "ringtoneType":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 660
    :cond_0
    const/4 v6, 0x0

    .line 661
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eq v9, v10, :cond_1

    const/16 v0, 0x80

    if-ne v9, v0, :cond_2

    .line 662
    :cond_1
    :try_start_0
    const-string v0, "Ringtone"

    const-string/jumbo v1, "play fallbackring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 669
    :goto_0
    if-eqz v6, :cond_5

    .line 670
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 671
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 672
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 678
    :goto_1
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 679
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 680
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 681
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    :try_start_2
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 683
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 684
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    move v0, v10

    .line 699
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "ringtoneType":I
    :goto_2
    return v0

    .line 665
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "ringtoneType":I
    :cond_2
    const-string v0, "Ringtone"

    const-string/jumbo v1, "play fallbacknoti"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    goto :goto_0

    .line 674
    :cond_3
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 689
    :catch_0
    move-exception v7

    .line 690
    .local v7, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 691
    const-string v0, "Ringtone"

    const-string v1, "Failed to open fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "ringtoneType":I
    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 681
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "ringtoneType":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 692
    :catch_1
    move-exception v8

    .line 693
    .local v8, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "Ringtone"

    const-string v1, "Fallback ringtone does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 687
    .end local v8    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_5
    const-string v0, "Ringtone"

    const-string v1, "Could not load fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 696
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_6
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not playing fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static setExtSDCardPath()V
    .locals 9

    .prologue
    .line 153
    sget-object v6, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_0

    .line 154
    const-string v6, "Ringtone"

    const-string v7, "StorageManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    .local v1, "i$":I
    .local v2, "len$":I
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_0
    return-void

    .line 157
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    sget-object v6, Landroid/media/Ringtone;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 158
    .restart local v3    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v3

    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 159
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "subsystem":Ljava/lang/String;
    const-string/jumbo v6, "sd"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const-string v6, "Ringtone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ext Sd card path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/RingtoneManager;->EXTERNAL_PATH:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v4    # "subsystem":Ljava/lang/String;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v6, "Ringtone"

    const-string v7, "Can\'t get external sdcard path"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLocalPlayer()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 614
    :cond_0
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v1

    .line 615
    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 618
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 711
    :cond_0
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 627
    iget-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 629
    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 643
    :goto_0
    return v2

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, "ie":Ljava/lang/IllegalStateException;
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem isPlaying ringtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    :cond_0
    iget-boolean v3, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v3, :cond_1

    .line 636
    :try_start_1
    iget-object v3, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v4, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v3, v4}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 637
    :catch_1
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem checking ringtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "Ringtone"

    const-string v4, "Neither local nor remote playback available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUriTrue()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Landroid/media/Ringtone;->mUriStatus:Z

    return v0
.end method

.method public play()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    .line 532
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/Ringtone;->getStreamType()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/media/Ringtone;->getStreamType()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v0, :cond_2

    .line 544
    :cond_0
    iget v0, p0, Landroid/media/Ringtone;->mSecForSeek:I

    if-lez v0, :cond_1

    .line 545
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play()_jump to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/Ringtone;->mSecForSeek:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mSec"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mSecForSeek:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 547
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Ringtone;->mSecForSeek:I

    .line 551
    :cond_1
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 576
    :cond_2
    :goto_0
    return-void

    .line 554
    :cond_3
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 555
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    .line 558
    .local v2, "canonicalUri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    :try_start_0
    iget-boolean v5, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 560
    .local v5, "looping":Z
    iget v4, p0, Landroid/media/Ringtone;->mVolume:F

    .line 561
    .local v4, "volume":F
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :try_start_1
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface/range {v0 .. v5}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v6

    .line 565
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string v0, "Ringtone"

    const-string v1, "IlligalStateException Occured in MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    .end local v4    # "volume":F
    .end local v5    # "looping":Z
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 566
    .restart local v4    # "volume":F
    .restart local v5    # "looping":Z
    :catch_1
    move-exception v6

    .line 567
    .local v6, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 568
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem playing ringtone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    .end local v2    # "canonicalUri":Landroid/net/Uri;
    .end local v4    # "volume":F
    .end local v5    # "looping":Z
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    const-string v0, "Ringtone"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 237
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    .line 238
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "looping"    # Z

    .prologue
    .line 255
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 257
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeat(Z)V
    .locals 1
    .param p1, "repeate"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 197
    :cond_0
    return-void
.end method

.method public setSecForSeek(I)V
    .locals 0
    .param p1, "mSec"    # I

    .prologue
    .line 208
    iput p1, p0, Landroid/media/Ringtone;->mSecForSeek:I

    .line 210
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 181
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 703
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 422
    const/4 v4, 0x1

    .line 423
    .local v4, "ret":Z
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 425
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 426
    iget-object v6, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v6, :cond_0

    move v6, v4

    .line 517
    :goto_0
    return v6

    .line 432
    :cond_0
    iget-object v6, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    if-nez v6, :cond_1

    .line 433
    iget-object v6, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v6, v7}, Landroid/media/Ringtone;->ActualURIfromDefaultURI(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    .line 436
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    const-string/jumbo v7, "highlight_offset"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "highlightOffset":Ljava/lang/String;
    const-string v6, "Ringtone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "highlightoffset is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 439
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/media/Ringtone;->mSecForSeek:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    .end local v3    # "highlightOffset":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 451
    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v6, :cond_3

    .line 453
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v7, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const-string v7, "AUDIO_STREAM_RING"

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    iput-object v6, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 458
    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Landroid/media/Ringtone;->isExtSDCardUri(Landroid/net/Uri;)Z

    move-result v6

    if-ne v6, v9, :cond_8

    .line 459
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "External Storage"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 482
    iget-boolean v6, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v6, :cond_4

    .line 483
    const-string v6, "Ringtone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote playback not allowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_4
    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsDecryptMode:Z

    if-nez v6, :cond_c

    .line 487
    const-string v6, "Ringtone"

    const-string v7, "Inside Japan Flag for Decrypt Mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v6, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    .line 489
    .local v5, "ringtoneType":I
    const-string/jumbo v6, "trigger_restart_min_framework"

    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "1"

    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 491
    :cond_5
    const-string v6, "Ringtone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside Decrypt Mode : Re-initializing the MediaPlayer with the new Uri, type :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eq v5, v9, :cond_6

    const/16 v6, 0x80

    if-ne v5, v6, :cond_b

    .line 493
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///system/media/audio/ringtones/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ro.config.ringtone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 497
    :goto_3
    iput-boolean v9, p0, Landroid/media/Ringtone;->mIsDecryptMode:Z

    .line 498
    iget-object v6, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v6}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    move-result v6

    goto/16 :goto_0

    .line 440
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "ringtoneType":I
    .restart local v3    # "highlightOffset":Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v6, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 441
    const/4 v6, 0x0

    iput v6, p0, Landroid/media/Ringtone;->mSecForSeek:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 442
    .end local v3    # "highlightOffset":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 443
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "Ringtone"

    const-string v7, "Failed get highlight offset"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    iput v10, p0, Landroid/media/Ringtone;->mSecForSeek:I

    goto/16 :goto_1

    .line 461
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 464
    iget-object v6, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v6, :cond_9

    .line 465
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 466
    :cond_9
    iget-object v7, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 467
    :try_start_4
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 468
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 469
    :try_start_5
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 470
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 471
    .local v0, "duration":I
    const/16 v6, 0x2710

    if-ge v0, v6, :cond_a

    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v6, :cond_a

    .line 472
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 473
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 474
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v7, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const-string v7, "AUDIO_STREAM_RING"

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const-string v7, "SKIPPED_EFFECT"

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    iput-object v6, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 476
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 477
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 479
    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/Ringtone;->mUriStatus:Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 511
    .end local v0    # "duration":I
    :goto_4
    iget-object v6, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_e

    .line 512
    const-string v6, "Ringtone"

    const-string v7, "Successfully created local player"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v6, v4

    .line 517
    goto/16 :goto_0

    .line 468
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 480
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 495
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "ringtoneType":I
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///system/media/audio/notifications/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ro.config.notification_sound"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 502
    .end local v5    # "ringtoneType":I
    :cond_c
    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Landroid/media/Ringtone;->isExtSDCardUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 503
    iput-boolean v9, p0, Landroid/media/Ringtone;->mUriStatus:Z

    goto :goto_4

    .line 505
    :cond_d
    iput-boolean v10, p0, Landroid/media/Ringtone;->mUriStatus:Z

    .line 506
    const/4 v4, 0x0

    goto :goto_4

    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v6, "Ringtone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem opening; delegating to remote player, return false : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/media/Ringtone;->mActualUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 268
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 270
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 271
    :cond_1
    :try_start_0
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 272
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 273
    monitor-exit v1

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "rightVol"    # F
    .param p2, "leftVol"    # F

    .prologue
    .line 727
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 730
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 582
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 583
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
