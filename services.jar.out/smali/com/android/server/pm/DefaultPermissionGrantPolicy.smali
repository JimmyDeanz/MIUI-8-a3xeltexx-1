.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 71
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 82
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 89
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 95
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 101
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 111
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 116
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 121
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 126
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 142
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2599
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2483
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2484
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 2485
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2487
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2424
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2426
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    .line 2434
    :cond_0
    :goto_0
    return-object v2

    .line 2429
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2430
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2434
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    goto :goto_0
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2439
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 2441
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    move-object v2, v5

    .line 2453
    :cond_0
    :goto_0
    return-object v2

    .line 2444
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 2445
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2446
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2447
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2449
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_0

    .line 2445
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    move-object v2, v5

    .line 2453
    goto :goto_0
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2458
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2460
    .local v7, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2461
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2463
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 2464
    .local v6, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2466
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2468
    .local v1, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    .line 2463
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2472
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 2473
    .local v5, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    .line 2474
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2478
    .end local v1    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v5    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2495
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2496
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2497
    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2499
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v0

    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    move-object v0, v1

    .line 2497
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2499
    goto :goto_0
.end method

.method private grantDefaultPermissionsToAttApp(I)V
    .locals 21
    .param p1, "userId"    # I

    .prologue
    .line 2122
    const-string v20, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 2123
    .local v8, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2124
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2125
    .local v9, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2126
    const-string v20, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2127
    const-string v20, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2128
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2129
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2130
    const-string v20, "android.permission.SEND_SMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2131
    const-string v20, "android.permission.READ_SMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2132
    const-string v20, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2133
    const-string v20, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2134
    const-string v20, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2135
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2139
    .end local v9    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v20, "com.samsung.acms"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2140
    .local v6, "ambsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 2141
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2142
    .local v7, "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_SMS"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2143
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2144
    const-string v20, "android.permission.SEND_SMS"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2145
    const-string v20, "android.permission.CALL_PHONE"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2146
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2147
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2151
    .end local v7    # "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v17, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2152
    .local v17, "vvmIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.att_vvm.pregrant_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2153
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 2154
    .local v18, "vvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_2

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2155
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 2156
    .local v19, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.CALL_PHONE"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2157
    const-string v20, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2158
    const-string v20, "android.permission.READ_SMS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2159
    const-string v20, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2160
    const-string v20, "android.permission.SEND_SMS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2161
    const-string v20, "android.permission.READ_CONTACTS"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2162
    const-string v20, "android.permission.RECORD_AUDIO"

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2163
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2167
    .end local v19    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v20, "com.sec.att.usagemanager3"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 2168
    .local v16, "usageManagerPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 2169
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 2170
    .local v15, "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2171
    const-string v20, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2172
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2176
    .end local v15    # "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.synchronoss.dcs.r2g.R2G_POST_OEM"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v10, "r2gIntent":Landroid/content/Intent;
    const-string v20, "android.intent.category.DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 2180
    .local v11, "r2gPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_4

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2182
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2183
    .local v12, "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2184
    const-string v20, "android.permission.CAMERA"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2185
    const-string v20, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2186
    const-string v20, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2187
    const-string v20, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2188
    const-string v20, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2189
    const-string v20, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2190
    const-string v20, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2191
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2192
    const-string v20, "android.permission.READ_SMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2193
    const-string v20, "android.permission.SEND_SMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2194
    const-string v20, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2195
    const-string v20, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2196
    const-string v20, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2197
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2201
    .end local v12    # "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v20, "com.samsung.aab"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 2202
    .local v4, "aabSyncmlPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2203
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2204
    .local v5, "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2205
    const-string v20, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2206
    const-string v20, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2207
    const-string v20, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2208
    const-string v20, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2209
    const-string v20, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2210
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2214
    .end local v5    # "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v20, "com.sec.android.softphone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 2215
    .local v13, "softphoneAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_6

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2216
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 2217
    .local v14, "softphoneAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v20, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2218
    const-string v20, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2219
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2221
    .end local v14    # "softphoneAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private grantDefaultPermissionsToComcastApp(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1866
    const-string v6, "com.comcast.modesto.vvm.client"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1867
    .local v2, "vvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1868
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1869
    .local v3, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_CONTACTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1870
    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1871
    const-string v6, "android.permission.GET_ACCOUNTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1872
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1873
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1874
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1875
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1876
    const-string v6, "android.permission.SEND_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1877
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1881
    .end local v3    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "com.smithmicro.netwise.director.comcast.oem"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1882
    .local v4, "wifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1883
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1884
    .local v5, "wifiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1885
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1886
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1887
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1888
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1892
    .end local v5    # "wifiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v6, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1893
    .local v0, "dtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1894
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1895
    .local v1, "dtIgnitePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1896
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1898
    .end local v1    # "dtIgnitePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToCricketApp(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1370
    const-string v4, "com.smithmicro.netwise.director.cricket"

    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1371
    .local v2, "netWisePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1372
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1373
    .local v3, "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1374
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1376
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1380
    .end local v3    # "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v4, "com.dti.cricket"

    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1381
    .local v0, "ignitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1382
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1383
    .local v1, "ignitePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1384
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1386
    .end local v1    # "ignitePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2377
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2380
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2382
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2298
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2300
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2301
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2302
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2304
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 2
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2309
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2310
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2311
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2312
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2314
    const-string v0, "com.android.mms"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2315
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2316
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2317
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2320
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDocomoApp(I)V
    .locals 42
    .param p1, "userId"    # I

    .prologue
    .line 1390
    const-string v41, "com.nttdocomo.android.idmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1391
    .local v13, "DcmIDManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1392
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1393
    .local v14, "DcmIDManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1394
    const-string v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1399
    .end local v14    # "DcmIDManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v41, "com.nttdocomo.android.accountauthenticator"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1400
    .local v5, "DcmAccountAuthenticator":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 1401
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1402
    .local v6, "DcmAccountAuthenticatorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1403
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1408
    .end local v6    # "DcmAccountAuthenticatorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v41, "jp.co.nttdocomo.lcsapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1409
    .local v31, "Dcmlcsapp":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_2

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 1410
    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    .line 1411
    .local v32, "DcmlcsappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1413
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1417
    .end local v32    # "DcmlcsappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v41, "com.nttdocomo.android.wipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1418
    .local v19, "DcmWipe":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_3

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_3

    .line 1419
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1420
    .local v20, "DcmWipePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1425
    .end local v20    # "DcmWipePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v41, "com.nttdocomo.android.applicationmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1426
    .local v7, "DcmApplicationManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 1427
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1428
    .local v8, "DcmApplicationManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1429
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1433
    .end local v8    # "DcmApplicationManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v41, "com.nttdocomo.android.lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1434
    .local v29, "Dcmlac":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_5

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 1435
    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 1436
    .local v30, "DcmlacPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1437
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1441
    .end local v30    # "DcmlacPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v41, "com.nttdocomo.android.areamail"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1442
    .local v9, "DcmAreaMail":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1443
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1444
    .local v10, "DcmAreaMailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1445
    const-string v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1446
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1450
    .end local v10    # "DcmAreaMailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v41, "jp.co.omronsoft.android.decoemojimanager_docomo"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1451
    .local v11, "DcmEmojiManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 1452
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1453
    .local v12, "DcmEmojiManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1454
    const-string v41, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1455
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1459
    .end local v12    # "DcmEmojiManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v41, "jp.co.nttdocomo.saigaiban"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 1460
    .local v39, "Dcmsaigaiban":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_8

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 1461
    new-instance v40, Landroid/util/ArraySet;

    invoke-direct/range {v40 .. v40}, Landroid/util/ArraySet;-><init>()V

    .line 1462
    .local v40, "DcmsaigaibanPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v40 .. v41}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1463
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1467
    .end local v40    # "DcmsaigaibanPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v41, "com.nttdocomo.android.remotelock"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1468
    .local v17, "DcmRemotelock":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 1469
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1470
    .local v18, "DcmRemotelockPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1471
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1475
    .end local v18    # "DcmRemotelockPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v41, "com.nttdocomo.android.osv"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 1476
    .local v35, "Dcmosv":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_a

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 1477
    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    .line 1478
    .local v36, "DcmosvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1479
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1483
    .end local v36    # "DcmosvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v41, "com.nttdocomo.android.hcebridge"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1484
    .local v27, "Dcmhcebridge":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_b

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 1485
    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    .line 1486
    .local v28, "DcmhcebridgePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1487
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1491
    .end local v28    # "DcmhcebridgePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v41, "com.nttdocomo.android.mediaplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1492
    .local v15, "DcmMediaplayer":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_c

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 1493
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1494
    .local v16, "DcmMediaplayerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1495
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1499
    .end local v16    # "DcmMediaplayerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v41, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1500
    .local v23, "Dcmdhome":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_d

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 1501
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1502
    .local v24, "DcmdhomePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1503
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1504
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1508
    .end local v24    # "DcmdhomePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v41, "com.nttdocomo.android.cloudstorageservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1509
    .local v21, "Dcmcloudstorageservice":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 1510
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1511
    .local v22, "DcmcloudstorageservicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1512
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1516
    .end local v22    # "DcmcloudstorageservicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v41, "com.nttdocomo.android.iconcier"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1517
    .local v25, "Dcmdiconcier":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_f

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 1518
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 1519
    .local v26, "DcmdiconcierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1520
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1524
    .end local v26    # "DcmdiconcierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v41, "com.nttdocomo.android.mascot"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 1525
    .local v33, "Dcmmascot":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_10

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_10

    .line 1526
    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    .line 1527
    .local v34, "DcmmascotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1528
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1532
    .end local v34    # "DcmmascotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v41, "com.nttdocomo.android.phonemotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 1533
    .local v37, "Dcmphonemotion":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_11

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 1534
    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    .line 1535
    .local v38, "DcmphonemotionPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1536
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1537
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1538
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1541
    .end local v38    # "DcmphonemotionPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method private grantDefaultPermissionsToKddiApp(I)V
    .locals 38
    .param p1, "userId"    # I

    .prologue
    .line 1546
    const-string v37, "com.kddi.android.au_wifi_connect2"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 1547
    .local v35, "KddiAUwificonnectPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_0

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 1548
    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    .line 1549
    .local v36, "KddiAUwificonnectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface/range {v36 .. v37}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1550
    const-string v37, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface/range {v36 .. v37}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1551
    const-string v37, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v36 .. v37}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1553
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1557
    .end local v36    # "KddiAUwificonnectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v37, "com.kddi.android.klop"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1558
    .local v19, "KddiAUklopPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1559
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1560
    .local v20, "KddiAUklopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1561
    const-string v37, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1562
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1564
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1568
    .end local v20    # "KddiAUklopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v37, "com.kddi.android.AddressbookPlus"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1569
    .local v5, "KddiAUaddressbookplusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1570
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1571
    .local v6, "KddiAUaddressbookplusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.CALL_PHONE"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1572
    const-string v37, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1573
    const-string v37, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1575
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1579
    .end local v6    # "KddiAUaddressbookplusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v37, "com.kddi.android.evc"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1580
    .local v17, "KddiAUevcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_3

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 1581
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1582
    .local v18, "KddiAUevcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1583
    const-string v37, "android.permission.CALL_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1584
    const-string v37, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1585
    const-string v37, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1587
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1591
    .end local v18    # "KddiAUevcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v37, "com.kddi.android.checker_android"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1592
    .local v9, "KddiAUcheckerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1593
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1594
    .local v10, "KddiAUcheckerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1595
    const-string v37, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1596
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1598
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1602
    .end local v10    # "KddiAUcheckerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v37, "com.kddi.android.ausharelink"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1603
    .local v27, "KddiAUsharelinkPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_5

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 1604
    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    .line 1605
    .local v28, "KddiAUsharelinkPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1606
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1607
    const-string v37, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1609
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1613
    .end local v28    # "KddiAUsharelinkPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v37, "com.kddi.android.screenshotshare"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1614
    .local v23, "KddiAUscreenshotsharePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 1615
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1616
    .local v24, "KddiAUscreenshotsharePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1618
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1622
    .end local v24    # "KddiAUscreenshotsharePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v37, "com.kddi.cs.app001"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1623
    .local v11, "KddiAUcsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 1624
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1625
    .local v12, "KddiAUcsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v37

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1627
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1631
    .end local v12    # "KddiAUcsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v37, "com.kddi.disasterapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1632
    .local v13, "KddiAUdisasterappPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_8

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 1633
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1634
    .local v14, "KddiAUdisasterappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1635
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1637
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1641
    .end local v14    # "KddiAUdisasterappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v37, "com.kddi.market"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1642
    .local v21, "KddiAUmarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_9

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_9

    .line 1643
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1644
    .local v22, "KddiAUmarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1646
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1650
    .end local v22    # "KddiAUmarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v37, "com.kddi.pass.launcher"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1651
    .local v25, "KddiAUserviceTopPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_a

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 1652
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 1653
    .local v26, "KddiAUserviceTopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1655
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1659
    .end local v26    # "KddiAUserviceTopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string/jumbo v37, "jp.auone.wallet"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 1660
    .local v33, "KddiAUwalletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_b

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_b

    .line 1661
    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    .line 1662
    .local v34, "KddiAUwalletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1664
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1668
    .end local v34    # "KddiAUwalletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v37, "com.kddi.android.email"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1669
    .local v15, "KddiAUemailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_c

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 1670
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1671
    .local v16, "KddiAUemailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1672
    const-string v37, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1673
    const-string v37, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1675
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v37

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1679
    .end local v16    # "KddiAUemailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v37, "com.kddi.android.lismobookstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1680
    .local v7, "KddiAUbookpassPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_d

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 1681
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1682
    .local v8, "KddiAUbookpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v37

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1684
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1688
    .end local v8    # "KddiAUbookpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v37, "web.wm.auone.jp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1689
    .local v31, "KddiAUwalletMarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_e

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 1690
    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    .line 1691
    .local v32, "KddiAUwalletMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1693
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1697
    .end local v32    # "KddiAUwalletMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v37, "com.kddi.android.smartpass"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1698
    .local v29, "KddiAUsmartpassPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_f

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 1699
    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 1700
    .local v30, "KddiAUsmartpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v37, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1702
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v37

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1705
    .end local v30    # "KddiAUsmartpassPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    return-void
.end method

.method private grantDefaultPermissionsToSbmApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1710
    const-string/jumbo v2, "jp.softbank.mb.dmb"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1711
    .local v0, "SbmDisasterMessageBoardPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1712
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1713
    .local v1, "SbmDisasterMessageBoardPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1715
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1717
    .end local v1    # "SbmDisasterMessageBoardPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSingtelApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1850
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1851
    .local v1, "sinDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1852
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1853
    .local v0, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1857
    .end local v0    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSprintApps(I)V
    .locals 28
    .param p1, "userId"    # I

    .prologue
    .line 1728
    :try_start_0
    const-string v26, "com.sprint.dsa"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1729
    .local v11, "sprDSSPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_0

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1730
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1731
    .local v10, "sprDSSPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1732
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1733
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v10, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    .end local v10    # "sprDSSPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "sprDSSPkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    :goto_0
    :try_start_1
    const-string v26, "com.sprint.ce.updater"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1741
    .local v25, "sprintMIPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_1

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1742
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1743
    .local v24, "sprintMIPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1744
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1751
    .end local v24    # "sprintMIPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "sprintMIPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    :goto_1
    :try_start_2
    const-string v26, "com.sprint.w.installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1752
    .local v15, "sprMobileIDPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_2

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1753
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1754
    .local v14, "sprMobileIDPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1755
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1762
    .end local v14    # "sprMobileIDPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "sprMobileIDPkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :goto_2
    :try_start_3
    const-string v26, "com.sprint.ms.smf.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 1763
    .local v20, "sprSMFPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_3

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1764
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 1765
    .local v19, "sprSMFPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1766
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1772
    .end local v19    # "sprSMFPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "sprSMFPkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    :goto_3
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v26, 0x0

    const-string v27, "com.locationlabs.sparkle.yellow.pre"

    aput-object v27, v18, v26

    const/16 v26, 0x1

    const-string v27, "com.locationlabs.v3client"

    aput-object v27, v18, v26

    .line 1776
    .local v18, "sprSDMPkgList":[Ljava/lang/String;
    move-object/from16 v6, v18

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_5

    aget-object v21, v6, v8

    .line 1778
    .local v21, "sprSdm":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1779
    .local v17, "sprSDMPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1780
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1781
    .local v16, "sprSDMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1782
    const-string v26, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1783
    const-string v26, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1784
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1785
    const-string v26, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1786
    const-string v26, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1787
    const-string v26, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1788
    const-string v26, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1789
    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1790
    const-string v26, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1791
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1776
    .end local v16    # "sprSDMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "sprSDMPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1735
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v18    # "sprSDMPkgList":[Ljava/lang/String;
    .end local v21    # "sprSdm":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1736
    .local v7, "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "DSS not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1746
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1747
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "MobileInstaller not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1757
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 1758
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "MobileID not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1768
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 1769
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "SMF not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1793
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v18    # "sprSDMPkgList":[Ljava/lang/String;
    .restart local v21    # "sprSdm":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 1794
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string/jumbo v27, "sprSDM is not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1799
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v21    # "sprSdm":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v26, "com.coremobility.app.vnotes"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1800
    .local v23, "sprVVMPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1801
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1802
    .local v22, "sprVVMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1803
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1804
    const-string v26, "android.permission.READ_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1805
    const-string v26, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1806
    const-string v26, "android.permission.SEND_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1807
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1814
    .end local v22    # "sprVVMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "sprVVMPkg":Landroid/content/pm/PackageParser$Package;
    :cond_6
    :goto_6
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v5, v0, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "com.itsoninc.android.uid"

    aput-object v27, v5, v26

    const/16 v26, 0x1

    const-string v27, "com.itsoninc.android.itsonclient"

    aput-object v27, v5, v26

    const/16 v26, 0x2

    const-string v27, "com.itsoninc.android.itsonservice"

    aput-object v27, v5, v26

    const/16 v26, 0x3

    const-string v27, "com.itsoninc.android.sprintproxy"

    aput-object v27, v5, v26

    .line 1818
    .local v5, "ItsonPkgList":[Ljava/lang/String;
    move-object v6, v5

    array-length v9, v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v9, :cond_8

    aget-object v4, v6, v8

    .line 1820
    .local v4, "ItsonPkg":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1821
    .local v13, "sprItsonPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_7

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1822
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1823
    .local v12, "sprItsonPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1824
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1825
    const-string v26, "android.permission.READ_SMS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1826
    const-string v26, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1827
    const-string v26, "android.permission.SEND_SMS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1828
    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1829
    const-string v26, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1830
    const-string v26, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1831
    const-string v26, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1832
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1818
    .end local v12    # "sprItsonPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "sprItsonPkg":Landroid/content/pm/PackageParser$Package;
    :cond_7
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1809
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_5
    move-exception v7

    .line 1810
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "VVM is not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1834
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "ItsonPkg":Ljava/lang/String;
    .restart local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 1835
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "Itson is not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1838
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    return-void
.end method

.method private grantDefaultPermissionsToTmoApp(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2251
    const-string v6, "com.whitepages.nameid.tmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 2252
    .local v5, "whitepagesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2253
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2254
    .local v4, "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2255
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2256
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2257
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2258
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2259
    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2260
    const-string v6, "android.permission.READ_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2261
    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2262
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2263
    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2267
    .end local v4    # "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "com.cequint.ecid"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2268
    .local v0, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2269
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2270
    .local v1, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2271
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2272
    const-string v6, "android.permission.READ_CONTACTS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2273
    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2274
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2278
    .end local v1    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v6, "com.tmobile.pr.mytmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2279
    .local v2, "myAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2280
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2281
    .local v3, "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2282
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2283
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2284
    const-string v6, "android.permission.READ_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2285
    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2286
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2287
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2288
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2289
    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2290
    const-string v6, "android.permission.USE_SIP"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2291
    const-string v6, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2292
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2294
    .end local v3    # "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToUsccApps(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2231
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2232
    .local v1, "UscIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2233
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2237
    :cond_0
    const-string v2, "com.cequint.ecid"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2238
    .local v0, "UscCityIDPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2239
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2241
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToVerizonApp(I)V
    .locals 39
    .param p1, "userId"    # I

    .prologue
    .line 1909
    const-string v38, "com.verizon.mips.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    .line 1910
    .local v26, "vzMvsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v26, :cond_0

    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 1911
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1912
    .local v14, "mvsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1913
    const-string v38, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1914
    const-string v38, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1915
    const-string v38, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1916
    const-string v38, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1918
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1919
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1923
    .end local v14    # "mvsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v38, "com.vcast.mediamanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1924
    .local v21, "vzCloudPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_1

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 1925
    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    .line 1926
    .local v36, "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1927
    const-string v38, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1928
    const-string v38, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1929
    const-string v38, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1930
    const-string v38, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1931
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1932
    const-string v38, "android.permission.CALL_PHONE"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1933
    const-string v38, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1934
    const-string v38, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1935
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1936
    const-string v38, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1937
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1938
    const-string v38, "android.permission.READ_SMS"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1939
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v36

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1943
    .end local v36    # "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v38, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 1944
    .local v33, "vzSsoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_2

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 1945
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1946
    .local v16, "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1947
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1948
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1952
    .end local v16    # "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v38, "com.verizon.vzwavs"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1953
    .local v19, "vzAvsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_3

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 1954
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1955
    .local v4, "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1956
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1960
    .end local v4    # "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v38, "com.vzw.hss.myverizon"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 1961
    .local v30, "vzMyVerizonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v30, :cond_4

    invoke-static/range {v30 .. v30}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 1962
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1963
    .local v12, "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1964
    const-string v38, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1965
    const-string v38, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1966
    const-string v38, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1967
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1968
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1969
    const-string v38, "android.permission.READ_SMS"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1970
    const-string v38, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1971
    const-string v38, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1972
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1976
    .end local v12    # "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v38, "com.LogiaGroup.LogiaDeck"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 1977
    .local v24, "vzDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_5

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 1978
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1979
    .local v7, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1980
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1981
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1985
    .end local v7    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v38, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 1986
    .local v20, "vzCallerNameIdPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_6

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 1987
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1988
    .local v5, "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1989
    const-string v38, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1990
    const-string v38, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1991
    const-string v38, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1992
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1993
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1994
    const-string v38, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1995
    const-string v38, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1996
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2000
    .end local v5    # "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v38, "com.telecomsys.directedsms.android.SCG"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v34

    .line 2001
    .local v34, "vzVlaPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_7

    invoke-static/range {v34 .. v34}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 2002
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 2003
    .local v17, "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2004
    const-string v38, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2005
    const-string v38, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2006
    const-string v38, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2007
    const-string v38, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2008
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2012
    .end local v17    # "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v38, "com.vzw.hss.widgets.infozone"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 2013
    .local v29, "vzMyInfozonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_8

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 2014
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 2015
    .local v11, "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2016
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2020
    .end local v11    # "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v38, "com.vzw.hss.widgets.infozone.large"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    .line 2021
    .local v28, "vzMyInfozoneLargePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v28, :cond_9

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 2022
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2023
    .local v10, "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2024
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2028
    .end local v10    # "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v38, "com.vzw.hss.widgets.infozone.ellipsis"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 2029
    .local v27, "vzMyInfozoneEllipsisPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_a

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 2030
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2031
    .local v9, "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2032
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2036
    .end local v9    # "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v38, "com.sec.android.app.cmas"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 2037
    .local v23, "vzCmasPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_b

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 2038
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2039
    .local v6, "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2040
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2041
    const-string v38, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2042
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2046
    .end local v6    # "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v38, "com.samsung.vvm"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 2047
    .local v35, "vzVvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_c

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 2048
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 2049
    .local v18, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2050
    const-string v38, "android.permission.CALL_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2051
    const-string v38, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2052
    const-string v38, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2053
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2054
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2055
    const-string v38, "android.permission.READ_SMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2056
    const-string v38, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2057
    const-string v38, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2058
    const-string v38, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2059
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2063
    .end local v18    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v38, "com.qualcomm.ltebc_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 2064
    .local v32, "vzQcomMwPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_d

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 2065
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 2066
    .local v15, "qcomMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2067
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2071
    .end local v15    # "qcomMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v38, "com.expway.embmsserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 2072
    .local v25, "vzExpwayMwPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_e

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 2073
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2074
    .local v8, "expwayMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2075
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2079
    .end local v8    # "expwayMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v38, "com.vzw.hss.myverizontabletlte"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 2080
    .local v31, "vzMyVerizonTabletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_f

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 2081
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 2082
    .local v13, "mvTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2083
    const-string v38, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2084
    const-string v38, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2085
    const-string v38, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2086
    const-string v38, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2087
    const-string v38, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2088
    const-string v38, "android.permission.READ_SMS"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2089
    const-string v38, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2090
    const-string v38, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v38

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2091
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2095
    .end local v13    # "mvTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v38, "com.androidhub"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 2096
    .local v22, "vzCloudTabletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_10

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 2097
    new-instance v37, Landroid/util/ArraySet;

    invoke-direct/range {v37 .. v37}, Landroid/util/ArraySet;-><init>()V

    .line 2098
    .local v37, "vzcTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v38, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2099
    const-string v38, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2100
    const-string v38, "android.permission.READ_CONTACTS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2101
    const-string v38, "android.permission.WRITE_CONTACTS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2102
    const-string v38, "android.permission.GET_ACCOUNTS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2103
    const-string v38, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2104
    const-string v38, "android.permission.CALL_PHONE"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2105
    const-string v38, "android.permission.WRITE_CALL_LOG"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2106
    const-string v38, "android.permission.READ_CALL_LOG"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2107
    const-string v38, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2108
    const-string v38, "android.permission.RECEIVE_MMS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2109
    const-string v38, "android.permission.SEND_SMS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2110
    const-string v38, "android.permission.READ_SMS"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2111
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v37

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2113
    .end local v37    # "vzcTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 200
    .param p1, "userId"    # I

    .prologue
    .line 204
    const-string v196, "DefaultPermGrantPolicy"

    new-instance v197, Ljava/lang/StringBuilder;

    invoke-direct/range {v197 .. v197}, Ljava/lang/StringBuilder;-><init>()V

    const-string v198, "Granting permissions to default platform handlers for user "

    invoke-virtual/range {v197 .. v198}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v197

    move-object/from16 v0, v197

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v197

    invoke-virtual/range {v197 .. v197}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    invoke-static/range {v196 .. v197}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v196, v0

    sget-object v197, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v197

    .line 215
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v107, v0

    .line 216
    .local v107, "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v112, v0

    .line 217
    .local v112, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v187, v0

    .line 218
    .local v187, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v162, v0

    .line 219
    .local v162, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v85, v0

    .line 220
    .local v85, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v160, v0

    .line 221
    .local v160, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object/from16 v171, v0

    .line 222
    .local v171, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v197
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    if-eqz v107, :cond_2

    move-object/from16 v0, v107

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v106

    .line 226
    .local v106, "imePackageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v187, :cond_3

    move-object/from16 v0, v187

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v186

    .line 228
    .local v186, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_1
    if-eqz v112, :cond_4

    move-object/from16 v0, v112

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v111

    .line 230
    .local v111, "locationPackageNames":[Ljava/lang/String;
    :goto_2
    if-eqz v162, :cond_5

    move-object/from16 v0, v162

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v161

    .line 232
    .local v161, "smsAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v85, :cond_6

    move-object/from16 v0, v85

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v84

    .line 234
    .local v84, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v160, :cond_7

    move-object/from16 v0, v160

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v159

    .line 236
    .local v159, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_5
    if-eqz v171, :cond_8

    const-string v196, "com.android.contacts"

    move-object/from16 v0, v171

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v76

    .line 238
    .local v76, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_6
    if-eqz v171, :cond_9

    const-string v196, "com.android.calendar"

    move-object/from16 v0, v171

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v60

    .line 241
    .local v60, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v196, v0

    sget-object v197, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v197

    .line 243
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v196, v0

    move-object/from16 v0, v196

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object/from16 v196, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v108

    .line 245
    .local v108, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v108, :cond_0

    invoke-static/range {v108 .. v108}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_0

    .line 247
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Installer : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v108

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 249
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v196, v0

    move-object/from16 v0, v196

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiers(I)Ljava/util/ArrayList;

    move-result-object v140

    .line 254
    .local v140, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v140 .. v140}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .local v103, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_8
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v196

    if-eqz v196, :cond_a

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Ljava/lang/String;

    .line 255
    .local v180, "verifier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v181

    .line 256
    .local v181, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v181, :cond_1

    invoke-static/range {v181 .. v181}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_1

    .line 258
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Verifier : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v181

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 260
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 261
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 262
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_8

    .line 1331
    .end local v103    # "i$":Ljava/util/Iterator;
    .end local v108    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v140    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v180    # "verifier":Ljava/lang/String;
    .end local v181    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v196

    monitor-exit v197
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v196

    .line 222
    .end local v60    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v76    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v84    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v85    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v106    # "imePackageNames":[Ljava/lang/String;
    .end local v107    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v111    # "locationPackageNames":[Ljava/lang/String;
    .end local v112    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v159    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v160    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v161    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v162    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v171    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v186    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v187    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_1
    move-exception v196

    :try_start_2
    monitor-exit v197
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v196

    .line 224
    .restart local v85    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v107    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v112    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v160    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v162    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v171    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v187    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_2
    const/16 v106, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v106    # "imePackageNames":[Ljava/lang/String;
    :cond_3
    const/16 v186, 0x0

    goto/16 :goto_1

    .line 228
    .restart local v186    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_4
    const/16 v111, 0x0

    goto/16 :goto_2

    .line 230
    .restart local v111    # "locationPackageNames":[Ljava/lang/String;
    :cond_5
    const/16 v161, 0x0

    goto/16 :goto_3

    .line 232
    .restart local v161    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_6
    const/16 v84, 0x0

    goto/16 :goto_4

    .line 234
    .restart local v84    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_7
    const/16 v159, 0x0

    goto/16 :goto_5

    .line 236
    .restart local v159    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_8
    const/16 v76, 0x0

    goto/16 :goto_6

    .line 238
    .restart local v76    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_9
    const/16 v60, 0x0

    goto/16 :goto_7

    .line 267
    .restart local v60    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v103    # "i$":Ljava/util/Iterator;
    .restart local v108    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v140    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_3
    new-instance v153, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v153

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v153, "setupIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.SETUP_WIZARD"

    move-object/from16 v0, v153

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v153

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v154

    .line 271
    .local v154, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v154, :cond_b

    invoke-static/range {v154 .. v154}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_b

    .line 273
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "SetupWizard : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v154

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 275
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 276
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 280
    :cond_b
    const-string v196, "com.skt.skaf.A000Z00040"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v172

    .line 281
    .local v172, "tStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v172, :cond_c

    invoke-static/range {v172 .. v172}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_c

    .line 282
    new-instance v173, Landroid/util/ArraySet;

    invoke-direct/range {v173 .. v173}, Landroid/util/ArraySet;-><init>()V

    .line 283
    .local v173, "tStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v173

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v173

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v173

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v172

    move-object/from16 v2, v173

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 290
    .end local v173    # "tStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v196, "com.skt.skaf.Z0000TSEED"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v176

    .line 291
    .local v176, "tStoreUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v176, :cond_d

    invoke-static/range {v176 .. v176}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_d

    .line 292
    new-instance v177, Landroid/util/ArraySet;

    invoke-direct/range {v177 .. v177}, Landroid/util/ArraySet;-><init>()V

    .line 293
    .local v177, "tStoreUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v177

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v177

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v177

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 299
    .end local v177    # "tStoreUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v196, "com.skp.tstore.startup"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v174

    .line 300
    .local v174, "tStoreStartupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v174, :cond_e

    invoke-static/range {v174 .. v174}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_e

    .line 301
    new-instance v175, Landroid/util/ArraySet;

    invoke-direct/range {v175 .. v175}, Landroid/util/ArraySet;-><init>()V

    .line 302
    .local v175, "tStoreStartupPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v175

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move-object/from16 v2, v175

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 307
    .end local v175    # "tStoreStartupPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v196, "com.skt.skaf.OA00018282"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v128

    .line 308
    .local v128, "oneStoreARMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v128, :cond_f

    invoke-static/range {v128 .. v128}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_f

    .line 309
    new-instance v129, Landroid/util/ArraySet;

    invoke-direct/range {v129 .. v129}, Landroid/util/ArraySet;-><init>()V

    .line 310
    .local v129, "oneStoreARMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v129

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v128

    move-object/from16 v2, v129

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 315
    .end local v129    # "oneStoreARMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v196, "com.kt.olleh.storefront"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 316
    .local v27, "OllehMarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_10

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_10

    .line 317
    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    .line 318
    .local v28, "OllehMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v28

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v28

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 326
    .end local v28    # "OllehMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v196, "com.kt.serviceagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 327
    .local v25, "OSAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_11

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_11

    .line 328
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 329
    .local v26, "OSAPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v26

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v26

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    const/16 v196, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 339
    .end local v26    # "OSAPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    const-string v196, "com.kt.om.ktpackageinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 340
    .local v11, "KTPackageInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_12

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_12

    .line 341
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 342
    .local v12, "KTPackageInstallerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v196

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v196

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v196

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 350
    .end local v12    # "KTPackageInstallerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    const-string v196, "com.lguplus.appstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 351
    .local v21, "LGUPlusStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_13

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_13

    .line 352
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 353
    .local v22, "LGUPlusStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v22

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v22

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 361
    .end local v22    # "LGUPlusStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const-string v196, "com.lguplus.downloader"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 362
    .local v18, "LGUPlusDownloaderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_14

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_14

    .line 363
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 364
    .local v13, "LGUDownLoaderPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v196

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v196

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v196

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 372
    .end local v13    # "LGUDownLoaderPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    const-string v196, "com.lguplus.pushagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 373
    .local v19, "LGUPlusPushPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_15

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_15

    .line 374
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 375
    .local v20, "LGUPlusPushPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 381
    .end local v20    # "LGUPlusPushPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15
    const-string v196, "com.lguplus.common"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 382
    .local v16, "LGUPlusCommonServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_16

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_16

    .line 383
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 384
    .local v17, "LGUPlusCommonServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    const/16 v196, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v196

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 392
    .end local v17    # "LGUPlusCommonServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    const-string v196, "com.lgt.arm"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 393
    .local v14, "LGUPlusArmServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_17

    invoke-static {v14}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_17

    .line 394
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 395
    .local v15, "LGUPlusArmServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v196

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    const/16 v196, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 401
    .end local v15    # "LGUPlusArmServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_17
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCricketApp(I)V

    .line 404
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDocomoApp(I)V

    .line 407
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToKddiApp(I)V

    .line 410
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSbmApp(I)V

    .line 413
    new-instance v62, Landroid/content/Intent;

    const-string v196, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v62

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v62, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v63

    .line 416
    .local v63, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v63, :cond_18

    invoke-static/range {v63 .. v63}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_18

    .line 418
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Camera : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 420
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 421
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 422
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 423
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 427
    :cond_18
    const-string v196, "com.sec.android.app.magnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 428
    .local v24, "MagnifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_19

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_19

    .line 429
    new-instance v113, Landroid/util/ArraySet;

    invoke-direct/range {v113 .. v113}, Landroid/util/ArraySet;-><init>()V

    .line 430
    .local v113, "magnifierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.CAMERA"

    move-object/from16 v0, v113

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v113

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v113

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 436
    .end local v113    # "magnifierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_19
    const-string v196, "com.sec.android.app.camera.plb"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 437
    .local v23, "LiveBroadcastPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_1a

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_1a

    .line 438
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 439
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 440
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 441
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 442
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 446
    :cond_1a
    const-string v196, "com.samsung.android.app.sreminder"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v150

    .line 447
    .local v150, "sassistantPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v150, :cond_1b

    invoke-static/range {v150 .. v150}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_1b

    .line 448
    new-instance v143, Landroid/util/ArraySet;

    invoke-direct/range {v143 .. v143}, Landroid/util/ArraySet;-><init>()V

    .line 449
    .local v143, "saPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v196, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v196, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v196, "android.permission.READ_SMS"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v196, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v143

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move-object/from16 v2, v143

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 463
    .end local v143    # "saPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1b
    const-string v196, "com.samsung.android.spay"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v147

    .line 464
    .local v147, "samsungPayPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v147, :cond_1c

    invoke-static/range {v147 .. v147}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_1c

    .line 465
    new-instance v148, Landroid/util/ArraySet;

    invoke-direct/range {v148 .. v148}, Landroid/util/ArraySet;-><init>()V

    .line 466
    .local v148, "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "US"

    const-string/jumbo v198, "ro.csc.countryiso_code"

    invoke-static/range {v198 .. v198}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v198

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_25

    .line 467
    const-string v196, "android.permission.CAMERA"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move-object/from16 v2, v148

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 482
    .end local v148    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1c
    const-string v196, "com.sec.android.app.shealth"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v155

    .line 483
    .local v155, "shealthPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v155, :cond_1d

    invoke-static/range {v155 .. v155}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_1d

    .line 484
    new-instance v156, Landroid/util/ArraySet;

    invoke-direct/range {v156 .. v156}, Landroid/util/ArraySet;-><init>()V

    .line 486
    .local v156, "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.BODY_SENSORS"

    move-object/from16 v0, v156

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v156

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v196, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v156

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v156

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v156

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v156

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 496
    .end local v156    # "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1d
    const-string/jumbo v196, "media"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v116

    .line 498
    .local v116, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v116, :cond_1e

    .line 499
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Media provider : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 501
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 505
    :cond_1e
    const-string/jumbo v196, "downloads"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v88

    .line 507
    .local v88, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v88, :cond_1f

    .line 508
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Downloads provider : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v88

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 510
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 514
    :cond_1f
    new-instance v89, Landroid/content/Intent;

    const-string v196, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v89

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v89, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v90

    .line 517
    .local v90, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v90, :cond_20

    invoke-static/range {v90 .. v90}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_20

    .line 519
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Downloads UI : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v90

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 521
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 525
    :cond_20
    const-string v196, "com.android.externalstorage.documents"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v168

    .line 527
    .local v168, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v168, :cond_21

    .line 528
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Storage provider : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v168

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 530
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 534
    :cond_21
    new-instance v68, Landroid/content/Intent;

    const-string v196, "android.credentials.INSTALL"

    move-object/from16 v0, v68

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v68, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v69

    .line 537
    .local v69, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_22

    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_22

    .line 539
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "CertInstaller : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v69

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 541
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 545
    :cond_22
    if-nez v84, :cond_26

    .line 546
    new-instance v86, Landroid/content/Intent;

    const-string v196, "android.intent.action.DIAL"

    move-object/from16 v0, v86

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v86, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v87

    .line 549
    .local v87, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v87, :cond_23

    .line 550
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Dialer : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v87

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 566
    .end local v86    # "dialerIntent":Landroid/content/Intent;
    .end local v87    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v103    # "i$":Ljava/util/Iterator;
    :cond_23
    if-eqz v159, :cond_28

    .line 567
    move-object/from16 v50, v159

    .local v50, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v109, v0

    .local v109, "len$":I
    const/16 v103, 0x0

    .local v103, "i$":I
    :goto_a
    move/from16 v0, v103

    move/from16 v1, v109

    if-ge v0, v1, :cond_28

    aget-object v158, v50, v103

    .line 568
    .local v158, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v157

    .line 570
    .local v157, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v157, :cond_24

    .line 571
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Sim call manager : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v157

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 567
    :cond_24
    add-int/lit8 v103, v103, 0x1

    goto :goto_a

    .line 470
    .end local v50    # "arr$":[Ljava/lang/String;
    .end local v68    # "certInstallerIntent":Landroid/content/Intent;
    .end local v69    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v88    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v89    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v90    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v109    # "len$":I
    .end local v116    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v155    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .end local v157    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v158    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v168    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v103, "i$":Ljava/util/Iterator;
    .restart local v148    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_25
    const-string v196, "android.permission.CAMERA"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    const-string v196, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v148

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 555
    .end local v148    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v68    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v69    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v88    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v89    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v90    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v116    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v155    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v168    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :cond_26
    move-object/from16 v50, v84

    .restart local v50    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v109, v0

    .restart local v109    # "len$":I
    const/16 v103, 0x0

    .local v103, "i$":I
    :goto_b
    move/from16 v0, v103

    move/from16 v1, v109

    if-ge v0, v1, :cond_23

    aget-object v83, v50, v103

    .line 556
    .local v83, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v87

    .line 557
    .restart local v87    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v87, :cond_27

    .line 558
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Dialer : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v87

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 555
    :cond_27
    add-int/lit8 v103, v103, 0x1

    goto :goto_b

    .line 580
    .end local v50    # "arr$":[Ljava/lang/String;
    .end local v83    # "dialerAppPackageName":Ljava/lang/String;
    .end local v87    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v103    # "i$":I
    .end local v109    # "len$":I
    :cond_28
    if-nez v161, :cond_2f

    .line 581
    new-instance v163, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v163

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v163, "smsIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, v163

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v164

    .line 585
    .local v164, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v164, :cond_29

    .line 586
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "SMS : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v164

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 602
    .end local v163    # "smsIntent":Landroid/content/Intent;
    .end local v164    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_29
    new-instance v66, Landroid/content/Intent;

    const-string v196, "android.provider.Telephony.SMS_CB_RECEIVED"

    move-object/from16 v0, v66

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v66, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v67

    .line 605
    .local v67, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v67, :cond_2a

    invoke-static/range {v67 .. v67}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_2a

    .line 606
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Cell Broadcast Receiver : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 608
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 612
    :cond_2a
    new-instance v64, Landroid/content/Intent;

    const-string v196, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    move-object/from16 v0, v64

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v64, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v65

    .line 615
    .local v65, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v65, :cond_2b

    invoke-static/range {v65 .. v65}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_2b

    .line 616
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Carrier Provisioning Service : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 618
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 622
    :cond_2b
    new-instance v55, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v55

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v55, "calendarIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, v55

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v56

    .line 626
    .local v56, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v56, :cond_2c

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_2c

    .line 628
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Calendar : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 630
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 631
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 635
    :cond_2c
    const-string v196, "com.android.calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v57

    .line 637
    .local v57, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v57, :cond_2d

    .line 638
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Calendar provider : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 640
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 641
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 643
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 647
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v61

    .line 649
    .local v61, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v59

    .line 650
    .local v59, "calendarSyncAdapterCount":I
    const/16 v102, 0x0

    .local v102, "i":I
    :goto_c
    move/from16 v0, v102

    move/from16 v1, v59

    if-ge v0, v1, :cond_31

    .line 651
    move-object/from16 v0, v61

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/pm/PackageParser$Package;

    .line 652
    .local v58, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_2e

    .line 653
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Calendar provider sync adapters : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 655
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 650
    :cond_2e
    add-int/lit8 v102, v102, 0x1

    goto :goto_c

    .line 591
    .end local v55    # "calendarIntent":Landroid/content/Intent;
    .end local v56    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v58    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v59    # "calendarSyncAdapterCount":I
    .end local v61    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v64    # "carrierProvIntent":Landroid/content/Intent;
    .end local v65    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v66    # "cbrIntent":Landroid/content/Intent;
    .end local v67    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v102    # "i":I
    :cond_2f
    move-object/from16 v50, v161

    .restart local v50    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v109, v0

    .restart local v109    # "len$":I
    const/16 v103, 0x0

    .restart local v103    # "i$":I
    :goto_d
    move/from16 v0, v103

    move/from16 v1, v109

    if-ge v0, v1, :cond_29

    aget-object v165, v50, v103

    .line 592
    .local v165, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v164

    .line 593
    .restart local v164    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v164, :cond_30

    .line 594
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "SMS : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v164

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 591
    :cond_30
    add-int/lit8 v103, v103, 0x1

    goto :goto_d

    .line 660
    .end local v50    # "arr$":[Ljava/lang/String;
    .end local v103    # "i$":I
    .end local v109    # "len$":I
    .end local v164    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v165    # "smsPackageName":Ljava/lang/String;
    .restart local v55    # "calendarIntent":Landroid/content/Intent;
    .restart local v56    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v57    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v59    # "calendarSyncAdapterCount":I
    .restart local v61    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v64    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v65    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v66    # "cbrIntent":Landroid/content/Intent;
    .restart local v67    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v102    # "i":I
    :cond_31
    new-instance v71, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v71

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v71, "contactsIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, v71

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v72

    .line 664
    .local v72, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v72, :cond_32

    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_32

    .line 666
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Contacts : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v72

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 668
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 669
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 670
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 674
    :cond_32
    const-string v196, "com.samsung.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 675
    .local v33, "SamsungContacts":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_33

    .line 678
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 682
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v77

    .line 684
    .local v77, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v75

    .line 685
    .local v75, "contactsSyncAdapterCount":I
    const/16 v102, 0x0

    :goto_e
    move/from16 v0, v102

    move/from16 v1, v75

    if-ge v0, v1, :cond_35

    .line 686
    move-object/from16 v0, v77

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/content/pm/PackageParser$Package;

    .line 687
    .local v74, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v74 .. v74}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_34

    .line 688
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Contacts provider sync adapters : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v74

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 690
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 685
    :cond_34
    add-int/lit8 v102, v102, 0x1

    goto :goto_e

    .line 695
    .end local v74    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_35
    const-string v196, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v73

    .line 697
    .local v73, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v73, :cond_36

    .line 698
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Contacts provider : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 700
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 702
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 704
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 708
    :cond_36
    const-string v196, "com.sec.android.widgetapp.easymodecontactswidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 709
    .local v9, "FavoriteContacts":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_37

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_37

    .line 711
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 715
    :cond_37
    new-instance v81, Landroid/content/Intent;

    const-string v196, "android.app.action.PROVISION_MANAGED_DEVICE"

    move-object/from16 v0, v81

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v81, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v82

    .line 719
    .local v82, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v82, :cond_38

    invoke-static/range {v82 .. v82}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_38

    .line 721
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Device provisioning : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v82

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 723
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 727
    :cond_38
    new-instance v114, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v114

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v114, "mapsIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_MAPS"

    move-object/from16 v0, v114

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v115

    .line 731
    .local v115, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v115, :cond_39

    invoke-static/range {v115 .. v115}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_39

    .line 733
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Maps : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 735
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 739
    :cond_39
    new-instance v97, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v97

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v97, "galleryIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_GALLERY"

    move-object/from16 v0, v97

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v98

    .line 743
    .local v98, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v98, :cond_3a

    invoke-static/range {v98 .. v98}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_3a

    .line 745
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Gallery : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v98

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 747
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 751
    :cond_3a
    new-instance v92, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v92

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v92, "emailIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, v92

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v93

    .line 755
    .local v93, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v93, :cond_3b

    invoke-static/range {v93 .. v93}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_3b

    .line 757
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Email : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v93

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 759
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 763
    :cond_3b
    const/16 v54, 0x0

    .line 764
    .local v54, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v196, v0

    move-object/from16 v0, v196

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v80

    .line 765
    .local v80, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v80, :cond_3c

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v54

    .line 768
    :cond_3c
    if-nez v54, :cond_3d

    .line 769
    new-instance v53, Landroid/content/Intent;

    const-string v196, "android.intent.action.MAIN"

    move-object/from16 v0, v53

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v53, "browserIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, v53

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v54

    .line 774
    .end local v53    # "browserIntent":Landroid/content/Intent;
    :cond_3d
    if-eqz v54, :cond_3e

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_3e

    .line 776
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Browser : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 778
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 782
    :cond_3e
    const-string v196, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v151

    .line 783
    .local v151, "sbrowserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v151, :cond_3f

    invoke-static/range {v151 .. v151}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_3f

    .line 784
    new-instance v152, Landroid/util/ArraySet;

    invoke-direct/range {v152 .. v152}, Landroid/util/ArraySet;-><init>()V

    .line 785
    .local v152, "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v152

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 789
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move-object/from16 v2, v152

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 793
    .end local v152    # "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3f
    if-eqz v106, :cond_41

    .line 794
    move-object/from16 v50, v106

    .restart local v50    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v109, v0

    .restart local v109    # "len$":I
    const/16 v103, 0x0

    .restart local v103    # "i$":I
    :goto_f
    move/from16 v0, v103

    move/from16 v1, v109

    if-ge v0, v1, :cond_41

    aget-object v105, v50, v103

    .line 795
    .local v105, "imePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v104

    .line 796
    .local v104, "imePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v104, :cond_40

    invoke-static/range {v104 .. v104}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_40

    .line 798
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "IME : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v104

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 800
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 794
    :cond_40
    add-int/lit8 v103, v103, 0x1

    goto :goto_f

    .line 804
    .end local v50    # "arr$":[Ljava/lang/String;
    .end local v103    # "i$":I
    .end local v104    # "imePackage":Landroid/content/pm/PackageParser$Package;
    .end local v105    # "imePackageName":Ljava/lang/String;
    .end local v109    # "len$":I
    :cond_41
    const-string v196, "com.sec.android.inputmethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v144

    .line 805
    .local v144, "samsungIME":Landroid/content/pm/PackageParser$Package;
    if-eqz v144, :cond_42

    invoke-static/range {v144 .. v144}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_42

    .line 806
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 807
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 811
    :cond_42
    if-eqz v186, :cond_44

    .line 812
    move-object/from16 v50, v186

    .restart local v50    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v109, v0

    .restart local v109    # "len$":I
    const/16 v103, 0x0

    .restart local v103    # "i$":I
    :goto_10
    move/from16 v0, v103

    move/from16 v1, v109

    if-ge v0, v1, :cond_44

    aget-object v185, v50, v103

    .line 813
    .local v185, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v184

    .line 815
    .local v184, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v184, :cond_43

    invoke-static/range {v184 .. v184}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_43

    .line 817
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Voice interaction : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v184

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 819
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 821
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 823
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 825
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 827
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 829
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 812
    :cond_43
    add-int/lit8 v103, v103, 0x1

    goto/16 :goto_10

    .line 836
    .end local v50    # "arr$":[Ljava/lang/String;
    .end local v103    # "i$":I
    .end local v109    # "len$":I
    .end local v184    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v185    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_44
    new-instance v188, Landroid/content/Intent;

    const-string v196, "android.speech.RecognitionService"

    move-object/from16 v0, v188

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v188, "voiceRecoIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.DEFAULT"

    move-object/from16 v0, v188

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, v188

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v189

    .line 840
    .local v189, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v189, :cond_45

    invoke-static/range {v189 .. v189}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_45

    .line 842
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Voice recognition : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v189

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 844
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v189

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 848
    :cond_45
    if-eqz v111, :cond_47

    .line 849
    move-object/from16 v50, v111

    .restart local v50    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v109, v0

    .restart local v109    # "len$":I
    const/16 v103, 0x0

    .restart local v103    # "i$":I
    :goto_11
    move/from16 v0, v103

    move/from16 v1, v109

    if-ge v0, v1, :cond_47

    aget-object v130, v50, v103

    .line 850
    .local v130, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v110

    .line 851
    .local v110, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v110, :cond_46

    invoke-static/range {v110 .. v110}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_46

    .line 853
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Location : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v110

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 855
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 856
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 857
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 858
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 859
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 860
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 862
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 863
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 864
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 849
    :cond_46
    add-int/lit8 v103, v103, 0x1

    goto/16 :goto_11

    .line 870
    .end local v50    # "arr$":[Ljava/lang/String;
    .end local v103    # "i$":I
    .end local v109    # "len$":I
    .end local v110    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v130    # "packageName":Ljava/lang/String;
    :cond_47
    new-instance v121, Landroid/content/Intent;

    const-string v196, "android.intent.action.VIEW"

    move-object/from16 v0, v121

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v121, "musicIntent":Landroid/content/Intent;
    const-string v196, "android.intent.category.DEFAULT"

    move-object/from16 v0, v121

    move-object/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    new-instance v196, Ljava/io/File;

    const-string/jumbo v198, "foo.mp3"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v196 .. v196}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v196

    const-string v198, "audio/mpeg"

    move-object/from16 v0, v121

    move-object/from16 v1, v196

    move-object/from16 v2, v198

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v122

    .line 876
    .local v122, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v122, :cond_48

    invoke-static/range {v122 .. v122}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_48

    .line 878
    const/16 v196, 0xc30

    new-instance v198, Ljava/lang/StringBuilder;

    invoke-direct/range {v198 .. v198}, Ljava/lang/StringBuilder;-><init>()V

    const-string v199, "Music : "

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    move-object/from16 v0, v122

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v199, v0

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    const-string v199, " was granted by default"

    invoke-virtual/range {v198 .. v199}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v198

    move/from16 v0, v196

    move-object/from16 v1, v198

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 880
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 884
    :cond_48
    const-string v196, "com.samsung.mdl.radio"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v145

    .line 885
    .local v145, "samsungMilkMusicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v145, :cond_49

    invoke-static/range {v145 .. v145}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_49

    .line 886
    new-instance v146, Landroid/util/ArraySet;

    invoke-direct/range {v146 .. v146}, Landroid/util/ArraySet;-><init>()V

    .line 887
    .local v146, "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v146

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 888
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v146

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 889
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v146

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    const-string v196, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v146

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v146

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 895
    .end local v146    # "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_49
    const-string v196, "com.samsung.oh"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v142

    .line 896
    .local v142, "sPlusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v142, :cond_4a

    invoke-static/range {v142 .. v142}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_4a

    .line 897
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 898
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 899
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 903
    :cond_4a
    const-string/jumbo v196, "de.telekom.tsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 904
    .local v37, "TelekomTscPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_4b

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_4b

    .line 905
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 909
    :cond_4b
    const-string/jumbo v196, "de.telekom.mds.mbp"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v36

    .line 910
    .local v36, "TelekomMbpPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_4c

    invoke-static/range {v36 .. v36}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_4c

    .line 911
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 912
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 916
    :cond_4c
    const-string v196, "at.tmobile.android.myt"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 917
    .local v39, "TmobileMytPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_4d

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_4d

    .line 918
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 922
    :cond_4d
    const-string/jumbo v196, "pl.tmobile.miboa"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v38

    .line 923
    .local v38, "TmobileMiboaPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v38, :cond_4e

    invoke-static/range {v38 .. v38}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_4e

    .line 924
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 925
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 929
    :cond_4e
    const-string/jumbo v196, "pl.tmobile.panel"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v40

    .line 930
    .local v40, "TmobilePanelPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v40, :cond_4f

    invoke-static/range {v40 .. v40}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_4f

    .line 931
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 932
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 936
    :cond_4f
    const-string v196, "com.wsomacp"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v127

    .line 937
    .local v127, "omacpPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v127, :cond_50

    invoke-static/range {v127 .. v127}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_50

    .line 938
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 939
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 943
    :cond_50
    const-string v196, "com.att.mobiletransfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v119

    .line 944
    .local v119, "mobileTransferPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v119, :cond_51

    invoke-static/range {v119 .. v119}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_51

    .line 945
    new-instance v120, Landroid/util/ArraySet;

    invoke-direct/range {v120 .. v120}, Landroid/util/ArraySet;-><init>()V

    .line 946
    .local v120, "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.CAMERA"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    const-string v196, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 948
    const-string v196, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 949
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 950
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 951
    const-string v196, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 952
    const-string v196, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 953
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    const-string v196, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 955
    const-string v196, "android.permission.SEND_SMS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 956
    const-string v196, "android.permission.READ_SMS"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 957
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v120

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, v119

    move-object/from16 v2, v120

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 964
    .end local v120    # "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_51
    const-string v196, "com.smartcom"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v51

    .line 965
    .local v51, "attAllAccessPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v51, :cond_52

    invoke-static/range {v51 .. v51}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_52

    .line 966
    new-instance v52, Landroid/util/ArraySet;

    invoke-direct/range {v52 .. v52}, Landroid/util/ArraySet;-><init>()V

    .line 967
    .local v52, "attAllAccessPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v52

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v52

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    const-string v196, "android.permission.READ_SMS"

    move-object/from16 v0, v52

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 974
    .end local v52    # "attAllAccessPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_52
    const-string/jumbo v196, "net.aetherpal.device"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v138

    .line 975
    .local v138, "remoteSupportPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v138, :cond_53

    invoke-static/range {v138 .. v138}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_53

    .line 976
    new-instance v139, Landroid/util/ArraySet;

    invoke-direct/range {v139 .. v139}, Landroid/util/ArraySet;-><init>()V

    .line 977
    .local v139, "remoteSupportPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v139

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 978
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v139

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 979
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v139

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 980
    const-string v196, "android.permission.READ_SMS"

    move-object/from16 v0, v139

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move-object/from16 v2, v139

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 985
    .end local v139    # "remoteSupportPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_53
    const-string v196, "com.locationlabs.sparkle.blue"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v94

    .line 986
    .local v94, "familyUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v94, :cond_54

    invoke-static/range {v94 .. v94}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_54

    .line 987
    new-instance v95, Landroid/util/ArraySet;

    invoke-direct/range {v95 .. v95}, Landroid/util/ArraySet;-><init>()V

    .line 988
    .local v95, "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v95

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 989
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v95

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 990
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v95

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 991
    const-string v196, "android.permission.SEND_SMS"

    move-object/from16 v0, v95

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 992
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v95

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v95

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 997
    .end local v95    # "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_54
    const-string v196, "com.asurion.android.mobilerecovery.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v133

    .line 998
    .local v133, "protectionPlusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v133, :cond_55

    invoke-static/range {v133 .. v133}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_55

    .line 999
    new-instance v134, Landroid/util/ArraySet;

    invoke-direct/range {v134 .. v134}, Landroid/util/ArraySet;-><init>()V

    .line 1000
    .local v134, "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v134

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1001
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v134

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1002
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move-object/from16 v2, v134

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1003
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1004
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1005
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1009
    .end local v134    # "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_55
    const-string v196, "com.matchboxmobile.wisp"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v100

    .line 1010
    .local v100, "hotSpotPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v100, :cond_56

    invoke-static/range {v100 .. v100}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_56

    .line 1011
    new-instance v101, Landroid/util/ArraySet;

    invoke-direct/range {v101 .. v101}, Landroid/util/ArraySet;-><init>()V

    .line 1012
    .local v101, "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v101

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1013
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    move-object/from16 v2, v101

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1017
    .end local v101    # "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_56
    const-string v196, "com.smartcomroot"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1018
    .local v6, "AllAccessBaserootPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_57

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_57

    .line 1019
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1020
    .local v7, "AllAccessBaserootPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v196

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1025
    .end local v7    # "AllAccessBaserootPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_57
    const-string v196, "com.att.myWireless"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v123

    .line 1026
    .local v123, "myATTPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v123, :cond_58

    invoke-static/range {v123 .. v123}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_58

    .line 1027
    new-instance v124, Landroid/util/ArraySet;

    invoke-direct/range {v124 .. v124}, Landroid/util/ArraySet;-><init>()V

    .line 1028
    .local v124, "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v124

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    move-object/from16 v2, v124

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1033
    .end local v124    # "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_58
    const-string v196, "com.tmobile.pr.adapt"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v48

    .line 1034
    .local v48, "adaptPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v48, :cond_59

    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_59

    .line 1035
    new-instance v49, Landroid/util/ArraySet;

    invoke-direct/range {v49 .. v49}, Landroid/util/ArraySet;-><init>()V

    .line 1036
    .local v49, "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v49

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1037
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v49

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1038
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v49

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1039
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1043
    .end local v49    # "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_59
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1044
    .local v42, "VZW":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v196

    if-nez v196, :cond_5a

    const-string v196, "VZW"

    move-object/from16 v0, v196

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_5a

    .line 1045
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToVerizonApp(I)V

    .line 1049
    :cond_5a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1050
    .local v5, "ATT":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v196

    if-nez v196, :cond_5b

    const-string v196, "ATT"

    move-object/from16 v0, v196

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_5b

    .line 1051
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToAttApp(I)V

    .line 1055
    :cond_5b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1056
    .local v35, "TMO":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v196

    if-nez v196, :cond_5c

    const-string v196, "TMO"

    move-object/from16 v0, v196

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_5c

    .line 1057
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToTmoApp(I)V

    .line 1061
    :cond_5c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1062
    .local v31, "SIN":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v196

    if-nez v196, :cond_5d

    const-string v196, "SIN"

    move-object/from16 v0, v196

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_5d

    .line 1063
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSingtelApp(I)V

    .line 1067
    :cond_5d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1068
    .local v8, "CCT":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v196

    if-nez v196, :cond_5e

    const-string v196, "CCT"

    move-object/from16 v0, v196

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_5e

    .line 1069
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToComcastApp(I)V

    .line 1073
    :cond_5e
    const-string v196, "com.sec.android.daemonapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v193

    .line 1074
    .local v193, "weatherDaemonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v193, :cond_5f

    invoke-static/range {v193 .. v193}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_5f

    .line 1075
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v193

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1076
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v193

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1080
    :cond_5f
    const-string v196, "com.sec.android.widgetapp.ap.hero.accuweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v191

    .line 1081
    .local v191, "weatherAccuPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v191, :cond_60

    invoke-static/range {v191 .. v191}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_60

    .line 1082
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v191

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1083
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v191

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1087
    :cond_60
    const-string v196, "com.sec.android.widgetapp.ap.hero.cmaweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v192

    .line 1088
    .local v192, "weatherCMAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v192, :cond_61

    invoke-static/range {v192 .. v192}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_61

    .line 1089
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1090
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1094
    :cond_61
    const-string v196, "com.sec.android.widgetapp.ap.hero.kweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v195

    .line 1095
    .local v195, "weatherNewsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v195, :cond_62

    invoke-static/range {v195 .. v195}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_62

    .line 1096
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v195

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1097
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v195

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1101
    :cond_62
    const-string v196, "com.sec.android.widgetapp.ap.hero.weathernewsjp"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v194

    .line 1102
    .local v194, "weatherNewsJPPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v194, :cond_63

    invoke-static/range {v194 .. v194}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_63

    .line 1103
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v194

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1104
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v194

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1108
    :cond_63
    const-string v196, "com.osp.app.signin"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 1109
    .local v32, "SamsungAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_64

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_64

    .line 1110
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1114
    :cond_64
    const-string v196, "com.samsung.android.app.galaxyfinder"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v141

    .line 1115
    .local v141, "sFinderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v141, :cond_65

    invoke-static/range {v141 .. v141}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_65

    .line 1116
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1117
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1118
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1119
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1120
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1124
    :cond_65
    const-string v196, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v170

    .line 1125
    .local v170, "svoicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v170, :cond_66

    invoke-static/range {v170 .. v170}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_66

    .line 1126
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1127
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1128
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1129
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1130
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1131
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1132
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1136
    :cond_66
    const-string v196, "com.samsung.android.svoiceime"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v169

    .line 1137
    .local v169, "svoiceImePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v169, :cond_67

    invoke-static/range {v169 .. v169}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_67

    .line 1138
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1142
    :cond_67
    const-string v196, "com.samsung.android.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v149

    .line 1143
    .local v149, "samsungVideoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v149, :cond_68

    invoke-static/range {v149 .. v149}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_68

    .line 1144
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1148
    :cond_68
    const-string v196, "com.samsung.everglades.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v182

    .line 1149
    .local v182, "videoListMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v182, :cond_69

    invoke-static/range {v182 .. v182}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_69

    .line 1150
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v182

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1154
    :cond_69
    const-string v196, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v183

    .line 1155
    .local v183, "videoPlayerMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v183, :cond_6a

    invoke-static/range {v183 .. v183}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_6a

    .line 1156
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1160
    :cond_6a
    const-string v196, "com.samsung.android.app.soundpicker"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v167

    .line 1161
    .local v167, "soundPickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v167, :cond_6b

    invoke-static/range {v167 .. v167}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_6b

    .line 1162
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1166
    :cond_6b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_EnableSprintExtension"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v196

    if-eqz v196, :cond_6c

    .line 1167
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSprintApps(I)V

    .line 1171
    :cond_6c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v196

    const-string v198, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v196

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1172
    .local v41, "USC_pregrant":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v196

    if-nez v196, :cond_6d

    const-string v196, "USC"

    move-object/from16 v0, v196

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v196

    if-eqz v196, :cond_6d

    .line 1173
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToUsccApps(I)V

    .line 1176
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v196, v0

    move-object/from16 v0, v196

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v196, v0

    move-object/from16 v0, v196

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1179
    const-string v196, "com.sec.android.app.voicenote"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v47

    .line 1180
    .local v47, "VoiceRecorderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v47, :cond_6e

    invoke-static/range {v47 .. v47}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_6e

    .line 1181
    new-instance v190, Landroid/util/ArraySet;

    invoke-direct/range {v190 .. v190}, Landroid/util/ArraySet;-><init>()V

    .line 1182
    .local v190, "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v190

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1183
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v190

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1184
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v190

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1185
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v190

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1186
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v190

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v190

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1192
    .end local v190    # "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6e
    const-string v196, "com.samsung.android.app.memo"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v117

    .line 1193
    .local v117, "memoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v117, :cond_6f

    invoke-static/range {v117 .. v117}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_6f

    .line 1194
    new-instance v118, Landroid/util/ArraySet;

    invoke-direct/range {v118 .. v118}, Landroid/util/ArraySet;-><init>()V

    .line 1195
    .local v118, "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v118

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1196
    const-string v196, "android.permission.CAMERA"

    move-object/from16 v0, v118

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    const-string v196, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v118

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1198
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v118

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1199
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v118

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    move-object/from16 v2, v118

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1205
    .end local v118    # "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6f
    const-string v196, "com.samsung.android.game.gametools"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v99

    .line 1206
    .local v99, "gameToolsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v99, :cond_70

    invoke-static/range {v99 .. v99}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_70

    .line 1207
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1208
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1209
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1210
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1214
    :cond_70
    const-string v196, "com.samsung.android.service.peoplestripe"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v131

    .line 1215
    .local v131, "peopleEdgePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v131, :cond_71

    invoke-static/range {v131 .. v131}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_71

    .line 1217
    new-instance v132, Landroid/util/ArraySet;

    invoke-direct/range {v132 .. v132}, Landroid/util/ArraySet;-><init>()V

    .line 1218
    .local v132, "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1219
    const-string v196, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1220
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1221
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1222
    const-string v196, "android.permission.CAMERA"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1223
    const-string v196, "android.permission.SEND_SMS"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1224
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1225
    const-string v196, "android.permission.READ_SMS"

    move-object/from16 v0, v132

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1226
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    move-object/from16 v2, v132

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1230
    .end local v132    # "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_71
    const-string v196, "com.sec.android.widgetapp.locationwidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v125

    .line 1231
    .local v125, "myPlacesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v125, :cond_72

    invoke-static/range {v125 .. v125}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_72

    .line 1233
    new-instance v126, Landroid/util/ArraySet;

    invoke-direct/range {v126 .. v126}, Landroid/util/ArraySet;-><init>()V

    .line 1234
    .local v126, "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1235
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1236
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1237
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1239
    const-string v196, "android.permission.SEND_SMS"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1240
    const-string v196, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v126

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1241
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v126

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1245
    .end local v126    # "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_72
    const-string v196, "com.samsung.android.email.provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v91

    .line 1246
    .local v91, "emailAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v91, :cond_73

    invoke-static/range {v91 .. v91}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_73

    .line 1248
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1249
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1251
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1253
    new-instance v166, Landroid/util/ArraySet;

    invoke-direct/range {v166 .. v166}, Landroid/util/ArraySet;-><init>()V

    .line 1254
    .local v166, "smsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v166

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    const-string v196, "android.permission.SEND_SMS"

    move-object/from16 v0, v166

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v166

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1261
    .end local v166    # "smsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_73
    const-string v196, "com.sec.android.app.samsungapps"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v96

    .line 1262
    .local v96, "galaxyAppsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v96, :cond_74

    invoke-static/range {v96 .. v96}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_74

    .line 1263
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1264
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1265
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1266
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1270
    :cond_74
    const-string v196, "com.vodafone.callplushybrid"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v45

    .line 1271
    .local v45, "VodafoneCallPlus":Landroid/content/pm/PackageParser$Package;
    if-eqz v45, :cond_75

    invoke-static/range {v45 .. v45}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_75

    .line 1272
    new-instance v46, Landroid/util/ArraySet;

    invoke-direct/range {v46 .. v46}, Landroid/util/ArraySet;-><init>()V

    .line 1273
    .local v46, "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1274
    const-string v196, "android.permission.CALL_PHONE"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1275
    const-string v196, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1276
    const-string v196, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1277
    const-string v196, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1279
    const-string v196, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1280
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v46

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1281
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1285
    .end local v46    # "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_75
    const-string v196, "com.samsung.android.themestore"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v178

    .line 1286
    .local v178, "themeStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v178, :cond_76

    invoke-static/range {v178 .. v178}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_76

    .line 1287
    new-instance v179, Landroid/util/ArraySet;

    invoke-direct/range {v179 .. v179}, Landroid/util/ArraySet;-><init>()V

    .line 1288
    .local v179, "themeStorePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v179

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1289
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1290
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move-object/from16 v2, v179

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1295
    .end local v179    # "themeStorePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_76
    const-string v196, "com.sec.android.app.clockpackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v70

    .line 1296
    .local v70, "clockPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v70, :cond_77

    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_77

    .line 1297
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1298
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1302
    :cond_77
    const-string v196, "com.sec.android.mimage.photoretouching"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1303
    .local v29, "PhotoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_78

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_78

    .line 1304
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1308
    :cond_78
    const-string v196, "com.sec.android.app.vepreload"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v44

    .line 1309
    .local v44, "VideoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v44, :cond_79

    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_79

    .line 1310
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1314
    :cond_79
    const-string v196, "com.samsung.app.slowmotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v34

    .line 1315
    .local v34, "SlowMotionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_7a

    invoke-static/range {v34 .. v34}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_7a

    .line 1316
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1320
    :cond_7a
    const-string v196, "com.samsung.app.highlightplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 1321
    .local v10, "HighlightPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v10, :cond_7b

    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_7b

    .line 1322
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    move/from16 v2, v198

    move/from16 v3, p1

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1326
    :cond_7b
    const-string v196, "com.sec.android.app.clipvideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v43

    .line 1327
    .local v43, "VideoCollagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v43, :cond_7c

    invoke-static/range {v43 .. v43}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_7c

    .line 1328
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v198, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v196

    move/from16 v3, v198

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1331
    :cond_7c
    monitor-exit v197
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1334
    const-string v196, "com.samsung.android.qconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v135

    .line 1335
    .local v135, "qcHeroPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v135, :cond_7d

    invoke-static/range {v135 .. v135}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_7d

    .line 1336
    new-instance v137, Landroid/util/ArraySet;

    invoke-direct/range {v137 .. v137}, Landroid/util/ArraySet;-><init>()V

    .line 1337
    .local v137, "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v137

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v137

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1339
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1340
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    move-object/from16 v2, v137

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1343
    .end local v137    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7d
    const-string v196, "com.samsung.android.sconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v136

    .line 1344
    .local v136, "qcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v136, :cond_7e

    invoke-static/range {v136 .. v136}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_7e

    .line 1345
    new-instance v137, Landroid/util/ArraySet;

    invoke-direct/range {v137 .. v137}, Landroid/util/ArraySet;-><init>()V

    .line 1346
    .restart local v137    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v137

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1347
    const-string v196, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v137

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1348
    const-string v196, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1349
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1353
    .end local v137    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7e
    const-string v196, "com.samsung.android.controltv"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v78

    .line 1354
    .local v78, "controlTVPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v78, :cond_7f

    invoke-static/range {v78 .. v78}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_7f

    .line 1355
    new-instance v79, Landroid/util/ArraySet;

    invoke-direct/range {v79 .. v79}, Landroid/util/ArraySet;-><init>()V

    .line 1356
    .local v79, "controlTVPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v196, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v79

    move-object/from16 v1, v196

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1357
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1361
    .end local v79    # "controlTVPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7f
    const-string v196, "com.samsung.android.app.qragent"

    move-object/from16 v0, p0

    move-object/from16 v1, v196

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 1362
    .local v30, "QRAgentPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v30, :cond_80

    invoke-static/range {v30 .. v30}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v196

    if-eqz v196, :cond_80

    .line 1363
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1364
    sget-object v196, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v196

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1366
    :cond_80
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 178
    const-string v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions to platform components for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 181
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 182
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 187
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 188
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 189
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 190
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 192
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    const/4 v7, 0x1

    invoke-direct {p0, v6, v5, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2504
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2505
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 2509
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2510
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 2514
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2577
    :cond_0
    return-void

    .line 2518
    :cond_1
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2519
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2521
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2522
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2523
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_2

    .line 2524
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2527
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2528
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2529
    .restart local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2534
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 2535
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 2536
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2540
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2535
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2544
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2545
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 2553
    .local v8, "flags":I
    if-eqz v8, :cond_5

    if-eqz p4, :cond_3

    .line 2555
    :cond_5
    const/16 v7, 0x14

    .line 2557
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    if-nez v1, :cond_3

    .line 2561
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2567
    const/16 v4, 0x20

    .line 2568
    .local v4, "newFlags":I
    if-eqz p3, :cond_6

    .line 2569
    or-int/lit8 v4, v4, 0x10

    .line 2572
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2580
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    move v2, v1

    .line 2594
    :cond_0
    :goto_0
    return v2

    .line 2583
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2586
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2587
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_3

    .line 2588
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 2594
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 2591
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 2594
    goto :goto_1
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 175
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2411
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default browser for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    if-nez p1, :cond_1

    .line 2420
    :cond_0
    :goto_0
    return-void

    .line 2415
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2416
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2337
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Granting permissions to default dialer app for user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    if-nez p1, :cond_1

    .line 2373
    :cond_0
    :goto_0
    return-void

    .line 2341
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2342
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2345
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2346
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2347
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2348
    const-string v0, "com.skt.prod.dialer"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 2349
    .local v11, "tDialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_0

    if-ne v1, v11, :cond_0

    .line 2350
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2351
    .local v2, "tDialerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2352
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v5, p2

    .line 2353
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2354
    const-string v0, "com.skt.prod.phone"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2355
    .local v6, "tPhonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2356
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2357
    .local v7, "tPhonePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2358
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2359
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2360
    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2361
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2362
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2363
    const-string v0, "android.permission.CALL_PHONE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2364
    const-string v0, "android.permission.READ_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2365
    const-string v0, "android.permission.SEND_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2366
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2367
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2368
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    .line 2369
    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto/16 :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2385
    if-nez p1, :cond_1

    .line 2392
    :cond_0
    :goto_0
    return-void

    .line 2388
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2389
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 2390
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2324
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default sms app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    if-nez p1, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return-void

    .line 2328
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2329
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2331
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2332
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2395
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    if-nez p1, :cond_1

    .line 2408
    :cond_0
    return-void

    .line 2399
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2400
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2401
    .local v1, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2403
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2404
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2405
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2399
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 162
    return-void
.end method

.method public setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 146
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 150
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 166
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 158
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 170
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 154
    return-void
.end method
