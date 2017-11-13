.class public Landroid/sec/enterprise/WifiPolicyCache;
.super Ljava/lang/Object;
.source "WifiPolicyCache.java"


# static fields
.field public static final ACTION_WIFI_POLICY_STATE_CHANGED:Ljava/lang/String; = "edm.intent.action.internal.WIFI_STATE_CHANGED"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.app.enterprise.extra.EXTRA_USER_ID"

.field public static final EXTRA_WIFI_TYPE_CHANGED:Ljava/lang/String; = "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

.field public static final NO_USER:I = -0x1

.field public static final TYPE_ALLOW_AUTOMATIC_CONNECTION:Ljava/lang/String; = "ALLOW_AUTOMATIC_CONNECTION"

.field public static final TYPE_ALLOW_STATE_CHANGE:Ljava/lang/String; = "ALLOW_STATE_CHANGES"

.field public static final TYPE_ALLOW_USER_CHANGES:Ljava/lang/String; = "ALLOW_USER_CHANGES"

.field public static final TYPE_ALLOW_USER_PROFILES:Ljava/lang/String; = "ALLOW_USER_PROFILES"

.field public static final TYPE_BLACK_SSID_LIST:I = 0x0

.field public static final TYPE_BLOCKED_NETWORKS:Ljava/lang/String; = "BLOCKED_NETWORKS"

.field public static final TYPE_ENTERPRISE_SSIDS:Ljava/lang/String; = "ENTERPRISE_SSIDS"

.field public static final TYPE_MINIMUM_SECURITY_LEVEL:Ljava/lang/String; = "MINIMUM_SECURITY_LEVEL"

.field public static final TYPE_PROMPT_CREDENTIALS_ENABLED:Ljava/lang/String; = "PROMPT_CREDENTIALS_ENABLED"

.field public static final TYPE_WHITE_BLACK_SSID_LIST:Ljava/lang/String; = "WHITE_BLACK_SSID_LIST"

.field public static final TYPE_WHITE_SSID_LIST:I = 0x1

.field public static final TYPE_WIFI_ALLOWED:Ljava/lang/String; = "WIFI_ALLOWED"

.field private static final mSync:Ljava/lang/Object;

.field private static sInstance:Landroid/sec/enterprise/WifiPolicyCache;


# instance fields
.field private mAllowAutomaticConnections:Z

.field private mAllowStateChange:Z

.field private mAllowUserChanges:Z

.field private mAllowUserProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnterpriseSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumSecurityLevel:I

.field private mPromptCredentialsEnabled:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWhiteListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiAllowed:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->mSync:Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 94
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 95
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    .line 97
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    .line 101
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    .line 102
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z

    .line 124
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 125
    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    .line 126
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.internal.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    new-instance v1, Landroid/sec/enterprise/WifiPolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/WifiPolicyCache$1;-><init>(Landroid/sec/enterprise/WifiPolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/sec/enterprise/WifiPolicyCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sget-object v1, Landroid/sec/enterprise/WifiPolicyCache;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {v0, p0}, Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    .line 119
    :cond_0
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;I)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 152
    monitor-enter p0

    if-nez p1, :cond_2

    .line 153
    :try_start_0
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 154
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 155
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 156
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 157
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 158
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v3

    iput v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    .line 159
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    .line 160
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    .line 161
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    .line 163
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 165
    .local v2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 167
    .local v0, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 168
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "i":Landroid/content/pm/UserInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 170
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 173
    :cond_2
    :try_start_2
    const-string v3, "ENTERPRISE_SSIDS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    goto :goto_1

    .line 175
    :cond_3
    const-string v3, "BLOCKED_NETWORKS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    goto :goto_1

    .line 177
    :cond_4
    const-string v3, "ALLOW_USER_CHANGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    goto :goto_1

    .line 179
    :cond_5
    const-string v3, "ALLOW_USER_PROFILES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 180
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 181
    :cond_6
    const-string v3, "WIFI_ALLOWED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 182
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    goto :goto_1

    .line 183
    :cond_7
    const-string v3, "PROMPT_CREDENTIALS_ENABLED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 184
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    goto :goto_1

    .line 185
    :cond_8
    const-string v3, "MINIMUM_SECURITY_LEVEL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v3

    iput v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    goto/16 :goto_1

    .line 187
    :cond_9
    const-string v3, "WHITE_BLACK_SSID_LIST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 188
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    .line 189
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    goto/16 :goto_1

    .line 190
    :cond_a
    const-string v3, "ALLOW_AUTOMATIC_CONNECTION"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 191
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    goto/16 :goto_1

    .line 192
    :cond_b
    const-string v3, "ALLOW_STATE_CHANGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 257
    if-nez p1, :cond_1

    .line 258
    const/4 p1, 0x0

    .line 264
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 260
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 261
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 262
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 344
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    return-void
.end method


# virtual methods
.method public declared-synchronized getAllowUserChanges()Z
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUserProfiles()Z
    .locals 3

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 215
    .local v0, "userId":I
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 220
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    return v0
.end method

.method public declared-synchronized getPromptCredentialsEnabled()Z
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 198
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 201
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    monitor-enter p0

    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 226
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    if-eqz p2, :cond_2

    .line 228
    const v0, 0x1040ad0

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V

    :cond_2
    move v0, v1

    .line 230
    goto :goto_0

    .line 231
    :cond_3
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v2

    iget v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 232
    if-eqz p2, :cond_4

    .line 233
    const v0, 0x1040ad2

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V

    :cond_4
    move v0, v1

    .line 235
    goto :goto_0

    .line 236
    :cond_5
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    :cond_6
    if-eqz p2, :cond_7

    .line 241
    const v0, 0x1040ad0

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    move v0, v1

    .line 243
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiAllowed(Z)Z
    .locals 1
    .param p1, "showMsg"    # Z

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiStateChangeAllowed(Z)Z
    .locals 1
    .param p1, "showMsg"    # Z

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAllowedFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "edmConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "newConfigSec"    # I

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 287
    .local v0, "edmConfigSec":I
    if-ne p3, v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object p2, v3

    .line 336
    .end local p2    # "edmConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-object p2

    .line 289
    .restart local p2    # "edmConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    packed-switch v0, :pswitch_data_0

    move-object p2, v3

    .line 334
    goto :goto_0

    .line 291
    :pswitch_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 292
    .local v1, "index":I
    iput v1, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 293
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    goto :goto_0

    .line 297
    .end local v1    # "index":I
    :pswitch_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, "*"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v3, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 328
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 329
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "password":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
