.class public Landroid/content/pm/LauncherApps;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$CallbackMessageHandler;,
        Landroid/content/pm/LauncherApps$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LauncherApps"


# instance fields
.field private mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherApps$CallbackMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mService:Landroid/content/pm/ILauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ILauncherApps;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    .line 379
    new-instance v0, Landroid/content/pm/LauncherApps$1;

    invoke-direct {v0, p0}, Landroid/content/pm/LauncherApps$1;-><init>(Landroid/content/pm/LauncherApps;)V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    .line 133
    iput-object p1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    .line 136
    return-void
.end method

.method static synthetic access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/LauncherApps;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 371
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    .line 372
    if-nez p2, :cond_0

    .line 373
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 375
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;-><init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V

    .line 376
    .local v0, "toAdd":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method private findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 354
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 355
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    # getter for: Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;
    invoke-static {v2}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->access$000(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 359
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 354
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 197
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v0

    .line 364
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 365
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 152
    .local v7, "callingUid":I
    const-string v1, "LauncherApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getActivityList callingUid: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " user: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v7, v1, :cond_2

    .line 154
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "LauncherApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getActivityList for another user, request cannot be granted!, other user- "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 193
    :cond_0
    :goto_0
    return-object v10

    .line 158
    :cond_1
    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v7, v1, :cond_2

    .line 159
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 165
    :cond_2
    const/4 v6, 0x0

    .line 167
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 171
    if-nez v6, :cond_3

    .line 172
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 168
    :catch_0
    move-exception v11

    .line 169
    .local v11, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to call LauncherAppsService"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    .end local v11    # "re":Landroid/os/RemoteException;
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v10, "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 176
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 177
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 178
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-wide/16 v4, 0x0

    .line 180
    .local v4, "firstInstallTime":J
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x2000

    invoke-virtual {v1, v3, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_2
    new-instance v0, Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V

    .line 191
    .local v0, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to call LauncherAppsService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to call LauncherAppsService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    .line 307
    return-void
.end method

.method public registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 316
    monitor-enter p0

    .line 317
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v1

    if-gez v1, :cond_0

    .line 318
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 319
    .local v0, "addedFirstCallback":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/LauncherApps;->addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    if-eqz v0, :cond_0

    .line 322
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v1, v2}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v0    # "addedFirstCallback":Z
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 328
    return-void

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 323
    .restart local v0    # "addedFirstCallback":Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 211
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 212
    const-wide/16 v4, 0x0

    .line 214
    .local v4, "firstInstallTime":J
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    :goto_0
    :try_start_2
    new-instance v0, Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    .end local v4    # "firstInstallTime":J
    :goto_1
    return-object v0

    .line 223
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 224
    .local v6, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to call LauncherAppsService"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    .end local v6    # "re":Landroid/os/RemoteException;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 216
    .restart local v4    # "firstInstallTime":J
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1, p3, p4, p2}, Landroid/content/pm/ILauncherApps;->showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1, p3, p4, p2}, Landroid/content/pm/ILauncherApps;->startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    .line 339
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 341
    :try_start_1
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0
.end method
