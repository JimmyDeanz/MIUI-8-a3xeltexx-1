.class public Lcom/absolute/android/persistservice/ABTPersistenceService;
.super Lcom/absolute/android/persistence/IABTPersistence$Stub;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field a:Z

.field private f:Lcom/absolute/android/persistservice/x;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/Hashtable;

.field private i:Lcom/absolute/android/persistservice/v;

.field private j:Lcom/absolute/android/persistservice/k;

.field private k:Lcom/absolute/android/persistservice/k;

.field private l:Lcom/absolute/android/persistservice/k;

.field private m:Lcom/absolute/android/persistservice/j;

.field private n:Lcom/absolute/android/persistservice/j;

.field private o:Lcom/absolute/android/persistservice/j;

.field private p:Lcom/absolute/android/persistservice/i;

.field private q:Lcom/absolute/android/persistservice/d;

.field private r:Lcom/absolute/android/persistservice/c;

.field private s:Ljava/util/HashSet;

.field private t:Lcom/absolute/android/persistservice/l;

.field private u:Ljava/util/Hashtable;

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Object;

.field private x:Lcom/absolute/android/persistservice/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    .line 159
    const-string v0, "/mnt/pia"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->c:Ljava/lang/String;

    .line 162
    const-string v0, "AbsoluteSoftware"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->d:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "package_verifier_enable"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1091
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;-><init>()V

    .line 242
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z

    .line 1094
    :try_start_0
    iput-object p1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    .line 1098
    new-instance v0, Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    .line 1101
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Ljava/util/Hashtable;

    .line 1102
    new-instance v0, Lcom/absolute/android/persistservice/v;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string v2, "abt-persistence-service"

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/y;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    .line 1103
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Ljava/util/Hashtable;

    const-string v1, "abt-persistence-service"

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/v;)V

    .line 1108
    new-instance v0, Lcom/absolute/android/persistservice/x;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "abt-persistence-settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/x;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    .line 1109
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    .line 1112
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v1, "ABTPersistenceService starting up - version: 3136"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z

    .line 1117
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1118
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1121
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting build fingerprint to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1124
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;)V

    .line 1143
    :cond_0
    :goto_0
    new-instance v0, Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "abt-persistence-apps"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    .line 1144
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    .line 1145
    new-instance v0, Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "abt-persistence-apps-to-install"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    .line 1146
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    .line 1147
    new-instance v0, Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "abt-persistence-apps-fallback"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    .line 1148
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    .line 1150
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Ljava/util/Hashtable;

    .line 1151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->s:Ljava/util/HashSet;

    .line 1157
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Ljava/util/Hashtable;

    const-string v1, "3082020b30820174a00302010202044d26012f300d06092a864886f70d0101050500304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f667477617265301e170d3131303130363137353134335a170d3430313232393137353134335a304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f66747761726530819f300d06092a864886f70d010101050003818d00308189028181008624ba8f680f679b9b4ce208d42a655c82d25e10e40cee65c5e53b48b5d00d25e33a97931614dcd14933f426070b9f1f17dfd2edc970f5a9449ad481c51c5204b91b5220eebd9a41c56fc29f3437eb3995d1ef2ebd00fb23f48260f1ea95b96d41c208add6effa815237a84c630a3c8d99a4e4048467f7a7ed659ac33421effb0203010001300d06092a864886f70d0101050500038181005dc61981f6a1d1a373f88b0d5491324a122ad81241a3746a256029b60c09980ee698e9ea59afa2f15e0d0a912ef2a975820632d9b95cc469f749776b601399c77055f57e8f6cd7a373d8c79cb8472c1cc833867ca62e0257b2c00093156ec2909ea6d6e6a5f093876c8b21fda70d3bfe585a7b564a48ff72c73f4d25ffe8597b"

    const-string v2, "Absolute Software Android signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_Install"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1163
    new-instance v1, Lcom/absolute/android/persistservice/j;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    .line 1165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_InvokeMethod"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1167
    new-instance v1, Lcom/absolute/android/persistservice/j;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    .line 1169
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_Download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1171
    new-instance v1, Lcom/absolute/android/persistservice/j;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->o:Lcom/absolute/android/persistservice/j;

    .line 1174
    new-instance v0, Lcom/absolute/android/persistservice/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/c;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->r:Lcom/absolute/android/persistservice/c;

    .line 1175
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->r:Lcom/absolute/android/persistservice/c;

    invoke-static {v0}, Lcom/absolute/android/persistservice/c;->a(Lcom/absolute/android/persistservice/c;)V

    .line 1178
    new-instance v0, Lcom/absolute/android/persistservice/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/i;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->p:Lcom/absolute/android/persistservice/i;

    .line 1179
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->p:Lcom/absolute/android/persistservice/i;

    invoke-static {v0}, Lcom/absolute/android/persistservice/i;->a(Lcom/absolute/android/persistservice/i;)V

    .line 1183
    new-instance v0, Lcom/absolute/android/persistservice/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/d;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->q:Lcom/absolute/android/persistservice/d;

    .line 1186
    new-instance v0, Lcom/absolute/android/persistservice/l;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/absolute/android/persistservice/l;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Lcom/absolute/android/persistservice/k;Lcom/absolute/android/persistservice/y;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 750 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1200
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()V

    .line 1203
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/y;->a()V

    .line 1214
    :goto_2
    return-void

    .line 1130
    :cond_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 1132
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build fingerprint has changed since last boot.Now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Initiating handling of firmware update."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;)V

    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    const-string v1, "Exception thrown creating ABTPersistenceService: "

    .line 1207
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    if-eqz v2, :cond_2

    .line 1208
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1211
    :cond_2
    const-string v2, "APS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1194
    :catch_1
    move-exception v0

    .line 1195
    :try_start_3
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set permission of persisted folder, got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2102
    .line 2103
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2104
    :cond_0
    if-nez p1, :cond_1

    .line 2105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GetAppInfoRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2106
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "doGetAppInfo() failed"

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2107
    throw v0

    .line 2110
    :cond_1
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v9

    .line 2111
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->b(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v0

    .line 2116
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2119
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2120
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2125
    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2126
    const/4 v2, 0x1

    const-string v3, "abt-persistence-pm-lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 2127
    :try_start_1
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2129
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2130
    const/4 v2, 0x1

    const-string v3, "abt-persistence-wifi-lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v7

    .line 2131
    :try_start_2
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2133
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->c(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc40

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceIdImpl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-static {v1, v9, v2, v3, v4}, Lcom/absolute/android/persistservice/r;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2137
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initiating GetAppInfo() request for package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 2141
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->d(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->e(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/absolute/android/persistservice/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/v;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    .line 2144
    :try_start_3
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2145
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2162
    :cond_2
    if-eqz v8, :cond_3

    .line 2163
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2164
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2167
    :cond_3
    if-eqz v7, :cond_c

    .line 2168
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2169
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    move-object v0, v1

    .line 2189
    :goto_0
    return-object v0

    .line 2148
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v3, v6

    move-object v1, v6

    .line 2149
    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doGetAppInfo for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got exception/throwable for URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2153
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2154
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v1, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 2158
    :cond_4
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->g(Lcom/absolute/android/persistservice/f;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2159
    new-instance v1, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2162
    :catchall_0
    move-exception v0

    move-object v8, v3

    :goto_2
    if-eqz v8, :cond_5

    .line 2163
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2164
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2167
    :cond_5
    if-eqz v6, :cond_6

    .line 2168
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2169
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_6
    throw v0

    .line 2162
    :cond_7
    if-eqz v3, :cond_8

    .line 2163
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2164
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2167
    :cond_8
    if-eqz v6, :cond_c

    .line 2168
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2169
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    move-object v0, v1

    goto/16 :goto_0

    .line 2177
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download of APK for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2179
    new-instance v1, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-direct {v1, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    .line 2180
    invoke-virtual {v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;->a(Z)V

    .line 2181
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2182
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 2184
    :cond_a
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->g(Lcom/absolute/android/persistservice/f;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2185
    throw v1

    .line 2162
    :catchall_1
    move-exception v0

    move-object v8, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v7

    goto :goto_2

    .line 2148
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v3, v8

    move-object v1, v6

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v3, v8

    move-object v1, v6

    move-object v6, v7

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v6, v7

    move-object v3, v8

    goto/16 :goto_1

    :cond_b
    move-object v0, v6

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/absolute/android/persistservice/h;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .locals 18

    .prologue
    .line 2526
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v3

    .line 2527
    const-string v1, ""

    .line 2530
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2532
    invoke-virtual/range {p3 .. p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v12

    .line 2533
    sget-boolean v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v1, :cond_0

    if-nez v12, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2534
    :cond_0
    if-nez v12, :cond_1

    .line 2536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invoke  GetAppInfo HTTP request because there is no pending install Application Profile for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2539
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2544
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/k;->f(Ljava/lang/String;)I

    move-result v17

    .line 2545
    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v1

    move/from16 v0, v17

    if-lt v0, v1, :cond_2

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded maximum number of update attempts ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") via GetAppInfo request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 2548
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2551
    :cond_2
    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v5

    .line 2554
    :try_start_0
    new-instance v1, Lcom/absolute/android/persistservice/f;

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/absolute/android/persistservice/f;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v1

    .line 2564
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2565
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 2566
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAppInfo failed because the server response  to GetAppInfo does not contain a PackageName value for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2569
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_0
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2649
    :catch_0
    move-exception v1

    .line 2651
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 2654
    :cond_4
    throw v1

    .line 2571
    :cond_5
    :try_start_1
    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetAppInfo failed because the server response  package name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match the existing / expected one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2576
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_1
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2655
    :catch_1
    move-exception v1

    .line 2656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 2657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetAppInfoAndDownloadAPK for package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got exception/throwable for URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2662
    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v3

    .line 2579
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppVersion()I

    move-result v9

    .line 2580
    if-nez v9, :cond_7

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAppInfo failed because the server response  does not contain a valid VersionCode value for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2584
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2593
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    .line 2594
    move/from16 v0, p2

    if-ne v9, v0, :cond_8

    if-ne v9, v2, :cond_8

    .line 2595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2596
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " of package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returned by GetAppInfo() query to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is already installed. No need to download the APK."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 2647
    :goto_0
    return-object p3

    .line 2606
    :cond_8
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    .line 2607
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 2608
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAppInfo failed for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the server response to GetAppInfo does not contain a DownloadUrl value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2611
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2613
    :cond_a
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v13

    .line 2614
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 2615
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAppInfo failed for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the server response to GetAppInfo does not contain a DigitalSignature value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2618
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2621
    :cond_c
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v11

    .line 2626
    invoke-virtual {v1, v12}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    .line 2629
    new-instance v6, Lcom/absolute/android/persistservice/e;

    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadHostSPKIHash()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-direct/range {v6 .. v16}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v1

    .line 2642
    new-instance p3, Lcom/absolute/android/persistservice/PersistedAppInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v1, v4, v13}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;ILjava/lang/String;)V

    .line 2645
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    return-object v0
.end method

.method protected static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1266
    const-string v0, ""

    .line 1268
    const-string v0, "1"

    const-string/jumbo v1, "ro.kernel.qemu"

    invoke-static {v1}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v0

    .line 1276
    :goto_0
    return-object v0

    .line 1274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2242
    .line 2243
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2244
    :cond_0
    if-nez p1, :cond_1

    .line 2245
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DownloadApkRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2246
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "doDownloadApk() failed"

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2247
    throw v0

    .line 2250
    :cond_1
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    .line 2251
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v1

    .line 2252
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    .line 2253
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->d(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    .line 2254
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->e(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v5

    .line 2258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".apk"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2263
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 2266
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 2267
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2272
    :try_start_0
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 2273
    const/4 v8, 0x1

    const-string v9, "abt-persistence-pm-lock"

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 2274
    :try_start_1
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2276
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 2277
    const/4 v8, 0x1

    const-string v9, "abt-persistence-wifi-lock"

    invoke-virtual {v4, v8, v9}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v11

    .line 2278
    :try_start_2
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2281
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 2285
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 2288
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2289
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2290
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2293
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2294
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2296
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 2299
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v7

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->h(Lcom/absolute/android/persistservice/e;)I

    move-result v8

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-static/range {v0 .. v10}, Lcom/absolute/android/persistservice/r;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/v;Landroid/content/Context;)V

    .line 2303
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2304
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2321
    :cond_5
    if-eqz v12, :cond_6

    .line 2322
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2323
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2326
    :cond_6
    if-eqz v11, :cond_7

    .line 2327
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2328
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2348
    :cond_7
    :goto_0
    return-object v6

    .line 2307
    :catch_0
    move-exception v1

    move-object v3, v6

    move-object v4, v6

    .line 2308
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download of APK for package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " got exception for URL: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2310
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2312
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2313
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v2, v5, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2317
    :cond_8
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->i(Lcom/absolute/android/persistservice/e;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2318
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v1, v5}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2321
    :catchall_0
    move-exception v0

    move-object v11, v3

    move-object v12, v4

    :goto_2
    if-eqz v12, :cond_9

    .line 2322
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2323
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2326
    :cond_9
    if-eqz v11, :cond_a

    .line 2327
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2328
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_a
    throw v0

    .line 2321
    :cond_b
    if-eqz v4, :cond_c

    .line 2322
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2323
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2326
    :cond_c
    if-eqz v3, :cond_7

    .line 2327
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2328
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_0

    .line 2336
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download of APK for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2338
    new-instance v1, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-direct {v1, v0, v9}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    .line 2339
    invoke-virtual {v1, v10}, Lcom/absolute/android/persistservice/DownloadApkException;->a(Z)V

    .line 2340
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2341
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v9, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2343
    :cond_e
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->i(Lcom/absolute/android/persistservice/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2344
    throw v1

    .line 2321
    :catchall_1
    move-exception v0

    move-object v11, v6

    move-object v12, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v11, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 2307
    :catch_1
    move-exception v1

    move-object v3, v6

    move-object v4, v12

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v3, v11

    move-object v4, v12

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1838
    .line 1842
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1844
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 1854
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installed version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match the version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified in the application profile. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " The profile will be updated to match the version actually installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {p3, v0}, Lcom/absolute/android/persistence/AppProfile;->setVersion(I)V

    .line 1862
    const/4 v1, 0x0

    .line 1864
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1865
    invoke-direct {p0, p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1866
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1869
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to rename APK file from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". File.renameTo() returned false."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1881
    :cond_0
    :goto_0
    return-object p4

    .line 1845
    :catch_0
    move-exception v0

    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got NameNotFoundException for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after successfully installing it. Can\'t get it\'s version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1849
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2

    :cond_1
    move-object p4, v0

    .line 1873
    goto :goto_0

    .line 1875
    :catch_1
    move-exception v0

    .line 1876
    :goto_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to rename APK file from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Got exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1875
    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1445
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to make a copy of the APK for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The ApkPath is null/empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1538
    :cond_1
    :goto_0
    return-object p3

    .line 1451
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1453
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1454
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 1457
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1458
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1462
    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move-object p3, v0

    .line 1467
    goto :goto_0

    .line 1472
    :cond_4
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1473
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object p3, v0

    .line 1474
    goto :goto_0

    .line 1478
    :cond_5
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to rename APK file from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". File.renameTo() returned false."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1484
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1485
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1489
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 1496
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_8

    .line 1497
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insufficient space available in persisted partition to make a copy of the APK in: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". File size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usable space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyApkToPersistentStorageArea() for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1504
    :cond_8
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1506
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1507
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1515
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 1517
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_9

    .line 1518
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 1520
    :cond_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1521
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1523
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1525
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1526
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    move-object p3, v0

    .line 1529
    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 1227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/absolute/android/persistservice/a;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/a;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1259
    return-void
.end method

.method private a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2471
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2472
    :cond_0
    if-eqz p1, :cond_3

    .line 2473
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2476
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2477
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    .line 2478
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2479
    :cond_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on install because the StartOnInstall intent specified in the App Profile is empty."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2491
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2495
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, p1, v4}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 2498
    :cond_3
    return-void

    .line 2486
    :cond_4
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/h;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)V

    return-void
.end method

.method private a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2379
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    move v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadResult(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2387
    :goto_0
    return-void

    .line 2381
    :catch_0
    move-exception v0

    .line 2382
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception invoking IABTDownloadReceiver.onDownloadResult() for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2220
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;->onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    :goto_0
    return-void

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception invoking IABTGetAppInfoReceiver.onGetAppInfoResult() for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->b(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/absolute/android/persistservice/g;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1981
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1982
    :cond_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/MethodSpec;

    move-result-object v3

    .line 1983
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->b(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v4

    .line 1984
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->c(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v0

    .line 1986
    new-instance v2, Lcom/absolute/android/persistence/MethodReturnValue;

    invoke-direct {v2, v1, v1}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 1996
    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-virtual {v1, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1998
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1999
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2001
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2002
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 2003
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgValues()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2004
    new-instance v1, Lcom/absolute/android/persistence/MethodReturnValue;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 2007
    if-eqz v4, :cond_1

    .line 2013
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v4, v3, v1, v0, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2044
    :cond_1
    :goto_0
    return-void

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    :try_start_2
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception invoking IABTResultReceiver.onInvokeResult() for successful invocation of method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2021
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 2022
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 2023
    const-string/jumbo v0, "null"

    .line 2024
    if-eqz v6, :cond_2

    .line 2025
    invoke-static {v6}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2027
    :cond_2
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in ABTPersistenceService doInvokeMethod for method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2030
    if-eqz v4, :cond_1

    .line 2036
    const/4 v6, 0x0

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " Cause: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v2, v6, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2037
    :catch_2
    move-exception v0

    .line 2038
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception invoking IABTResultReceiver.onInvokeResult() for failed invocation of method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2021
    :catch_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/absolute/android/persistservice/h;)V
    .locals 17

    .prologue
    .line 1566
    sget-boolean v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1567
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v3

    .line 1568
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v8

    .line 1570
    const/4 v4, 0x0

    .line 1571
    const/4 v5, 0x0

    .line 1572
    const/4 v10, 0x0

    .line 1573
    const/4 v7, 0x0

    .line 1575
    const/4 v11, 0x0

    .line 1576
    const/4 v6, 0x0

    .line 1577
    const/4 v2, 0x0

    .line 1582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting install of package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v9

    .line 1590
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v9, v3, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1591
    iget v2, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v12, v2

    .line 1594
    :goto_0
    if-nez v12, :cond_1

    const/4 v9, 0x1

    .line 1596
    :goto_1
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1597
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v13

    .line 1598
    if-nez v13, :cond_2

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Aborting install operation for package: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " as there is no longer a pending install entry."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1601
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1746
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    .line 1748
    :goto_2
    return-void

    .line 1592
    :catch_0
    move-exception v6

    move v12, v2

    goto :goto_0

    .line 1594
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 1606
    :cond_2
    :try_start_4
    invoke-virtual {v13}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/absolute/android/persistence/AppProfile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1607
    :try_start_5
    invoke-virtual {v13}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result-object v5

    .line 1608
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v14

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v15

    .line 1610
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1615
    :try_start_7
    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v4

    .line 1616
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    .line 1617
    :goto_3
    and-int/lit8 v14, v14, 0x4

    if-nez v14, :cond_3

    if-nez v6, :cond_f

    .line 1623
    :cond_3
    const/4 v6, 0x1

    .line 1625
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/h;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v4

    .line 1629
    invoke-virtual {v4}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    .line 1630
    invoke-virtual {v4}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v5

    .line 1634
    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v4

    .line 1635
    if-eqz v12, :cond_e

    if-ne v12, v4, :cond_e

    .line 1636
    if-eq v12, v15, :cond_9

    .line 1637
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Target version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of application: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is already installed, but does not match the existing AppProfile version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v2

    move/from16 v2, v16

    .line 1653
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_4

    .line 1654
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v6

    .line 1658
    :cond_4
    :try_start_9
    const-string v2, "SHA256"

    invoke-static {v2, v6}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v7

    .line 1668
    :goto_5
    if-eqz v12, :cond_5

    .line 1669
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V

    .line 1672
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-object v10

    .line 1675
    const/4 v2, 0x0

    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v4, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v2, p0

    .line 1677
    invoke-direct/range {v2 .. v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1746
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1610
    :catchall_0
    move-exception v2

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    :goto_6
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1679
    :catch_1
    move-exception v2

    move-object v6, v10

    move-object v10, v5

    move v5, v9

    move-object v9, v4

    move-object v4, v2

    .line 1680
    :goto_7
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install of package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed with exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1682
    if-eqz v8, :cond_6

    .line 1689
    const/4 v2, 0x1

    const/4 v11, 0x0

    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v2, v11, v3, v12}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1698
    :cond_6
    :goto_8
    :try_start_10
    instance-of v2, v4, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v2, :cond_a

    move-object v0, v4

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/DownloadApkException;->a()Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_a

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The download and install of APK for package: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " will not be re-tried as the exception was considered fatal."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1746
    :cond_7
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1616
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1642
    :cond_9
    :try_start_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Target version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " of application: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " is already installed."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1646
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1746
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1662
    :catch_2
    move-exception v2

    .line 1663
    :try_start_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to get Digest for APK: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", algorithm: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_5

    .line 1679
    :catch_3
    move-exception v4

    move/from16 v16, v9

    move-object v9, v6

    move-object v6, v10

    move-object v10, v5

    move/from16 v5, v16

    goto/16 :goto_7

    .line 1691
    :catch_4
    move-exception v2

    .line 1692
    :try_start_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got exception invoking  IABTResultReceiver.onOperationResult() for failed install of package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_8

    .line 1746
    :catchall_1
    move-exception v2

    move-object v10, v6

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    throw v2

    .line 1703
    :cond_a
    :try_start_14
    instance-of v2, v4, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v2, :cond_c

    .line 1704
    check-cast v4, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download of APK for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will be re-tried when connectivity is available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->s:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1712
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->s:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->q:Lcom/absolute/android/persistservice/d;

    invoke-static {v2}, Lcom/absolute/android/persistservice/d;->a(Lcom/absolute/android/persistservice/d;)V

    .line 1714
    monitor-exit v3

    goto/16 :goto_9

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v2

    .line 1719
    :cond_b
    if-eqz v10, :cond_7

    .line 1720
    invoke-virtual {v10}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v2

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling re-try of update/install of package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " minutes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1726
    const/4 v4, 0x0

    mul-int/lit8 v2, v2, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_9

    .line 1730
    :cond_c
    instance-of v2, v4, Lcom/absolute/android/persistservice/InstallTimeoutException;

    if-eqz v2, :cond_d

    .line 1735
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1736
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v10}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v3, v9, v7}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 1739
    monitor-exit p0

    goto/16 :goto_9

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    throw v2

    .line 1742
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_9

    .line 1746
    :catchall_4
    move-exception v2

    goto/16 :goto_a

    .line 1679
    :catch_5
    move-exception v2

    move-object v9, v5

    move v5, v6

    move-object v6, v10

    move-object v10, v4

    move-object v4, v2

    goto/16 :goto_7

    :catch_6
    move-exception v2

    move-object v6, v10

    move-object v10, v4

    move-object v4, v2

    move-object/from16 v16, v5

    move v5, v9

    move-object/from16 v9, v16

    goto/16 :goto_7

    :catch_7
    move-exception v4

    move-object v6, v10

    move-object v10, v2

    move-object/from16 v16, v5

    move v5, v9

    move-object/from16 v9, v16

    goto/16 :goto_7

    :catch_8
    move-exception v4

    move/from16 v16, v9

    move-object v9, v6

    move-object v6, v10

    move-object v10, v5

    move/from16 v5, v16

    goto/16 :goto_7

    .line 1610
    :catchall_5
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v5

    move-object v5, v2

    move-object/from16 v2, v16

    goto/16 :goto_6

    :catchall_6
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v5

    move-object v5, v2

    move-object/from16 v2, v16

    goto/16 :goto_6

    :catchall_7
    move-exception v2

    goto/16 :goto_6

    :cond_e
    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v2

    move/from16 v2, v16

    goto/16 :goto_4

    :cond_f
    move-object v6, v5

    move-object v5, v2

    move v2, v11

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 2674
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1422
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1423
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1424
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/j;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    monitor-exit p0

    return-void

    .line 1422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 4

    .prologue
    .line 1774
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    monitor-enter p0

    .line 1778
    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p3}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 1783
    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1784
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1785
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1788
    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1, v0, p5}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    invoke-direct {p0, p1, p6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1806
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully installed package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", persisted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", monitored = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1811
    invoke-direct {p0, p3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 1812
    return-void

    .line 1793
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1794
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1795
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed delete APK file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to clean up persisted directory"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1798
    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1800
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 2439
    if-eqz p2, :cond_0

    .line 2440
    :try_start_0
    invoke-virtual {p2}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2441
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    :cond_0
    :goto_0
    monitor-enter p0

    .line 2450
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2452
    if-eqz p4, :cond_1

    .line 2453
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2459
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2460
    return-void

    .line 2444
    :catch_0
    move-exception v0

    .line 2445
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete APK file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 2456
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 2457
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 2459
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 3

    .prologue
    .line 1393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v0

    .line 1394
    and-int/lit8 v0, v0, -0x2

    .line 1395
    or-int/lit8 v0, v0, 0x2

    .line 1396
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 1398
    new-instance v0, Lcom/absolute/android/persistservice/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1399
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1400
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    monitor-exit p0

    return-void

    .line 1393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    .locals 4

    .prologue
    .line 1370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v0

    .line 1371
    and-int/lit8 v0, v0, -0x3

    .line 1372
    and-int/lit8 v0, v0, -0x9

    .line 1373
    or-int/lit8 v0, v0, 0x1

    .line 1374
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 1376
    new-instance v0, Lcom/absolute/android/persistservice/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1377
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/j;

    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/j;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    .prologue
    .line 2704
    const/4 v0, 0x2

    .line 2705
    const/4 v1, 0x0

    .line 2710
    :try_start_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->j()I

    move-result v1

    .line 2714
    if-eqz v1, :cond_0

    .line 2716
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    .line 2717
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->j()I

    .line 2723
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.absolute.android.persistservice.ABTPackageInstallObserver"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2725
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    .line 2727
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2728
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2729
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 2734
    const-string v6, "installPackage"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2736
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoking installPackage() for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    .line 2738
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2741
    const/4 v0, 0x0

    .line 2742
    :try_start_1
    const-string v2, "getFinished"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move v2, v0

    .line 2744
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 2747
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waiting on installPackage() completion for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    .line 2749
    if-lez v2, :cond_4

    .line 2751
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p3, :cond_2

    .line 2752
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackage() timed out, but completed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2754
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    .line 2811
    if-eqz v1, :cond_1

    .line 2813
    :try_start_4
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    .line 2815
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->j()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 2822
    :cond_1
    :goto_1
    return-void

    .line 2820
    :catch_0
    move-exception v0

    .line 2821
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "Failed to re-enable package verification, exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2756
    :cond_2
    :try_start_5
    new-instance v0, Lcom/absolute/android/persistservice/InstallTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation of PackageManager.installPackage() timed out for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/absolute/android/persistservice/InstallTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2765
    :catch_1
    move-exception v0

    .line 2766
    :try_start_6
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installPackage() for package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " got interrupted exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2767
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invocation of PackageManager.installPackage() was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2791
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2792
    :catch_2
    move-exception v0

    .line 2793
    :try_start_8
    instance-of v2, v0, Lcom/absolute/android/persistservice/InstallTimeoutException;

    if-eqz v2, :cond_8

    .line 2794
    new-instance v2, Lcom/absolute/android/persistservice/InstallTimeoutException;

    invoke-direct {v2, v0}, Lcom/absolute/android/persistservice/InstallTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2808
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    .line 2811
    if-eqz v1, :cond_3

    .line 2813
    :try_start_9
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    .line 2815
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->j()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 2822
    :cond_3
    :goto_2
    throw v0

    .line 2762
    :cond_4
    add-int/lit8 v0, v2, 0x1

    .line 2763
    :try_start_a
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v2, v0

    .line 2769
    goto/16 :goto_0

    .line 2772
    :cond_5
    :try_start_b
    const-string v0, "getResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2773
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2774
    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 2775
    if-eqz p4, :cond_6

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p3, :cond_6

    .line 2779
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation of PackageManager.installPackage() completed, but not for target version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2783
    :cond_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackage() completed successfully for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    .line 2784
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/lang/Object;

    .line 2811
    if-eqz v1, :cond_1

    .line 2813
    :try_start_c
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    .line 2815
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->j()I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    .line 2820
    :catch_3
    move-exception v0

    .line 2821
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "Failed to re-enable package verification, exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2787
    :cond_7
    :try_start_d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invocation of PackageManager.installPackage() failed with result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2797
    :cond_8
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 2798
    const-string/jumbo v2, "null"

    .line 2799
    if-eqz v3, :cond_9

    .line 2800
    invoke-static {v3}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 2802
    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invocation of PackageManager.installPackage() threw exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", cause: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2820
    :catch_4
    move-exception v1

    .line 2821
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "Failed to re-enable package verification, exception: "

    invoke-virtual {v2, v3, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private declared-synchronized a(Z)V
    .locals 13

    .prologue
    .line 3049
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v4

    .line 3050
    if-eqz v4, :cond_6

    .line 3052
    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 3053
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3054
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v8

    .line 3056
    invoke-direct {p0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 3060
    :goto_1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3061
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 3067
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, v7}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3068
    const/4 v1, 0x0

    .line 3070
    :try_start_1
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3071
    invoke-virtual {v9}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 3072
    const-string v0, "SHA256"

    invoke-static {v0, v1}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3076
    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v10, v7, v1, v0}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3087
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 3088
    if-eqz v9, :cond_7

    :try_start_2
    invoke-virtual {v9}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v1

    .line 3090
    :goto_3
    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_2

    invoke-direct {p0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v9

    if-ge v9, v8, :cond_2

    .line 3095
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisted package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has been removed (possibly due to factory reset)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Initiating recovery re-installation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3099
    invoke-direct {p0, v7, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3102
    :cond_2
    if-nez v0, :cond_9

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_9

    .line 3104
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resuming installation of package: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3107
    const/4 v0, 0x0

    .line 3108
    if-eqz p1, :cond_8

    const/16 v0, 0x14

    .line 3111
    :cond_3
    :goto_4
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    .line 3052
    :cond_4
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 3056
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 3078
    :catch_0
    move-exception v0

    .line 3079
    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get Digest for APK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", algorithm: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", exception : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 3140
    :catch_1
    move-exception v0

    .line 3141
    :try_start_3
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v2, "recoverAndCompletePendingOperations() got exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3143
    :cond_6
    monitor-exit p0

    return-void

    .line 3088
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 3109
    :cond_8
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/16 v0, 0x14

    goto :goto_4

    .line 3113
    :cond_9
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_a

    .line 3115
    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming uninstallation of package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3118
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 3049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3128
    :cond_a
    if-nez v2, :cond_4

    :try_start_5
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3129
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3131
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-persisted package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed (possibly due to factory reset)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cleaning up to remove AppProfile and APK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3135
    invoke-direct {p0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 9

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3211
    .line 3219
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v0

    .line 3220
    if-eqz v0, :cond_1

    .line 3221
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v5

    .line 3222
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_4

    .line 3224
    :try_start_1
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SHA256"

    invoke-static {v3, v5}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 3227
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovering package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " using local APK: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3229
    if-eqz p2, :cond_2

    move v0, v4

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 3239
    :goto_1
    if-nez v0, :cond_1

    .line 3241
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 3244
    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 3247
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 3250
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 3252
    :cond_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3253
    if-eqz p2, :cond_5

    move v0, v4

    .line 3255
    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovering package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds by querying server, since there is no local APK."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3259
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move v2, v1

    .line 3267
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v0, v2

    .line 3229
    goto :goto_0

    .line 3232
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Digital signature of APK: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 3234
    :catch_0
    move-exception v0

    move v3, v2

    .line 3235
    :goto_4
    :try_start_7
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to validate digital signature of APK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move v0, v3

    goto/16 :goto_1

    .line 3252
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 3263
    :catch_1
    move-exception v0

    .line 3264
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "initiateRecovery() got exception: "

    invoke-virtual {v1, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move v0, v2

    .line 3253
    goto/16 :goto_2

    .line 3234
    :catch_2
    move-exception v0

    move v3, v1

    goto :goto_4
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 3433
    const-string/jumbo v1, "unknown"

    .line 3434
    const-class v0, Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 3435
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 3436
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_1

    .line 3437
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 3439
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_1

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 3442
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3443
    const-string v6, "INSTALL_FAILED_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "INSTALL_PARSE_FAILED_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3447
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne p1, v5, :cond_1

    .line 3458
    :goto_1
    return-object v0

    .line 3451
    :catch_0
    move-exception v0

    .line 3435
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/h;)V

    return-void
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    return-void
.end method

.method private b(Lcom/absolute/android/persistservice/h;)V
    .locals 6

    .prologue
    .line 1891
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1892
    :cond_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v1

    .line 1893
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    .line 1899
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting uninstall of package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1903
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v0

    .line 1914
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1915
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;I)V

    .line 1917
    :cond_1
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    .line 1921
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1922
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1927
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1928
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete persisted file directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1935
    :cond_2
    if-eqz v2, :cond_3

    .line 1941
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v0, v3, v1, v4}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1950
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully uninstalled package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1971
    :cond_4
    :goto_1
    return-void

    .line 1943
    :catch_0
    move-exception v0

    .line 1944
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got exception invoking  IABTResultReceiver.onOperationResult() for successful uninstall of package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1953
    :catch_1
    move-exception v0

    .line 1954
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1956
    if-eqz v2, :cond_4

    .line 1962
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1964
    :catch_2
    move-exception v0

    .line 1965
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception invoking IABTResultReceiver.onOperationResult() for failed uninstall of package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 2683
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 4

    .prologue
    .line 2400
    monitor-enter p0

    .line 2401
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2402
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 2403
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 2404
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2407
    if-eqz p2, :cond_0

    .line 2413
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p2, v0, v1, p1, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2421
    :cond_0
    :goto_0
    return-void

    .line 2404
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2415
    :catch_0
    move-exception v0

    .line 2416
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception invoking IABTResultReceiver.onOperationResult() for successful install of package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized b(Z)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 3155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 3156
    if-eqz v3, :cond_2

    .line 3158
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 3159
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3160
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v6, v5}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v6

    .line 3167
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v7}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v7

    if-lez v7, :cond_0

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    .line 3172
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 3182
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v5}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 3183
    invoke-direct {p0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 3184
    if-eqz p1, :cond_1

    const/16 v0, 0x14

    .line 3186
    :goto_1
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initiating install request for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 3189
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3158
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3184
    goto :goto_1

    .line 3193
    :catch_0
    move-exception v0

    .line 3194
    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "handleFirmwareUpdate() got exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3196
    :cond_2
    monitor-exit p0

    return-void

    .line 3155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2838
    const-string v2, ""

    .line 2842
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2845
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 2847
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 2850
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2851
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2852
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2857
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2858
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2860
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2862
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2863
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2871
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 2873
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_3

    .line 2874
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2879
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2880
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to copy APK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " got exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2882
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to copy APK to install directory. Got exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2876
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2877
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2890
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2891
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_5

    .line 2900
    :goto_1
    if-eqz v0, :cond_4

    .line 2901
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set permission of APK file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to readable failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2895
    :catch_1
    move-exception v1

    .line 2896
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set file permissions of APK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2905
    :cond_4
    return-object v2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 4011
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4012
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 4013
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4019
    :goto_0
    return-void

    .line 4016
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/h;)V

    return-void
.end method

.method private c(Lcom/absolute/android/persistservice/h;)V
    .locals 7

    .prologue
    .line 2058
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2059
    :cond_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v2

    .line 2063
    const/4 v0, 0x0

    .line 2065
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2066
    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 2067
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v2}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2068
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2070
    if-eqz v1, :cond_1

    .line 2071
    :try_start_2
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 2075
    :try_start_3
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2078
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2087
    :cond_1
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    .line 2089
    :goto_0
    return-void

    .line 2068
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2081
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 2082
    :goto_1
    :try_start_6
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery of package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Re-trying in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secs. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2084
    const/4 v0, 0x5

    invoke-direct {p0, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2087
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 2081
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private c(Ljava/lang/String;I)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 2964
    const/4 v1, 0x0

    .line 2966
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.absolute.android.persistservice.ABTPackageDeleteObserver"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2967
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    .line 2969
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2970
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2971
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 2975
    const-string v6, "deletePackage"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2978
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoking deletePackage() for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    .line 2980
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2984
    :try_start_1
    const-string v1, "getFinished"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v0

    .line 2986
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 2989
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "waiting on deletePackage() completion for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    .line 2991
    if-lez v1, :cond_2

    .line 2993
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackage() timed out, but completed for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2995
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3035
    iput-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    :goto_1
    return-void

    .line 2997
    :cond_0
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invocation of PackageManager.deletePackage() timed out for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3006
    :catch_0
    move-exception v0

    .line 3007
    :try_start_5
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackage() for package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " got interrupted exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3008
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invocation of PackageManager.deletePackage() was interrupted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3023
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3024
    :catch_1
    move-exception v0

    .line 3025
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 3026
    const-string/jumbo v1, "null"

    .line 3027
    if-eqz v2, :cond_1

    .line 3028
    invoke-static {v2}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 3030
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invocation of PackageManager.deletePackage() threw exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cause: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3035
    :catchall_1
    move-exception v0

    iput-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    throw v0

    .line 3003
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 3004
    :try_start_8
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v1, v0

    .line 3010
    goto/16 :goto_0

    .line 3012
    :cond_3
    :try_start_9
    const-string v0, "getResult"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3013
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3014
    if-ne v0, v9, :cond_4

    .line 3016
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackage() completed successfully for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    .line 3018
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3035
    iput-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3020
    :cond_4
    :try_start_a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invocation of PackageManager.deletePackage() failed with result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/l;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.absolute.persistence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3279
    .line 3280
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3282
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3283
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3287
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 3284
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3299
    .line 3300
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3302
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3303
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3306
    :goto_0
    return v0

    .line 3304
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/x;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3320
    .line 3323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3324
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 3326
    if-eqz v2, :cond_2

    .line 3327
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 3328
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3329
    const/4 v0, 0x1

    .line 3342
    :cond_0
    return v0

    .line 3327
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3335
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsCallingPackage() for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. Unable to get calling packages for UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3338
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3339
    throw v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->s:Ljava/util/HashSet;

    return-object v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 3382
    monitor-enter p0

    const/4 v1, 0x0

    .line 3384
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3385
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 3386
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 3387
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3388
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3394
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3390
    :catch_0
    move-exception v0

    .line 3391
    :try_start_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete APK file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1311
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1313
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1315
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 1316
    const/16 v6, 0x40

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    .line 1320
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Ljava/util/Hashtable;

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1337
    :cond_0
    return v10

    .line 1316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1333
    :cond_2
    const-string v0, "android.uid.system:1000"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "Unable to get Package for calling UID. Denying access."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1353
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not authorized to access ABT Persistence Service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 3352
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 3353
    if-eqz v1, :cond_1

    .line 3354
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 3355
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3359
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3360
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3361
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3363
    :cond_0
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3366
    :catch_0
    move-exception v0

    .line 3367
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to clean up fallbacks, got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 3369
    :cond_1
    return-void
.end method

.method private declared-synchronized h(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3406
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3407
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3418
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3420
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3426
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 3409
    :catch_0
    move-exception v0

    .line 3410
    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete copy of APK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3422
    :catch_1
    move-exception v0

    .line 3423
    :try_start_3
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete install folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private i()Z
    .locals 4

    .prologue
    .line 3468
    const/4 v0, 0x0

    .line 3470
    :try_start_0
    const-string/jumbo v1, "ro.crypto.state"

    invoke-static {v1}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3471
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3473
    const-string v3, "encrypted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 3474
    const-string v1, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "trigger_reset_main"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "trigger_post_fs_dat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 3478
    :cond_0
    const/4 v0, 0x1

    .line 3484
    :cond_1
    :goto_0
    return v0

    .line 3481
    :catch_0
    move-exception v1

    .line 3482
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v3, "initialBootUpWhileEncrypted() got exception: "

    invoke-virtual {v2, v3, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3998
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3999
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4000
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 4001
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4007
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4004
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 9

    .prologue
    .line 961
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 963
    return-void
.end method

.method public downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 11

    .prologue
    .line 980
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_1
    if-nez p2, :cond_2

    .line 984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version argument is invalid (0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 987
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Download URL argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 990
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digital signature argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_6
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1001
    :goto_0
    return-void

    .line 998
    :cond_7
    new-instance v0, Lcom/absolute/android/persistservice/e;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    .line 1000
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->o:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 7

    .prologue
    .line 908
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 910
    return-void
.end method

.method public getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 9

    .prologue
    .line 926
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 927
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 930
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access key argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 933
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Update URL argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_5
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 945
    :goto_0
    return-void

    .line 942
    :cond_6
    new-instance v0, Lcom/absolute/android/persistservice/f;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/absolute/android/persistservice/f;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    .line 944
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->o:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 758
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceIdImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdImpl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/x;->d()Ljava/lang/String;

    move-result-object v0

    .line 2919
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2920
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2921
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/x;->b(Ljava/lang/String;)V

    .line 2922
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/x;->e()Z

    .line 2924
    :cond_1
    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 801
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    const-string v0, ""

    .line 892
    :goto_0
    return-object v0

    .line 804
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 808
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persistence version = 3136, state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v2

    invoke-static {v2}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v4

    .line 812
    if-nez v4, :cond_2

    .line 813
    const-string v0, "There are no managed applications\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_1
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    .line 881
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nPersisted partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", available = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ls -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contents:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 816
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 818
    const-string v0, "Managed Applications ---\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    array-length v6, v4

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v7, v4, v2

    .line 821
    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 827
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v5, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 828
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :goto_3
    if-nez v0, :cond_a

    .line 832
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install status: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is currently not installed\n\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :goto_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_8

    .line 841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APK path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APK digest = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v9

    .line 845
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "flags = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_3

    .line 847
    const-string v10, ": INSTALL_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_3
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_4

    .line 850
    const-string v10, ": UNINSTALL_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_4
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_5

    .line 853
    const-string v10, ": DOWNLOAD_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_5
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_6

    .line 856
    const-string v10, ": DELETE_PERSISTED_FILES_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_6
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_7

    .line 859
    const-string v9, ": INSTALL_TIMED_OUT"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :cond_7
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update attempt count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_8
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 866
    if-nez v0, :cond_b

    .line 867
    const-string v0, "No pending install AppProfile\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :goto_5
    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    .line 874
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_9
    const-string v0, "--------\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 829
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_3

    .line 835
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install status: version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is currently installed\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 888
    :catch_1
    move-exception v0

    .line 889
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v2, "Exception occurred getting diagnostics: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 870
    :cond_b
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pending install AppProfile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .locals 3

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 321
    :cond_0
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/v;

    .line 324
    if-nez v0, :cond_1

    .line 325
    new-instance v0, Lcom/absolute/android/persistservice/v;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Lcom/absolute/android/persistservice/y;

    invoke-direct {v0, v1, p1, v2}, Lcom/absolute/android/persistservice/v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/y;)V

    .line 326
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 329
    :goto_1
    new-instance v0, Lcom/absolute/android/persistservice/ad;

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ad;-><init>(Lcom/absolute/android/persistservice/v;)V

    monitor-exit p0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method public getPersistedAppCount()I
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->b()I

    move-result v0

    goto :goto_0
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 2

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    if-nez p2, :cond_1

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified fileName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified fileName argument is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_2
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_3
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 661
    const/4 v0, 0x0

    .line 664
    :goto_0
    return-object v0

    .line 663
    :cond_4
    new-instance v0, Lcom/absolute/android/persistservice/w;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/absolute/android/persistservice/w;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 256
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v0

    return v0
.end method

.method public getSystemFile(Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 2

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified path argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    .line 681
    :cond_1
    new-instance v0, Lcom/absolute/android/persistservice/ah;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-direct {v0, p1, p2, v1}, Lcom/absolute/android/persistservice/ah;-><init>(Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 306
    const/16 v0, 0xc40

    return v0
.end method

.method public declared-synchronized install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 340
    monitor-enter p0

    if-nez p1, :cond_0

    .line 341
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AppProfile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v5

    .line 347
    if-gtz v5, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " specified in AppProfile for package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    throw v1

    .line 358
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 359
    :cond_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 361
    :cond_3
    const-string v0, "Installation of application failed because no APK file nor URL was specified."

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    throw v1

    :cond_4
    move v1, v2

    move-object v0, p2

    .line 398
    :goto_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_8

    .line 429
    :goto_1
    monitor-exit p0

    return-void

    .line 372
    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 376
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installation of application APK failed because the file does not exist at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    throw v1

    :cond_6
    move-object p2, v3

    .line 390
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_c

    .line 391
    const-string v0, "Installation of application APK failed because the file is empty."

    .line 392
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    throw v1

    .line 401
    :cond_8
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 403
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1, v0}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 408
    :cond_9
    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v3

    if-ne v3, v2, :cond_a

    .line 409
    const/4 v3, 0x1

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_a
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1, v0}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    .line 420
    if-ne v1, v2, :cond_b

    .line 421
    invoke-direct {p0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 428
    :goto_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_1

    .line 424
    :cond_b
    invoke-direct {p0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_c
    move v1, v0

    move-object v0, p2

    goto/16 :goto_0
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 3

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Method Specification is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 627
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 629
    new-instance v1, Lcom/absolute/android/persistservice/g;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/absolute/android/persistservice/g;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public declared-synchronized persistApp(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1012
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1013
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AppProfile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1016
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1022
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1023
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1024
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1026
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1027
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1034
    :try_start_3
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1082
    :goto_0
    monitor-exit p0

    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not installed. Please install it prior to invoking this persistApp() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 1040
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The version number in the persistApp(AppProfile) argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not match the installed version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Using the installed version."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1, v1}, Lcom/absolute/android/persistence/AppProfile;->setVersion(I)V

    .line 1046
    :cond_2
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1047
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    goto :goto_0

    .line 1052
    :cond_3
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 1053
    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1058
    :cond_4
    :try_start_5
    const-string v1, "SHA256"

    invoke-static {v1, v0}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 1067
    :goto_1
    :try_start_6
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1, v0}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v2

    if-ne v2, v7, :cond_5

    .line 1071
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v3, v0, v1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :goto_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully persisted package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", persisted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", monitored = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1062
    :catch_1
    move-exception v1

    .line 1063
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Digest for APK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_1

    .line 1075
    :cond_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public refreshDeviceId()V
    .locals 2

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/x;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 3

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 695
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    if-nez p2, :cond_1

    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IABTPing callback argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_1
    if-nez p3, :cond_2

    .line 703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified ping interval argument is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_2
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_3
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 724
    :goto_0
    return-void

    .line 716
    :cond_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-nez v0, :cond_5

    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The AppProfile for the specified package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has \'monitor\' set to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    goto :goto_0
.end method

.method public setAllPersistence(Z)V
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Z)V

    goto :goto_0
.end method

.method public declared-synchronized setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 5

    .prologue
    .line 513
    monitor-enter p0

    if-nez p1, :cond_0

    .line 514
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App Profile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 516
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 546
    :goto_0
    monitor-exit p0

    return-void

    .line 519
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found. Cannot update its AppProfile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v2, "setApplicationProfile() failed: "

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    throw v1

    .line 529
    :cond_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    .line 530
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    .line 532
    if-eq v1, v2, :cond_3

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " specified in the AppProfile for package name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the existing version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Use the install() API if you wish to install a new version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationProfile() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    throw v1

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 545
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 559
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Package name argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found. Cannot update its \'persist\' flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v2, "setPersistence() failed: "

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    throw v1

    .line 569
    :cond_1
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    :goto_0
    return-void

    .line 572
    :cond_2
    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 574
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    .line 575
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 576
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setState(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 265
    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The newState is not a valid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v3

    .line 275
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/x;->a(I)V

    .line 276
    if-eq v3, p1, :cond_3

    move v0, v1

    .line 278
    :goto_1
    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persistence state was changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 285
    if-ne p1, v1, :cond_1

    .line 290
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 276
    goto :goto_1
.end method

.method public testFirmwareUpdate()V
    .locals 2

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const-string v1, "Testing firmware update ..."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    goto :goto_0
.end method

.method public declared-synchronized uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 20

    .prologue
    .line 438
    monitor-enter p0

    if-nez p1, :cond_0

    .line 439
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Package name argument is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 441
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 479
    :goto_0
    monitor-exit p0

    return-void

    .line 444
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 446
    if-nez v3, :cond_2

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 451
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 455
    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 468
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v3

    .line 470
    if-eqz p2, :cond_3

    .line 471
    or-int/lit8 v3, v3, 0x8

    .line 476
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    goto :goto_0

    .line 460
    :catch_0
    move-exception v3

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t uninstall. The package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Lcom/absolute/android/persistservice/v;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 474
    :cond_3
    and-int/lit8 v3, v3, -0x9

    goto :goto_1
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_1
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    :goto_0
    return-void

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
