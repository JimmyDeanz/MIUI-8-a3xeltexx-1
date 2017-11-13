.class Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpnOverrideInfo"
.end annotation


# instance fields
.field private final fake_home_on:[Ljava/lang/String;

.field private final fake_roaming_on:[Ljava/lang/String;

.field private final imsi_subset:Ljava/lang/String;

.field private final numeric:Ljava/lang/String;

.field private final spn:Ljava/lang/String;

.field private final spn_display_rule:Ljava/lang/String;

.field private final spn_override_only_on:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "spn_display_rule"    # Ljava/lang/String;
    .param p4, "spn_override_only_on"    # Ljava/lang/String;
    .param p5, "fake_home_on"    # Ljava/lang/String;
    .param p6, "imsi_subset"    # Ljava/lang/String;
    .param p7, "fake_roaming_on"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    if-eqz p4, :cond_1

    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    if-eqz p5, :cond_2

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    if-eqz p6, :cond_3

    .end local p6    # "imsi_subset":Ljava/lang/String;
    :goto_2
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    if-eqz p7, :cond_0

    const-string v0, ","

    invoke-virtual {p7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    return-void

    .restart local p6    # "imsi_subset":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string p6, ""

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    return-object v0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSubset()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnDisplayRule()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnOverrideOnlyOn()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpnOverrideInfo [numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn_display_rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn_override_only_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_home_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi_subset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_roaming_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
