.class public Lcom/android/phone/settings/UserPLMNListPreference;
.super Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;,
        Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;,
        Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    }
.end annotation


# instance fields
.field private mAirplaneModeOn:Z

.field private mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mUPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private mUPLMNListContainer:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;Lcom/android/phone/settings/UserPLMNListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    .line 98
    new-instance v0, Lcom/android/phone/settings/UserPLMNListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/UserPLMNListPreference$1;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/settings/UserPLMNListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/settings/UserPLMNListPreference;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/UserPLMNListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/settings/UserPLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/UserPLMNListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/settings/UserPLMNListPreference;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UserPLMNListPreference;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getUPLMNInfoFromEf()V

    return-void
.end method

.method private addUPLMNPreference(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V
    .locals 5
    .param p1, "network"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    .line 289
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 290
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorAlphaNumeric()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "plmnName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    # getter for: Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->access$300(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/settings/UserPLMNListPreference;->getNetWorkModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "extendName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method private createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 332
    const-string v3, "uplmn_code"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "numberName":Ljava/lang/String;
    const-string v3, "uplmn_priority"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 334
    .local v2, "priority":I
    const-string v3, "uplmn_service"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, "act":I
    new-instance v3, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    iget v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;-><init>(ILjava/lang/String;II)V

    return-object v3
.end method

.method private dumpUPLMNInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 388
    const-string v2, "UserPLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpUPLMNInfo : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-virtual {v1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method

.method private getNetWorkModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "EFNWMode"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {p1}, Lcom/android/phone/settings/UPLMNEditor;->convertEFMode2Ap(I)I

    move-result v0

    .line 515
    .local v0, "index":I
    const-string v1, ""

    .line 516
    .local v1, "summary":Ljava/lang/String;
    invoke-static {p2}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    .line 527
    :goto_0
    return-object v1

    .line 519
    :cond_0
    invoke-static {p2}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    goto :goto_0

    .line 523
    :cond_1
    const-string v2, "UserPLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetWorkModeString: operatorNumeric is unavailable, operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUPLMNInfoFromEf()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneAdapter;->getPlmnList(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/os/Message;)V

    .line 197
    return-void
.end method

.method private handleAddList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V
    .locals 7
    .param p1, "newInfo"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    .line 365
    const-string v4, "UserPLMNListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAddList: add new network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 369
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    new-instance v2, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 372
    .local v2, "pc":Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v4, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 373
    .local v3, "position":I
    if-lez v3, :cond_1

    .line 374
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 378
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    .line 379
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 380
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    .line 381
    return-void

    .line 376
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleDeleteList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "network"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    const-string v4, "UserPLMNListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDeleteList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    new-instance v2, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 437
    .local v2, "pc":Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v4, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 439
    .local v3, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->setOperatorNumeric(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    .line 448
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 450
    return-object v1
.end method

.method private handleModifiedList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "newInfo"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .param p2, "oldInfo"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    const-string v5, "UserPLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleModifiedList: change old info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-------new info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 399
    new-instance v4, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/settings/UserPLMNListPreference;)V

    .line 400
    .local v4, "pc":Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v5, p2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 401
    .local v3, "oldposition":I
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 403
    .local v2, "newposition":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 405
    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    if-le v3, v2, :cond_1

    .line 409
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 410
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 419
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    .line 420
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    .line 421
    return-object v1

    .line 411
    :cond_1
    if-ge v3, v2, :cond_2

    .line 412
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 416
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleSetUPLMN(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->onStarted(Landroid/preference/Preference;Z)V

    .line 340
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mHandler:Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/UserPLMNListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/android/phone/PhoneAdapter;->setPlmnList(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/IccFileHandler;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 341
    return-void
.end method

.method private init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    .line 181
    const-string v0, "UserPLMNListPreference"

    const-string v1, "init ... ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-nez p2, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getUPLMNInfoFromEf()V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 188
    :cond_0
    return-void
.end method

.method private loadIccFileHandler()V
    .locals 6

    .prologue
    .line 344
    const-string v3, "UserPLMNListPreference"

    const-string v4, "loadIccFileHandler()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 347
    .local v2, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v2, :cond_0

    .line 348
    iget v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 351
    :cond_0
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v0, :cond_1

    .line 354
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 356
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newUiccApplication = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 359
    const-string v3, "UserPLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v1    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return-void
.end method

.method private refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 211
    :cond_2
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    .line 212
    if-nez p1, :cond_5

    .line 213
    const-string v2, "UserPLMNListPreference"

    const-string v3, "refreshUPLMNListPreference : NULL UPLMN list!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 221
    :cond_3
    const-string v2, "UserPLMNListPreference"

    const-string v3, "refreshUPLMNListPreference : NULL UPLMN list!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez p1, :cond_4

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    .line 235
    :cond_4
    return-void

    .line 215
    :cond_5
    const-string v2, "UserPLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshUPLMNListPreference : list.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 230
    .local v1, "network":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->addUPLMNPreference(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V

    .line 232
    const-string v2, "UserPLMNListPreference"

    invoke-virtual {v1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 532
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->invalidateOptionsMenu()V

    .line 533
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateListPriority(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v2, 0x0

    .line 426
    .local v2, "priority":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 427
    .local v1, "info":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "priority":I
    .local v3, "priority":I
    invoke-virtual {v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->setPriority(I)V

    move v2, v3

    .line 428
    .end local v3    # "priority":I
    .restart local v2    # "priority":I
    goto :goto_0

    .line 429
    .end local v1    # "info":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x66

    const/16 v4, 0x65

    .line 314
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "UserPLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz p3, :cond_0

    .line 318
    invoke-direct {p0, p3}, Lcom/android/phone/settings/UserPLMNListPreference;->createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    move-result-object v0

    .line 319
    .local v0, "newInfo":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    if-ne p2, v5, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleDeleteList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    .line 329
    .end local v0    # "newInfo":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local v0    # "newInfo":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_1
    if-ne p2, v4, :cond_0

    .line 322
    if-ne p1, v4, :cond_2

    .line 323
    invoke-direct {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->handleAddList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)V

    goto :goto_0

    .line 324
    :cond_2
    if-ne p1, v5, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleModifiedList(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    .line 113
    iget v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 115
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->addPreferencesFromResource(I)V

    .line 117
    const-string v0, "button_uplmn_list_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceCategory;

    .line 119
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->loadIccFileHandler()V

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 122
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 143
    const v0, 0x7f08038c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UserPLMNListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->setScreenEnabled()V

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 176
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 161
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/UPLMNEditor;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uplmn_code"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "uplmn_priority"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v2, "uplmn_service"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v2, "uplmn_add"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "uplmn_size"

    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->finish()V

    goto :goto_1

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 299
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/UPLMNEditor;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 301
    .local v0, "info":Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    iput-object v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .line 303
    const-string v2, "uplmn_code"

    invoke-virtual {v0}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v2, "uplmn_priority"

    invoke-virtual {v0}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getPriority()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v2, "uplmn_service"

    invoke-virtual {v0}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v2, "uplmn_add"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v2, "uplmn_size"

    iget-object v3, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/settings/UserPLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onResume()V

    .line 134
    invoke-direct {p0, p0, v1}, Lcom/android/phone/settings/UserPLMNListPreference;->init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/settings/UserPLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/UserPLMNListPreference;->mAirplaneModeOn:Z

    .line 138
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method
