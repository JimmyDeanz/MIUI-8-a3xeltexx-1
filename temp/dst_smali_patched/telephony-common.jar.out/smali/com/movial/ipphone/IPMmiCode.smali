.class public final Lcom/movial/ipphone/IPMmiCode;
.super Landroid/os/Handler;
.source "IPMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "IPMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_GLOBALDEV_DIALNUM:I = 0x5

.field static final MATCH_GROUP_GLOBALDEV_DIALPREFIX:I = 0x4

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_GLOBALDEV_CLIR_INVK:Ljava/lang/String; = "67"

.field static final SC_GLOBALDEV_CLIR_SUPP:Ljava/lang/String; = "82"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;


# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dialingNumber:Ljava/lang/String;

.field private isPendingUSSD:Z

.field private isUssdRequest:Z

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/movial/ipphone/IPPhone;

.field poundString:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sia:Ljava/lang/String;

.field sib:Ljava/lang/String;

.field sic:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "((\\*)(\\d{2})(\\+{0,1})(\\d{0,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/movial/ipphone/IPMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/movial/ipphone/IPMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    return-void
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    and-int v2, v0, p1

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    and-int v2, v0, p1

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/movial/ipphone/IPMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/movial/ipphone/IPMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isPinCommand()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method private handlePasswordError(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    return-void
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Z
    .locals 3
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/movial/ipphone/IPPhone;->isInCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_2

    :cond_0
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const-string v6, "{0}"

    aput-object v6, v2, v5

    const-string v6, "{1}"

    aput-object v6, v2, v4

    const-string v6, "{2}"

    aput-object v6, v2, v8

    .local v2, "sources":[Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/CharSequence;

    .local v0, "destinations":[Ljava/lang/CharSequence;
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v6, v8, :cond_1

    move v1, v4

    .local v1, "needTimeTemplate":Z
    :goto_0
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v4, :cond_3

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x10400e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, p2

    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v0, v5

    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    if-ne v5, v4, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_0

    :cond_0
    invoke-static {v3, v2, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .end local v1    # "needTimeTemplate":Z
    .end local v3    # "template":Ljava/lang/CharSequence;
    :cond_1
    move v1, v5

    goto :goto_0

    .restart local v1    # "needTimeTemplate":Z
    :cond_2
    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x10400e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v3    # "template":Ljava/lang/CharSequence;
    :cond_3
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x10400e0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v3    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x10400e4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v3    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x10400e3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "template":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;
    .locals 10
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v5, 0x0

    .local v5, "ret":Lcom/movial/ipphone/IPMmiCode;
    sget-object v6, Lcom/movial/ipphone/IPMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "gm":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "DialCode":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "DialPrefix":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "DialNumber":Ljava/lang/String;
    const-string v6, "67"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#31#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v6, Lcom/movial/ipphone/IPMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Lcom/movial/ipphone/IPMmiCode;

    .end local v5    # "ret":Lcom/movial/ipphone/IPMmiCode;
    invoke-direct {v5, p1}, Lcom/movial/ipphone/IPMmiCode;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .restart local v5    # "ret":Lcom/movial/ipphone/IPMmiCode;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->poundString:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->sia:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->sib:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->sic:Ljava/lang/String;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->pwd:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/movial/ipphone/IPMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v5

    .end local v4    # "m":Ljava/util/regex/Matcher;
    .restart local v0    # "DialCode":Ljava/lang/String;
    .restart local v1    # "DialNumber":Ljava/lang/String;
    .restart local v2    # "DialPrefix":Ljava/lang/String;
    :cond_2
    const-string v6, "82"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*31#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    :cond_3
    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Lcom/movial/ipphone/IPMmiCode;

    .end local v5    # "ret":Lcom/movial/ipphone/IPMmiCode;
    invoke-direct {v5, p1}, Lcom/movial/ipphone/IPMmiCode;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .restart local v5    # "ret":Lcom/movial/ipphone/IPMmiCode;
    iput-object p0, v5, Lcom/movial/ipphone/IPMmiCode;->poundString:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcom/movial/ipphone/IPMmiCode;->isShortCode(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v5, Lcom/movial/ipphone/IPMmiCode;

    .end local v5    # "ret":Lcom/movial/ipphone/IPMmiCode;
    invoke-direct {v5, p1}, Lcom/movial/ipphone/IPMmiCode;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .restart local v5    # "ret":Lcom/movial/ipphone/IPMmiCode;
    iput-object p0, v5, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    new-instance v0, Lcom/movial/ipphone/IPMmiCode;

    invoke-direct {v0, p1}, Lcom/movial/ipphone/IPMmiCode;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .local v0, "ret":Lcom/movial/ipphone/IPMmiCode;
    iput-object p0, v0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD:Z

    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    new-instance v0, Lcom/movial/ipphone/IPMmiCode;

    invoke-direct {v0, p2}, Lcom/movial/ipphone/IPMmiCode;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .local v0, "ret":Lcom/movial/ipphone/IPMmiCode;
    iput-object p0, v0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iput-boolean p1, v0, Lcom/movial/ipphone/IPMmiCode;->isUssdRequest:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD:Z

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v6, 0x10400b2

    const v5, 0x10400af

    const v4, 0x104008d

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iput-object v1, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    return-void

    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .local v0, "clirArgs":[I
    const/4 v2, 0x1

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_3
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_1

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_2

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x104008d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iput-object v3, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v6, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    return-void

    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v6

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v6, v1

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v7, 0x1040091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .local v5, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    .local v4, "serviceClassMask":I
    :goto_2
    const/16 v6, 0x80

    if-gt v4, v6, :cond_4

    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "s":I
    :goto_3
    if-ge v0, v2, :cond_3

    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_2

    aget-object v6, v1, v0

    invoke-direct {p0, v6, v4}, Lcom/movial/ipphone/IPMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    shl-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "s":I
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x1

    const v5, 0x104008d

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iput-object v1, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    return-void

    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .local v0, "ints":[I
    array-length v2, v0

    if-eqz v2, :cond_5

    aget v2, v0, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget v2, v0, v6

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    invoke-static {v2}, Lcom/movial/ipphone/IPMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget v2, v0, v4

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    aget v2, v0, v4

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x104008f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v4, 0x1040096

    const v3, 0x104008d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isPinCommand()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v3, "05"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v3, "052"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040097

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    return-void

    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040094

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x104009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x104008f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040092

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isErasure()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x1040093

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AO"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OI"

    goto :goto_0

    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OX"

    goto :goto_0

    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AI"

    goto :goto_0

    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "IR"

    goto :goto_0

    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AB"

    goto :goto_0

    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AG"

    goto :goto_0

    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AC"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-boolean v0, p0, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPPhone;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public getUssdCode()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_2

    move v1, v3

    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/movial/ipphone/IPPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v3, 0x104008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->poundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isPinCommand()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShortCode()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->poundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/movial/ipphone/IPMmiCode;->isUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x1040095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    :goto_0
    iput-boolean p2, p0, Lcom/movial/ipphone/IPMmiCode;->isUssdRequest:Z

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v1, 0x104008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    :cond_0
    return-void
.end method

.method processCode()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isShortCode()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "IPMmiCode"

    const-string v5, "isShortCode"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->sendUssd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    .local v6, "exc":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v5, 0x104008d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_0

    .end local v6    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v11, "30"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "IPMmiCode"

    const-string v5, "is CLIP"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "CLIP"

    const/4 v11, 0x1

    invoke-static {v0, v5, v11}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v5, 0x104008f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-object v9, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_0

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "CLIP"

    const/4 v11, 0x0

    invoke-static {v0, v5, v11}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/movial/ipphone/IPMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->context:Landroid/content/Context;

    const v5, 0x1040091

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-object v9, p0, Lcom/movial/ipphone/IPMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPPhone;->onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V

    goto/16 :goto_0

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v11, "31"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v0, "IPMmiCode"

    const-string v5, "is CLIR"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v5, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0, v11, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-virtual {p0, v11, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/movial/ipphone/IPPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/movial/ipphone/IPMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "IPMmiCode"

    const-string v11, "is CF"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/movial/ipphone/IPMmiCode;->sia:Ljava/lang/String;

    .local v3, "dialingNumber":Ljava/lang/String;
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/movial/ipphone/IPMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v10

    .local v10, "serviceClass":I
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/movial/ipphone/IPMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v2

    .local v2, "reason":I
    iget-object v5, p0, Lcom/movial/ipphone/IPMmiCode;->sic:Ljava/lang/String;

    invoke-static {v5}, Lcom/movial/ipphone/IPMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v4

    .local v4, "time":I
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v1, 0x1

    .local v1, "cfAction":I
    :goto_1
    if-eqz v2, :cond_b

    const/4 v5, 0x4

    if-ne v2, v5, :cond_13

    :cond_b
    and-int/lit8 v5, v10, 0x1

    if-nez v5, :cond_c

    if-nez v10, :cond_13

    :cond_c
    move v8, v0

    .local v8, "isSettingUnconditionalVoice":I
    :goto_2
    if-eq v1, v0, :cond_d

    const/4 v5, 0x3

    if-ne v1, v5, :cond_e

    :cond_d
    move v7, v0

    .local v7, "isEnableDesired":I
    :cond_e
    const-string v0, "IPMmiCode"

    const-string v5, "is CF setCallForward"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v5, 0x6

    invoke-virtual {p0, v5, v8, v7, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v1    # "cfAction":I
    .end local v7    # "isEnableDesired":I
    .end local v8    # "isSettingUnconditionalVoice":I
    :cond_f
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v1, 0x0

    .restart local v1    # "cfAction":I
    goto :goto_1

    .end local v1    # "cfAction":I
    :cond_10
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v1, 0x3

    .restart local v1    # "cfAction":I
    goto :goto_1

    .end local v1    # "cfAction":I
    :cond_11
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isErasure()Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v1, 0x4

    .restart local v1    # "cfAction":I
    goto :goto_1

    .end local v1    # "cfAction":I
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "invalid action"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "cfAction":I
    :cond_13
    move v8, v7

    goto :goto_2

    .end local v1    # "cfAction":I
    .end local v2    # "reason":I
    .end local v3    # "dialingNumber":Ljava/lang/String;
    .end local v4    # "time":I
    .end local v10    # "serviceClass":I
    :cond_14
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sc:Ljava/lang/String;

    const-string v5, "43"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->sia:Ljava/lang/String;

    invoke-static {v0}, Lcom/movial/ipphone/IPMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "serviceClass":I
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isActivate()Z

    move-result v5

    const/4 v11, 0x1

    invoke-virtual {p0, v11, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lcom/movial/ipphone/IPPhone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Lcom/movial/ipphone/IPMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v10    # "serviceClass":I
    :cond_18
    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->poundString:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->poundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD:Z

    iget-object v0, p0, Lcom/movial/ipphone/IPMmiCode;->phone:Lcom/movial/ipphone/IPPhone;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/movial/ipphone/IPMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/movial/ipphone/IPPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
