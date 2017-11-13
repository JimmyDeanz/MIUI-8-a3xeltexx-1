.class public Landroid/content/pm/PersonaInfo;
.super Ljava/lang/Object;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUTH_TYPE_CMK:I = 0x2

.field public static final AUTH_TYPE_PWD_HASH:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_SECURITY_TIMEOUT_DEFAULT:I = 0x927c0

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field public authenticationType:I

.field public canUseBluetooth:Z

.field public canUseExtSdcard:Z

.field public cmkFormat:I

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field private fingerCount:I

.field private fingerprintHashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprintIndexList:[I

.field public flags:I

.field public fotaUpgradeVersion:I

.field public fwversion:Ljava/lang/String;

.field public id:I

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAdminLockedJustBefore:Z

.field public isBBCContainer:Z

.field public isEnabledFingerprintIndex:Z

.field public isEulaShown:Z

.field private isFingerIdentifyFailed:Z

.field private isFingerReset:Z

.field private isFingerTimeout:Z

.field public isFsMounted:Z

.field public isKioskModeEnabled:Z

.field public isLightWeightContainer:Z

.field public isPureContainer:Z

.field private isQuickAccessUIEnabled:Z

.field public isRestarting:Z

.field public isSdpMinor:Z

.field private isUnlockedAfterTurnOn:Z

.field public isUserManaged:Z

.field private knoxBackupPin:Ljava/lang/String;

.field private knoxSecurityTimeoutValue:I

.field private lastKeyguardUnlockTime:J

.field public lastLoggedOutTime:J

.field public lockInProgress:Z

.field public migratedToM:Z

.field public needsRestart:Z

.field parentId:I

.field public partial:Z

.field public personaFwkVersion:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field public sdpActive:Z

.field public sdpEnabled:Z

.field public setupComplete:Z

.field private setupWizardApkLocation:Ljava/lang/String;

.field public shownFolderHelp:Z

.field public shownLauncherHelp:Z

.field public timaEcrytfsIndex:I

.field public timaPasswordHintIndex:I

.field public timaPasswordIndex:I

.field public timaPwdResetTokenIndex:I

.field public timaVersion:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z

.field private useEncoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 726
    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 99
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 104
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 107
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 108
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 110
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 113
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 115
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 118
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 121
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 123
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 126
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 128
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 131
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 137
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 138
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 141
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 144
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 147
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 149
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 152
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 155
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 158
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 161
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 166
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 167
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 168
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 169
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 170
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 171
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 172
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 174
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 177
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 179
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 182
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 184
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 186
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 189
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 194
    iput v1, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 200
    iput v4, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 202
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 205
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 207
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 209
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 211
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 213
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 215
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 217
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 219
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 221
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 223
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 226
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 227
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 230
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 355
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 371
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "creatorUid"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 99
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 104
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 107
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 108
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 110
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 113
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 115
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 118
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 121
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 123
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 126
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 128
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 131
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 137
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 138
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 141
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 144
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 147
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 149
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 152
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 155
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 158
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 161
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 166
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 167
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 168
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 169
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 170
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 171
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 172
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 174
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 177
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 179
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 182
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 184
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 186
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 189
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 194
    iput v1, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 200
    iput v4, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 202
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 205
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 207
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 209
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 211
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 213
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 215
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 217
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 219
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 221
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 223
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 226
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 227
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 230
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 355
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 234
    iput p1, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 235
    iput p2, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 236
    iput p3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 237
    iput p4, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .locals 8
    .param p1, "orig"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 99
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 104
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 107
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 108
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 110
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 113
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 115
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 118
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 121
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 123
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 126
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 128
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 131
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 137
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 138
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 141
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 144
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 147
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 149
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 152
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 155
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 158
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 161
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 166
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 167
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 168
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 169
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 170
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 171
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 172
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 174
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 177
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 179
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 182
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 184
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 186
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 189
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 194
    iput v1, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 200
    iput v4, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 202
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 205
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 207
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 209
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 211
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 213
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 215
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 217
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 219
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 221
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 223
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 226
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 227
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 230
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 355
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 375
    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 376
    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 377
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 378
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 379
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 380
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 381
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 382
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 385
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 387
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 388
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPwdResetTokenIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 389
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 390
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 391
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 393
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 394
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 395
    iget v0, p1, Landroid/content/pm/PersonaInfo;->authenticationType:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 396
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 397
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 398
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 399
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 400
    iget v0, p1, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 401
    iget v0, p1, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 402
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 403
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 404
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 405
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 406
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 407
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordHintIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 408
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 409
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 410
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 411
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 412
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 413
    iget v0, p1, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 414
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 415
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 417
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 419
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 420
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 421
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 422
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 423
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 424
    iget v0, p1, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 425
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 426
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 427
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 428
    iget v0, p1, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 429
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 430
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 431
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 432
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 433
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 434
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 99
    iput v2, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 104
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 107
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 108
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 110
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 113
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 115
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 118
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 121
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 123
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 126
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 128
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 131
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 138
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 141
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 144
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 147
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 149
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 152
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 155
    iput v2, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 158
    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 161
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 166
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 167
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 168
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 169
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 170
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 171
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 172
    iput v2, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 174
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 177
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 179
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 182
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 184
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 186
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 189
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 194
    iput v2, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 200
    iput v1, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 202
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 205
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 207
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 209
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 211
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 213
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 215
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 217
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 219
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 221
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 223
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 225
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 226
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 227
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 230
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 355
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 791
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    :goto_1c
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 795
    return-void

    :cond_0
    move v0, v2

    .line 739
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 751
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 752
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 755
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 756
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 758
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 759
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 762
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 763
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 764
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 765
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 766
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 767
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 768
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 769
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 770
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 772
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 773
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 775
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 777
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 778
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 779
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 780
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 783
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 784
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 785
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 787
    goto :goto_1a

    :cond_1b
    move v0, v2

    .line 789
    goto :goto_1b

    :cond_1c
    move v1, v2

    .line 793
    goto :goto_1c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PersonaInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private showFingerprintIndexStatus()V
    .locals 4

    .prologue
    .line 571
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabledFingerprintIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    if-eqz v1, :cond_0

    .line 573
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintIndexList.length  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 575
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintIndexList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "i":I
    :cond_0
    const-string v1, "PersonaInfo"

    const-string v2, "fingerprintIndexList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 582
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintHashList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 584
    const-string v2, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintHashList["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    .end local v0    # "i":I
    :cond_2
    const-string v1, "PersonaInfo"

    const-string v2, "fingerprintHashList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getAuthenticationType()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 474
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getFingerCount()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    return v0
.end method

.method public getFingerprintHashList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    const-string v0, "PersonaInfo"

    const-string v1, "called getFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    return-object v0
.end method

.method public getFingerprintIndexList()[I
    .locals 2

    .prologue
    .line 593
    const-string v0, "PersonaInfo"

    const-string v1, "called getFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    return v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    return v0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    return v0
.end method

.method public getIsFingerReset()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    return v0
.end method

.method public getIsFingerTimeout()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    return v0
.end method

.method public getIsQuickAccessUIEnabled()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    return v0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    return v0
.end method

.method public getKnoxBackupPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxSecurityTimeoutValue()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    return v0
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    return-wide v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 526
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordHintIndex()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getTimaPwdResetTokenIndex()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 443
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isEncodingRequired()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    return v0
.end method

.method public isMigratedPersona()Z
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    .prologue
    .line 340
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 459
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0
    .param p1, "adminUid"    # I

    .prologue
    .line 469
    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 470
    return-void
.end method

.method public setAuthenticationType(I)V
    .locals 3
    .param p1, "authType"    # I

    .prologue
    .line 532
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iput p1, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 535
    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3
    .param p1, "creatorUid"    # I

    .prologue
    .line 480
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 482
    return-void
.end method

.method public setEncodingRequired(Z)V
    .locals 0
    .param p1, "isEncoding"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 365
    return-void
.end method

.method public setFingerCount(I)V
    .locals 0
    .param p1, "fingerCount"    # I

    .prologue
    .line 329
    iput p1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 330
    return-void
.end method

.method public setFingerprintHashList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "hashs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PersonaInfo"

    const-string v1, "called setFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 618
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    goto :goto_0
.end method

.method public setFingerprintIndexList([I)V
    .locals 2
    .param p1, "indexs"    # [I

    .prologue
    .line 599
    const-string v0, "PersonaInfo"

    const-string v1, "called setFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 601
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    goto :goto_0
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 565
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    :cond_0
    return-void
.end method

.method public setIsAdminLockedJustBefore(Z)V
    .locals 0
    .param p1, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 310
    return-void
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 0
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 290
    return-void
.end method

.method public setIsFingerReset(Z)V
    .locals 0
    .param p1, "isFingerReset"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 300
    return-void
.end method

.method public setIsFingerTimeout(Z)V
    .locals 0
    .param p1, "isFingerTimeout"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 280
    return-void
.end method

.method public setIsQuickAccessUIEnabled(Z)V
    .locals 0
    .param p1, "isQuickAccessUIEnabled"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 269
    return-void
.end method

.method public setIsUnlockedAfterTurnOn(Z)V
    .locals 0
    .param p1, "isUnlockedAfterTurnOn"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 258
    return-void
.end method

.method public setKnoxBackupPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public setKnoxSecurityTimeoutValue(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 631
    iput p1, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 632
    return-void
.end method

.method public setLastKeyguardUnlockTime(J)V
    .locals 1
    .param p1, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 319
    iput-wide p1, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 320
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "setupWizardApkLocation"    # Ljava/lang/String;

    .prologue
    .line 542
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .locals 0
    .param p1, "timaEcrytfsIndex"    # I

    .prologue
    .line 491
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 492
    return-void
.end method

.method public setTimaPasswordHintIndex(I)V
    .locals 0
    .param p1, "timaPasswordHintIndex"    # I

    .prologue
    .line 521
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 522
    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .locals 0
    .param p1, "timaPasswordIndex"    # I

    .prologue
    .line 511
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 512
    return-void
.end method

.method public setTimaPwdResetTokenIndex(I)V
    .locals 0
    .param p1, "timaPwdResetTokenIndex"    # I

    .prologue
    .line 501
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 502
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyKnoxBackupPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 665
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    iget-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 671
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    iget v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget v0, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 710
    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 720
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    if-eqz v0, :cond_1c

    :goto_1c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    return-void

    :cond_0
    move v0, v2

    .line 667
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 679
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 680
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 683
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 684
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 686
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 687
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 690
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 691
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 692
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 693
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 694
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 695
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 696
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 697
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 698
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 700
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 701
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 703
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 705
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 706
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 707
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 708
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 711
    goto :goto_17

    :cond_18
    move v0, v2

    .line 712
    goto :goto_18

    :cond_19
    move v0, v2

    .line 713
    goto :goto_19

    :cond_1a
    move v0, v2

    .line 715
    goto :goto_1a

    :cond_1b
    move v0, v2

    .line 717
    goto :goto_1b

    :cond_1c
    move v1, v2

    .line 720
    goto :goto_1c
.end method
