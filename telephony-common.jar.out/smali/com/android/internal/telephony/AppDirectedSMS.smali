.class public final enum Lcom/android/internal/telephony/AppDirectedSMS;
.super Ljava/lang/Enum;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AppDirectedSMS$1;,
        Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;,
        Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/AppDirectedSMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

.field private static final BUA_APP_PREFIX:Ljava/lang/String; = "BUA-ADS"

.field private static final BUA_SMS_PREFIX:Ljava/lang/String; = "//F1"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final DIRECTED_SMS_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field private static final DIRECTED_SMS_META_DATA_NAME:Ljava/lang/String; = "com.verizon.directedAppSMS"

.field public static final enum INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

.field private static final TAG:Ljava/lang/String; = "AppDirectedSMS"

.field private static final VZW_SMS_PREFIX:Ljava/lang/String; = "//VZW"


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/android/internal/telephony/AppDirectedSMS;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/telephony/AppDirectedSMS;

    sget-object v1, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method private findAppDirectedSMSPackage(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
    .locals 14
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "appMessage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 194
    .local v6, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 196
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 198
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v9, "resolveIntent":Landroid/content/Intent;
    const-string v12, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v12, "//VZW"

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 202
    const-string v12, "//VZW"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    iget-object v12, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 208
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 210
    .local v8, "queryResults":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_3

    .line 211
    :cond_0
    const-string v12, "AppDirectedSMS"

    const-string v13, "findAppDirectedSMSPackage| queryResult is null or size is zero"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v11

    .line 240
    :cond_1
    return-object v5

    .line 204
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "queryResults":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    move-object v0, p1

    goto :goto_0

    .line 214
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "queryResults":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    invoke-direct {v5, v11}, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;-><init>(Lcom/android/internal/telephony/AppDirectedSMS$1;)V

    .line 215
    .local v5, "matchInfo":Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 216
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 218
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 219
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/AppDirectedSMS;->isVzwPermissionGranted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 215
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "componentName":Landroid/content/ComponentName;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    const/16 v11, 0x80

    :try_start_0
    invoke-virtual {v7, v2, v11}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 226
    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/internal/telephony/AppDirectedSMS;->startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_3
    const/16 v11, 0x80

    :try_start_1
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 234
    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/internal/telephony/AppDirectedSMS;->startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 235
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 237
    const-string v11, "AppDirectedSMS"

    const-string v12, "findAppDirectedSMSPackage| ApplicationInfo NameNotFoundException"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 227
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 228
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 229
    const-string v11, "AppDirectedSMS"

    const-string v12, "findAppDirectedSMSPackage| ReceiverInfo NameNotFoundException"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 14
    .param p1, "appPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .line 141
    .local v5, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v8, "resolveIntent":Landroid/content/Intent;
    const-string v11, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v11, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 148
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 149
    .local v7, "queryResults":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 150
    :cond_0
    const-string v11, "AppDirectedSMS"

    const-string v12, "queryResult is null or size is zero"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 188
    :goto_0
    return-object v2

    .line 154
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 155
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 156
    .restart local v9    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 157
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/AppDirectedSMS;->isVzwPermissionGranted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 154
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_3
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    const/16 v11, 0x80

    :try_start_1
    invoke-virtual {v6, v2, v11}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 166
    const-string v11, "AppDirectedSMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "findAppDirectedSMSPackageWithPrefix| package is found from receiver!!![package]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " [receiver]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 168
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .end local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_4
    move-object v1, v2

    .line 176
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :goto_3
    const/16 v11, 0x80

    :try_start_2
    invoke-virtual {v6, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 177
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 178
    const-string v11, "AppDirectedSMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "findAppDirectedSMSPackageWithPrefix| package is found from application !!! [package]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " [receiver]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v1

    .line 180
    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 172
    const-string v11, "AppDirectedSMS"

    const-string v12, "findAppDirectedSMSPackageWithPrefix| ReceiverInfo NameNotFoundException"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 182
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 183
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 184
    const-string v11, "AppDirectedSMS"

    const-string v12, "findAppDirectedSMSPackageWithPrefix| ApplicationInfo NameNotFoundException"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move-object v2, v10

    .line 188
    goto/16 :goto_0

    .line 170
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_4
.end method

.method private isPackageVzwSmsAuthorized(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 279
    const-string v1, "AppDirectedSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageVzwSmsAuthorized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    :goto_0
    return v9

    .line 281
    :cond_0
    const/4 v9, 0x0

    .line 282
    .local v9, "result":Z
    const/4 v7, 0x0

    .line 283
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 287
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "apis":Ljava/lang/String;
    const-string v1, "VZWSMS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 294
    .end local v6    # "apis":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_2
    :goto_1
    const-string v1, "AppDirectedSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageVzwSmsAuthorized result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :catch_0
    move-exception v8

    .line 292
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    if-eqz v7, :cond_2

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 294
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private isVzwPermissionGranted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "callingPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 249
    .local v2, "mPackageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v3

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 254
    const-string v3, "AppDirectedSMS"

    const-string v5, "isVzwPermissionGranted calling package NameNotFoundException"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 255
    goto :goto_0

    .line 263
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportHuxAvs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->isPackageVzwSmsAuthorized(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    :cond_2
    const-string v3, "AppDirectedSMS"

    const-string v5, "isVzwPermissionGranted returning false"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 268
    goto :goto_0
.end method

.method private matchesMetaData(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appPrefix"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "metaData":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 331
    :goto_0
    return v1

    .line 330
    :cond_0
    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setBestMatchResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "msgInfo"    # Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackage(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    move-result-object v0

    .line 127
    .local v0, "matchInfo":Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, v0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v1, "//VZW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 134
    const-string v1, "AppDirectedSMS"

    const-string v2, "setBestMatchResult| no component"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "msgInfo"    # Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .param p3, "appPrefix"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 111
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p2, v0, p1, p3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 115
    const-string v1, "AppDirectedSMS"

    const-string v2, "setResult| no component"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startsWithMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appMessage"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "matchInfo"    # Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;

    .prologue
    const/4 v4, 0x1

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "metaData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 304
    .local v1, "parameter":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 305
    const-string v2, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v2, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 311
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 314
    :cond_1
    iput-object v1, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    .line 315
    iput-object p3, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    .line 316
    iput-object v0, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    .line 317
    const-string v2, "AppDirectedSMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startsWithMetaData| match found [componentName]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [parameter]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [appPrefix]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AppDirectedSMS;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/AppDirectedSMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/AppDirectedSMS;

    return-object v0
.end method


# virtual methods
.method public checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;-><init>()V

    .line 92
    .local v0, "msgInfo":Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    const-string v1, "//F1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "AppDirectedSMS"

    const-string v2, "checkIfAppDirSMS| BUA Message"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "BUA-ADS"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/telephony/AppDirectedSMS;->setResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string v1, "AppDirectedSMS"

    const-string v2, "checkIfAppDirSMS| Not BUA"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->setBestMatchResult(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)V

    goto :goto_0
.end method
