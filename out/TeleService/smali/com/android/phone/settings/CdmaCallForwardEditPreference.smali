.class public Lcom/android/phone/settings/CdmaCallForwardEditPreference;
.super Lcom/android/phone/settings/EditPhoneNumberPreference;
.source "CdmaCallForwardEditPreference.java"


# static fields
.field private static final URI_DISABLE_CFB:Landroid/net/Uri;

.field private static final URI_DISABLE_CFNRC:Landroid/net/Uri;

.field private static final URI_DISABLE_CFNRY:Landroid/net/Uri;

.field private static final URI_DISABLE_CFU:Landroid/net/Uri;


# instance fields
.field mReason:I

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "tel:*720"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;

    .line 21
    const-string v0, "tel:*900"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;

    .line 23
    const-string v0, "tel:*920"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;

    .line 25
    const-string v0, "tel:*680"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mSlotId:I

    .line 37
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0c0011

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mReason:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-virtual {p0, v4}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 44
    new-instance v1, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/CdmaCallForwardEditPreference$1;-><init>(Lcom/android/phone/settings/CdmaCallForwardEditPreference;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->setDialogOnClosedListener(Lcom/android/phone/settings/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CdmaCallForwardEditPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CdmaCallForwardEditPreference;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mSlotId:I

    return v0
.end method


# virtual methods
.method public setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/phone/settings/CdmaCallForwardEditPreference;->mSlotId:I

    .line 98
    return-void
.end method
