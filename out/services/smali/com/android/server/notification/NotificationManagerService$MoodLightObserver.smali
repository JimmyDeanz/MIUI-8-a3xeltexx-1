.class final Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoodLightObserver"
.end annotation


# instance fields
.field private final MOOD_LIGHT_ON_OFF_STATUS:Landroid/net/Uri;

.field private final MOOD_LIGHT_PACKAGE_LIST:Landroid/net/Uri;

.field moodLightPackages:Ljava/util/HashMap;
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

.field moodLightString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 984
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 978
    const-string/jumbo v0, "ml_pn_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->MOOD_LIGHT_PACKAGE_LIST:Landroid/net/Uri;

    .line 980
    const-string/jumbo v0, "ml_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->MOOD_LIGHT_ON_OFF_STATUS:Landroid/net/Uri;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightPackages:Ljava/util/HashMap;

    .line 985
    return-void
.end method

.method private getMoodColor(Ljava/lang/String;)I
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1032
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMoodString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightString:Ljava/lang/String;

    return-object v0
.end method

.method private updatePackages(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1004
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1005
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "ml_status"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v4, 0x1

    .line 1006
    .local v4, "moodEnabled":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mMoodLightEnabled:Z
    invoke-static {v9, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2502(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1007
    const-string/jumbo v9, "ml_pn_package"

    invoke-static {v6, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightString:Ljava/lang/String;

    .line 1008
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightString:Ljava/lang/String;

    .line 1009
    .local v8, "updatedMoodString":Ljava/lang/String;
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatedMoodString : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 1011
    if-eqz v8, :cond_2

    .line 1012
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1013
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1014
    .local v5, "packages":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1015
    .local v1, "colorPackage":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1016
    .local v7, "specificColorPackage":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightPackages:Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v12}, Landroid/provider/MoodLight;->getColorForIndex(Landroid/content/ContentResolver;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1005
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "colorPackage":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "moodEnabled":Z
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v7    # "specificColorPackage":[Ljava/lang/String;
    .end local v8    # "updatedMoodString":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1018
    .restart local v4    # "moodEnabled":Z
    .restart local v8    # "updatedMoodString":Ljava/lang/String;
    :cond_1
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1019
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1020
    .restart local v7    # "specificColorPackage":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->moodLightPackages:Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v12}, Landroid/provider/MoodLight;->getColorForIndex(Landroid/content/ContentResolver;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    .end local v7    # "specificColorPackage":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method moodLightRegister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 987
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 988
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->MOOD_LIGHT_PACKAGE_LIST:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 990
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->MOOD_LIGHT_ON_OFF_STATUS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 992
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->updatePackages(Landroid/net/Uri;)V

    .line 993
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1000
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;->updatePackages(Landroid/net/Uri;)V

    .line 1001
    return-void
.end method
