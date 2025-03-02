.class public Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;
.super Ljava/lang/Object;
.source "ContainerAdminIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;,
        Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mContainerAdminIntentFWDList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mDefaultIntentsToFwd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mStaticIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ContainerAdminIntentReceiver"

    sput-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDefaultIntentsToFwd:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mStaticIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 110
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDefaultIntentsToFwd:Ljava/util/List;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDefaultIntentsToFwd:Ljava/util/List;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDefaultIntentsToFwd:Ljava/util/List;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDefaultIntentsToFwd:Ljava/util/List;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->loadDefaultAdminFWDIntentList()V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerStaticIntents()V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerDynamicIntents()V

    .line 119
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$1;-><init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v3    # "userFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v6

    .line 146
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->sendBroadcastToAdmin(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    return-object v0
.end method

.method private sendBroadcastToAdmin(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userHandle"    # I

    .prologue
    .line 306
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 307
    .local v7, "pm":Landroid/content/pm/PackageManager;
    sget-object v8, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcastToAdmin : Received broadcast intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v8, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 313
    .local v6, "mdmUid":I
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "mdmPkgsNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 315
    .local v4, "mdmPkgName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v8, "containerid"

    invoke-virtual {p2, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    sget-object v8, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to Admin id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " user id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v8, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, p2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mdmPkgName":Ljava/lang/String;
    .end local v5    # "mdmPkgsNames":[Ljava/lang/String;
    .end local v6    # "mdmUid":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public loadDefaultAdminFWDIntentList()V
    .locals 14

    .prologue
    .line 204
    sget-object v12, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    if-nez v12, :cond_0

    .line 205
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    .line 207
    :cond_0
    const/4 v10, 0x0

    .line 208
    .local v10, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v12, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "user"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 209
    .local v11, "userManager":Landroid/os/UserManager;
    if-eqz v11, :cond_1

    .line 210
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .end local v10    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v10, Ljava/util/ArrayList;

    .line 214
    .restart local v10    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 215
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 216
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    .line 218
    .local v1, "currentUserHandle":I
    iget-object v12, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "intentsFwdedToContainerAdmin"

    invoke-virtual {v12, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "listOfIntents":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v4, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 223
    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "regIntents":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v8, v0, v3

    .line 226
    .local v8, "regisIntent":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "regIntents":[Ljava/lang/String;
    .end local v8    # "regisIntent":Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    .end local v1    # "currentUserHandle":I
    .end local v4    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "listOfIntents":Ljava/lang/String;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method

.method public registerBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 236
    iget-object v3, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "intentsFwdedToContainerAdmin"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "registeredIntents":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "intentToReg":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 266
    :goto_1
    return v3

    .end local v0    # "intentToReg":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 239
    goto :goto_0

    .line 247
    .restart local v0    # "intentToReg":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "intentsFwdedToContainerAdmin"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v6, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 252
    const/4 v3, 0x0

    goto :goto_1

    .line 247
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 255
    :cond_4
    sget-object v3, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 256
    sget-object v3, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerDynamicIntents()V

    move v3, v4

    .line 266
    goto :goto_1

    .line 258
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v3, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public registerDynamicIntents()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, "dynamicIntentFilter":Landroid/content/IntentFilter;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;-><init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

    .line 175
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "dynamicIntentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .restart local v3    # "dynamicIntentFilter":Landroid/content/IntentFilter;
    const/4 v13, 0x0

    .line 177
    .local v13, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 178
    .local v14, "userManager":Landroid/os/UserManager;
    if-eqz v14, :cond_1

    .line 179
    invoke-virtual {v14, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v13

    .end local v13    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v13, Ljava/util/ArrayList;

    .line 183
    .restart local v13    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_1
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 184
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 185
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    iget v1, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    iget v1, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 187
    .local v10, "intents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 188
    .local v9, "intent":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "regIntent":[Ljava/lang/String;
    aget-object v0, v11, v5

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    array-length v0, v11

    if-le v0, v2, :cond_3

    aget-object v0, v11, v2

    if-eqz v0, :cond_3

    aget-object v0, v11, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    aget-object v0, v11, v2

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    aget-object v0, v11, v2

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "intent":Ljava/lang/String;
    .end local v10    # "intents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "regIntent":[Ljava/lang/String;
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v13    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v14    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v6

    .line 172
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 199
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v14    # "userManager":Landroid/os/UserManager;
    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDynamicIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$DynamicIntentReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method public registerStaticIntents()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "staticIntentFilter":Landroid/content/IntentFilter;
    new-instance v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;-><init>(Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mStaticIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;

    .line 153
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "staticIntentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .restart local v3    # "staticIntentFilter":Landroid/content/IntentFilter;
    sget-object v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mDefaultIntentsToFwd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 156
    .local v7, "staticIntent":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v7    # "staticIntent":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mStaticIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver$StaticIntentReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method public unregisterBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 270
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 272
    .local v2, "registeredIntents":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "unregIntent":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 276
    sget-object v4, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 299
    :goto_1
    return v4

    .end local v3    # "unregIntent":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .line 272
    goto :goto_0

    .restart local v3    # "unregIntent":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 280
    goto :goto_1

    .line 283
    :cond_2
    sget-object v4, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    .local v1, "regIntent":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 287
    move-object v2, v1

    .line 288
    goto :goto_2

    .line 290
    .end local v1    # "regIntent":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "intentsFwdedToContainerAdmin"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 292
    const/4 v4, 0x0

    goto :goto_1

    .line 295
    :cond_5
    sget-object v4, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->mContainerAdminIntentFWDList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerDynamicIntents()V

    move v4, v5

    .line 299
    goto :goto_1
.end method
