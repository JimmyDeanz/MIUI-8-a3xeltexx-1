.class public Lcom/samsung/android/share/SShareMoreActions;
.super Ljava/lang/Object;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;,
        Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_PLAYER:I = 0x65

.field private static final ACTION_MOBILE_PRINT:I = 0x69

.field private static final ACTION_QUICK_CONNECT:I = 0x68

.field private static final ACTION_SCREEN_MIRRORING:I = 0x66

.field private static final ACTION_SCREEN_SHARING:I = 0x67

.field private static final DEBUG:Z = false

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final INTENT_CHANGE_PLAYER:Ljava/lang/String; = "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

.field private static final INTENT_MOBILE_PRINT:Ljava/lang/String; = "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

.field private static final LIMITED_ENABLE:I = 0x2

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MORE_ACTIONS_KNOX_STATE:Ljava/lang/String; = "more_actions_knox_state"

.field private static final MORE_ACTIONS_PACKAGE_NAME:Ljava/lang/String; = "more_actions_package_name"

.field private static final MORE_ACTIONS_PRINT:Ljava/lang/String; = "more_actions_print"

.field private static final MORE_ACTIONS_QUICK_CONNECT:Ljava/lang/String; = "more_actions_quick_connect"

.field private static final MORE_ACTIONS_SCREEN_SHARING_MODE:Ljava/lang/String; = "more_actions_screen_sharing_mode"

.field private static final QUICK_CONNECT_ACTION:Ljava/lang/String; = "com.samsung.android.qconnect.action.DEVICE_PICKER"

.field private static final QUICK_CONNECT_EXTRA_HEIGHT:Ljava/lang/String; = "extra_height"

.field private static final QUICK_CONNECT_PKG:Ljava/lang/String; = "com.samsung.android.qconnect"

.field private static final SCREEN_MIRRORING_CLASS:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field private static final SCREEN_MIRRORING_EXTRA_DIALOG_ONCE:Ljava/lang/String; = "show_dialog_once"

.field private static final SCREEN_MIRRORING_EXTRA_TAG_WRITE:Ljava/lang/String; = "tag_write_if_success"

.field private static final TAG:Ljava/lang/String; = "SShareMoreActions"


# instance fields
.field private arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private bottomPanelExpaned:Z

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

.field private mBottomPanel:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mEnabledShowBtnBg:Z

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridMoreActions:Landroid/widget/GridView;

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mSharePanelVisibleHeight:I

.field private mSupportEnhancedMoreActions:Z

.field private mWindow:Landroid/view/Window;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/view/Window;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "window"    # Landroid/view/Window;
    .param p5, "referrer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->bottomPanelExpaned:Z

    .line 50
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 54
    iput v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    .line 87
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    .line 88
    iput-object p2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    .line 89
    iput-object p4, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    .line 90
    iput-object p3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 91
    iput-object p5, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 97
    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/share/SShareMoreActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/share/SShareMoreActions;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/share/SShareMoreActions;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F

    return p1
.end method

.method private checkAPConnection()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 281
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 283
    .local v1, "ni_wifi":Landroid/net/NetworkInfo;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 285
    .local v2, "ni_wifiDirect":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    .line 289
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkScreenMirroringRunning()Z
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 300
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 302
    :cond_0
    const/4 v1, 0x1

    .line 304
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkScreenSharingCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 294
    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenMirroringRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSharePanelVisibieHeight()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    return v0
.end method

.method private isKnoxMode()Z
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 277
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 12
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    const v11, 0x10806ef

    const/16 v10, 0x68

    const/16 v9, 0x67

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 107
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v1, 0x0

    .line 115
    .local v1, "isAPConnected":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkAPConnection()Z

    move-result v1

    .line 116
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getSupportEnhancedMoreActions()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 117
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 119
    .local v2, "maxColumnsMoreActions":I
    const-string v3, "SShareMoreActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAPConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSupportEnhancedMoreActions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxColumnsMoreActions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    .line 124
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    .line 128
    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v3, :cond_5

    .line 129
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 130
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const v3, 0x108071e

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v5, 0x10408da

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v10, v3, v4}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 131
    .local v0, "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const v3, 0x108071d

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v5, 0x10408db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v9, v3, v4}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 135
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_3
    :goto_1
    new-instance v3, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v5, 0x109014d

    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;-><init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    .line 161
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    const v4, 0x10204e2

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    .line 163
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 170
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto/16 :goto_0

    .line 138
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getChangePlayerEnable()I

    move-result v3

    if-ne v3, v7, :cond_6

    if-eqz v1, :cond_6

    .line 139
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x65

    const v4, 0x1080a7e

    iget-object v5, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v6, 0x10408d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 140
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenMirroringEnable()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 143
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x66

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v5, 0x10408d6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v11, v4}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 144
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 147
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const-string v3, "Smart View"

    invoke-direct {v0, p0, v9, v11, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 148
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 151
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const v3, 0x10806a5

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v5, 0x10408d8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v10, v3, v4}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 152
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 155
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x69

    const v4, 0x108066f

    iget-object v5, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v6, 0x10408d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 156
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public setSharePanelVisibleHeight(I)V
    .locals 0
    .param p1, "pHeight"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    .line 312
    return-void
.end method

.method public startMoreActions(ILandroid/content/Intent;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "origIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 181
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v6, p1}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->getItemActionId(I)I

    move-result v0

    .line 185
    .local v0, "actionID":I
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v6}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 187
    new-instance v4, Lcom/samsung/android/share/SShareLogging;

    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, p2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 189
    .local v4, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    packed-switch v0, :pswitch_data_0

    .line 206
    const-string v1, "Wrong ID"

    .line 211
    .local v1, "detailInfo":Ljava/lang/String;
    :goto_0
    const-string v6, "MORE"

    invoke-virtual {v4, v6, v1}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v1    # "detailInfo":Ljava/lang/String;
    .end local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_0
    packed-switch v0, :pswitch_data_1

    .line 273
    :goto_1
    return-void

    .line 191
    .restart local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_0
    const-string v1, "Change Player"

    .line 192
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_1
    const-string v1, "Screen Mirroring"

    .line 195
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_2
    const-string v1, "Smart View"

    .line 198
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_3
    const-string v1, "Nearby sharing"

    .line 201
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_4
    const-string v1, "Print"

    .line 204
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v1    # "detailInfo":Ljava/lang/String;
    .end local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_5
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 267
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "SShareMoreActions"

    const-string v7, "MoreActions : ActivityNotFoundException !!! "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_6
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "show_dialog_once"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    const-string/jumbo v6, "tag_write_if_success"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v6, "more_actions_screen_sharing_mode"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v6, "more_actions_knox_state"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->isKnoxMode()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const/high16 v6, 0x14800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 269
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SShareMoreActions"

    const-string v7, "MoreActions : Exception !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 241
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.qconnect"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v6, "com.samsung.android.qconnect.action.DEVICE_PICKER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v6, "extra_height"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->getSharePanelVisibieHeight()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    iget-boolean v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v6, :cond_1

    .line 246
    const-string/jumbo v6, "more_actions_print"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string/jumbo v6, "more_actions_quick_connect"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_1
    const-string v6, "SShareMoreActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mFeature.getPrintEnable()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mFeature.getQuickConnectEnable()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 256
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_8
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 257
    .local v5, "stream":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    iget-object v6, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
