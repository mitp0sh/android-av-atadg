.class public Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LANG_ENG:Ljava/lang/String; = "ENG"


# instance fields
.field private a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "ENG"

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 48
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "ENG"

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 53
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "ENG"

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-direct {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "ENG"

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    .line 58
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-direct {v0, p1, p3, p4}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    .line 59
    return-void
.end method

.method private static a()I
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 246
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 248
    return v0
.end method

.method private a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .line 377
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 378
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    rem-int/lit8 v4, v0, 0x10

    shl-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return v1
.end method

.method private a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 264
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v0, p3, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 265
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v0, p4, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 266
    const-string v0, ""

    .line 269
    if-lez p2, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/16 v2, 0x1e61

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 278
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&A=ver2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&L="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&K="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p3, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 67
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v2, "DE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "GER"

    .line 92
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v2, "EN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "ENG"

    goto :goto_0

    .line 72
    :cond_1
    const-string v2, "FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "FRA"

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "IT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "ITA"

    goto :goto_0

    .line 74
    :cond_3
    const-string v2, "NL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "DUT"

    goto :goto_0

    .line 75
    :cond_4
    const-string v2, "PL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "POL"

    goto :goto_0

    .line 76
    :cond_5
    const-string v2, "ES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "ESN"

    goto :goto_0

    .line 77
    :cond_6
    const-string v2, "JA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "JAP"

    goto :goto_0

    .line 78
    :cond_7
    const-string v2, "PT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "PTG"

    goto :goto_0

    .line 79
    :cond_8
    const-string v2, "HU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "HUN"

    goto :goto_0

    .line 80
    :cond_9
    const-string v2, "RU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "RUS"

    goto :goto_0

    .line 81
    :cond_a
    const-string v2, "TR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "TUR"

    goto :goto_0

    .line 82
    :cond_b
    const-string v2, "ZH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 83
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84
    const-string v0, "TPE"

    goto/16 :goto_0

    .line 86
    :cond_c
    const-string v0, "CHN"

    goto/16 :goto_0

    .line 88
    :cond_d
    const-string v0, "KO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "KOR"

    goto/16 :goto_0

    .line 89
    :cond_e
    const-string v0, "SV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "SVE"

    goto/16 :goto_0

    .line 90
    :cond_f
    const-string v0, "EL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "GRC"

    goto/16 :goto_0

    .line 92
    :cond_10
    const-string v0, "ENG"

    goto/16 :goto_0
.end method


# virtual methods
.method public confirmComputerIdChanged(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?U="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&A=ccc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&K="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 15

    .prologue
    .line 289
    if-nez p1, :cond_1

    const-string v1, ""

    move-object v10, v1

    .line 290
    :goto_0
    if-nez p2, :cond_2

    const-string v1, ""

    move-object v9, v1

    .line 291
    :goto_1
    if-nez p3, :cond_3

    const-string v1, ""

    move-object v8, v1

    .line 292
    :goto_2
    if-nez p4, :cond_4

    const-string v1, ""

    move-object v7, v1

    .line 293
    :goto_3
    if-nez p5, :cond_5

    const-string v1, ""

    move-object v6, v1

    .line 294
    :goto_4
    if-nez p6, :cond_6

    const-string v1, ""

    move-object v5, v1

    .line 295
    :goto_5
    if-nez p7, :cond_7

    const-string v1, ""

    move-object v4, v1

    .line 296
    :goto_6
    if-nez p8, :cond_8

    const-string v1, ""

    .line 298
    :goto_7
    const-string v3, "encrypted"

    .line 299
    const-string v2, "encrypted"

    .line 302
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 304
    iget-object v12, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 305
    iget-object v12, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 307
    new-instance v12, Ljava/math/BigInteger;

    const/4 v13, 0x1

    const-string v14, "UTF-8"

    invoke-virtual {v3, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    new-instance v12, Ljava/math/BigInteger;

    const/4 v13, 0x1

    const-string v14, "UTF-8"

    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-direct {v12, v13, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v11, 0x10

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 314
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerRequest.doBuy() regdata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 337
    :try_start_1
    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 343
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v3

    .line 346
    new-instance v4, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v4}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v4, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v4, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v4}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v4, v1, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/16 v3, 0x1e61

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?U=ext&A=ext&L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "K="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "D="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v4}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/16 v5, 0x9f9

    move-object/from16 v0, p9

    invoke-virtual {v4, v0, v5}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 289
    :cond_1
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_0

    .line 290
    :cond_2
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto/16 :goto_1

    .line 291
    :cond_3
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto/16 :goto_2

    .line 292
    :cond_4
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto/16 :goto_3

    .line 293
    :cond_5
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto/16 :goto_4

    .line 294
    :cond_6
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto/16 :goto_5

    .line 295
    :cond_7
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_6

    .line 296
    :cond_8
    const-string v1, "|"

    const-string v2, " "

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 339
    :catch_0
    move-exception v2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 310
    :catch_1
    move-exception v11

    goto/16 :goto_8
.end method

.method public doConfirm(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&A=con"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&K="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doCreateCommandSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 410
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?U="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&A=ccs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&L="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&K="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(Landroid/content/Context;)I

    move-result v2

    const-string v3, "cmd"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyDate;->toFormatedString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doGetFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&A=dl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&K="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->saveToFile(Ljava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/StreamStruct;

    move-result-object v0

    return-object v0
.end method

.method public doGetFiles(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&A=files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&K="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&F=upfiles.xml&H=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doGetRed()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?U="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&A=red"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&L="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&K="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doGetSubscriptionState()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?A=MPS&K="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doGetUpdateActionContent(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?A=rua&F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doGetUpdateActionId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 469
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?U="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&A=rui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&L="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&K="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doGetVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 165
    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "|"

    const-string v1, " "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 166
    :cond_0
    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "|"

    const-string v1, " "

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 167
    :cond_1
    const-string v0, "|"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "|"

    const-string v1, " "

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 168
    :cond_2
    const-string v0, "|"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "|"

    const-string v1, " "

    invoke-virtual {p5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p5

    .line 169
    :cond_3
    const-string v0, "|"

    invoke-virtual {p10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p10

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "true"

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerRequest.doRegister() regdata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 192
    :try_start_0
    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_1
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v1

    .line 198
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v2, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 199
    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {v3, v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/16 v2, 0x1e61

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?U=reg&A=reg&L="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "K="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/16 v4, 0x9f9

    invoke-virtual {v3, p9, v4}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 172
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public doRegisterFreeVersion(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&A=crf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&L="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&K="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public doSendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 440
    const-string v2, "UTF-16LE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?U="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&A=csm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&L="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&K="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p4, v4, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    invoke-virtual {v2, v1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    .line 441
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public doTerminateSubscription()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a()I

    move-result v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?A=MPT&K="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateServerRegion(Landroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;

    const-string v1, "?&A=gsr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerConnection;->execute(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
