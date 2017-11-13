.class public Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;
.super Ljava/lang/Object;
.source "CommandLanguage.java"


# static fields
.field public static final ALARM:[[Ljava/lang/String;

.field public static final CALL:[[Ljava/lang/String;

.field public static final CAMERA:[[Ljava/lang/String;

.field public static final CANCEL:[[Ljava/lang/String;

.field public static final MUSIC:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\uc218\uc2e0"

    aput-object v2, v1, v5

    const-string v2, "\uac70\uc808"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Answer"

    aput-object v2, v1, v5

    const-string v2, "Reject"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u63a5\u542c"

    aput-object v2, v1, v5

    const-string v2, "\u62d2\u7edd"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Responder"

    aput-object v2, v1, v5

    const-string v2, "Rechazar"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "R\u00e9pondre"

    aput-object v2, v1, v5

    const-string v2, "Refuser"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Antworten"

    aput-object v3, v2, v5

    const-string v3, "Abweisen"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Rispondi"

    aput-object v3, v2, v5

    const-string v3, "Rifiuta"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u5fdc\u7b54"

    aput-object v3, v2, v5

    const-string v3, "\u62d2\u5426"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c"

    aput-object v3, v2, v5

    const-string v3, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Atender"

    aput-object v3, v2, v5

    const-string v3, "Recusar"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Answer"

    aput-object v3, v2, v5

    const-string v3, "Reject"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Responder"

    aput-object v3, v2, v5

    const-string v3, "Rechazar"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u63a5\u901a"

    aput-object v3, v2, v5

    const-string v3, "\u6302\u65b7"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u807d\u96fb\u8a71"

    aput-object v3, v2, v5

    const-string v3, "\u5514\u807d"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u542c\u7535\u8bdd"

    aput-object v3, v2, v5

    const-string v3, "\u5514\u542c"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CALL:[[Ljava/lang/String;

    .line 26
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\uc911\uc9c0"

    aput-object v2, v1, v5

    const-string v2, "\ub2e4\uc2dc \uc54c\ub9bc"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Stop"

    aput-object v2, v1, v5

    const-string v2, "Snooze"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u505c\u6b62"

    aput-object v2, v1, v5

    const-string v2, "\u91cd\u54cd"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Parar"

    aput-object v2, v1, v5

    const-string v2, "Repetir"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Arr\u00eater"

    aput-object v2, v1, v5

    const-string v2, "R\u00e9p\u00e9ter"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Stopp"

    aput-object v3, v2, v5

    const-string v3, "Erinnern"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Stop"

    aput-object v3, v2, v5

    const-string v3, "Dopo"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u30b9\u30c8\u30c3\u30d7"

    aput-object v3, v2, v5

    const-string v3, "\u30b9\u30cc\u30fc\u30ba"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    aput-object v3, v2, v5

    const-string v3, "\u041e\u0442\u043b\u043e\u0436\u0438\u0442\u044c"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Soneca"

    aput-object v3, v2, v5

    const-string v3, "Pr\u00f3xima"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Stop"

    aput-object v3, v2, v5

    const-string v3, "Snooze"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Parar"

    aput-object v3, v2, v5

    const-string v3, "Repetir"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u95dc\u9589"

    aput-object v3, v2, v5

    const-string v3, "\u8caa\u7761"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u95dc\u9589"

    aput-object v3, v2, v5

    const-string v3, "\u97ff\u591a\u6b21"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u5173\u95ed"

    aput-object v3, v2, v5

    const-string v3, "\u54cd\u591a\u6b21"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->ALARM:[[Ljava/lang/String;

    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\ub2e4\uc74c"

    aput-object v2, v1, v5

    const-string v2, "\uc774\uc804"

    aput-object v2, v1, v6

    const-string v2, "\uc77c\uc2dc \uc815\uc9c0"

    aput-object v2, v1, v7

    const-string v2, "\uc7ac\uc0dd"

    aput-object v2, v1, v8

    const-string v2, "\uc18c\ub9ac \ud06c\uac8c"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\uc18c\ub9ac \uc791\uac8c"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Next"

    aput-object v2, v1, v5

    const-string v2, "Previous"

    aput-object v2, v1, v6

    const-string v2, "Pause"

    aput-object v2, v1, v7

    const-string v2, "Play"

    aput-object v2, v1, v8

    const-string v2, "Volume Up"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Volume Down"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0b\u4e00\u9996"

    aput-object v2, v1, v5

    const-string v2, "\u4e0a\u4e00\u9996"

    aput-object v2, v1, v6

    const-string v2, "\u6682\u505c"

    aput-object v2, v1, v7

    const-string v2, "\u64ad\u653e"

    aput-object v2, v1, v8

    const-string v2, "\u589e\u5927\u97f3\u91cf"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u51cf\u5c0f\u97f3\u91cf"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Siguiente"

    aput-object v2, v1, v5

    const-string v2, "Anterior"

    aput-object v2, v1, v6

    const-string v2, "Pausa"

    aput-object v2, v1, v7

    const-string v2, "Reproducir"

    aput-object v2, v1, v8

    const-string v2, "Subir Volumen"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Bajar Volumen"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Suivant"

    aput-object v2, v1, v5

    const-string v2, "Pr\u00e9c\u00e9dent"

    aput-object v2, v1, v6

    const-string v2, "Pause"

    aput-object v2, v1, v7

    const-string v2, "Lire"

    aput-object v2, v1, v8

    const-string v2, "Augmenter le Volume"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Baisser le Volume"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Weiter"

    aput-object v3, v2, v5

    const-string v3, "Vorherige"

    aput-object v3, v2, v6

    const-string v3, "Pause"

    aput-object v3, v2, v7

    const-string v3, "Wiedergabe"

    aput-object v3, v2, v8

    const-string v3, "Lauter"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Leiser"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Successivo"

    aput-object v3, v2, v5

    const-string v3, "Precedente"

    aput-object v3, v2, v6

    const-string v3, "Pausa"

    aput-object v3, v2, v7

    const-string v3, "Riproduci"

    aput-object v3, v2, v8

    const-string v3, "Aumenta Volume"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Abbassa Volume"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u6b21"

    aput-object v3, v2, v5

    const-string v3, "\u524d"

    aput-object v3, v2, v6

    const-string v3, "\u4e00\u6642\u505c\u6b62"

    aput-object v3, v2, v7

    const-string v3, "\u518d\u751f"

    aput-object v3, v2, v8

    const-string v3, "\u97f3\u91cf\u30a2\u30c3\u30d7"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u97f3\u91cf\u30c0\u30a6\u30f3"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u0412\u043f\u0435\u0440\u0435\u0434"

    aput-object v3, v2, v5

    const-string v3, "\u041d\u0430\u0437\u0430\u0434"

    aput-object v3, v2, v6

    const-string v3, "\u041f\u0430\u0443\u0437\u0430"

    aput-object v3, v2, v7

    const-string v3, "\u0418\u0433\u0440\u0430\u0442\u044c"

    aput-object v3, v2, v8

    const-string v3, "\u0413\u0440\u043e\u043c\u0447\u0435"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u0422\u0438\u0448\u0435"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pr\u00f3xima"

    aput-object v3, v2, v5

    const-string v3, "Anterior"

    aput-object v3, v2, v6

    const-string v3, "Pausar"

    aput-object v3, v2, v7

    const-string v3, "Reproduzir"

    aput-object v3, v2, v8

    const-string v3, "Aumentar Volume"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Diminuir Volume"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Next"

    aput-object v3, v2, v5

    const-string v3, "Previous"

    aput-object v3, v2, v6

    const-string v3, "Pause"

    aput-object v3, v2, v7

    const-string v3, "Play"

    aput-object v3, v2, v8

    const-string v3, "Volume Up"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Volume Down"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Siguiente"

    aput-object v3, v2, v5

    const-string v3, "Anterior"

    aput-object v3, v2, v6

    const-string v3, "Pausa"

    aput-object v3, v2, v7

    const-string v3, "Reproducir"

    aput-object v3, v2, v8

    const-string v3, "Subir Volumen"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Bajar Volumen"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0b\u9996"

    aput-object v3, v2, v5

    const-string v3, "\u4e0a\u9996"

    aput-object v3, v2, v6

    const-string v3, "\u66ab\u505c"

    aput-object v3, v2, v7

    const-string v3, "\u958b\u59cb"

    aput-object v3, v2, v8

    const-string v3, "\u653e\u5927"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u6e1b\u8f15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0b\u4e00\u9996"

    aput-object v3, v2, v5

    const-string v3, "\u4e0a\u4e00\u9996"

    aput-object v3, v2, v6

    const-string v3, "\u66ab\u505c"

    aput-object v3, v2, v7

    const-string v3, "\u64ad\u653e"

    aput-object v3, v2, v8

    const-string v3, "\u5927\u8072"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u7d30\u8072"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0b\u4e00\u9996"

    aput-object v3, v2, v5

    const-string v3, "\u4e0a\u4e00\u9996"

    aput-object v3, v2, v6

    const-string v3, "\u6682\u505c"

    aput-object v3, v2, v7

    const-string v3, "\u64ad\u653e"

    aput-object v3, v2, v8

    const-string v3, "\u5927\u58f0"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u7ec6\u58f0"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    .line 62
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\uc2a4\ub9c8\uc77c"

    aput-object v2, v1, v5

    const-string v2, "\uae40\uce58"

    aput-object v2, v1, v6

    const-string v2, "\ucd2c\uc601"

    aput-object v2, v1, v7

    const-string v2, "\ucc30\uce75"

    aput-object v2, v1, v8

    const-string v2, "\ub3d9\uc601\uc0c1 \ucd2c\uc601"

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Smile"

    aput-object v2, v1, v5

    const-string v2, "Cheese"

    aput-object v2, v1, v6

    const-string v2, "Capture"

    aput-object v2, v1, v7

    const-string v2, "Shoot"

    aput-object v2, v1, v8

    const-string v2, "Record Video"

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u5fae\u7b11"

    aput-object v2, v1, v5

    const-string v2, "\u8304\u5b50"

    aput-object v2, v1, v6

    const-string v2, "\u62cd\u6444"

    aput-object v2, v1, v7

    const-string v2, "\u62cd\u7167"

    aput-object v2, v1, v8

    const-string v2, "\u5f55\u5236\u89c6\u9891"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Sonrisa"

    aput-object v2, v1, v5

    const-string v2, "Patata"

    aput-object v2, v1, v6

    const-string v2, "Capturar"

    aput-object v2, v1, v7

    const-string v2, "Disparar"

    aput-object v2, v1, v8

    const-string v2, "Grabar v\u00eddeo"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Sourire"

    aput-object v2, v1, v5

    const-string v2, "Cheese"

    aput-object v2, v1, v6

    const-string v2, "Capture"

    aput-object v2, v1, v7

    const-string v2, "Shooter"

    aput-object v2, v1, v8

    const-string v2, "Enregistrer une vid\u00e9o"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "L\u00e4cheln"

    aput-object v3, v2, v5

    const-string v3, "Bitte L\u00e4cheln"

    aput-object v3, v2, v6

    const-string v3, "Klick"

    aput-object v3, v2, v7

    const-string v3, "Aufnahme"

    aput-object v3, v2, v8

    const-string v3, "Video aufnehmen"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Sorriso"

    aput-object v3, v2, v5

    const-string v3, "Cheese"

    aput-object v3, v2, v6

    const-string v3, "Cattura"

    aput-object v3, v2, v7

    const-string v3, "Scatta"

    aput-object v3, v2, v8

    const-string v3, "Registra"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u30b9\u30de\u30a4\u30eb"

    aput-object v3, v2, v5

    const-string v3, "\u30c1\u30fc\u30ba"

    aput-object v3, v2, v6

    const-string v3, "\u64ae\u5f71"

    aput-object v3, v2, v7

    const-string v3, "\u306f\u3044\u30c1\u30fc\u30ba"

    aput-object v3, v2, v8

    const-string v3, "\u9332\u753b"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    aput-object v3, v2, v5

    const-string v3, "\u0421\u043d\u044f\u0442\u044c"

    aput-object v3, v2, v6

    const-string v3, "\u0423\u043b\u044b\u0431\u043d\u0438\u0442\u0435\u0441\u044c"

    aput-object v3, v2, v7

    const-string v3, "\u0441\u043d\u0438\u043c\u0430\u044e"

    aput-object v3, v2, v8

    const-string v3, "\u0417\u0430\u043f\u0438\u0441\u044c \u0432\u0438\u0434\u0435\u043e"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Sorria"

    aput-object v3, v2, v5

    const-string v3, "Diga xis"

    aput-object v3, v2, v6

    const-string v3, "Capturar"

    aput-object v3, v2, v7

    const-string v3, "Disparar"

    aput-object v3, v2, v8

    const-string v3, "Gravar V\u00eddeo"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Smile"

    aput-object v3, v2, v5

    const-string v3, "Cheese"

    aput-object v3, v2, v6

    const-string v3, "Capture"

    aput-object v3, v2, v7

    const-string v3, "Shoot"

    aput-object v3, v2, v8

    const-string v3, "Record Video"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Sonrisa"

    aput-object v3, v2, v5

    const-string v3, "Patata"

    aput-object v3, v2, v6

    const-string v3, "Capturar"

    aput-object v3, v2, v7

    const-string v3, "Disparar"

    aput-object v3, v2, v8

    const-string v3, "Grabar V\u00eddeo"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u7b11\u4e00\u500b"

    aput-object v3, v2, v5

    const-string v3, "Cheese"

    aput-object v3, v2, v6

    const-string v3, "\u651d\u5f71"

    aput-object v3, v2, v7

    const-string v3, "\u7167\u76f8"

    aput-object v3, v2, v8

    const-string v3, "\u9304\u88fd\u5f71\u7247"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u7b11\u4e00\u7b11"

    aput-object v3, v2, v5

    const-string v3, "Cheese"

    aput-object v3, v2, v6

    const-string v3, "\u651d\u5f71"

    aput-object v3, v2, v7

    const-string v3, "\u5f71\u76f8"

    aput-object v3, v2, v8

    const-string v3, "\u9304\u5f71"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u7b11\u4e00\u7b11"

    aput-object v3, v2, v5

    const-string v3, "Cheese"

    aput-object v3, v2, v6

    const-string v3, "\u6444\u5f71"

    aput-object v3, v2, v7

    const-string v3, "\u5f71\u76f8"

    aput-object v3, v2, v8

    const-string v3, "\u5f55\u5f71"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    .line 80
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\ucde8\uc18c"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Cancel"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u53d6\u6d88"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Cancelar"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Annuler"

    aput-object v2, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Abbrechen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Annulla"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Cancelar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Cancel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Cancelar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u9000\u51fa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u53d6\u6d88"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u53d6\u6d88"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
