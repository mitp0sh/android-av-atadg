.class public Lde/gdata/mobilesecurity/util/TextDecrypter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "125405990079924322664411142883218485720317509175045677104597790044743495204260242800188371314614590462417174367143441555403963732738764156689901141909444364887572721494649465723322080437916965884233225821540546260027188711708224282472429616204762197784315314122049598666862529574023974492430645419481223896683"

    sput-object v0, Lde/gdata/mobilesecurity/util/TextDecrypter;->a:Ljava/lang/String;

    .line 20
    const-string v0, "109537215559686710203420227706592596496236560953603532968790086414106483962840431189312649763245153370319189610033403549102712970030636363970836336229370156369072295057920068856893348374771731279262340853958562227343412453016506127982607376901247955636508880997518468143373552385750390228115828434794069628929"

    sput-object v0, Lde/gdata/mobilesecurity/util/TextDecrypter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decryptData([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 29
    :try_start_0
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    sget-object v3, Lde/gdata/mobilesecurity/util/TextDecrypter;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    sget-object v4, Lde/gdata/mobilesecurity/util/TextDecrypter;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 31
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 33
    const-string v2, "RSA"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 34
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
