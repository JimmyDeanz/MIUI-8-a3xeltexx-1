.class public Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.super Ljava/lang/Object;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;,
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    }
.end annotation


# static fields
.field static final BLOCKED_BOTH:I = 0x3

.field static final BLOCKED_FELICA:I = 0x2

.field static final BLOCKED_MDM:I = 0x1

.field static final NON_BLOCKED:I

.field private static final TAG:Ljava/lang/String;

.field private static mCr:Landroid/content/ContentResolver;

.field static mIsFelicaAllowed:Z

.field static mIsMdmAllowed:Z

.field private static mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

.field static mPendingFelicaNotification:Z


# instance fields
.field mBootCompleted:Z

.field mContext:Landroid/content/Context;

.field mFelicaReceiver:Landroid/content/BroadcastReceiver;

.field mFelicaReceiverInitialized:Z

.field mNfcAdapter:Landroid/nfc/INfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mPendingFelicaNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->registerObservers()V

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .prologue
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;-><init>()V

    return-object v0
.end method

.method public static getBlockedType()I
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getMdmPolicy()Z
    .locals 11

    .prologue
    const-class v10, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    monitor-enter v10

    const/4 v6, 0x1

    .local v6, "allowed":Z
    :try_start_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "isNFCEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "restrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "isNFCEnabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "result":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit v10

    return v6

    .restart local v9    # "result":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v0, "false"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .end local v9    # "result":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    .end local v8    # "restrictionCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "restrictionCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private getNfcAdapter()V
    .locals 1

    .prologue
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    return-void
.end method

.method public static isAuthenticatonAllowed()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerObservers()V
    .locals 4

    .prologue
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mCr:Landroid/content/ContentResolver;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getFelicaPolicy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    if-nez v2, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const-string v3, "nfc RemoteException."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const-string v3, "Do not call when nfc service is not ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    return-void
.end method

.method public setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .prologue
    sput-object p1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-void
.end method

.method public showFelicaNotification()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mPendingFelicaNotification:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.applinker.action.FELICA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.applinker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
